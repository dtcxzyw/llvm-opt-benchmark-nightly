Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LinalgDialect?download=true
inline.NumInlined: 74203
inline.NumDeleted: 25775
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9IndexTypeEE4ImplENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.108, i64 49), i64 33) #23
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !21

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.109, i64 49), i64 31) #23
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit, !prof !21

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.110, i64 49), i64 59) #23
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !21

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.111, i64 49), i64 36) #23
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9IndexTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, !prof !21

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.112, i64 49), i64 34) #23
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !21

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.113, i64 49), i64 34) #23
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !21

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.114, i64 49), i64 39) #23
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !21

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.115, i64 49), i64 45) #23
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !21

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.116, i64 49), i64 49) #23
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !21

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.117, i64 49), i64 43) #23
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !21

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.118, i64 49), i64 40) #23
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.as = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.at = insertelement <8 x ptr> %i.as, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.au = insertelement <8 x ptr> %i.at, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.av = insertelement <8 x ptr> %i.au, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.aw = insertelement <8 x ptr> %i.av, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.ax = insertelement <8 x ptr> %i.aw, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ay = insertelement <8 x ptr> %i.ax, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.az = insertelement <8 x ptr> %i.ay, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.ba = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bb = shufflevector <8 x ptr> %i.ba, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bc = icmp eq <8 x ptr> %i.az, %i.bb
  %i.bd = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.be = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bf = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bg = freeze <8 x i1> %i.bc
  %i.bh = bitcast <8 x i1> %i.bg to i8
  %i.bi = icmp ne i8 %i.bh, 0
  %op.rdx = select i1 %i.bi, i1 true, i1 %i.bd
  %1 = select i1 %op.rdx, i1 true, i1 %i.be
  %op.rdx40 = select i1 %1, i1 true, i1 %i.bf
  ret i1 %op.rdx40
}

declare i8 @_ZN4mlir6linalg7IndexOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #9 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = tail call i8 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #23, !inline_history !3211
  ret i8 %i.b
}

declare void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #1

declare void @_ZN4mlir6linalg7IndexOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg7IndexOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef) local_unnamed_addr #1

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef) local_unnamed_addr #1

declare i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef) local_unnamed_addr #1

declare i8 @_ZN4mlir7OpTrait4impl18verifyZeroOperandsEPNS_9OperationE(ptr noundef) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg7IndexOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef) local_unnamed_addr #1

declare { ptr, i8 } @_ZN4mlir6linalg7IndexOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail25IndexOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #1

declare void @_ZN4mlir6linalg7IndexOp15setInherentAttrERNS0_6detail25IndexOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #1

declare void @_ZN4mlir6linalg7IndexOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail25IndexOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg7IndexOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg7IndexOp21setPropertiesFromAttrERNS0_6detail25IndexOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #1

