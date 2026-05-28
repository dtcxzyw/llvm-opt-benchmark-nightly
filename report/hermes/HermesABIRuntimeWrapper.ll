inline.NumInlined: 1089
inline.NumDeleted: 535
begin_hunk_0_@_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper26evaluatePreparedJavaScriptERKSt10shared_ptrIKN8facebook3jsi18PreparedJavaScriptEE:bb.a
  store i32 %i.ar, ptr %i.af, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = atomicrmw volatile add ptr %i.af, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.ai, %bb.j ], [ %i.as, %bb.k ]
  %i.at = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.at, label %bb.l, label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #25
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.f, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !51  ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.av, align 8, !tbaa !76
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !78
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !92
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !92
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i6 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i6, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.q:                                             ; preds = %bb.o
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i8 = phi i32 [ %i.ay, %bb.p ], [ %i.bi, %bb.q ]
  %i.bj = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.bj, label %bb.r, label %_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.s:                                             ; preds = %_ZNSt10shared_ptrIKN8facebook3jsi6BufferEEC2IKNS1_27SourceJavaScriptPreparationEvEERKS_IT_E.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.bk
}

; Function Attrs: mustprogress noreturn uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper14queueMicrotaskERKN8facebook3jsi8FunctionE(ptr nonnull readnone align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #7 align 2 {
bb.a:
  tail call fastcc void @_ZN12_GLOBAL__N_122throwUnimplementedImplEPKc(ptr noundef nonnull @__func__._ZN12_GLOBAL__N_123HermesABIRuntimeWrapper14queueMicrotaskERKN8facebook3jsi8FunctionE) #28
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15drainMicrotasksEi(ptr noundef nonnull align 8 dereferenceable(81) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = tail call i64 %i.d(ptr noundef %i.f, i32 noundef %1) ; 3 uses
  %i.h = trunc i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIBoolOrError.exit

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.g, 2
  %i.j = trunc i64 %i.i to i32
  tail call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %0, i32 noundef %i.j) #28
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK20HermesABIBoolOrError.exit: ; preds = %bb.a
  %i.k = icmp ugt i64 %i.g, 3
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6globalEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::Object") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(81) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = tail call ptr %i.d(ptr noundef %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !98, !noalias !95 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.b, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIObjectERK15HermesABIObject.exit, !prof !91

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !99, !noalias !95
  %i.m = uitofp i64 %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load double, ptr %i.n, align 8, !tbaa !100, !noalias !95
  %i.p = fcmp ogt double %i.o, %i.m
  br i1 %i.p, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h), !noalias !95
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !98, !noalias !95 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.q, null
  br i1 %.not4.i.i, label %.sink.split.i.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIObjectERK15HermesABIObject.exit

.sink.split.i.i:                                  ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.h), !noalias !95
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !98, !noalias !95
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIObjectERK15HermesABIObject.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIObjectERK15HermesABIObject.exit: ; preds = %bb.a, %bb.c, %.sink.split.i.i
  %i.r = phi ptr [ %i.j, %bb.a ], [ %i.q, %bb.c ], [ %.pre.i, %.sink.split.i.i ] ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16       ; 2 uses
  %.val.i.i = load ptr, ptr %i.s, align 8, !tbaa !52, !noalias !95
  store ptr %.val.i.i, ptr %i.i, align 8, !tbaa !98, !noalias !95
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store atomic i32 1, ptr %i.t monotonic, align 8, !noalias !95
  store ptr %i.g, ptr %i.s, align 8, !tbaa !52, !noalias !95
  store ptr %i.r, ptr %0, align 8, !tbaa !101, !alias.scope !104
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper11descriptionB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 23, ptr %i.a, align 8, !tbaa !107
  %i.c = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !61
  %i.d = load i64, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.c, ptr noundef nonnull align 1 dereferenceable(23) @.str.6, i64 23, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.e, align 8, !tbaa !64
  %i.f = load ptr, ptr %0, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d
  store i8 0, ptr %i.g, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13isInspectableEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call fastcc void @_ZN12_GLOBAL__N_122throwUnimplementedImplEPKc(ptr noundef nonnull @__func__._ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13isInspectableEv) #28
  unreachable
}

; Function Attrs: mustprogress noreturn uwtable
define internal noalias noundef nonnull align 1 ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15instrumentationEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call fastcc void @_ZN12_GLOBAL__N_122throwUnimplementedImplEPKc(ptr noundef nonnull @__func__._ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15instrumentationEv) #28
  unreachable
}

