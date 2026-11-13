Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_vtable?download=true
inline.NumInlined: 2335
inline.NumDeleted: 1466
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_120HermesABIRuntimeImpl10raiseErrorE18HermesABIErrorCode:bb.a
  store i32 1, ptr %i.ad, align 8, !tbaa !467
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.ab, ptr %i.ae, align 8, !tbaa !468
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.af, align 8, !tbaa !469
  store ptr %i.z, ptr %5, align 8, !tbaa !73
  %i.ag = call noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.t, ptr noundef nonnull align 8 dereferenceable(48) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.0 = phi i32 [ %i.ag, %bb.d ], [ %i.y, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %i.ah = load ptr, ptr %3, align 8, !tbaa !162   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.o
  br i1 %i.ai, label %_ZN4llvh11SmallVectorItLj8EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef %i.ah) #21
  br label %_ZN4llvh11SmallVectorItLj8EED2Ev.exit

_ZN4llvh11SmallVectorItLj8EED2Ev.exit:            ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.aj = load ptr, ptr %2, align 8, !tbaa !70    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.b
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN4llvh11SmallVectorItLj8EED2Ev.exit
  %i.al = load i64, ptr %i.b, align 8, !tbaa !73
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZN4llvh11SmallVectorItLj8EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.g

_ZN6hermes2vm11TwineChar16C2EPKc.exit8:           ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.ap, align 8, !tbaa !467
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 26, ptr %i.aq, align 8, !tbaa !468
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.ar, align 8, !tbaa !469
  store ptr @.str.12, ptr %6, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.as, align 8, !tbaa !470
  %i.at = call noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %.1 = phi i32 [ %i.at, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8 ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ], [ 0, %bb.a ]
  ret i32 %.1
}

declare noundef zeroext i1 @_ZN4llvh24convertUTF8ToUTF16StringENS_9StringRefERNS_15SmallVectorImplItEE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

declare noundef i32 @_ZN6hermes2vm7Runtime10raiseErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

declare { i32, i64 } @_ZN6hermes2vm10HostObject22createWithoutPrototypeERNS0_7RuntimeESt10unique_ptrINS0_15HostObjectProxyESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117HostObjectWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 !guid !812 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_117HostObjectWrapperE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !427  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !473
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !475
  tail call void %i.d(ptr noundef nonnull %i.b) #21
  tail call void @_ZN6hermes2vm15HostObjectProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117HostObjectWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 8)) %0) unnamed_addr #1 align 2 !guid !813 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_117HostObjectWrapperE, i64 16), ptr %0, align 8, !tbaa !62
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !427  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !473
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !475
  tail call void %i.d(ptr noundef nonnull %i.b) #21, !inline_history !814
  tail call void @_ZN6hermes2vm15HostObjectProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #21, !inline_history !814
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #22
  ret void
}

declare noundef i64 @_ZNK6hermes2vm15DecoratedObject10Decoration13getMallocSizeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN12_GLOBAL__N_117HostObjectWrapper3getEN6hermes2vm8SymbolIDE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 %1) unnamed_addr #1 align 2 !guid !815 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !426  ; 4 uses
  %i.c = zext i32 %1 to i64
  %i.d = or disjoint i64 %i.c, -1266637395197952
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !146  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit, !prof !106

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  %i.j = uitofp i64 %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load double, ptr %i.k, align 8, !tbaa !148
  %i.m = fcmp ogt double %i.l, %i.j
  br i1 %i.m, label %.sink.split.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !146  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not4.i.i.i, label %.sink.split.i.i.i, label %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit

.sink.split.i.i.i:                                ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !146
  br label %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit

_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit: ; preds = %bb.a, %bb.c, %.sink.split.i.i.i
  %i.o = phi ptr [ %i.g, %bb.a ], [ %i.n, %bb.c ], [ %.pre.i.i, %.sink.split.i.i.i ] ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !73
  store ptr %.val.i.i.i, ptr %i.f, align 8, !tbaa !146
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store atomic i32 1, ptr %i.q monotonic, align 8
  store i64 %i.d, ptr %i.p, align 8, !tbaa !72
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !427  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !473
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !816
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !426
  %i.x = tail call { i32, i64 } %i.v(ptr noundef nonnull %i.s, ptr noundef %i.w, ptr %i.o) #21 ; 2 uses
  %i.y = extractvalue { i32, i64 } %i.x, 0
  %i.z = extractvalue { i32, i64 } %i.x, 1        ; 5 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !439
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !464
  tail call void %i.ab(ptr noundef nonnull %i.o) #21, !inline_history !4
  switch i32 %i.y, label %bb.h [
    i32 3, label %bb.d
    i32 0, label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 4, label %bb.g
    i32 -2147483641, label %bb.i
    i32 -2147483639, label %bb.i
    i32 -2147483643, label %bb.i
    i32 -2147483642, label %bb.i
  ]

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !426
  %.sroa.514.8.extract.trunc = trunc i64 %i.z to i32
  %i.ad = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl10raiseErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(180) %i.ac, i32 noundef %.sroa.514.8.extract.trunc)
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit
  %i.ae = and i64 %i.z, 255
  %i.af = or disjoint i64 %i.ae, -1407374883553280
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit
  %i.ag = bitcast i64 %i.z to double
  %i.ah = fcmp uno double %i.ag, 0.000000e+00
  %spec.select.i.i = select i1 %i.ah, i64 9221120237041090560, i64 %i.z, !prof !106
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.3) #23
  unreachable

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit, %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit, %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit, %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit
  %i.ai = inttoptr i64 %i.z to ptr                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !72
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !439
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !464
  tail call void %i.al(ptr noundef nonnull %i.ai) #21, !inline_history !3
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit

_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit: ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit, %bb.g, %bb.f, %bb.e, %bb.i, %bb.d
  %.sroa.016.0 = phi i32 [ %i.ad, %bb.d ], [ 1, %bb.i ], [ 1, %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ]
  %.sroa.3.0 = phi i64 [ undef, %bb.d ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.i ], [ -1688849860263936, %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit ], [ -1548112371908608, %bb.e ], [ %i.af, %bb.f ], [ %spec.select.i.i, %bb.g ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.016.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal range(i32 256, 512) i32 @_ZN12_GLOBAL__N_117HostObjectWrapper3setEN6hermes2vm8SymbolIDENS2_11HermesValueE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 %1, i64 %2) unnamed_addr #1 align 2 !guid !817 {
bb.a:
  %3 = alloca %struct.HermesABIValue, align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !426  ; 4 uses
  %i.c = zext i32 %1 to i64
  %i.d = or disjoint i64 %i.c, -1266637395197952
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !146  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit, !prof !106

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147
  %i.j = uitofp i64 %i.i to double
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load double, ptr %i.k, align 8, !tbaa !148
  %i.m = fcmp ogt double %i.l, %i.j
  br i1 %i.m, label %.sink.split.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !146  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not4.i.i.i, label %.sink.split.i.i.i, label %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit

.sink.split.i.i.i:                                ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.e)
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !146
  br label %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit

_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit: ; preds = %bb.a, %bb.c, %.sink.split.i.i.i
  %i.o = phi ptr [ %i.g, %bb.a ], [ %i.n, %bb.c ], [ %.pre.i.i, %.sink.split.i.i.i ] ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16       ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !73
  store ptr %.val.i.i.i, ptr %i.f, align 8, !tbaa !146
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store atomic i32 1, ptr %i.q monotonic, align 8
  store i64 %i.d, ptr %i.p, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !426
  %i.s = tail call fastcc { i32, i64 } @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl11createValueEN6hermes2vm11HermesValueE(ptr noundef nonnull align 8 dereferenceable(180) %i.r, i64 %2) ; 2 uses
  %i.t = extractvalue { i32, i64 } %i.s, 0
  store i32 %i.t, ptr %3, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = extractvalue { i32, i64 } %i.s, 1
  store i64 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !427  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !473
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !818
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !426
  %i.ac = call i64 %i.aa(ptr noundef nonnull %i.x, ptr noundef %i.ab, ptr %i.o, ptr noundef nonnull %3) #21 ; 2 uses
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !439
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !464
  call void %i.ae(ptr noundef nonnull %i.o) #21, !inline_history !4
  %i.af = load i32, ptr %3, align 8, !tbaa !126
  %.not.i = icmp sgt i32 %i.af, -1
  br i1 %.not.i, label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit, label %bb.d

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !73  ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !439
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !464
  call void %i.ai(ptr noundef nonnull %i.ag) #21, !inline_history !3
  br label %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit

_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit: ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImpl16createPropNameIDEN6hermes2vm11HermesValueE.exit, %bb.d
  %i.aj = trunc i64 %i.ac to i1
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !426
  %i.al = lshr i64 %i.ac, 2
  %i.am = trunc i64 %i.al to i32
  %i.an = call fastcc noundef i32 @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl10raiseErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(180) %i.ak, i32 noundef %i.am)
  %i.ao = and i32 %i.an, 255
  %4 = or disjoint i32 %i.ao, 256
  br label %bb.f