declare ptr @_ZN4mlir6linalg7IndexOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail25IndexOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i64 @_ZN4mlir6linalg7IndexOp21computePropertiesHashERKNS0_6detail25IndexOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg9SoftmaxOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !68
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #23, !inline_history !196
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189
  tail call void @free(ptr noundef %i.k) #23, !inline_history !196
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg9SoftmaxOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  %5 = alloca %"class.mlir::linalg::SoftmaxOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::linalg::SoftmaxOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6linalg6detail27SoftmaxOpGenericAdaptorBaseC2ENS0_9SoftmaxOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !198
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !44
  %i.b = call i8 @_ZN4mlir6linalg9SoftmaxOp4foldENS0_23SoftmaxOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEERNS3_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::linalg::SoftmaxOpGenericAdaptor") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg9SoftmaxOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg9SoftmaxOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_32ReifyRankedShapedTypeOpInterface5TraitENS_6linalg21AggregatedOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_15TilingInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg9SoftmaxOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.390") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir6linalg9SoftmaxOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !43
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !200
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg9SoftmaxOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg9SoftmaxOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::linalg::SoftmaxOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6linalg9SoftmaxOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg9SoftmaxOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::linalg::SoftmaxOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::linalg::SoftmaxOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #23
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg9SoftmaxOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EENS4_21AggregatedOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #23
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg9SoftmaxOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EENS4_21AggregatedOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 2) #23
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg9SoftmaxOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EENS4_21AggregatedOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg9SoftmaxOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EENS4_21AggregatedOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg9SoftmaxOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EENS4_21AggregatedOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  br label %_ZN4mlir2OpINS_6linalg9SoftmaxOpEJNS_7OpTrait11ZeroRegionsENS3_15VariadicResultsENS3_14ZeroSuccessorsENS3_9NOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_32ReifyRankedShapedTypeOpInterface5TraitENS1_21AggregatedOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_15TilingInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg9SoftmaxOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EENS4_21AggregatedOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %1, ptr %2, align 8
  %i.g = call i8 @_ZN4mlir6linalg9SoftmaxOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  br i1 %i.h, label %bb.c, label %_ZN4mlir2OpINS_6linalg9SoftmaxOpEJNS_7OpTrait11ZeroRegionsENS3_15VariadicResultsENS3_14ZeroSuccessorsENS3_9NOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_32ReifyRankedShapedTypeOpInterface5TraitENS1_21AggregatedOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_15TilingInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.c:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg9SoftmaxOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EENS4_21AggregatedOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  store ptr %1, ptr %3, align 8
  %i.i = call i8 @_ZN4mlir6linalg9SoftmaxOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  br label %_ZN4mlir2OpINS_6linalg9SoftmaxOpEJNS_7OpTrait11ZeroRegionsENS3_15VariadicResultsENS3_14ZeroSuccessorsENS3_9NOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_32ReifyRankedShapedTypeOpInterface5TraitENS1_21AggregatedOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_15TilingInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_6linalg9SoftmaxOpEJNS_7OpTrait11ZeroRegionsENS3_15VariadicResultsENS3_14ZeroSuccessorsENS3_9NOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_32ReifyRankedShapedTypeOpInterface5TraitENS1_21AggregatedOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_15TilingInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg9SoftmaxOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EENS4_21AggregatedOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg9SoftmaxOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EENS4_21AggregatedOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, %bb.c
  %i.j = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg9SoftmaxOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EENS4_21AggregatedOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ %i.i, %bb.c ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg9SoftmaxOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EENS4_21AggregatedOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i8 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg9SoftmaxOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir6detail33verifyDestinationStyleOpInterfaceEPNS_9OperationE(ptr noundef %1) #23
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg9SoftmaxOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
end_hunk_0
begin_hunk_1_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_32ReifyRankedShapedTypeOpInterface5TraitENS_6linalg21AggregatedOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS_15TilingInterface5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.108, i64 49), i64 33) #23
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, !prof !21

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.127, i64 49), i64 37) #23
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !21

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.111, i64 49), i64 36) #23
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, !prof !21

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.128, i64 49), i64 40) #23
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !21

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.113, i64 49), i64 34) #23
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !21

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.114, i64 49), i64 39) #23
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, !prof !21

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #23
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit, !prof !21

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.130, i64 49), i64 52) #23
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg21AggregatedOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_6linalg21AggregatedOpInterface5TraitEEES0_v.exit, !prof !21

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg21AggregatedOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_6linalg21AggregatedOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.131, i64 49), i64 49) #23
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg21AggregatedOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg21AggregatedOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_6linalg21AggregatedOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_6linalg21AggregatedOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg21AggregatedOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !21

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_6linalg21AggregatedOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.117, i64 49), i64 43) #23
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_6linalg21AggregatedOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_15TilingInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_15TilingInterface5TraitEEES0_v.exit, !prof !21

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15TilingInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_15TilingInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.132, i64 49), i64 35) #23
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15TilingInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_15TilingInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_15TilingInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_15TilingInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_15TilingInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.as = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.at = insertelement <8 x ptr> %i.as, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.au = insertelement <8 x ptr> %i.at, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.av = insertelement <8 x ptr> %i.au, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.aw = insertelement <8 x ptr> %i.av, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.ax = insertelement <8 x ptr> %i.aw, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ay = insertelement <8 x ptr> %i.ax, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.az = insertelement <8 x ptr> %i.ay, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.ba = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bb = shufflevector <8 x ptr> %i.ba, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bc = icmp eq <8 x ptr> %i.az, %i.bb
  %i.bd = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.be = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bf = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bg = freeze <8 x i1> %i.bc
  %i.bh = bitcast <8 x i1> %i.bg to i8
  %i.bi = icmp ne i8 %i.bh, 0
  %op.rdx = select i1 %i.bi, i1 true, i1 %i.bd
  %1 = select i1 %op.rdx, i1 true, i1 %i.be
  %op.rdx40 = select i1 %1, i1 true, i1 %i.bf
  ret i1 %op.rdx40
}

declare i8 @_ZN4mlir6linalg9SoftmaxOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #1

declare void @_ZN4mlir6linalg9SoftmaxOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg9SoftmaxOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg9SoftmaxOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i8 @_ZN4mlir6detail33verifyDestinationStyleOpInterfaceEPNS_9OperationE(ptr noundef) local_unnamed_addr #1

declare { ptr, i8 } @_ZN4mlir6linalg9SoftmaxOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail27SoftmaxOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #1

declare void @_ZN4mlir6linalg9SoftmaxOp15setInherentAttrERNS0_6detail27SoftmaxOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #1

declare void @_ZN4mlir6linalg9SoftmaxOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail27SoftmaxOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg9SoftmaxOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg9SoftmaxOp21setPropertiesFromAttrERNS0_6detail27SoftmaxOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #1

