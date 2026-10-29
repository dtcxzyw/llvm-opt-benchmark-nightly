Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ComplexDialect?download=true
inline.NumInlined: 11393
inline.NumDeleted: 5697
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9FloatTypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9FloatTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.33, i64 49), i64 59) #20
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9FloatTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9FloatTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9FloatTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9FloatTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_9FloatTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !34

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9FloatTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 36) #20
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_9FloatTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !34

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 32) #20
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !34

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 34) #20
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !34

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 39) #20
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !34

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 45) #20
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !34

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 49) #20
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !34

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 43) #20
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !34

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 49), i64 33) #20
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, !prof !34

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 49) #20
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !34

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 40) #20
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
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

declare i8 @_ZN4mlir7complex5AbsOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !104
  %i.b = tail call i8 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #20, !inline_history !334
  ret i8 %i.b
}

declare void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir7complex5AbsOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex5AbsOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir7complex5AbsOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail23AbsOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir7complex5AbsOp15setInherentAttrERNS0_6detail23AbsOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4mlir7complex5AbsOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail23AbsOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex5AbsOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir7complex5AbsOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail23AbsOpGenericAdaptorBase10PropertiesE(ptr, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex5AbsOp21setPropertiesFromAttrERNS0_6detail23AbsOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7complex5AbsOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail23AbsOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir7complex5AbsOp21computePropertiesHashERKNS0_6detail23AbsOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5AddOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #20, !inline_history !103
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.k) #20, !inline_history !103
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5AddOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::complex::AddOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::complex::AddOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir7complex6detail23AddOpGenericAdaptorBaseC2ENS0_5AddOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !77
  %i.b = call i64 @_ZN4mlir7complex5AddOp4foldENS0_19AddOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::complex::AddOpGenericAdaptor") align 8 %6) #20 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.c = icmp ugt i64 %i.b, 7                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16
  %i.h = icmp eq ptr %i.g, %i.f
  %i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge.i.i.i.i, label %bb.c

.critedge.i.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.j = zext i1 %i.c to i8
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !78
  %.not.i.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.b)
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %4, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store i64 %i.b, ptr %i.q, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !46
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !46
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.e, %bb.d, %.critedge.i.i.i.i
  %.sroa.014.0.i.i.i.i = phi i8 [ %i.j, %.critedge.i.i.i.i ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %.sroa.014.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5AddOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5AddOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_11ComplexTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_25SameOperandsAndResultTypeENS2_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5AddOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.157") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir7complex5AddOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !104
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5AddOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5AddOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::complex::AddOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir7complex5AddOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5AddOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_7complex5AddOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_11ComplexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_25SameOperandsAndResultTypeIS5_EENS2_11ElementwiseIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %1)
  ret i8 %i.a
end_hunk_0
begin_hunk_1_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_11ComplexTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_25SameOperandsAndResultTypeENS2_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 36) #20
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, !prof !34

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 49), i64 40) #20
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !34

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 34) #20
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !34

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 39) #20
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !34

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 45) #20
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !34

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 49) #20
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !34

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 43) #20
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, !prof !34

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.47, i64 49), i64 47) #20
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !34

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 49), i64 33) #20
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, !prof !34

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 49) #20
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !34

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 40) #20
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.be = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bf = insertelement <8 x ptr> %i.be, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bh = insertelement <8 x ptr> %i.bg, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.bi = insertelement <8 x ptr> %i.bh, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bj = insertelement <8 x ptr> %i.bi, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bk = insertelement <8 x ptr> %i.bj, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bl = insertelement <8 x ptr> %i.bk, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.bm = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bn = shufflevector <8 x ptr> %i.bm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bo = icmp eq <8 x ptr> %i.bl, %i.bn
  %i.bp = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bq = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.br = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bs = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bt = icmp eq ptr %.sroa.01.0.copyload.i.i.i29, %0
  %i.bu = icmp eq ptr %.sroa.01.0.copyload.i.i.i31, %0
  %i.bv = freeze <8 x i1> %i.bo
  %i.bw = bitcast <8 x i1> %i.bv to i8
  %i.bx = icmp ne i8 %i.bw, 0
  %op.rdx = select i1 %i.bx, i1 true, i1 %i.bp
  %1 = select i1 %op.rdx, i1 true, i1 %i.bq
  %op.rdx50 = select i1 %1, i1 true, i1 %i.br
  %2 = select i1 %op.rdx50, i1 true, i1 %i.bs
  %3 = select i1 %2, i1 true, i1 %i.bt
  %op.rdx52 = select i1 %3, i1 true, i1 %i.bu
  ret i1 %op.rdx52
}

