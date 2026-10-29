Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MLProgramDialect?download=true
inline.NumInlined: 5395
inline.NumDeleted: 2779
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_17SymbolOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_19CallableOpInterface5TraitENS_19FunctionOpInterface5TraitENS2_19IsIsolatedFromAboveENS_19RegionKindInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 33) #19
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneRegionEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !15

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 36) #19
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, !prof !15

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 34) #19
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !15

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 34) #19
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !15

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 39) #19
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, !prof !15

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 49), i64 37) #19
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, !prof !15

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 48) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, !prof !15

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 39) #19
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, !prof !15

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 49), i64 39) #19
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, !prof !15

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 49), i64 41) #19
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, !prof !15

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 49), i64 39) #19
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
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

declare i8 @_ZN4mlir10ml_program6FuncOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !126
  %i.b = tail call i8 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(304) %2) #19, !inline_history !407
  ret i8 %i.b
}

declare void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir10ml_program6FuncOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait9OneRegionINS_10ml_program6FuncOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_12ZeroOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_17SymbolOpInterface5TraitIS5_EENS_28ArgAndResultAttrsOpInterface5TraitIS5_EENS_19CallableOpInterface5TraitIS5_EENS_19FunctionOpInterface5TraitIS5_EENS2_19IsIsolatedFromAboveIS5_EENS_19RegionKindInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::ml_program::FuncOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl18verifyZeroOperandsEPNS_9OperationE(ptr noundef %0) #19
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir10ml_program6FuncOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir6detail22SymbolOpInterfaceTraitINS_10ml_program6FuncOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir23function_interface_impl11verifyTraitINS_10ml_program6FuncOpEEEN4llvm13LogicalResultET_(ptr %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b, %bb.d, %bb.f, %bb.e, %bb.c, %bb.a
  %i.n = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ %i.m, %bb.g ], [ 0, %bb.f ]
  ret i8 %i.n
}

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl18verifyZeroOperandsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir10ml_program6FuncOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir6detail22SymbolOpInterfaceTraitINS_10ml_program6FuncOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::ml_program::FuncOp", align 8 ; 6 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 5 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.a = tail call i8 @_ZN4mlir6detail12verifySymbolEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir9Operation11getParentOpEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = and i32 %i.d, 8388607
  %i.f = icmp ne i32 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.h, 1
  %i.i = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.i
  %i.k = lshr i32 %i.d, 21
  %i.l = and i32 %i.k, 2040
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !176
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.q ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !177
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.u = tail call noundef i32 @_ZN4mlir11SymbolTable19getSymbolVisibilityEPNS_9OperationE(ptr noundef nonnull %0) #19
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !76
  store ptr @.str.47, ptr %3, align 8, !tbaa !85
  store i8 3, ptr %i.w, align 8, !tbaa !75
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #19
  %i.y = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #19
  %i.z = load ptr, ptr %2, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ac = trunc nuw i8 %i.ab to i1
  store i8 0, ptr %i.aa, align 8, !tbaa !43
  br i1 %i.ac, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ad) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZN4mlir9Operation11getParentOpEv.exit.thread

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !204
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.ah, align 1, !tbaa !76
  store ptr @.str.48, ptr %5, align 8, !tbaa !85
  store i8 3, ptr %i.ag, align 8, !tbaa !75
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #19
  %i.ai = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #19
  %i.aj = load ptr, ptr %4, align 8, !tbaa !42
  %.not.i10 = icmp eq ptr %i.aj, null
  br i1 %.not.i10, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !43, !range !44, !noundef !45
  %i.am = trunc nuw i8 %i.al to i1
  store i8 0, ptr %i.ak, align 8, !tbaa !43
  br i1 %i.am, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.an) #19
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

_ZN4mlir18InFlightDiagnosticD2Ev.exit11:          ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN4mlir9Operation11getParentOpEv.exit.thread

bb.m:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !205 ; 2 uses
  %.not.i12 = icmp eq ptr %i.ap, null
  br i1 %.not.i12, label %_ZN4mlir9Operation11getParentOpEv.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_21SymbolUserOpInterface5TraitEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.70, i64 49), i64 31) #19
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, !prof !15

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 54) #19
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !15

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 36) #19
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, !prof !15

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 34) #19
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !15

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 34) #19
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !15

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 39) #19
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !15

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.72, i64 49), i64 45) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !15

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.73, i64 49), i64 49) #19
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !15

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.74, i64 49), i64 43) #19
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, !prof !15

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.75, i64 49), i64 36) #19
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit, !prof !15

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.76, i64 49), i64 41) #19
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
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