declare ptr @_ZN4mlir6linalg9SoftmaxOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail27SoftmaxOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i64 @_ZN4mlir6linalg9SoftmaxOp21computePropertiesHashERKNS0_6detail27SoftmaxOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg25WinogradFilterTransformOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !68
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #23, !inline_history !196
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189
  tail call void @free(ptr noundef %i.k) #23, !inline_history !196
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg25WinogradFilterTransformOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg25WinogradFilterTransformOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg25WinogradFilterTransformOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_15TilingInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg25WinogradFilterTransformOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.390") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir6linalg25WinogradFilterTransformOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !43
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !200
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg25WinogradFilterTransformOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg25WinogradFilterTransformOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::linalg::WinogradFilterTransformOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6linalg25WinogradFilterTransformOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg25WinogradFilterTransformOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::linalg::WinogradFilterTransformOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::linalg::WinogradFilterTransformOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #23
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %1) #23
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #23
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 2) #23
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  br label %_ZN4mlir2OpINS_6linalg25WinogradFilterTransformOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_16RankedTensorTypeEE4ImplENS3_14ZeroSuccessorsENS3_9NOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_15TilingInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %1, ptr %2, align 8
  %i.i = call i8 @_ZN4mlir6linalg25WinogradFilterTransformOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  br i1 %i.j, label %bb.d, label %_ZN4mlir2OpINS_6linalg25WinogradFilterTransformOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_16RankedTensorTypeEE4ImplENS3_14ZeroSuccessorsENS3_9NOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_15TilingInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.d:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  store ptr %1, ptr %3, align 8
  %i.k = call i8 @_ZN4mlir6linalg25WinogradFilterTransformOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  br label %_ZN4mlir2OpINS_6linalg25WinogradFilterTransformOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_16RankedTensorTypeEE4ImplENS3_14ZeroSuccessorsENS3_9NOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_15TilingInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_6linalg25WinogradFilterTransformOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_16RankedTensorTypeEE4ImplENS3_14ZeroSuccessorsENS3_9NOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_15TilingInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, %bb.d
  %i.l = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ %i.k, %bb.d ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg25WinogradFilterTransformOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_16RankedTensorTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS_15TilingInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i8 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg25WinogradFilterTransformOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir6detail33verifyDestinationStyleOpInterfaceEPNS_9OperationE(ptr noundef %1) #23
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg25WinogradFilterTransformOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call { ptr, i8 } @_ZN4mlir6linalg25WinogradFilterTransformOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail43WinogradFilterTransformOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %2, i64 %3) #23
  ret { ptr, i8 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg25WinogradFilterTransformOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 2 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.b, 16777215
end_hunk_1
begin_hunk_2_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS2_10ReturnLikeENS2_12IsTerminatorEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.108, i64 49), i64 33) #23
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, !prof !21

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 33) #23
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !21

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.111, i64 49), i64 36) #23
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !21

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.143, i64 49), i64 38) #23
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !21

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.113, i64 49), i64 34) #23
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !21

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.115, i64 49), i64 45) #23
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !21

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.116, i64 49), i64 49) #23
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !21

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.117, i64 49), i64 43) #23
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, !prof !21

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.144, i64 49), i64 53) #23
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, !prof !21

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.145, i64 49), i64 32) #23
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, !prof !21

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.146, i64 49), i64 34) #23
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.as = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.at = insertelement <8 x ptr> %i.as, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.au = insertelement <8 x ptr> %i.at, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.av = insertelement <8 x ptr> %i.au, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.aw = insertelement <8 x ptr> %i.av, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.ax = insertelement <8 x ptr> %i.aw, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.ay = insertelement <8 x ptr> %i.ax, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.az = insertelement <8 x ptr> %i.ay, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.ba = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bb = shufflevector <8 x ptr> %i.ba, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bc = icmp eq <8 x ptr> %i.az, %i.bb
  %i.bd = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.be = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bf = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bg = freeze <8 x i1> %i.bc
  %i.bh = bitcast <8 x i1> %i.bg to i8
  %i.bi = icmp ne i8 %i.bh, 0
  %op.rdx = select i1 %i.bi, i1 true, i1 %i.bd
  %1 = select i1 %op.rdx, i1 true, i1 %i.be
  %op.rdx40 = select i1 %1, i1 true, i1 %i.bf
  ret i1 %op.rdx40
}

declare i8 @_ZN4mlir6linalg7YieldOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #1