declare i8 @_ZN4mlir7complex5AddOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir7complex5AddOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_7complex5AddOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_11ComplexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_25SameOperandsAndResultTypeIS5_EENS2_11ElementwiseIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::complex::AddOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #20
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #20
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #20
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 2) #20
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir7complex5AddOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef %0) #20
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %0) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.m, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex5AddOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir7complex5AddOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail23AddOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir7complex5AddOp15setInherentAttrERNS0_6detail23AddOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir7complex5AddOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail23AddOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex5AddOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir7complex5AddOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail23AddOpGenericAdaptorBase10PropertiesE(ptr, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex5AddOp21setPropertiesFromAttrERNS0_6detail23AddOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7complex5AddOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail23AddOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir7complex5AddOp21computePropertiesHashERKNS0_6detail23AddOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex7AngleOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #20, !inline_history !103
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.k) #20, !inline_history !103
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex7AngleOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex7AngleOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex7AngleOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9FloatTypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex7AngleOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.157") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir7complex7AngleOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !104
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex7AngleOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex7AngleOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::complex::AngleOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir7complex7AngleOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex7AngleOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::complex::AngleOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #20
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir2OpINS_7complex7AngleOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9FloatTypeEE4ImplENS3_14ZeroSuccessorsENS3_10OneOperandENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS3_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %1) #20
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir2OpINS_7complex7AngleOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9FloatTypeEE4ImplENS3_14ZeroSuccessorsENS3_10OneOperandENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS3_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #20
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4mlir2OpINS_7complex7AngleOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9FloatTypeEE4ImplENS3_14ZeroSuccessorsENS3_10OneOperandENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS3_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %1) #20
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %_ZN4mlir2OpINS_7complex7AngleOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9FloatTypeEE4ImplENS3_14ZeroSuccessorsENS3_10OneOperandENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS3_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %1, ptr %2, align 8
  %i.i = call i8 @_ZN4mlir7complex7AngleOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_7complex7AngleOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9FloatTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir2OpINS_7complex7AngleOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9FloatTypeEE4ImplENS3_14ZeroSuccessorsENS3_10OneOperandENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS3_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_7complex7AngleOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9FloatTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.d
  %i.k = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %1) #20
  br label %_ZN4mlir2OpINS_7complex7AngleOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9FloatTypeEE4ImplENS3_14ZeroSuccessorsENS3_10OneOperandENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS3_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_7complex7AngleOpEJNS_7OpTrait11ZeroRegionsENS3_9OneResultENS3_14OneTypedResultINS_9FloatTypeEE4ImplENS3_14ZeroSuccessorsENS3_10OneOperandENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS3_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit, %bb.a, %bb.b, %bb.c, %bb.d, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_7complex7AngleOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_9FloatTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
end_hunk_1
begin_hunk_2_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_11ComplexTypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_25SameOperandsAndResultTypeENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 36) #20
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, !prof !34

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.35, i64 49), i64 32) #20
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10OneOperandIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !34

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 34) #20
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10OneOperandEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !34

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 39) #20
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, !prof !34

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.47, i64 49), i64 47) #20
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait25SameOperandsAndResultTypeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !34

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 45) #20
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait25SameOperandsAndResultTypeEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !34

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 49) #20
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !34

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 43) #20
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !34

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 49), i64 33) #20
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, !prof !34

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 49) #20
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !34

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 40) #20
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.be = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bf = insertelement <8 x ptr> %i.be, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bh = insertelement <8 x ptr> %i.bg, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.bi = insertelement <8 x ptr> %i.bh, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bj = insertelement <8 x ptr> %i.bi, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bk = insertelement <8 x ptr> %i.bj, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bl = insertelement <8 x ptr> %i.bk, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.bm = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bn = shufflevector <8 x ptr> %i.bm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bo = icmp eq <8 x ptr> %i.bl, %i.bn
  %i.bp = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bq = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.br = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bs = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bt = icmp eq ptr %.sroa.01.0.copyload.i.i.i29, %0
  %i.bu = icmp eq ptr %.sroa.01.0.copyload.i.i.i31, %0
  %i.bv = freeze <8 x i1> %i.bo
  %i.bw = bitcast <8 x i1> %i.bv to i8
  %i.bx = icmp ne i8 %i.bw, 0
  %op.rdx = select i1 %i.bx, i1 true, i1 %i.bp
  %1 = select i1 %op.rdx, i1 true, i1 %i.bq
  %op.rdx50 = select i1 %1, i1 true, i1 %i.br
  %2 = select i1 %op.rdx50, i1 true, i1 %i.bs
  %3 = select i1 %2, i1 true, i1 %i.bt
  %op.rdx52 = select i1 %3, i1 true, i1 %i.bu
  ret i1 %op.rdx52
}