declare i8 @_ZN4mlir10ml_program17GlobalLoadConstOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir10ml_program17GlobalLoadConstOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir7OpTrait4impl15verifyOneResultEPNS_9OperationE(ptr noundef) local_unnamed_addr #2

declare i8 @_ZN4mlir10ml_program17GlobalLoadConstOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir10ml_program17GlobalLoadConstOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail35GlobalLoadConstOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir10ml_program17GlobalLoadConstOp15setInherentAttrERNS0_6detail35GlobalLoadConstOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir10ml_program17GlobalLoadConstOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail35GlobalLoadConstOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir10ml_program17GlobalLoadConstOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir10ml_program17GlobalLoadConstOp21setPropertiesFromAttrERNS0_6detail35GlobalLoadConstOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir10ml_program17GlobalLoadConstOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail35GlobalLoadConstOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir10ml_program17GlobalLoadConstOp21computePropertiesHashERKNS0_6detail35GlobalLoadConstOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !84
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #19, !inline_history !132
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  tail call void @free(ptr noundef %i.k) #19, !inline_history !132
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_8NResultsILj2EE4ImplENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_21SymbolUserOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.159") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir10ml_program17GlobalLoadGraphOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !126
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::ml_program::GlobalLoadGraphOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir10ml_program17GlobalLoadGraphOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %2 = alloca %"class.mlir::ml_program::GlobalLoadGraphOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %1) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.a, label %_ZN4mlir2OpINS_10ml_program17GlobalLoadGraphOpEJNS_7OpTrait11ZeroRegionsENS3_8NResultsILj2EE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_21SymbolUserOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.a:                                             ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl14verifyNResultsEPNS_9OperationEj(ptr noundef %1, i32 noundef 2) #19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4mlir2OpINS_10ml_program17GlobalLoadGraphOpEJNS_7OpTrait11ZeroRegionsENS3_8NResultsILj2EE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_21SymbolUserOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %1) #19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program17GlobalLoadGraphOpEEENS2_8NResultsILj2EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i, label %_ZN4mlir2OpINS_10ml_program17GlobalLoadGraphOpEJNS_7OpTrait11ZeroRegionsENS3_8NResultsILj2EE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_21SymbolUserOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program17GlobalLoadGraphOpEEENS2_8NResultsILj2EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %1, ptr %2, align 8
  %i.g = call i8 @_ZN4mlir10ml_program17GlobalLoadGraphOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZN4mlir2OpINS_10ml_program17GlobalLoadGraphOpEJNS_7OpTrait11ZeroRegionsENS3_8NResultsILj2EE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_21SymbolUserOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit

_ZN4mlir2OpINS_10ml_program17GlobalLoadGraphOpEJNS_7OpTrait11ZeroRegionsENS3_8NResultsILj2EE4ImplENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_21SymbolUserOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE.exit: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit, %bb.a, %bb.b, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program17GlobalLoadGraphOpEEENS2_8NResultsILj2EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i
  %i.h = phi i8 [ %i.g, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program17GlobalLoadGraphOpEEENS2_8NResultsILj2EE4ImplIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_21SymbolUserOpInterface5TraitIS5_EENS_16OpAsmOpInterface5TraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.i ], [ 0, %bb.b ], [ 0, %_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit ], [ 0, %bb.a ]
  ret i8 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call { ptr, i8 } @_ZN4mlir10ml_program17GlobalLoadGraphOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail35GlobalLoadGraphOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr %2, i64 %3) #19
  ret { ptr, i8 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
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
  %i.g = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @_ZN4mlir10ml_program17GlobalLoadGraphOp15setInherentAttrERNS0_6detail35GlobalLoadGraphOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr %i.h, i64 %i.i, ptr %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program17GlobalLoadGraphOpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4mlir6detail38MemoryEffectOpInterfaceInterfaceTraits5ModelINS_10ml_program12GlobalLoadOpEE10getEffectsEPKNS1_7ConceptEPNS_9OperationERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE:bb.a
bb.a:
  %3 = alloca %"class.mlir::ml_program::GlobalLoadOp", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr %1, ptr %3, align 8
  call void @_ZN4mlir10ml_program12GlobalLoadOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

declare void @_ZN4mlir10ml_program12GlobalLoadOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_9OneResultENS2_14OneTypedResultINS_4TypeEE4ImplENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_21SymbolUserOpInterface5TraitENS_23MemoryEffectOpInterface5TraitEEEEbNS_6TypeIDE(ptr %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.69, i64 49), i64 33) #19
  store ptr %i.d, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroRegionsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.e = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, !prof !15