declare void @_ZN4mlir6linalg7YieldOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg7YieldOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg7YieldOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i8 @_ZN4mlir7OpTrait4impl18verifyIsTerminatorEPNS_9OperationE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_6linalg5AbsOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 10 uses
  %2 = alloca %"class.std::unique_ptr.373", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22, !noalias !3301 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !3301
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !68, !alias.scope !3302, !noalias !3301
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !65, !alias.scope !3302, !noalias !3301
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.d, align 4, !tbaa !66, !alias.scope !3302, !noalias !3301
  call void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_19BytecodeOpInterface5TraitINS_6linalg5AbsOpEEENS_23MemoryEffectOpInterface5TraitIS6_EEJNS_25ConditionallySpeculatable5TraitIS6_EENS_7OpTrait25HasRecursiveMemoryEffectsIS6_EENS_27DestinationStyleOpInterface5TraitIS6_EENS_22IndexingMapOpInterface5TraitIS6_EENS5_8LinalgOp5TraitIS6_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS6_EEEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %1), !noalias !3301
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.148, i64 10, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_6linalg5AbsOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #23, !noalias !3301
  %i.e = load ptr, ptr %1, align 8, !tbaa !68, !noalias !3301 ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !65, !noalias !3301 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !68, !noalias !3301
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.i = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AbsOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.i) #23, !noalias !3301
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AbsOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !189, !noalias !3301
  call void @free(ptr noundef %i.l) #23, !noalias !3301
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AbsOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_6linalg5AbsOpEEE, i64 16), ptr %i.a, align 8, !tbaa !28, !noalias !3301
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_6linalg6detail23AbsOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.n, align 8, !tbaa !24, !noalias !3301
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !3301
  store ptr %i.a, ptr %2, align 8, !tbaa !31
  call void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @_ZZN4mlir6linalg5AbsOp17getAttributeNamesEvE9attrNames, i64 1) #23
  %i.o = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AbsOpEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AbsOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(120) %i.o) #23, !inline_history !3
  br label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AbsOpEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AbsOpEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AbsOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_6linalg5AddOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 10 uses
  %2 = alloca %"class.std::unique_ptr.373", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22, !noalias !3309 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !3309
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !68, !alias.scope !3310, !noalias !3309
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !65, !alias.scope !3310, !noalias !3309
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.d, align 4, !tbaa !66, !alias.scope !3310, !noalias !3309
  call void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_19BytecodeOpInterface5TraitINS_6linalg5AddOpEEENS_23MemoryEffectOpInterface5TraitIS6_EEJNS_25ConditionallySpeculatable5TraitIS6_EENS_7OpTrait25HasRecursiveMemoryEffectsIS6_EENS_27DestinationStyleOpInterface5TraitIS6_EENS_22IndexingMapOpInterface5TraitIS6_EENS5_8LinalgOp5TraitIS6_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS6_EEEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %1), !noalias !3309
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.166, i64 10, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_6linalg5AddOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #23, !noalias !3309
  %i.e = load ptr, ptr %1, align 8, !tbaa !68, !noalias !3309 ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !65, !noalias !3309 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !68, !noalias !3309
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.i = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AddOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.i) #23, !noalias !3309
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AddOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !189, !noalias !3309
  call void @free(ptr noundef %i.l) #23, !noalias !3309
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AddOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_6linalg5AddOpEEE, i64 16), ptr %i.a, align 8, !tbaa !28, !noalias !3309
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_6linalg6detail23AddOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.n, align 8, !tbaa !24, !noalias !3309
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !3309
  store ptr %i.a, ptr %2, align 8, !tbaa !31
  call void @_ZN4mlir23RegisteredOperationName6insertESt10unique_ptrINS_13OperationName4ImplESt14default_deleteIS3_EEN4llvm8ArrayRefINS7_9StringRefEEE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2, ptr nonnull @_ZZN4mlir6linalg5AddOp17getAttributeNamesEvE9attrNames, i64 1) #23
  %i.o = load ptr, ptr %2, align 8, !tbaa !32     ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AddOpEEESt14default_deleteIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AddOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(120) %i.o) #23, !inline_history !3
  br label %_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AddOpEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AddOpEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4mlir13OperationName4ImplEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg5AddOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName6insertINS_6linalg13BatchMatmulOpEEEvRNS_7DialectE(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::detail::InterfaceMap", align 8 ; 10 uses
  %2 = alloca %"class.std::unique_ptr.373", align 8 ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22, !noalias !3317 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !3317
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !68, !alias.scope !3318, !noalias !3317
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !65, !alias.scope !3318, !noalias !3317
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.d, align 4, !tbaa !66, !alias.scope !3318, !noalias !3317
  call void @_ZN4mlir6detail12InterfaceMap25insertPotentialInterfacesINS_19BytecodeOpInterface5TraitINS_6linalg13BatchMatmulOpEEENS_23MemoryEffectOpInterface5TraitIS6_EEJNS_25ConditionallySpeculatable5TraitIS6_EENS_7OpTrait25HasRecursiveMemoryEffectsIS6_EENS_27DestinationStyleOpInterface5TraitIS6_EENS_22IndexingMapOpInterface5TraitIS6_EENS5_8LinalgOp5TraitIS6_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS6_EENS5_22ContractionOpInterface5TraitIS6_EEEEEvv(ptr noundef nonnull align 8 dereferenceable(64) %1), !noalias !3317
  call void @_ZN4mlir13OperationName4ImplC2EN4llvm9StringRefEPNS_7DialectENS_6TypeIDENS_6detail12InterfaceMapE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr nonnull @.str.167, i64 19, ptr noundef nonnull %0, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_6linalg13BatchMatmulOpEvE2idE, ptr nofree noundef nonnull align 8 dereferenceable(64) %1) #23, !noalias !3317
  %i.e = load ptr, ptr %1, align 8, !tbaa !68, !noalias !3317 ; 3 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !65, !noalias !3317 ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i.i
  %.not8.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not8.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !68, !noalias !3317
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %i.i = phi ptr [ %.pre.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg13BatchMatmulOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i.i
  call void @free(ptr noundef %i.i) #23, !noalias !3317
  br label %_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg13BatchMatmulOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !189, !noalias !3317
  call void @free(ptr noundef %i.l) #23, !noalias !3317
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.m, %i.h
  br i1 %.not.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

_ZSt11make_uniqueIN4mlir23RegisteredOperationName5ModelINS0_6linalg13BatchMatmulOpEEEJPNS0_7DialectEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir23RegisteredOperationName5ModelINS_6linalg13BatchMatmulOpEEE, i64 16), ptr %i.a, align 8, !tbaa !28, !noalias !3317
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @_ZN4mlir6detail14TypeIDResolverINS_6linalg6detail31BatchMatmulOpGenericAdaptorBase10PropertiesEvE2idE, ptr %i.n, align 8, !tbaa !24, !noalias !3317
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !3317
  store ptr %i.a, ptr %2, align 8, !tbaa !31
