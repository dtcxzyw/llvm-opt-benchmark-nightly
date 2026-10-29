Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/FuncTransformOps?download=true
inline.NumInlined: 7972
inline.NumDeleted: 3747
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_9OneResultENS2_14OneTypedResultINS_9transform28TransformHandleTypeInterfaceEE4ImplENS2_14ZeroSuccessorsENS2_16AtLeastNOperandsILj1EE4ImplENS2_24AttrSizedOperandSegmentsENS2_12NoTerminatorENS2_11SingleBlockENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS6_20TransformOpInterface5TraitENS_23MemoryEffectOpInterface5TraitENS6_37ReportTrackingListenerFailuresOpTraitENS_19RegionKindInterface5TraitENS2_18HasOnlyGraphRegionEEEEbNS_6TypeIDE:bb.a

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.152, i64 49), i64 47) #26
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16AtLeastNOperandsILj1EE4ImplIZNS_6TypeID3getIS5_EES6_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !171
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, !prof !188

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.153, i64 49), i64 46) #26
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16AtLeastNOperandsILj1EE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait24AttrSizedOperandSegmentsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !171
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit, !prof !188

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.154, i64 49), i64 34) #26
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait24AttrSizedOperandSegmentsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12NoTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !171
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, !prof !188

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.155, i64 49), i64 33) #26
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12NoTerminatorEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !171
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !188

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.142, i64 49), i64 34) #26
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !171
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !188

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.156, i64 49), i64 39) #26
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !171
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, !prof !188

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.157, i64 49), i64 51) #26
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform20TransformOpInterface5TraitIZNS_6TypeID3getIS4_EES5_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !171
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !188

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.158, i64 49), i64 43) #26
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform20TransformOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !171
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit, !prof !188

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.159, i64 49), i64 61) #26
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_9transform37ReportTrackingListenerFailuresOpTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !171
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, !prof !188

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.160, i64 49), i64 39) #26
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_9transform37ReportTrackingListenerFailuresOpTraitEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !171
  %i.be = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.ad, label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit, !prof !188

bb.ad:                                            ; preds = %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit
  %i.bg = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i34 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i34, label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.161, i64 49), i64 40) #26
  store ptr %i.bh, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, %bb.ad, %bb.ae
  %.sroa.01.0.copyload.i.i.i33 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !171
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
  %.fr = freeze i1 %i.bt
  %op.rdx = or i1 %i.cc, %.fr
  %1 = freeze i1 %i.bu
  %2 = freeze i1 %i.bw
  %.fr57 = freeze i1 %i.bx
  %op.rdx52 = or i1 %2, %.fr57
  %3 = freeze i1 %i.by
  %4 = or i1 %op.rdx, %1
  %.fr58 = freeze i1 %i.bv
  %op.rdx54 = or i1 %4, %.fr58
  %5 = or i1 %op.rdx52, %3
  %6 = or i1 %op.rdx54, %5
  %op.rdx56 = select i1 %6, i1 true, i1 %i.bz
  ret i1 %op.rdx56
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait9OneRegionINS_9transform13CastAndCallOpEEENS2_9OneResultIS5_EENS2_14OneTypedResultINS4_28TransformHandleTypeInterfaceEE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16AtLeastNOperandsILj1EE4ImplIS5_EENS2_24AttrSizedOperandSegmentsIS5_EENS2_12NoTerminatorIS5_EENS2_11SingleBlockIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS4_20TransformOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS4_37ReportTrackingListenerFailuresOpTraitIS5_EENS_19RegionKindInterface5TraitIS5_EENS2_18HasOnlyGraphRegionIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::transform::CastAndCallOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef %0) #26
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef %0) #26
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #26
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef %0, i32 noundef 1) #26
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i8 @_ZN4mlir7OpTrait4impl21verifyOperandSizeAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef %0, ptr nonnull @.str.49, i64 19) #26
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i8 @_ZN4mlir7OpTrait11SingleBlockINS_9transform13CastAndCallOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %0, ptr %1, align 8
  %i.m = call i8 @_ZN4mlir9transform13CastAndCallOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = call i8 @_ZN4mlir9transform6detail26verifyTransformOpInterfaceEPNS_9OperationE(ptr noundef %0) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %bb.d, %bb.a
  %i.p = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.o, %bb.h ], [ 0, %bb.f ]
  ret i8 %i.p
}

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef) local_unnamed_addr #1

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef) local_unnamed_addr #1

declare i8 @_ZN4mlir7OpTrait4impl22verifyAtLeastNOperandsEPNS_9OperationEj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i8 @_ZN4mlir7OpTrait4impl21verifyOperandSizeAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef, ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait11SingleBlockINS_9transform13CastAndCallOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %3 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 13 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !125
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.m, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !127
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !31
  store ptr @.str.162, ptr %4, align 8, !tbaa !32
  store i8 3, ptr %i.x, align 8, !tbaa !33
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %4) #26
  %i.z = load ptr, ptr %3, align 8, !tbaa !43
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i32 5, ptr %2, align 8, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %indvars.iv, ptr %i.ab, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !50
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !55

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !49
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !49
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.pr = load ptr, ptr %3, align 8, !tbaa !43
  %.not.i.i8 = icmp eq ptr %.pr, null
  br i1 %.not.i.i8, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i32 3, ptr %1, align 8, !tbaa !88
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.163, ptr %i.al, align 8, !tbaa !90
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 22, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !92
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !49 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !50
  %.not.i.i.i.i.i9 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i.i.i.i9, label %bb.i, label %bb.h, !prof !55

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !48
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !49
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !49
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i
  %i.at = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #26
  %i.au = load ptr, ptr %3, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !44, !range !45, !noundef !46
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8, !tbaa !44
  br i1 %i.ax, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
end_hunk_0