bb.d:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.70, i64 49), i64 31) #19
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9OneResultIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, !prof !15

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.71, i64 49), i64 54) #19
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9OneResultEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplIZNS_6TypeID3getIS6_EES7_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !15

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 36) #19
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14OneTypedResultINS_4TypeEE4ImplEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, !prof !15

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 34) #19
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !15

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 34) #19
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !15

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 39) #19
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, !prof !15

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.75, i64 49), i64 36) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_16OpAsmOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit, !prof !15

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.76, i64 49), i64 41) #19
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_16OpAsmOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_21SymbolUserOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !15

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.74, i64 49), i64 43) #19
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_21SymbolUserOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ao = insertelement <8 x ptr> poison, ptr %.sroa.01.0.copyload.i.i.i, i64 0
  %i.ap = insertelement <8 x ptr> %i.ao, ptr %.sroa.01.0.copyload.i.i.i7, i64 1
  %i.aq = insertelement <8 x ptr> %i.ap, ptr %.sroa.01.0.copyload.i.i.i9, i64 2
  %i.ar = insertelement <8 x ptr> %i.aq, ptr %.sroa.01.0.copyload.i.i.i11, i64 3
  %i.as = insertelement <8 x ptr> %i.ar, ptr %.sroa.01.0.copyload.i.i.i13, i64 4
  %i.at = insertelement <8 x ptr> %i.as, ptr %.sroa.01.0.copyload.i.i.i15, i64 5
  %i.au = insertelement <8 x ptr> %i.at, ptr %.sroa.01.0.copyload.i.i.i17, i64 6
  %i.av = insertelement <8 x ptr> %i.au, ptr %.sroa.01.0.copyload.i.i.i19, i64 7
  %i.aw = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.ax = shufflevector <8 x ptr> %i.aw, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ay = icmp eq <8 x ptr> %i.av, %i.ax
  %i.az = icmp eq ptr %.sroa.01.0.copyload.i.i.i21, %0
  %i.ba = icmp eq ptr %.sroa.01.0.copyload.i.i.i23, %0
  %i.bb = freeze <8 x i1> %i.ay
  %i.bc = bitcast <8 x i1> %i.bb to i8
  %i.bd = icmp ne i8 %i.bc, 0
  %op.rdx = select i1 %i.bd, i1 true, i1 %i.az
  %op.rdx36 = select i1 %op.rdx, i1 true, i1 %i.ba
  ret i1 %op.rdx36
}

declare i8 @_ZN4mlir10ml_program12GlobalLoadOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir10ml_program12GlobalLoadOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare i8 @_ZN4mlir10ml_program12GlobalLoadOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN4mlir10ml_program12GlobalLoadOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail30GlobalLoadOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #2

declare void @_ZN4mlir10ml_program12GlobalLoadOp15setInherentAttrERNS0_6detail30GlobalLoadOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #2

declare void @_ZN4mlir10ml_program12GlobalLoadOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail30GlobalLoadOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #2

declare i8 @_ZN4mlir10ml_program12GlobalLoadOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr, ptr noundef nonnull align 8 dereferenceable(88), ptr, i64) local_unnamed_addr #2