end_hunk_2
begin_hunk_3_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_11SingleBlockENS2_29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplENS2_12OpInvariantsENS_23MemoryEffectOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_25HasRecursiveMemoryEffectsENS_27DestinationStyleOpInterface5TraitENS_22IndexingMapOpInterface5TraitENSB_8LinalgOp5TraitENS_32ReifyRankedShapedTypeOpInterface5TraitENS_16OpAsmOpInterface5TraitEEEEbNS_6TypeIDE:bb.a

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.153, i64 49), i64 33) #23
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplEEES0_v.exit, !prof !21

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.154, i64 49), i64 80) #23
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !21

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.113, i64 49), i64 34) #23
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait29SingleBlockImplicitTerminatorINS_6linalg7YieldOpEE4ImplEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !21

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.117, i64 49), i64 43) #23
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !21

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.115, i64 49), i64 45) #23
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, !prof !21

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.156, i64 49), i64 47) #23
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25HasRecursiveMemoryEffectsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, !prof !21

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #23
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25HasRecursiveMemoryEffectsEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_22IndexingMapOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_22IndexingMapOpInterface5TraitEEES0_v.exit, !prof !21

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_22IndexingMapOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_22IndexingMapOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.157, i64 49), i64 42) #23
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_22IndexingMapOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_22IndexingMapOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_22IndexingMapOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_22IndexingMapOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_22IndexingMapOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_6linalg8LinalgOp5TraitEEES0_v.exit, !prof !21

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_22IndexingMapOpInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_6linalg8LinalgOp5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.158, i64 49), i64 36) #23
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_6linalg8LinalgOp5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_6linalg8LinalgOp5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_22IndexingMapOpInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg8LinalgOp5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit, !prof !21

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_6linalg8LinalgOp5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.130, i64 49), i64 52) #23
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_6linalg8LinalgOp5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.be = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, !prof !21

bb.ad:                                            ; preds = %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit
  %i.bg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i34 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i34, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.180, i64 49), i64 36) #23
  store ptr %i.bh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit, %bb.ad, %bb.ae
  %.sroa.01.0.copyload.i.i.i33 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.bi = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bj = insertelement <8 x ptr> %i.bi, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bk = insertelement <8 x ptr> %i.bj, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bl = insertelement <8 x ptr> %i.bk, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.bm = insertelement <8 x ptr> %i.bl, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bn = insertelement <8 x ptr> %i.bm, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bo = insertelement <8 x ptr> %i.bn, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bp = insertelement <8 x ptr> %i.bo, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.bq = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.br = shufflevector <8 x ptr> %i.bq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bs = icmp eq <8 x ptr> %i.bp, %i.br
  %i.bt = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bu = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bv = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bw = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bx = icmp eq ptr %.sroa.01.0.copyload.i.i.i29, %0
  %i.by = icmp eq ptr %.sroa.01.0.copyload.i.i.i31, %0
  %i.bz = icmp eq ptr %.sroa.01.0.copyload.i.i.i33, %0
  %i.ca = freeze <8 x i1> %i.bs
  %i.cb = bitcast <8 x i1> %i.ca to i8
  %i.cc = icmp ne i8 %i.cb, 0
  %op.rdx = select i1 %i.cc, i1 true, i1 %i.bt
  %1 = select i1 %op.rdx, i1 true, i1 %i.bu
  %op.rdx54 = select i1 %1, i1 true, i1 %i.bv
  %2 = select i1 %op.rdx54, i1 true, i1 %i.bw
  %3 = select i1 %2, i1 true, i1 %i.bx
  %4 = select i1 %3, i1 true, i1 %i.by
  %op.rdx56 = select i1 %4, i1 true, i1 %i.bz
  ret i1 %op.rdx56
}

declare i8 @_ZN4mlir6linalg5MapOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #1