declare i8 @_ZN4mlir7complex6ConjOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir7complex6ConjOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_7complex6ConjOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_11ComplexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_25SameOperandsAndResultTypeIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::complex::ConjOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #20
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #20
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #20
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl16verifyOneOperandEPNS_9OperationE(ptr noundef %0) #20
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir7complex6ConjOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl31verifySameOperandsAndResultTypeEPNS_9OperationE(ptr noundef %0) #20
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %0) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir7complex6ConjOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir7complex6ConjOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail24ConjOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir7complex6ConjOp15setInherentAttrERNS0_6detail24ConjOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir7complex6ConjOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail24ConjOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex6ConjOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir7complex6ConjOp25populateDefaultPropertiesENS_13OperationNameERNS0_6detail24ConjOpGenericAdaptorBase10PropertiesE(ptr, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex6ConjOp21setPropertiesFromAttrERNS0_6detail24ConjOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7complex6ConjOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24ConjOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir7complex6ConjOp21computePropertiesHashERKNS0_6detail24ConjOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex10ConstantOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #20, !inline_history !103
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.k) #20, !inline_history !103
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex10ConstantOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::complex::ConstantOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::complex::ConstantOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir7complex6detail28ConstantOpGenericAdaptorBaseC2ENS0_10ConstantOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !77
  %i.b = call i64 @_ZN4mlir7complex10ConstantOp4foldENS0_24ConstantOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::complex::ConstantOpGenericAdaptor") align 8 %6) #20 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.c = icmp ugt i64 %i.b, 7                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16
  %i.h = icmp eq ptr %i.g, %i.f
  %i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge.i.i.i.i, label %bb.c

.critedge.i.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.j = zext i1 %i.c to i8
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !78
  %.not.i.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.b)
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %4, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store i64 %i.b, ptr %i.q, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !46
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !46
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.e, %bb.d, %.critedge.i.i.i.i
  %.sroa.014.0.i.i.i.i = phi i8 [ %i.j, %.critedge.i.i.i.i ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %.sroa.014.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex10ConstantOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex10ConstantOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_11ComplexTypeEE4ImplENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_12ConstantLikeENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_16OpAsmOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex10ConstantOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.157") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir7complex10ConstantOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !104
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex10ConstantOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
end_hunk_2
begin_hunk_3_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_11ComplexTypeEE4ImplENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_12ConstantLikeENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_16OpAsmOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 49), i64 31) #20
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplEEES0_v.exit, !prof !34

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 49), i64 61) #20
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !34

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 36) #20
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, !prof !34

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.57, i64 49), i64 34) #20
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !34

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 34) #20
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !34

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 39) #20
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait12ConstantLikeEEES0_v.exit, !prof !34

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait12ConstantLikeEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.58, i64 49), i64 34) #20
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ConstantLikeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ConstantLikeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ConstantLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !34

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ConstantLikeEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 45) #20
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ConstantLikeEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !34

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 49) #20
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !34

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 43) #20
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, !prof !34

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.59, i64 49), i64 36) #20
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
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

declare i8 @_ZN4mlir7complex10ConstantOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir7complex10ConstantOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex10ConstantOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl18verifyZeroOperandsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex10ConstantOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir7complex10ConstantOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail28ConstantOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir7complex10ConstantOp15setInherentAttrERNS0_6detail28ConstantOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir7complex10ConstantOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail28ConstantOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex10ConstantOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex10ConstantOp21setPropertiesFromAttrERNS0_6detail28ConstantOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7complex10ConstantOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail28ConstantOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir7complex10ConstantOp21computePropertiesHashERKNS0_6detail28ConstantOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #20, !inline_history !103
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.k) #20, !inline_history !103
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_11ComplexTypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_25SameOperandsAndResultTypeENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.157") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir7complex5CosOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !104
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::complex::CosOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir7complex5CosOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_7complex5CosOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_11ComplexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_25SameOperandsAndResultTypeIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef %1) #20
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call { ptr, i8 } @_ZN4mlir7complex5CosOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail23CosOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %2, i64 %3) #20
  ret { ptr, i8 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 2 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.b, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.e
  %i.g = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @_ZN4mlir7complex5CosOp15setInherentAttrERNS0_6detail23CosOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr %i.h, i64 %i.i, ptr %3) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  tail call void @_ZN4mlir7complex5CosOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail23CosOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir7complex5CosOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) #20
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5CosOpEE21getOpPropertyByteSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 8
end_hunk_3
begin_hunk_4_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_11IntegerTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_11ElementwiseENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.31, i64 49), i64 33) #20
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !34

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 49), i64 31) #20
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_11IntegerTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11IntegerTypeEE4ImplEEES0_v.exit, !prof !34

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_11IntegerTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11IntegerTypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.65, i64 49), i64 61) #20
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_11IntegerTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_11IntegerTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11IntegerTypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11IntegerTypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_11IntegerTypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !34

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11IntegerTypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 36) #20
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11IntegerTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, !prof !34

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 49), i64 40) #20
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !34

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 34) #20
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !34

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 45) #20
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !34

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 49) #20
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !34

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 43) #20
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !34

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 49), i64 33) #20
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !34

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 40) #20
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
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