declare i8 @_ZN4mlir10ml_program12GlobalLoadOp21setPropertiesFromAttrERNS0_6detail30GlobalLoadOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN4mlir10ml_program12GlobalLoadOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS0_6detail30GlobalLoadOpGenericAdaptorBase10PropertiesE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i64 @_ZN4mlir10ml_program12GlobalLoadOp21computePropertiesHashERKNS0_6detail30GlobalLoadOpGenericAdaptorBase10PropertiesE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEED0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTVN4mlir13OperationName4ImplE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.e = zext i32 %i.d to i64
  %.idx.i.i = shl nuw nsw i64 %i.e, 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.d, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !84
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.a
  %i.g = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4mlir13OperationName4ImplD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef %i.g) #19, !inline_history !132
  br label %_ZN4mlir13OperationName4ImplD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  tail call void @free(ptr noundef %i.k) #19, !inline_history !132
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZN4mlir13OperationName4ImplD2Ev.exit:            ; preds = %._crit_edge.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 120) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationENS_8ArrayRefINS3_9AttributeEEERNS_15SmallVectorImplINS3_12OpFoldResultEEEEED2Ev.exit:
  ret i8 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE8hasTraitENS_6TypeIDE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIbJN4mlir6TypeIDEEED2Ev.exit:
  %i.a = tail call noundef zeroext i1 @_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_17SymbolOpInterface5TraitEEEEbNS_6TypeIDE(ptr %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE18getParseAssemblyFnEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::unique_function.159") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4mlir10ml_program8GlobalOp5parseERNS_11OpAsmParserERNS_14OperationStateE, ptr %0, align 8, !tbaa !126
  store ptr @_ZZN4llvm6detail18UniqueFunctionBaseINS_11ParseResultEJRN4mlir11OpAsmParserERNS3_14OperationStateEEEC1IPFS2_S5_S7_ESB_EET_NS8_8CalledAsIT0_EEENUlPKS8_S5_S7_E_8__invokeESH_S5_S7_, ptr %i.a, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseIvJPN4mlir9OperationERNS2_12OpAsmPrinterENS_9StringRefEEED2Ev.exit:
  %5 = alloca %"class.mlir::ml_program::GlobalOp", align 8 ; 4 uses
  tail call void @_ZN4mlir7OpState11printOpNameEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, i64 %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %1, ptr %5, align 8
  call void @_ZN4mlir10ml_program8GlobalOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE16verifyInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  %i.a = tail call i8 @_ZN4mlir2OpINS_10ml_program8GlobalOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_12ZeroOperandsENS3_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_17SymbolOpInterface5TraitEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %1) #19, !inline_history !3
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE22verifyRegionInvariantsEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
_ZN4llvm6detail18UniqueFunctionBaseINS_13LogicalResultEJPN4mlir9OperationEEED2Ev.exit:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  %i.i = tail call { ptr, i8 } @_ZN4mlir10ml_program8GlobalOp15getInherentAttrEPNS_11MLIRContextERKNS0_6detail26GlobalOpGenericAdaptorBase10PropertiesEN4llvm9StringRefE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr %2, i64 %3) #19
  ret { ptr, i8 } %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr %2, ptr %3) unnamed_addr #0 comdat align 2 {
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
  %i.g = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  call void @_ZN4mlir10ml_program8GlobalOp15setInherentAttrERNS0_6detail26GlobalOpGenericAdaptorBase10PropertiesEN4llvm9StringRefENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr %i.h, i64 %i.i, ptr %3) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(88) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.d, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = lshr i32 %i.d, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.f, 1
  %i.g = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.g
  tail call void @_ZN4mlir10ml_program8GlobalOp21populateInherentAttrsEPNS_11MLIRContextERKNS0_6detail26GlobalOpGenericAdaptorBase10PropertiesERNS_13NamedAttrListE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(88) %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir10ml_program8GlobalOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %3, i64 %4) #19
  ret i8 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE21getOpPropertyByteSizeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 40
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir23RegisteredOperationName5ModelINS_10ml_program8GlobalOpEE14initPropertiesENS_13OperationNameENS_11PropertyRefES6_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS2_10ReturnLikeENS2_12IsTerminatorEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 33) #19
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !15

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 36) #19
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !15

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 49), i64 38) #19
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplEEES0_v.exit, !prof !15

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.94, i64 49), i64 67) #19
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !15

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 34) #19
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !15

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.72, i64 49), i64 45) #19
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !15

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.73, i64 49), i64 49) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !15

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.74, i64 49), i64 43) #19
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, !prof !15

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.95, i64 49), i64 53) #19
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, !prof !15

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 32) #19
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, !prof !15

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.97, i64 49), i64 34) #19
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
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

declare i8 @_ZN4mlir10ml_program8OutputOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir10ml_program8OutputOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir2OpINS_10ml_program8OutputOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_9HasParentIJNS1_10SubgraphOpEEE4ImplENS3_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS3_10ReturnLikeENS3_12IsTerminatorEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::ml_program::OutputOp", align 8 ; 4 uses
  %2 = alloca %"class.mlir::ml_program::OutputOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplINS2_8OutputOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir10ml_program8OutputOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br label %bb.g

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit: ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl18verifyIsTerminatorEPNS_9OperationE(ptr noundef %0) #19
  %i.l = trunc nuw i8 %i.k to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  store ptr %0, ptr %2, align 8
  %i.m = call i8 @_ZN4mlir10ml_program8OutputOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread, %bb.f, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  %i.n = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit ], [ %i.m, %bb.f ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8OutputOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_10SubgraphOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i8 %i.n
}