declare void @_ZN8facebook3jsi7Runtime18setRuntimeDataImplERKNS0_4UUIDEPKvPFvS6_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #6

declare noundef ptr @_ZN8facebook3jsi7Runtime18getRuntimeDataImplERKNS0_4UUIDE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper11cloneSymbolEPKN8facebook3jsi7Runtime12PointerValueE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef returned captures(address_is_null, ret: address, provenance) %1) unnamed_addr #8 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit: ; preds = %bb.a, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper11cloneBigIntEPKN8facebook3jsi7Runtime12PointerValueE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef returned captures(address_is_null, ret: address, provenance) %1) unnamed_addr #8 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit: ; preds = %bb.a, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper11cloneStringEPKN8facebook3jsi7Runtime12PointerValueE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef returned captures(address_is_null, ret: address, provenance) %1) unnamed_addr #8 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit: ; preds = %bb.a, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper11cloneObjectEPKN8facebook3jsi7Runtime12PointerValueE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef returned captures(address_is_null, ret: address, provenance) %1) unnamed_addr #8 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit: ; preds = %bb.a, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper15clonePropNameIDEPKN8facebook3jsi7Runtime12PointerValueE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef returned captures(address_is_null, ret: address, provenance) %1) unnamed_addr #8 align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper5cloneEPKN8facebook3jsi7Runtime12PointerValueE.exit: ; preds = %bb.a, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper25createPropNameIDFromAsciiEPKcm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::jsi::String", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::String") align 8 %4, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %2, i64 noundef %3)
  %i.d = load ptr, ptr %1, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr dead_on_unwind writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !101    ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #25, !inline_history !108
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !101    ; 3 uses
  %.not.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i4, label %_ZN8facebook3jsi7PointerD2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #25, !inline_history !108
  br label %_ZN8facebook3jsi7PointerD2Ev.exit5

_ZN8facebook3jsi7PointerD2Ev.exit5:               ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper24createPropNameIDFromUtf8EPKhm(ptr dead_on_unwind noalias writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::jsi::String", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.facebook::jsi::String") align 8 %4, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %2, i64 noundef %3)
  %i.d = load ptr, ptr %1, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr dead_on_unwind writable sret(%"class.facebook::jsi::PropNameID") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %4, align 8, !tbaa !101    ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN8facebook3jsi7PointerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #25, !inline_history !108
  br label %_ZN8facebook3jsi7PointerD2Ev.exit

_ZN8facebook3jsi7PointerD2Ev.exit:                ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %4, align 8, !tbaa !101    ; 3 uses
  %.not.i4 = icmp eq ptr %i.k, null
  br i1 %.not.i4, label %_ZN8facebook3jsi7PointerD2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #25, !inline_history !108
  br label %_ZN8facebook3jsi7PointerD2Ev.exit5

_ZN8facebook3jsi7PointerD2Ev.exit5:               ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.j
}

declare void @_ZN8facebook3jsi7Runtime25createPropNameIDFromUtf16EPKDsm(ptr dead_on_unwind writable sret(%"class.facebook::jsi::PropNameID") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper26createPropNameIDFromStringERKN8facebook3jsi6StringE(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::PropNameID") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = tail call i64 %i.d(ptr noundef %i.f, ptr %.val.val) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK26HermesABIPropNameIDOrError.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.h, 2
  %i.k = trunc i64 %i.j to i32
  tail call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %1, i32 noundef %i.k) #28, !noalias !110
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK26HermesABIPropNameIDOrError.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98, !noalias !116 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError.exit, !prof !91

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK26HermesABIPropNameIDOrError.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !99, !noalias !116
  %i.q = uitofp i64 %i.p to double
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load double, ptr %i.r, align 8, !tbaa !100, !noalias !116
  %i.t = fcmp ogt double %i.s, %i.q
  br i1 %i.t, label %.sink.split.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l), !noalias !116
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !98, !noalias !116 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not4.i.i.i, label %.sink.split.i.i.i, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError.exit