declare i8 @_ZN4mlir7complex7EqualOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir7complex7EqualOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex7EqualOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5ExpOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #20, !inline_history !103
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.k) #20, !inline_history !103
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5ExpOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::complex::ExpOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::complex::ExpOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir7complex6detail23ExpOpGenericAdaptorBaseC2ENS0_5ExpOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !77
  %i.b = call i64 @_ZN4mlir7complex5ExpOp4foldENS0_19ExpOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::complex::ExpOpGenericAdaptor") align 8 %6) #20 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.c = icmp ugt i64 %i.b, 7                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16
  %i.h = icmp eq ptr %i.g, %i.f
  %i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge.i.i.i.i, label %bb.c

.critedge.i.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.j = zext i1 %i.c to i8
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !78
  %.not.i.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.b)
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %4, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store i64 %i.b, ptr %i.q, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !46
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !46
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.e, %bb.d, %.critedge.i.i.i.i
  %.sroa.014.0.i.i.i.i = phi i8 [ %i.j, %.critedge.i.i.i.i ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %.sroa.014.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5ExpOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5ExpOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_11ComplexTypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_25SameOperandsAndResultTypeENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5ExpOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.157") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir7complex5ExpOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !104
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5ExpOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5ExpOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::complex::ExpOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir7complex5ExpOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5ExpOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_7complex5ExpOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_11ComplexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_10OneOperandIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS2_25SameOperandsAndResultTypeIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %1)
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5ExpOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir6detail25verifyInferredResultTypesEPNS_9OperationE(ptr noundef %1) #20
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5ExpOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call { ptr, i8 } @_ZN4mlir7complex5ExpOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail23ExpOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %2, i64 %3) #20
  ret { ptr, i8 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex5ExpOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.mlir::StringAttr", align 8  ; 2 uses
  store ptr %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.b, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = lshr i32 %i.b, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.d, 1
  %i.e = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.e
  %i.g = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_11ComplexTypeEE4ImplENS2_14ZeroSuccessorsENS2_9NOperandsILj2EE4ImplENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_11ElementwiseENS2_26SameOperandsAndResultShapeENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.34, i64 49), i64 36) #20
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_11ComplexTypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, !prof !34

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 49), i64 40) #20
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9NOperandsILj2EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !34

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 34) #20
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9NOperandsILj2EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !34

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 39) #20
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !34

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 45) #20
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !34

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 49) #20
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !34

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 43) #20
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, !prof !34

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 49), i64 33) #20
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ElementwiseIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait26SameOperandsAndResultShapeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait26SameOperandsAndResultShapeEEES0_v.exit, !prof !34

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait26SameOperandsAndResultShapeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait26SameOperandsAndResultShapeEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.76, i64 49), i64 48) #20
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait26SameOperandsAndResultShapeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait26SameOperandsAndResultShapeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_7OpTrait26SameOperandsAndResultShapeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait26SameOperandsAndResultShapeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ElementwiseEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait26SameOperandsAndResultShapeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, !prof !34

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait26SameOperandsAndResultShapeEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 49) #20
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait26SameOperandsAndResultShapeEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_5arith22ArithFastMathInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, !prof !34

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 40) #20
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #20
  br label %_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_20InferTypeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_5arith22ArithFastMathInterface5TraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !35
  %i.be = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.bf = insertelement <8 x ptr> %i.be, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.bg = insertelement <8 x ptr> %i.bf, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.bh = insertelement <8 x ptr> %i.bg, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.bi = insertelement <8 x ptr> %i.bh, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.bj = insertelement <8 x ptr> %i.bi, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.bk = insertelement <8 x ptr> %i.bj, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.bl = insertelement <8 x ptr> %i.bk, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.bm = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.bn = shufflevector <8 x ptr> %i.bm, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bo = icmp eq <8 x ptr> %i.bl, %i.bn
  %i.bp = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.bq = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.br = icmp eq ptr %.sroa.01.0.copyload.i.i.i25, %0
  %i.bs = icmp eq ptr %.sroa.01.0.copyload.i.i.i27, %0
  %i.bt = icmp eq ptr %.sroa.01.0.copyload.i.i.i29, %0
  %i.bu = icmp eq ptr %.sroa.01.0.copyload.i.i.i31, %0
  %i.bv = freeze <8 x i1> %i.bo
  %i.bw = bitcast <8 x i1> %i.bv to i8
  %i.bx = icmp ne i8 %i.bw, 0
  %op.rdx = select i1 %i.bx, i1 true, i1 %i.bp
  %1 = select i1 %op.rdx, i1 true, i1 %i.bq
  %op.rdx50 = select i1 %1, i1 true, i1 %i.br
  %2 = select i1 %op.rdx50, i1 true, i1 %i.bs
  %3 = select i1 %2, i1 true, i1 %i.bt
  %op.rdx52 = select i1 %3, i1 true, i1 %i.bu
  ret i1 %op.rdx52
}