declare i8 @_ZN4mlir10ml_program8OutputOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait9HasParentIJNS_10ml_program10SubgraphOpEEE4ImplINS2_8OutputOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 19 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit

_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program10SubgraphOpEvE2idE
  br i1 %i.g, label %bb.k, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread

_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread: ; preds = %bb.a, %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !76
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #19
  %i.j = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 3, ptr %4, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.98, ptr %i.l, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82
  %.not.i.i.i.i.i = icmp ult i32 %i.n, %i.p
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !83

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = zext i32 %i.n to i64
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.t = load i32, ptr %i.m, align 8, !tbaa !81
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.m, align 8, !tbaa !81
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pr = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !76
  store ptr @.str.99, ptr %3, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.x, align 8, !tbaa !75
  %i.y = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.v, ptr noundef nonnull align 8 dereferenceable(34) %3) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.pr14 = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i5 = icmp eq ptr %.pr14, null
  br i1 %.not.i.i5, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 6, ptr %i.z, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !76
  store ptr @.str.101, ptr %2, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 19, ptr %i.ab, align 8, !tbaa !85
  %i.ac = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.v, ptr noundef nonnull align 8 dereferenceable(34) %2) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.pre = load ptr, ptr %5, align 8, !tbaa !42
  %i.ad = icmp eq ptr %.pre, null
  br i1 %i.ad, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i32 3, ptr %1, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.99, ptr %i.af, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !81 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !82
  %.not.i.i.i.i.i8 = icmp ult i32 %i.ah, %i.aj
  br i1 %.not.i.i.i.i.i8, label %bb.g, label %bb.f, !prof !83

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = zext i32 %i.ah to i64
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !84
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.an = load i32, ptr %i.ag, align 8, !tbaa !81
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !81
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit, %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program10SubgraphOpEEPNS1_9OperationEEEbRKT0_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i
end_hunk_3
begin_hunk_4_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait11ZeroRegionsENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_16VariadicOperandsENS2_9HasParentIJNS_10ml_program6FuncOpEEE4ImplENS2_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS2_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS2_10ReturnLikeENS2_12IsTerminatorEEEEbNS_6TypeIDE:bb.a
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i8, label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.36, i64 49), i64 33) #19
  store ptr %i.h, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroRegionsEEES0_v.exit, %bb.d, %bb.e
  %.sroa.01.0.copyload.i.i.i7 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11ZeroResultsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.i = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, !prof !15

bb.f:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i10, label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.37, i64 49), i64 36) #19
  store ptr %i.l, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11ZeroResultsEEES0_v.exit, %bb.f, %bb.g
  %.sroa.01.0.copyload.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait14ZeroSuccessorsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.m = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, !prof !15

bb.h:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i12 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.80, i64 49), i64 38) #19
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait16VariadicOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplEEES0_v.exit, !prof !15

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.104, i64 49), i64 63) #19
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait16VariadicOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplIZNS_6TypeID3getIS7_EES8_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !15

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 34) #19
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, !prof !15

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.72, i64 49), i64 45) #19
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_25ConditionallySpeculatable5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, !prof !15

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.73, i64 49), i64 49) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_25ConditionallySpeculatable5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait27AlwaysSpeculatableImplTraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, !prof !15

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.74, i64 49), i64 43) #19
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait27AlwaysSpeculatableImplTraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_23MemoryEffectOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, !prof !15

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.95, i64 49), i64 53) #19
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_23MemoryEffectOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_33RegionBranchTerminatorOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, !prof !15

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.96, i64 49), i64 32) #19
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_33RegionBranchTerminatorOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait10ReturnLikeIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, !prof !15

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.97, i64 49), i64 34) #19
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12IsTerminatorEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait10ReturnLikeEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12IsTerminatorIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
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