declare void @_ZN4mlir6linalg5MapOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg5MapOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait11SingleBlockINS_6linalg5MapOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %3 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = and i32 %i.b, 8388607                    ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = lshr i32 %i.b, 21
  %i.i = and i32 %i.h, 2040
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !335
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !359
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.u, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !336  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !336
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !49
  store ptr @.str.159, ptr %5, align 8, !tbaa !39
  store i8 3, ptr %i.x, align 8, !tbaa !48
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #23
  %i.z = load ptr, ptr %4, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 5, ptr %3, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %indvars.iv, ptr %i.ab, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !66
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !67

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !68
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !65
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !65
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.pr = load ptr, ptr %4, align 8, !tbaa !58
  %.not.i.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store i32 3, ptr %2, align 8, !tbaa !61
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.160, ptr %i.al, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 22, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !44
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !66
  %.not.i.i.i.i.i13 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i.i.i.i13, label %bb.i, label %bb.h, !prof !67

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !68
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !65
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !65
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i
  %i.at = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #23
  %i.au = load ptr, ptr %4, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !69, !range !70, !noundef !71
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8, !tbaa !69
  br i1 %i.ax, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ay) #23
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.loopexit

bb.m:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !359
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 1, ptr %i.bc, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !49
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %7) #23
  %i.be = load ptr, ptr %6, align 8, !tbaa !58
  %.not.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRA26_KcEEOS0_OT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  store i32 3, ptr %1, align 8, !tbaa !61
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.161, ptr %i.bg, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 25, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !65 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !66
  %.not.i.i.i.i.i16 = icmp ult i32 %i.bi, %i.bk
  br i1 %.not.i.i.i.i.i16, label %bb.q, label %bb.p, !prof !67

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA26_KcEERS0_OT_.exit.i.i

bb.q:                                             ; preds = %bb.o
end_hunk_3
begin_hunk_4_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj2EE4ImplENS2_24AttrSizedOperandSegmentsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_6linalg19RelayoutOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS_23MemoryEffectOpInterface5TraitENS_32ReifyRankedShapedTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.111, i64 49), i64 36) #23
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, !prof !21

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.279, i64 49), i64 47) #23
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, !prof !21

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.155, i64 49), i64 46) #23
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !21

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.113, i64 49), i64 34) #23
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !21

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.114, i64 49), i64 39) #23
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, !prof !21

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.180, i64 49), i64 36) #23
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, !prof !21

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #23
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg19RelayoutOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit, !prof !21

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg19RelayoutOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.280, i64 49), i64 47) #23
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg19RelayoutOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg19RelayoutOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg19RelayoutOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !21

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.115, i64 49), i64 45) #23
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !21

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.117, i64 49), i64 43) #23
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit, !prof !21

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.130, i64 49), i64 52) #23
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ba = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bb = insertelement <8 x ptr> %i.ba, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bc = insertelement <8 x ptr> %i.bb, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bd = insertelement <8 x ptr> %i.bc, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.be = insertelement <8 x ptr> %i.bd, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bf = insertelement <8 x ptr> %i.be, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bh = insertelement <8 x ptr> %i.bg, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.bi = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bj = shufflevector <8 x ptr> %i.bi, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bk = icmp eq <8 x ptr> %i.bh, %i.bj
  %i.bl = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bm = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bn = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bo = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bp = icmp eq ptr %.sroa.01.0.copyload.i.i.i29, %0
  %i.bq = freeze <8 x i1> %i.bk
  %i.br = bitcast <8 x i1> %i.bq to i8
  %i.bs = icmp ne i8 %i.br, 0
  %op.rdx = select i1 %i.bs, i1 true, i1 %i.bl
  %1 = select i1 %op.rdx, i1 true, i1 %i.bm
  %op.rdx47 = select i1 %1, i1 true, i1 %i.bn
  %2 = select i1 %op.rdx47, i1 true, i1 %i.bo
  %op.rdx48 = select i1 %2, i1 true, i1 %i.bp
  ret i1 %op.rdx48
}

declare i8 @_ZN4mlir6linalg6PackOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #1

declare void @_ZN4mlir6linalg6PackOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg6PackOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg6PackOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare { ptr, i8 } @_ZN4mlir6linalg6PackOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail24PackOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr, i64) local_unnamed_addr #1

declare void @_ZN4mlir6linalg6PackOp15setInherentAttrERNS0_6detail24PackOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(40), ptr, i64, ptr) local_unnamed_addr #1

declare void @_ZN4mlir6linalg6PackOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail24PackOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg6PackOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg6PackOp21setPropertiesFromAttrERNS0_6detail24PackOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr, ptr, i64) local_unnamed_addr #1