declare i8 @_ZN4mlir7complex6PowiOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir7complex6PowiOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_7complex6PowiOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS_11ComplexTypeEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_9NOperandsILj2EE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS2_11ElementwiseIS5_EENS2_26SameOperandsAndResultShapeIS5_EENS_5arith22ArithFastMathInterface5TraitIS5_EENS_20InferTypeOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::complex::PowiOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #20
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #20
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #20
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl15verifyNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 2) #20
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir7complex6PowiOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl17verifyElementwiseEPNS_9OperationE(ptr noundef %0) #20
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir7OpTrait4impl32verifySameOperandsAndResultShapeEPNS_9OperationE(ptr noundef %0) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.c, %bb.e, %bb.f, %bb.d, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.m, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir7complex6PowiOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl32verifySameOperandsAndResultShapeEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir7complex6PowiOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail24PowiOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir7complex6PowiOp15setInherentAttrERNS0_6detail24PowiOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir7complex6PowiOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail24PowiOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex6PowiOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir7complex6PowiOp21setPropertiesFromAttrERNS0_6detail24PowiOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir7complex6PowiOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail24PowiOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir7complex6PowiOp21computePropertiesHashERKNS0_6detail24PowiOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex4ReOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #20, !inline_history !103
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.k) #20, !inline_history !103
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex4ReOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.mlir::complex::ReOp", align 8 ; 4 uses
  %6 = alloca %"class.mlir::complex::ReOpGenericAdaptor", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir7complex6detail22ReOpGenericAdaptorBaseC2ENS0_4ReOpE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %2, ptr %i.a, align 8, !tbaa !123
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %3, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !77
  %i.b = call i64 @_ZN4mlir7complex4ReOp4foldENS0_18ReOpGenericAdaptorIN4llvm8ArrayRefINS_9AttributeEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.mlir::complex::ReOpGenericAdaptor") align 8 %6) #20 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.c = icmp ugt i64 %i.b, 7                     ; 2 uses
  br i1 %i.c, label %bb.b, label %.critedge.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 4
  %.not.i.i.i.i.i.i = icmp ne i64 %i.d, 0
  %i.e = and i64 %i.b, -5
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds i8, ptr %1, i64 -16
  %i.h = icmp eq ptr %i.g, %i.f
  %i.i = select i1 %.not.i.i.i.i.i.i, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge.i.i.i.i, label %bb.c

.critedge.i.i.i.i:                                ; preds = %bb.b, %bb.a
  %i.j = zext i1 %i.c to i8
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !78
  %.not.i.i.i.i.i = icmp ult i32 %i.l, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !79

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir12OpFoldResultELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 %i.b)
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = zext i32 %i.l to i64
  %i.p = load ptr, ptr %4, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  store i64 %i.b, ptr %i.q, align 1
  %i.r = load i32, ptr %i.k, align 8, !tbaa !46
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.k, align 8, !tbaa !46
  br label %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit

_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit: ; preds = %bb.e, %bb.d, %.critedge.i.i.i.i
  %.sroa.014.0.i.i.i.i = phi i8 [ %i.j, %.critedge.i.i.i.i ], [ 1, %bb.d ], [ 1, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret i8 %.sroa.014.0.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex4ReOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4mlir7complex4ReOp27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_7complex4ReOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_9FloatTypeEE4ImplENS2_14ZeroSuccessorsENS2_10OneOperandENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS2_11ElementwiseENS_5arith22ArithFastMathInterface5TraitENS_20InferTypeOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex4ReOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.157") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir7complex4ReOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !104
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_7complex4ReOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_5