declare i8 @_ZN4mlir10ml_program8ReturnOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir10ml_program8ReturnOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir2OpINS_10ml_program8ReturnOpEJNS_7OpTrait11ZeroRegionsENS3_11ZeroResultsENS3_14ZeroSuccessorsENS3_16VariadicOperandsENS3_9HasParentIJNS1_6FuncOpEEE4ImplENS3_12OpInvariantsENS_25ConditionallySpeculatable5TraitENS3_27AlwaysSpeculatableImplTraitENS_23MemoryEffectOpInterface5TraitENS_33RegionBranchTerminatorOpInterface5TraitENS3_10ReturnLikeENS3_12IsTerminatorEEE16verifyInvariantsEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::ml_program::ReturnOp", align 8 ; 4 uses
  %2 = alloca %"class.mlir::ml_program::ReturnOp", align 8 ; 5 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroRegionsEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplINS2_8ReturnOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.i = call i8 @_ZN4mlir10ml_program8ReturnOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit, label %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br label %bb.g

_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit: ; preds = %bb.e
  %i.k = call i8 @_ZN4mlir7OpTrait4impl18verifyIsTerminatorEPNS_9OperationE(ptr noundef %0) #19
  %i.l = trunc nuw i8 %i.k to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  store ptr %0, ptr %2, align 8
  %i.m = call i8 @_ZN4mlir10ml_program8ReturnOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread, %bb.f, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit
  %i.n = phi i8 [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit ], [ %i.m, %bb.f ], [ 0, %_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait11ZeroRegionsINS_10ml_program8ReturnOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_16VariadicOperandsIS5_EENS2_9HasParentIJNS4_6FuncOpEEE4ImplIS5_EENS2_12OpInvariantsIS5_EENS_25ConditionallySpeculatable5TraitIS5_EENS2_27AlwaysSpeculatableImplTraitIS5_EENS_23MemoryEffectOpInterface5TraitIS5_EENS_33RegionBranchTerminatorOpInterface5TraitIS5_EENS2_10ReturnLikeIS5_EENS2_12IsTerminatorIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i8 %i.n
}

declare i8 @_ZN4mlir10ml_program8ReturnOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait9HasParentIJNS_10ml_program6FuncOpEEE4ImplINS2_8ReturnOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 19 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4mlir9Operation11getParentOpEv.exit

_ZN4mlir9Operation11getParentOpEv.exit:           ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN4mlir5Block11getParentOpEv(ptr noundef nonnull align 8 dereferenceable(80) %i.b) #19 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit

_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit: ; preds = %_ZN4mlir9Operation11getParentOpEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_10ml_program6FuncOpEvE2idE
  br i1 %i.g, label %bb.k, label %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread

_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread: ; preds = %bb.a, %_ZN4mlir9Operation11getParentOpEv.exit, %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.h, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.i, align 1, !tbaa !76
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #19
  %i.j = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i.i3, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 3, ptr %4, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.98, ptr %i.l, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 18, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82
  %.not.i.i.i.i.i = icmp ult i32 %i.n, %i.p
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c, !prof !83

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

bb.d:                                             ; preds = %bb.b
  %i.q = zext i32 %i.n to i64
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.t = load i32, ptr %i.m, align 8, !tbaa !81
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.m, align 8, !tbaa !81
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pr = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i4 = icmp eq ptr %.pr, null
  br i1 %.not.i.i4, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.w, align 1, !tbaa !76
  store ptr @.str.99, ptr %3, align 8, !tbaa !85
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.x, align 8, !tbaa !75
  %i.y = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.v, ptr noundef nonnull align 8 dereferenceable(34) %3) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.pr14 = load ptr, ptr %5, align 8, !tbaa !42
  %.not.i.i5 = icmp eq ptr %.pr14, null
  br i1 %.not.i.i5, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 6, ptr %i.z, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !76
  store ptr @.str.22, ptr %2, align 8, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 15, ptr %i.ab, align 8, !tbaa !85
  %i.ac = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsEON4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %i.v, ptr noundef nonnull align 8 dereferenceable(34) %2) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.pre = load ptr, ptr %5, align 8, !tbaa !42
  %i.ad = icmp eq ptr %.pre, null
  br i1 %i.ad, label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store i32 3, ptr %1, align 8, !tbaa !79
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.99, ptr %i.af, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i7, align 8, !tbaa !72
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !81 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !82
  %.not.i.i.i.i.i8 = icmp ult i32 %i.ah, %i.aj
  br i1 %.not.i.i.i.i.i8, label %bb.g, label %bb.f, !prof !83

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = zext i32 %i.ah to i64
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !84
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.an = load i32, ptr %i.ag, align 8, !tbaa !81
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !81
  br label %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA2_KcEEOS0_OT_.exit: ; preds = %_ZNO4mlir18InFlightDiagnosticlsIPKcEEOS0_OT_.exit, %_ZNO4mlir18InFlightDiagnosticlsIRA19_KcEEOS0_OT_.exit, %_ZN4llvm15isa_and_nonnullIJN4mlir10ml_program6FuncOpEEPNS1_9OperationEEEbRKT0_.exit.thread, %_ZNO4mlir18InFlightDiagnosticlsIN4llvm8ArrayRefINS2_13StringLiteralEEEEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA2_KcEERS0_OT_.exit.i.i