bb.f:                                             ; preds = %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit, %bb.e
  %.sroa.08.0 = phi i32 [ %4, %bb.e ], [ 257, %_ZN8facebook6hermes3abi12releaseValueERK14HermesABIValue.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i32 %.sroa.08.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN12_GLOBAL__N_117HostObjectWrapper20getHostPropertyNamesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 align 2 !guid !820 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !427  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !473
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !821
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !426
  %i.h = tail call i64 %i.e(ptr noundef nonnull %i.b, ptr noundef %i.g) #21 ; 3 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !426
  %i.k = lshr i64 %i.h, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl10raiseErrorE18HermesABIErrorCode(ptr noundef nonnull align 8 dereferenceable(180) %i.j, i32 noundef %i.l) ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.h to ptr                 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !825
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !826  ; 3 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !426
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 5 uses
  %i.v = trunc i64 %i.r to i32                    ; 3 uses
  %i.w = tail call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %i.u, i32 noundef %i.v, i32 noundef %i.v) #21 ; 4 uses
  %.not = icmp eq ptr %i.w, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !827
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !829
  tail call void %i.y(ptr noundef nonnull %i.n) #21
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.z = tail call noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr %i.w, ptr noundef nonnull align 8 dereferenceable(9816) %i.u, i32 noundef %i.v) #21 ; 0 uses
  %.not34 = icmp eq i64 %i.r, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 1632
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 856
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit, %bb.e
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !827
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !829
  tail call void %i.ae(ptr noundef nonnull %i.n) #21
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph, %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit
  %.033 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.033
  %.sroa.02.0.copyload = load ptr, ptr %i.af, align 8, !tbaa !831
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !72
  %i.ah = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.ai = shl i32 %i.ah, 3
  %i.aj = or disjoint i32 %i.ai, 5                ; 2 uses
  %.sroa.0.0.copyload.i.i.i28 = load i64, ptr %i.w, align 8, !tbaa !72
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i28, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = trunc i64 %.033 to i32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.an, align 4, !tbaa !11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.ao = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ap = add i64 %i.ao, %i.aa
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !180
  %i.au = sub i32 %i.am, %i.at                    ; 4 uses
  %i.av = icmp ult i32 %i.au, 4096
  br i1 %i.av, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i, label %bb.g, !prof !168

bb.g:                                             ; preds = %bb.f
  %i.aw = add i32 %i.au, -4096
  %i.ax = lshr i32 %i.aw, 10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 16392
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !182
  %i.bc = zext i32 %i.bb to i64
  %i.bd = add i64 %i.bc, %i.aa
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = and i32 %i.au, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i: ; preds = %bb.g, %bb.f
  %.sink6.i.i.i.i = phi ptr [ %i.be, %bb.g ], [ %i.ar, %bb.f ]
  %.sink5.i.i.i.i = phi i32 [ %i.bf, %bb.g ], [ %i.au, %bb.f ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i, i64 8
  %i.bh = zext nneg i32 %.sink5.i.i.i.i to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh ; 3 uses
  %i.bj = load ptr, ptr %i.ab, align 8, !tbaa !185
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = and i64 %i.bk, -4194304
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = icmp eq ptr %i.bj, %i.bm
  br i1 %i.bn, label %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit, label %bb.h, !prof !168

bb.h:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.bi, i32 %i.aj) #21
  br label %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit

_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i, %bb.h
  store i32 %i.aj, ptr %i.bi, align 4, !tbaa !182
  %i.bo = add nuw i64 %.033, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bo, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !819

bb.i:                                             ; preds = %bb.d, %._crit_edge, %bb.b
  %.sroa.032.1 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.b ], [ inttoptr (i64 -1 to ptr), %bb.d ], [ %i.w, %._crit_edge ]
  ret ptr %.sroa.032.1
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm15HostObjectProxyD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZZN12_GLOBAL__N_116set_native_stateEP16HermesABIRuntime15HermesABIObjectP20HermesABINativeStateEN3$_08__invokeERN6hermes2vm7HadesGCEPNS7_11NativeStateE"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) #8 align 2 !guid !833 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !190 ; 2 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !836
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !838
  tail call void %i.c(ptr noundef nonnull %.val) #21, !inline_history !832
  ret void
}

declare i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32, ptr, i32) local_unnamed_addr #6

declare i32 @_ZN6hermes2vm7isArrayERNS0_7RuntimeEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm8WeakRootINS3_8JSObjectEEEEELm16EE13allocateChunkEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) initializes((32, 40)) %0) unnamed_addr #1 align 2 !guid !839 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #20 ; 50 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.i, align 8, !tbaa !439
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !441
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.1.i, align 8, !tbaa !439
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.c, align 8, !tbaa !441
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.2.i, align 8, !tbaa !439
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %i.d, align 8, !tbaa !441
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.3.i, align 8, !tbaa !439
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %i.e, align 8, !tbaa !441
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.4.i, align 8, !tbaa !439
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i32 0, ptr %i.f, align 8, !tbaa !441
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.5.i, align 8, !tbaa !439
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i32 0, ptr %i.g, align 8, !tbaa !441
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.6.i, align 8, !tbaa !439
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i32 0, ptr %i.h, align 8, !tbaa !441
  %.ptr.7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.7.i, align 8, !tbaa !439
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 0, ptr %i.i, align 8, !tbaa !441
  %.ptr.8.i = getelementptr inbounds nuw i8, ptr %i.a, i64 200 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.8.i, align 8, !tbaa !439
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store i32 0, ptr %i.j, align 8, !tbaa !441
  %.ptr.9.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.9.i, align 8, !tbaa !439
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 0, ptr %i.k, align 8, !tbaa !441
  %.ptr.10.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.10.i, align 8, !tbaa !439
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i32 0, ptr %i.l, align 8, !tbaa !441
  %.ptr.11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  store ptr @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE2vtE, ptr %.ptr.11.i, align 8, !tbaa !439
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store i32 0, ptr %i.m, align 8, !tbaa !441
  %.ptr.12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 296 ; 2 uses
end_hunk_0