declare ptr @_ZN4mlir6linalg6PackOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24PackOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare i64 @_ZN4mlir6linalg6PackOp21computePropertiesHashERKNS0_6detail24PackOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir13OperationName4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !68
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.a
  %i.g = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir6detail12InterfaceMapD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef %i.g) #23
  br label %_ZN4mlir6detail12InterfaceMapD2Ev.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.09.i = phi ptr [ %i.l, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189
  tail call void @free(ptr noundef %i.k) #23
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

_ZN4mlir6detail12InterfaceMapD2Ev.exit:           ; preds = %._crit_edge.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg8UnPackOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !68
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #23, !inline_history !196
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189
  tail call void @free(ptr noundef %i.k) #23, !inline_history !196
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg8UnPackOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  %5 = alloca %"class.mlir::linalg::UnPackOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::linalg::UnPackOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6linalg6detail26UnPackOpGenericAdaptorBaseC2ENS0_8UnPackOpE(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr %2, ptr %i.a, align 8, !tbaa !198
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !44
  %i.b = call i8 @_ZN4mlir6linalg8UnPackOp4foldENS0_22UnPackOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEERNS3_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::linalg::UnPackOpGenericAdaptor") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg8UnPackOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir6linalg8UnPackOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg8UnPackOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_6linalg19RelayoutOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS_23MemoryEffectOpInterface5TraitENS_32ReifyRankedShapedTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg8UnPackOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.390") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir6linalg8UnPackOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !43
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !200
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg8UnPackOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg8UnPackOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::linalg::UnPackOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir6linalg8UnPackOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_6linalg8UnPackOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::linalg::UnPackOp", align 8 ; 4 uses
  %3 = alloca %"class.mlir::linalg::UnPackOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #23
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg8UnPackOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS4_19RelayoutOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #23
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg8UnPackOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS4_19RelayoutOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef %1, i32 noundef 2) #23
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg8UnPackOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS4_19RelayoutOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg8UnPackOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS4_19RelayoutOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg8UnPackOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS4_19RelayoutOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread.i: ; preds = %bb.b, %bb.a, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  br label %_ZN4mlir2OpINS_6linalg8UnPackOpEJNS_7OpTrait11ZeroRegionsENS3_15VariadicResultsENS3_14ZeroSuccessorsENS3_16AtLeastNOperandsILj2EE4ImplENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS1_19RelayoutOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS_23MemoryEffectOpInterface5TraitENS_32ReifyRankedShapedTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_6linalg8UnPackOpEEENS2_15VariadicResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EENS_27DestinationStyleOpInterface5TraitIS5_EENS4_19RelayoutOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_32ReifyRankedShapedTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %1, ptr %2, align 8
  %i.g = call i8 @_ZN4mlir6linalg8UnPackOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
end_hunk_4
begin_hunk_5_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_15VariadicResultsENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_27DestinationStyleOpInterface5TraitENS_6linalg19RelayoutOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS_23MemoryEffectOpInterface5TraitENS_32ReifyRankedShapedTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.127, i64 49), i64 37) #23
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait15VariadicResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !21

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.111, i64 49), i64 36) #23
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait15VariadicResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, !prof !21

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.279, i64 49), i64 47) #23
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !21

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.113, i64 49), i64 34) #23
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj2EE4ImplEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !21

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.114, i64 49), i64 39) #23
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, !prof !21

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.180, i64 49), i64 36) #23
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, !prof !21

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.129, i64 49), i64 47) #23
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_27DestinationStyleOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg19RelayoutOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit, !prof !21

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg19RelayoutOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.280, i64 49), i64 47) #23
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg19RelayoutOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_6linalg19RelayoutOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_27DestinationStyleOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_6linalg19RelayoutOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !21

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.115, i64 49), i64 45) #23
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_6linalg19RelayoutOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !21

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.117, i64 49), i64 43) #23
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit, !prof !21

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.130, i64 49), i64 52) #23
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #23
  br label %_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_32ReifyRankedShapedTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_32ReifyRankedShapedTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !24
  %i.aw = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.ax = insertelement <8 x ptr> %i.aw, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.ay = insertelement <8 x ptr> %i.ax, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.az = insertelement <8 x ptr> %i.ay, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.ba = insertelement <8 x ptr> %i.az, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bb = insertelement <8 x ptr> %i.ba, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bc = insertelement <8 x ptr> %i.bb, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bd = insertelement <8 x ptr> %i.bc, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.be = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bf = shufflevector <8 x ptr> %i.be, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bg = icmp eq <8 x ptr> %i.bd, %i.bf
  %i.bh = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bi = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bj = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bk = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bl = freeze <8 x i1> %i.bg
  %i.bm = bitcast <8 x i1> %i.bl to i8
  %i.bn = icmp ne i8 %i.bm, 0
  %op.rdx = select i1 %i.bn, i1 true, i1 %i.bh
  %1 = select i1 %op.rdx, i1 true, i1 %i.bi
  %op.rdx43 = select i1 %1, i1 true, i1 %i.bj
  %op.rdx44 = select i1 %op.rdx43, i1 true, i1 %i.bk
  ret i1 %op.rdx44
}

declare i8 @_ZN4mlir6linalg8UnPackOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #1

declare void @_ZN4mlir6linalg8UnPackOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg8UnPackOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg8UnPackOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare { ptr, i8 } @_ZN4mlir6linalg8UnPackOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail26UnPackOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #1

declare void @_ZN4mlir6linalg8UnPackOp15setInherentAttrERNS0_6detail26UnPackOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, ptr) local_unnamed_addr #1

declare void @_ZN4mlir6linalg8UnPackOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail26UnPackOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg8UnPackOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #1

declare i8 @_ZN4mlir6linalg8UnPackOp21setPropertiesFromAttrERNS0_6detail26UnPackOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr, ptr, i64) local_unnamed_addr #1