end_hunk_4
begin_hunk_5_@_ZN4mlir18op_definition_impl8hasTraitIJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_11SingleBlockENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS_17SymbolOpInterface5TraitENS_28ArgAndResultAttrsOpInterface5TraitENS_19CallableOpInterface5TraitENS_19FunctionOpInterface5TraitENS2_18HasOnlyGraphRegionENS2_19IsIsolatedFromAboveENS_19RegionKindInterface5TraitEEEEbNS_6TypeIDE:bb.a
  br i1 %.not.i.i.i12, label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.38, i64 49), i64 34) #19
  store ptr %i.p, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait14ZeroSuccessorsEEES0_v.exit, %bb.h, %bb.i
  %.sroa.01.0.copyload.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12ZeroOperandsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.q = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, !prof !15

bb.j:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i14 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i14, label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.105, i64 49), i64 33) #19
  store ptr %i.t, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12ZeroOperandsEEES0_v.exit, %bb.j, %bb.k
  %.sroa.01.0.copyload.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait11SingleBlockIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.u = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, !prof !15

bb.l:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i16 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i16, label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.39, i64 49), i64 34) #19
  store ptr %i.x, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait11SingleBlockEEES0_v.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait12OpInvariantsIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.y = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, !prof !15

bb.n:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i18 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i18, label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.40, i64 49), i64 39) #19
  store ptr %i.ab, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait12OpInvariantsEEES0_v.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ac = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, !prof !15

bb.p:                                             ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i20 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i20, label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.41, i64 49), i64 37) #19
  store ptr %i.af, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19BytecodeOpInterface5TraitEEES0_v.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_17SymbolOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ag = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.r, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, !prof !15

bb.r:                                             ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit
  %i.ai = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i22 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i22, label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.42, i64 49), i64 48) #19
  store ptr %i.aj, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_17SymbolOpInterface5TraitEEES0_v.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i21 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_28ArgAndResultAttrsOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ak = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %bb.t, label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, !prof !15

bb.t:                                             ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit
  %i.am = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i24 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i24, label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.an = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 49), i64 39) #19
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_28ArgAndResultAttrsOpInterface5TraitEEES0_v.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i23 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19CallableOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ao = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.v, label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, !prof !15

bb.v:                                             ; preds = %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit
  %i.aq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i26 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i26, label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 49), i64 39) #19
  store ptr %i.ar, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19CallableOpInterface5TraitEEES0_v.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i25 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19FunctionOpInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.as = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.x, label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit, !prof !15

bb.x:                                             ; preds = %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit
  %i.au = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i28 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i28, label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.av = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.106, i64 49), i64 40) #19
  store ptr %i.av, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_19FunctionOpInterface5TraitEEES0_v.exit, %bb.x, %bb.y
  %.sroa.01.0.copyload.i.i.i27 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait18HasOnlyGraphRegionIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.aw = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.z, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, !prof !15

bb.z:                                             ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit
  %i.ay = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i30 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i30, label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.az = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.45, i64 49), i64 41) #19
  store ptr %i.az, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit

_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait18HasOnlyGraphRegionEEES0_v.exit, %bb.z, %bb.aa
  %.sroa.01.0.copyload.i.i.i29 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
  %i.ba = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, !prof !15

bb.ab:                                            ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit
  %i.bc = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  %.not.i.i.i32 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i32, label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.46, i64 49), i64 39) #19
  store ptr %i.bd, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id) #19
  br label %_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit

_ZN4mlir6TypeID3getINS_19RegionKindInterface5TraitEEES0_v.exit: ; preds = %_ZN4mlir6TypeID3getINS_7OpTrait19IsIsolatedFromAboveEEES0_v.exit, %bb.ab, %bb.ac
  %.sroa.01.0.copyload.i.i.i31 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_19RegionKindInterface5TraitIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id, align 8, !tbaa !18
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

declare i8 @_ZN4mlir10ml_program10SubgraphOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(304)) #2