.sink.split.i.i.i:                                ; preds = %bb.d, %bb.c
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l), !noalias !116
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !98, !noalias !116
  br label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError.exit

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError.exit: ; preds = %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK26HermesABIPropNameIDOrError.exit.i, %bb.d, %.sink.split.i.i.i
  %i.v = phi ptr [ %i.n, %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK26HermesABIPropNameIDOrError.exit.i ], [ %i.u, %bb.d ], [ %.pre.i.i, %.sink.split.i.i.i ] ; 3 uses
  %i.w = inttoptr i64 %i.h to ptr
  %i.x = getelementptr i8, ptr %i.v, i64 16       ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.x, align 8, !tbaa !52, !noalias !116
  store ptr %.val.i.i.i, ptr %i.m, align 8, !tbaa !98, !noalias !116
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store atomic i32 1, ptr %i.y monotonic, align 8, !noalias !116
  store ptr %i.w, ptr %i.x, align 8, !tbaa !52, !noalias !116
  store ptr %i.v, ptr %0, align 8, !tbaa !101, !alias.scope !117
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper26createPropNameIDFromSymbolERKN8facebook3jsi6SymbolE(ptr dead_on_unwind noalias writable writeonly sret(%"class.facebook::jsi::PropNameID") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.val = load ptr, ptr %2, align 8, !tbaa !101
  %i.g = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.g, align 8, !tbaa !52
  %i.h = tail call i64 %i.d(ptr noundef %i.f, ptr %.val.val) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK26HermesABIPropNameIDOrError.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.h, 2
  %i.k = trunc i64 %i.j to i32
  tail call fastcc void @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper10throwErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(81) %1, i32 noundef %i.k) #28, !noalias !121
  unreachable

_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper6unwrapERK26HermesABIPropNameIDOrError.exit.i: ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %2) #25
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i) #25
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.0911.i.i.i) #25
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !499

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8facebook3jsi5ValueESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 3 uses
  tail call void @_ZN8facebook3jsi5ValueC1EOS1_(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i19) #25
  tail call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.0911.i.i.i19) #25
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !499

_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !490
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #26
  br label %_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8facebook3jsi5ValueESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN8facebook3jsi5ValueESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !487
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !489
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !490
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIN8facebook3jsi13MutableBufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !363
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !363
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !91

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_120MutableBufferWrapper7releaseEP22HermesABIMutableBuffer(ptr noundef %0) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.b, align 8, !tbaa !51  ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !78
  %i.h = load ptr, ptr %.val, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !500
  %i.k = load ptr, ptr %.val, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25, !inline_history !500
  br label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !52
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit, !prof !91

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #25
  br label %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit

_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_120MutableBufferWrapperD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZSt11make_uniqueIN12_GLOBAL__N_123HermesABIRuntimeWrapperEJRPK15HermesABIVTableEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!10 = distinct !{!10, !"_ZSt11make_uniqueIN12_GLOBAL__N_123HermesABIRuntimeWrapperEJRPK15HermesABIVTableEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !17, i64 8}
!14 = !{!"_ZTSN12_GLOBAL__N_123HermesABIRuntimeWrapperE", !15, i64 0, !17, i64 8, !19, i64 16, !20, i64 24, !21, i64 32, !27, i64 80}
!15 = !{!"_ZTSN8facebook3jsi7RuntimeE", !16, i64 0}
!16 = !{!"_ZTSN8facebook3jsi5ICastE"}
!17 = !{!"p1 _ZTS15HermesABIVTable", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"p1 _ZTS22HermesABIRuntimeVTable", !18, i64 0}
!20 = !{!"p1 _ZTS16HermesABIRuntime", !18, i64 0}
!21 = !{!"_ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EEE", !22, i64 0, !23, i64 8, !24, i64 16, !26, i64 32, !25, i64 40}
!22 = !{!"p1 _ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE5ChunkE", !18, i64 0}
!23 = !{!"long", !6, i64 0}
!24 = !{!"_ZTSN6hermes24ExponentialMovingAverageE", !25, i64 0, !25, i64 8}
!25 = !{!"double", !6, i64 0}
!26 = !{!"p1 _ZTSN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderE", !18, i64 0}
!27 = !{!"bool", !6, i64 0}
!28 = !{!24, !25, i64 0}
!29 = !{!21, !25, i64 40}
!30 = !{!14, !27, i64 80}
!31 = !{!32, !18, i64 0}
!32 = !{!"_ZTS15HermesABIVTable", !18, i64 0, !18, i64 8}
!33 = !{!14, !20, i64 24}
!34 = !{!35, !19, i64 0}
!35 = !{!"_ZTS16HermesABIRuntime", !19, i64 0}
!36 = !{!14, !19, i64 16}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook3jsi7RuntimeELb0EE", !39, i64 0}
!39 = !{!"p1 _ZTSN8facebook3jsi7RuntimeE", !18, i64 0}
!40 = !{!21, !22, i64 0}
!41 = !{!42, !22, i64 0}
!42 = !{!"_ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_123HermesABIRuntimeWrapper20ManagedPointerHolderELm16EE5ChunkE", !22, i64 0, !6, i64 8}
!43 = !{!44, !18, i64 0}
!44 = !{!"_ZTS22HermesABIRuntimeVTable", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !18, i64 400, !18, i64 408, !18, i64 416, !18, i64 424, !18, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464}
!45 = !{ptr @_ZN12_GLOBAL__N_123HermesABIRuntimeWrapperD2Ev}
!46 = !{!47, !48, i64 0}
!47 = !{!"_ZTSSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EE", !48, i64 0, !49, i64 8}
!48 = !{!"p1 _ZTSN8facebook3jsi6BufferE", !18, i64 0}
!49 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !50, i64 0}
!50 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!51 = !{!49, !50, i64 0}
!52 = !{!6, !6, i64 0}
!53 = !{!54, !55, i64 0}
!54 = !{!"_ZTS15HermesABIBuffer", !55, i64 0, !56, i64 8, !23, i64 16}
!55 = !{!"p1 _ZTS21HermesABIBufferVTable", !18, i64 0}
!56 = !{!"p1 omnipotent char", !18, i64 0}
!57 = distinct !{null}
!58 = !{!54, !56, i64 8}
!59 = !{!54, !23, i64 16}
!60 = !{!32, !18, i64 8}
!61 = !{!62, !56, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0, !23, i64 8, !6, i64 16}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!64 = !{!62, !23, i64 8}
!65 = !{!44, !18, i64 88}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError: argument 0"}
!68 = distinct !{!68, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError"}
!69 = !{!44, !18, i64 80}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError: argument 0"}
!72 = distinct !{!72, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper12intoJSIValueERK21HermesABIValueOrError"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZSt11make_sharedIKN8facebook3jsi27SourceJavaScriptPreparationEJRKSt10shared_ptrIKNS1_6BufferEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES4_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESH_E4typeEEDpOT0_: argument 0"}
!75 = distinct !{!75, !"_ZSt11make_sharedIKN8facebook3jsi27SourceJavaScriptPreparationEJRKSt10shared_ptrIKNS1_6BufferEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES4_INSt9enable_ifIXntsr8is_arrayIT_EE5valueESH_E4typeEEDpOT0_"}
!76 = !{!77, !5, i64 8}
!77 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!78 = !{!77, !5, i64 12}
!79 = !{!18, !18, i64 0}
!80 = !{!63, !56, i64 0}
!81 = !{!82, !83, i64 0}
!82 = !{!"_ZTSSt12__shared_ptrIKN8facebook3jsi18PreparedJavaScriptELN9__gnu_cxx12_Lock_policyE2EE", !83, i64 0, !49, i64 8}
!83 = !{!"p1 _ZTSN8facebook3jsi18PreparedJavaScriptE", !18, i64 0}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZSt19static_pointer_castIKN8facebook3jsi27SourceJavaScriptPreparationEKNS1_18PreparedJavaScriptEESt10shared_ptrIT_ERKS6_IT0_E: argument 0"}
!86 = distinct !{!86, !"_ZSt19static_pointer_castIKN8facebook3jsi27SourceJavaScriptPreparationEKNS1_18PreparedJavaScriptEESt10shared_ptrIT_ERKS6_IT0_E"}
!87 = !{!88, !89, i64 0}
!88 = !{!"_ZTSSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EE", !89, i64 0, !49, i64 8}
!89 = !{!"p1 _ZTSN8facebook3jsi27SourceJavaScriptPreparationE", !18, i64 0}
!90 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook3jsi6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!91 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!92 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook3jsi27SourceJavaScriptPreparationELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!93 = !{!44, !18, i64 416}
!94 = !{!44, !18, i64 96}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIObjectERK15HermesABIObject: argument 0"}
!97 = distinct !{!97, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIObjectERK15HermesABIObject"}
!98 = !{!21, !26, i64 32}
!99 = !{!21, !23, i64 8}
!100 = !{!24, !25, i64 8}
!101 = !{!102, !103, i64 0}
!102 = !{!"_ZTSN8facebook3jsi7PointerE", !103, i64 0}
!103 = !{!"p1 _ZTSN8facebook3jsi7Runtime12PointerValueE", !18, i64 0}
!104 = !{!105, !96}
!105 = distinct !{!105, !106, !"_ZN8facebook3jsi7Runtime4makeINS0_6ObjectEEET_PNS1_12PointerValueE: argument 0"}
!106 = distinct !{!106, !"_ZN8facebook3jsi7Runtime4makeINS0_6ObjectEEET_PNS1_12PointerValueE"}
!107 = !{!23, !23, i64 0}
!108 = distinct !{null}
!109 = !{!44, !18, i64 224}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError: argument 0"}
!112 = distinct !{!112, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK19HermesABIPropNameID: argument 0"}
!115 = distinct !{!115, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK19HermesABIPropNameID"}
!116 = !{!114, !111}
!117 = !{!118, !114, !111}
!118 = distinct !{!118, !119, !"_ZN8facebook3jsi7Runtime4makeINS0_10PropNameIDEEET_PNS1_12PointerValueE: argument 0"}
!119 = distinct !{!119, !"_ZN8facebook3jsi7Runtime4makeINS0_10PropNameIDEEET_PNS1_12PointerValueE"}
!120 = !{!44, !18, i64 232}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError: argument 0"}
!123 = distinct !{!123, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK26HermesABIPropNameIDOrError"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK19HermesABIPropNameID: argument 0"}
!126 = distinct !{!126, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper17intoJSIPropNameIDERK19HermesABIPropNameID"}
!127 = !{!125, !122}
!128 = !{!129, !125, !122}
!129 = distinct !{!129, !130, !"_ZN8facebook3jsi7Runtime4makeINS0_10PropNameIDEEET_PNS1_12PointerValueE: argument 0"}
!130 = distinct !{!130, !"_ZN8facebook3jsi7Runtime4makeINS0_10PropNameIDEEET_PNS1_12PointerValueE"}
!131 = !{!132, !133, i64 0}
!132 = !{!"_ZTS23HermesABIGrowableBuffer", !133, i64 0, !56, i64 8, !23, i64 16, !23, i64 24}
!133 = !{!"p1 _ZTS29HermesABIGrowableBufferVTable", !18, i64 0}
!134 = !{!132, !56, i64 8}
!135 = !{!132, !23, i64 16}
!136 = !{!44, !18, i64 360}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNO12_GLOBAL__N_116StringByteBuffer3getB5cxx11Ev: argument 0"}
!139 = distinct !{!139, !"_ZNO12_GLOBAL__N_116StringByteBuffer3getB5cxx11Ev"}
!140 = !{!132, !23, i64 24}
!141 = !{!44, !18, i64 240}
!142 = !{!44, !18, i64 368}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZNO12_GLOBAL__N_116StringByteBuffer3getB5cxx11Ev: argument 0"}
!145 = distinct !{!145, !"_ZNO12_GLOBAL__N_116StringByteBuffer3getB5cxx11Ev"}
!146 = !{!44, !18, i64 424}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK22HermesABIBigIntOrError: argument 0"}
!149 = distinct !{!149, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK22HermesABIBigIntOrError"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK15HermesABIBigInt: argument 0"}
!152 = distinct !{!152, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK15HermesABIBigInt"}
!153 = !{!151, !148}
!154 = !{!155, !151, !148}
!155 = distinct !{!155, !156, !"_ZN8facebook3jsi7Runtime4makeINS0_6BigIntEEET_PNS1_12PointerValueE: argument 0"}
!156 = distinct !{!156, !"_ZN8facebook3jsi7Runtime4makeINS0_6BigIntEEET_PNS1_12PointerValueE"}
!157 = !{!44, !18, i64 432}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK22HermesABIBigIntOrError: argument 0"}
!160 = distinct !{!160, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK22HermesABIBigIntOrError"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK15HermesABIBigInt: argument 0"}
!163 = distinct !{!163, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIBigIntERK15HermesABIBigInt"}
!164 = !{!162, !159}
!165 = !{!166, !162, !159}
!166 = distinct !{!166, !167, !"_ZN8facebook3jsi7Runtime4makeINS0_6BigIntEEET_PNS1_12PointerValueE: argument 0"}
!167 = distinct !{!167, !"_ZN8facebook3jsi7Runtime4makeINS0_6BigIntEEET_PNS1_12PointerValueE"}
!168 = !{!44, !18, i64 440}
!169 = !{!44, !18, i64 448}
!170 = !{!44, !18, i64 456}
!171 = !{!44, !18, i64 464}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIStringERK22HermesABIStringOrError: argument 0"}
!174 = distinct !{!174, !"_ZN12_GLOBAL__N_123HermesABIRuntimeWrapper13intoJSIStringERK22HermesABIStringOrError"}
end_hunk_1