declare ptr @_ZN4mlir6linalg8UnPackOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail26UnPackOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare i64 @_ZN4mlir6linalg8UnPackOp21computePropertiesHashERKNS0_6detail26UnPackOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr, i64) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm13StringMapImpl15LookupBucketForENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20), ptr, i64, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN4llvm13StringMapImpl11RehashTableEj(ptr noundef nonnull align 8 dereferenceable(20), i32 noundef) local_unnamed_addr #1

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRN4mlir20ImplicitLocOpBuilderERNS1_5BlockENS_8ArrayRefINS1_14NamedAttributeEEENS0_IFNS1_18InFlightDiagnosticEvEEEEE11callback_fnISC_EEvlS3_S5_S8_SB_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr %3, i64 %4, ptr noundef byval(%"class.llvm::function_ref.400") align 8 %5) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.sroa.0.0.copyload = load ptr, ptr %5, align 8, !tbaa !43
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !44
  tail call void %i.a(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr %3, i64 %4, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #23
  ret void
}

declare void @_ZN4mlir7Dialect12addInterfaceESt10unique_ptrINS_16DialectInterfaceESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122LinalgInlinerInterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN4mlir16DialectInterfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir23DialectInlinerInterface15isLegalToInlineEPNS_9OperationES2_b(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_122LinalgInlinerInterface15isLegalToInlineEPN4mlir6RegionES3_bRNS1_9IRMappingE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i1 zeroext %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #3 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK12_GLOBAL__N_122LinalgInlinerInterface15isLegalToInlineEPN4mlir9OperationEPNS1_6RegionEbRNS1_9IRMappingE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, i1 zeroext %3, ptr nofree nonnull readnone align 8 captures(none) %4) unnamed_addr #3 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir23DialectInlinerInterface24shouldAnalyzeRecursivelyEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4mlir23DialectInlinerInterface16handleTerminatorEPNS_9OperationEPNS_5BlockE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK12_GLOBAL__N_122LinalgInlinerInterface16handleTerminatorEPN4mlir9OperationENS1_10ValueRangeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4mlir23DialectInlinerInterface25materializeCallConversionERNS_9OpBuilderENS_5ValueENS_4TypeENS_8LocationE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %2, ptr %3, ptr %4) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK4mlir23DialectInlinerInterface14handleArgumentERNS_9OpBuilderEPNS_9OperationES4_NS_5ValueENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK4mlir23DialectInlinerInterface12handleResultERNS_9OpBuilderEPNS_9OperationES4_NS_5ValueENS_14DictionaryAttrE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr %4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4mlir23DialectInlinerInterface24processInlinedCallBlocksEPNS_9OperationEN4llvm14iterator_rangeINS3_14ilist_iteratorINS3_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir23DialectInlinerInterface28allowSingleBlockOptimizationEN4llvm14iterator_rangeINS1_14ilist_iteratorINS1_12ilist_detail12node_optionsINS_5BlockELb0ELb0EvLb0EvEELb0ELb0EEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIN4mlir6TypeIDES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !384, !noalias !11858 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !385, !noalias !11858 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !386, !noalias !11858 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.01.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !24 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.01.0.copyload.i.i to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.m, align 8, !tbaa !24 ; 2 uses
  %i.n = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = shl i64 %i.l, 32
  %i.s = and i64 %i.q, 4294967295
  %i.t = or disjoint i64 %i.s, %i.r
  %i.u = mul i64 %i.t, -4658895280553007687       ; 2 uses
  %i.v = lshr i64 %i.u, 31
  %i.w = xor i64 %i.v, %i.u
  %i.x = trunc i64 %i.w to i32
  %i.y = and i32 %i.h, %i.x                       ; 3 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.z ; 2 uses
  %i.ab = lshr i64 %i.z, 5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !298
  %i.ae = and i32 %i.y, 31
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc i32 %i.af to i1
  br i1 %i.ag, label %.lr.ph.i, label %.loopexit, !prof !387

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.ap, %bb.c ], [ %i.aa, %bb.b ] ; 3 uses
  %.026.i = phi i32 [ %i.an, %bb.c ], [ %i.y, %bb.b ]
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.ah, align 8, !tbaa !24
  %i.ai = icmp eq ptr %.sroa.01.0.copyload.i.i, %.sroa.02.0.copyload.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.0.0.copyload.i21.i = load ptr, ptr %i.aj, align 8
  %i.ak = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i21.i
  %i.al = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %i.al, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIN4mlir6TypeIDES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E15LookupBucketForIS5_EEbRKT_RPSB_.exit, label %bb.c, !prof !67

bb.c:                                             ; preds = %.lr.ph.i
  %i.am = add nuw i32 %.026.i, 1
  %i.an = and i32 %i.am, %i.h                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !298
  %i.at = and i32 %i.an, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph.i, label %.loopexit, !prof !388, !llvm.loop !12

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.aa, %bb.b ], [ null, %bb.a ], [ %i.ap, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !389
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !390
  %i.ay = shl i32 %i.ax, 2
  %i.az = add i32 %i.ay, 4
  %i.ba = mul i32 %i.f, 3
end_hunk_5