declare void @_ZN4mlir10ml_program10SubgraphOp5printERNS_12OpAsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i8 @_ZN4mlir18op_definition_impl12verifyTraitsIJNS_7OpTrait9OneRegionINS_10ml_program10SubgraphOpEEENS2_11ZeroResultsIS5_EENS2_14ZeroSuccessorsIS5_EENS2_12ZeroOperandsIS5_EENS2_11SingleBlockIS5_EENS2_12OpInvariantsIS5_EENS_19BytecodeOpInterface5TraitIS5_EENS_17SymbolOpInterface5TraitIS5_EENS_28ArgAndResultAttrsOpInterface5TraitIS5_EENS_19CallableOpInterface5TraitIS5_EENS_19FunctionOpInterface5TraitIS5_EENS2_18HasOnlyGraphRegionIS5_EENS2_19IsIsolatedFromAboveIS5_EENS_19RegionKindInterface5TraitIS5_EEEEEN4llvm13LogicalResultEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %1 = alloca %"class.mlir::ml_program::SubgraphOp", align 8 ; 4 uses
  %i.a = tail call i8 @_ZN4mlir7OpTrait4impl15verifyOneRegionEPNS_9OperationE(ptr noundef %0) #19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir7OpTrait4impl17verifyZeroResultsEPNS_9OperationE(ptr noundef %0) #19
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4mlir7OpTrait4impl20verifyZeroSuccessorsEPNS_9OperationE(ptr noundef %0) #19
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i8 @_ZN4mlir7OpTrait4impl18verifyZeroOperandsEPNS_9OperationE(ptr noundef %0) #19
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i8 @_ZN4mlir7OpTrait11SingleBlockINS_10ml_program10SubgraphOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr %0, ptr %1, align 8
  %i.k = call i8 @_ZN4mlir10ml_program10SubgraphOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = call i8 @_ZN4mlir6detail22SymbolOpInterfaceTraitINS_10ml_program10SubgraphOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0)
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = call i8 @_ZN4mlir23function_interface_impl11verifyTraitINS_10ml_program10SubgraphOpEEEN4llvm13LogicalResultET_(ptr %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b, %bb.d, %bb.f, %bb.g, %bb.e, %bb.c, %bb.a
  %i.p = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.o, %bb.h ], [ 0, %bb.g ]
  ret i8 %i.p
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir7OpTrait11SingleBlockINS_10ml_program10SubgraphOpEE11verifyTraitEPNS_9OperationE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
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
  %i.m = load i32, ptr %i.l, align 8, !tbaa !176
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.n
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 3 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !177
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.u, label %_ZN4mlir6Region11hasOneBlockEv.exit

_ZN4mlir6Region11hasOneBlockEv.exit:              ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !199  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !199
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %bb.m, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir6Region11hasOneBlockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.y, align 1, !tbaa !76
  store ptr @.str.107, ptr %5, align 8, !tbaa !85
  store i8 3, ptr %i.x, align 8, !tbaa !75
  call void @_ZN4mlir9Operation11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(34) %5) #19
  %i.z = load ptr, ptr %4, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store i32 5, ptr %3, align 8, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %indvars.iv, ptr %i.ab, align 8, !tbaa !85
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !82
  %.not.i.i.i.i.i = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !84
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !81
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !81
  br label %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %.pr = load ptr, ptr %4, align 8, !tbaa !42
  %.not.i.i12 = icmp eq ptr %.pr, null
  br i1 %.not.i.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store i32 3, ptr %2, align 8, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.108, ptr %i.al, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 22, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !72
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %i.an = load i32, ptr %i.ae, align 4, !tbaa !82
  %.not.i.i.i.i.i13 = icmp ult i32 %i.am, %i.an
  br i1 %.not.i.i.i.i.i13, label %bb.i, label %bb.h, !prof !83

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = zext i32 %i.am to i64
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !84
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ar = load i32, ptr %i.ac, align 8, !tbaa !81
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.ac, align 8, !tbaa !81
  br label %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i

_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit: ; preds = %bb.c, %_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_.exit, %_ZN4mlir10Diagnostic6appendIRA23_KcEERS0_OT_.exit.i.i
  %i.at = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #19
  %i.au = load ptr, ptr %4, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNO4mlir18InFlightDiagnosticlsIRA23_KcEEOS0_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ax = trunc nuw i8 %i.aw to i1
  store i8 0, ptr %i.av, align 8, !tbaa !43
  br i1 %i.ax, label %bb.l, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_5
