inline.NumInlined: 2335
inline.NumDeleted: 1466
begin_hunk_0_@_ZN12_GLOBAL__N_122release_hermes_runtimeEP16HermesABIRuntime:bb.a
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !140 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm8WeakRootINS3_8JSObjectEEEEELm16EED2Ev.exit.i, label %.lr.ph.i.i

_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm8WeakRootINS3_8JSObjectEEEEELm16EED2Ev.exit.i: ; preds = %.lr.ph.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !143 ; 2 uses
  %.not6.i1.i = icmp eq ptr %i.af, null
  br i1 %.not6.i1.i, label %_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EED2Ev.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm8WeakRootINS3_8JSObjectEEEEELm16EED2Ev.exit.i, %.lr.ph.i2.i
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i2.i ], [ %i.af, %_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm8WeakRootINS3_8JSObjectEEEEELm16EED2Ev.exit.i ] ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !144
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !143
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 392) #23
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !143 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.ai, null
  br i1 %.not.i3.i, label %_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EED2Ev.exit.i, label %.lr.ph.i2.i

_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EED2Ev.exit.i: ; preds = %.lr.ph.i2.i, %_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm8WeakRootINS3_8JSObjectEEEEELm16EED2Ev.exit.i
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !58  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_120HermesABIRuntimeImplD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EED2Ev.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.al = load atomic i64, ptr %i.ak acquire, align 8 ; 2 uses
  %i.am = icmp eq i64 %i.al, 4294967297
  %i.an = trunc i64 %i.al to i32                  ; 2 uses
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ak, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !54
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #22, !inline_history !146
  %i.as = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #22, !inline_history !146
  br label %_ZN12_GLOBAL__N_120HermesABIRuntimeImplD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i4.i = icmp eq i8 %i.av, 0
  br i1 %.not.i.i.i4.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = add nsw i32 %i.an, -1
  store i32 %i.aw, ptr %i.ak, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ax = atomicrmw volatile add ptr %i.ak, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.an, %bb.l ], [ %i.ax, %bb.m ]
  %i.ay = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ay, label %bb.n, label %_ZN12_GLOBAL__N_120HermesABIRuntimeImplD2Ev.exit, !prof !133

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #22
  br label %_ZN12_GLOBAL__N_120HermesABIRuntimeImplD2Ev.exit

_ZN12_GLOBAL__N_120HermesABIRuntimeImplD2Ev.exit: ; preds = %_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EED2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #23
  br label %bb.o

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_120HermesABIRuntimeImplD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN12_GLOBAL__N_128get_and_clear_js_error_valueEP16HermesABIRuntime(ptr noundef captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !tbaa !69 ; 2 uses
  %.mask.i = and i64 %.sroa.0.0.copyload.i, -140737488355328
  %i.d = icmp eq i64 %.mask.i, -1970324836974592
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc { i32, i64 } @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl11createValueEN6hermes2vm11HermesValueE(ptr noundef nonnull align 8 dereferenceable(180) %0, i64 %.sroa.0.0.copyload.i)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !115
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %.pn = phi { i32, i64 } [ %i.e, %bb.b ], [ { i32 0, i64 undef }, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 720
  store i64 -1970324836974592, ptr %i.g, align 8, !tbaa !147
  ret { i32, i64 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_138get_and_clear_native_exception_messageEP16HermesABIRuntimeP23HermesABIGrowableBuffer(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !149
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %bb.b, label %_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  tail call void %i.i(ptr noundef nonnull %1, i64 noundef %i.d) #22, !inline_history !155
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !149
  %i.j = icmp ult i64 %.pre.i, %i.d
  br i1 %i.j, label %bb.c, label %_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.2) #24
  unreachable

_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !156
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr readonly align 1 %i.b, i64 %i.d, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.d, ptr %i.m, align 8, !tbaa !157
  store i64 0, ptr %i.c, align 8, !tbaa !68
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !67
  store i8 0, ptr %i.n, align 1, !tbaa !70
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118set_js_error_valueEP16HermesABIRuntimePK14HermesABIValue(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = load i32, ptr %1, align 8, !tbaa !158
  switch i32 %i.c, label %bb.f [
    i32 0, label %_ZN12_GLOBAL__N_113toHermesValueERK14HermesABIValue.exit
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 4, label %bb.d
    i32 -2147483641, label %bb.e
    i32 -2147483639, label %bb.e
    i32 -2147483643, label %bb.e
    i32 -2147483642, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZN12_GLOBAL__N_113toHermesValueERK14HermesABIValue.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !70, !range !108, !noundef !109
  %i.f = zext nneg i8 %i.e to i64
  %i.g = or disjoint i64 %i.f, -1407374883553280
  br label %_ZN12_GLOBAL__N_113toHermesValueERK14HermesABIValue.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !70 ; 2 uses
  %i.j = fcmp uno double %i.i, 0.000000e+00
  %i.k = bitcast double %i.i to i64
  %.sroa.0.0.i.i = select i1 %i.j, i64 9221120237041090560, i64 %i.k, !prof !133
  br label %_ZN12_GLOBAL__N_113toHermesValueERK14HermesABIValue.exit

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !69
  br label %_ZN12_GLOBAL__N_113toHermesValueERK14HermesABIValue.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.3) #24
  unreachable

_ZN12_GLOBAL__N_113toHermesValueERK14HermesABIValue.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i, %bb.e ], [ -1548112371908608, %bb.b ], [ %i.g, %bb.c ], [ %.sroa.0.0.i.i, %bb.d ], [ -1688849860263936, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  store i64 %.sroa.0.0.i, ptr %i.o, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_128set_native_exception_messageEP16HermesABIRuntimePKhm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !68
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.c, ptr noundef %1, i64 noundef %2) #22 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal ptr @_ZN12_GLOBAL__N_116clone_propnameidEP16HermesABIRuntime19HermesABIPropNameID(ptr readnone captures(none) %0, ptr returned captures(ret: address, provenance) %1) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal ptr @_ZN12_GLOBAL__N_112clone_stringEP16HermesABIRuntime15HermesABIString(ptr readnone captures(none) %0, ptr returned captures(ret: address, provenance) %1) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal ptr @_ZN12_GLOBAL__N_112clone_symbolEP16HermesABIRuntime15HermesABISymbol(ptr readnone captures(none) %0, ptr returned captures(ret: address, provenance) %1) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal ptr @_ZN12_GLOBAL__N_112clone_objectEP16HermesABIRuntime15HermesABIObject(ptr readnone captures(none) %0, ptr returned captures(ret: address, provenance) %1) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal ptr @_ZN12_GLOBAL__N_112clone_bigintEP16HermesABIRuntime15HermesABIBigInt(ptr readnone captures(none) %0, ptr returned captures(ret: address, provenance) %1) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = atomicrmw add ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define internal { i32, i64 } @_ZN12_GLOBAL__N_126evaluate_javascript_sourceEP16HermesABIRuntimeP15HermesABIBufferPKcm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 {
bb.a:
  %4 = alloca %"struct.std::pair", align 8        ; 14 uses
  %5 = alloca %"class.std::unique_ptr.176", align 8 ; 3 uses
  %6 = alloca %"class.std::unique_ptr.184", align 8 ; 3 uses
  %7 = alloca %"class.std::unique_ptr.200", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21, !noalias !161 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !164, !noalias !161
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !167, !noalias !161
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.f, align 8, !tbaa !168, !noalias !161
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.e, ptr %i.g, align 8, !tbaa !170, !noalias !161
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_113BufferWrapperE, i64 16), ptr %i.a, align 8, !tbaa !49, !noalias !161
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.h, align 8, !tbaa !171, !noalias !161
  store ptr %i.a, ptr %5, align 8, !tbaa !174
  store ptr null, ptr %6, align 8, !tbaa !177
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZN6hermes3hbc17BCProviderFromSrc23createBCProviderFromSrcB5cxx11ESt10unique_ptrINS_6BufferESt14default_deleteIS3_EEN4llvh9StringRefES2_INS_9SourceMapES4_IS9_EERKNS0_12CompileFlagsE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair") align 8 %4, ptr noundef nonnull %5, ptr %2, i64 %3, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(28) %i.i) #22
  %i.j = load ptr, ptr %6, align 8, !tbaa !180    ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i: ; preds = %bb.a
  call void @_ZN6hermes9SourceMapD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.j) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 104) #23
  br label %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6hermes9SourceMapEEclEPS1_.exit.i
  %i.k = load ptr, ptr %5, align 8, !tbaa !181    ; 3 uses
  %.not.i9 = icmp eq ptr %i.k, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN12_GLOBAL__N_113BufferWrapperESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6hermes6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6hermes6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.k) #22, !inline_history !182
  br label %_ZNSt10unique_ptrIN12_GLOBAL__N_113BufferWrapperESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12_GLOBAL__N_113BufferWrapperESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6hermes6BufferEEclEPS1_.exit.i, %_ZNSt10unique_ptrIN6hermes9SourceMapESt14default_deleteIS1_EED2Ev.exit
  %i.o = load ptr, ptr %4, align 8, !tbaa !183    ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113BufferWrapperESt14default_deleteIS1_EED2Ev.exit
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !67   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.w = icmp eq ptr %i.u, %i.v                   ; 2 uses
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.w, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !68   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %.not21.i = icmp eq ptr %i.p, %i.q
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !133

bb.d:                                             ; preds = %bb.c
  switch i64 %i.y, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.u, align 1, !tbaa !70
  store i8 %i.aa, ptr %i.r, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.u, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ab = load i64, ptr %i.x, align 8, !tbaa !68  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !68
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !70
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.u, ptr %i.q, align 8, !tbaa !67
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load <2 x i64>, ptr %i.ag, align 8, !tbaa !70
  store <2 x i64> %i.ah, ptr %i.af, align 8, !tbaa !70
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ai = load i64, ptr %i.s, align 8, !tbaa !70
  store ptr %i.u, ptr %i.q, align 8, !tbaa !67
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.al = load <2 x i64>, ptr %i.aj, align 8, !tbaa !70
  store <2 x i64> %i.al, ptr %i.ak, align 8, !tbaa !70
  %.not.i11 = icmp eq ptr %i.r, null
  br i1 %.not.i11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.r, ptr %i.p, align 8, !tbaa !67
  store i64 %i.ai, ptr %i.v, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.v, ptr %i.p, align 8, !tbaa !67
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.am = phi ptr [ %i.r, %bb.g ], [ %i.v, %bb.h ], [ %i.u, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.an, align 8, !tbaa !68
  store i8 0, ptr %i.am, align 1, !tbaa !70
  br label %_ZNSt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN12_GLOBAL__N_113BufferWrapperESt14default_deleteIS1_EED2Ev.exit
  store ptr null, ptr %4, align 8, !tbaa !183
  store ptr %i.o, ptr %7, align 8, !tbaa !185
  %i.ao = call fastcc { i32, i64 } @_ZN12_GLOBAL__N_113runBCProviderEPNS_20HermesABIRuntimeImplESt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS5_EEN4llvh9StringRefE(ptr noundef nonnull %0, ptr noundef %7, ptr %2, i64 %3) ; 2 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !188   ; 3 uses
  %.not.i12 = icmp eq ptr %i.ap, null
  br i1 %.not.i12, label %_ZNSt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6hermes3hbc14BCProviderBaseEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6hermes3hbc14BCProviderBaseEEclEPS2_.exit.i: ; preds = %bb.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.ap) #22, !inline_history !189
  br label %_ZNSt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6hermes3hbc14BCProviderBaseEEclEPS2_.exit.i, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %.pn = phi { i32, i64 } [ { i32 3, i64 0 }, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit ], [ %i.ao, %bb.i ], [ %i.ao, %_ZNKSt14default_deleteIN6hermes3hbc14BCProviderBaseEEclEPS2_.exit.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !67 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EED2Ev.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !70
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.az = load ptr, ptr %4, align 8, !tbaa !183   ; 6 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt4pairISt10unique_ptrIN6hermes3hbc17BCProviderFromSrcESt14default_deleteIS3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 280
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6hermes3hbc14BytecodeModuleEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6hermes3hbc14BytecodeModuleEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.j
  call void @_ZN6hermes3hbc14BytecodeModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(513) dereferenceable(513) %i.bb) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 520) #23
  br label %_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes3hbc14BytecodeModuleEEclEPS2_.exit.i.i.i.i.i, %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN6hermes3hbc14BCProviderBaseE, i64 16), ptr %i.az, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 248
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !67 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 264 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNKSt14default_deleteIN6hermes3hbc17BCProviderFromSrcEEclEPS2_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc14BytecodeModuleESt14default_deleteIS2_EED2Ev.exit.i.i.i.i
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !70
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #23, !inline_history !192
  br label %_ZNKSt14default_deleteIN6hermes3hbc17BCProviderFromSrcEEclEPS2_.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EE7collectEv:bb.a

bb.u:                                             ; preds = %bb.s
  %.028.ptr.5 = getelementptr inbounds nuw i8, ptr %.02741, i64 152
  %i.ba = getelementptr inbounds nuw i8, ptr %.02741, i64 168
  store ptr %.130.5, ptr %i.ba, align 8, !tbaa !70
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.132.6 = phi i64 [ %.132.5, %bb.u ], [ %i.az, %bb.t ] ; 2 uses
  %.130.6 = phi ptr [ %.028.ptr.5, %bb.u ], [ %.130.5, %bb.t ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02741, i64 184
  %i.bc = load atomic i32, ptr %i.bb monotonic, align 4
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = add nuw nsw i64 %.132.6, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %.028.ptr.6 = getelementptr inbounds nuw i8, ptr %.02741, i64 176
  %i.bf = getelementptr inbounds nuw i8, ptr %.02741, i64 192
  store ptr %.130.6, ptr %i.bf, align 8, !tbaa !70
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.132.7 = phi i64 [ %.132.6, %bb.x ], [ %i.be, %bb.w ] ; 2 uses
  %.130.7 = phi ptr [ %.028.ptr.6, %bb.x ], [ %.130.6, %bb.w ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02741, i64 208
  %i.bh = load atomic i32, ptr %i.bg monotonic, align 4
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = add nuw nsw i64 %.132.7, 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %.028.ptr.7 = getelementptr inbounds nuw i8, ptr %.02741, i64 200
  %i.bk = getelementptr inbounds nuw i8, ptr %.02741, i64 216
  store ptr %.130.7, ptr %i.bk, align 8, !tbaa !70
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.132.8 = phi i64 [ %.132.7, %bb.aa ], [ %i.bj, %bb.z ] ; 2 uses
  %.130.8 = phi ptr [ %.028.ptr.7, %bb.aa ], [ %.130.7, %bb.z ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02741, i64 232
  %i.bm = load atomic i32, ptr %i.bl monotonic, align 4
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = add nuw nsw i64 %.132.8, 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %.028.ptr.8 = getelementptr inbounds nuw i8, ptr %.02741, i64 224
  %i.bp = getelementptr inbounds nuw i8, ptr %.02741, i64 240
  store ptr %.130.8, ptr %i.bp, align 8, !tbaa !70
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.132.9 = phi i64 [ %.132.8, %bb.ad ], [ %i.bo, %bb.ac ] ; 2 uses
  %.130.9 = phi ptr [ %.028.ptr.8, %bb.ad ], [ %.130.8, %bb.ac ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.02741, i64 256
  %i.br = load atomic i32, ptr %i.bq monotonic, align 4
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = add nuw nsw i64 %.132.9, 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %.028.ptr.9 = getelementptr inbounds nuw i8, ptr %.02741, i64 248
  %i.bu = getelementptr inbounds nuw i8, ptr %.02741, i64 264
  store ptr %.130.9, ptr %i.bu, align 8, !tbaa !70
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.132.10 = phi i64 [ %.132.9, %bb.ag ], [ %i.bt, %bb.af ] ; 2 uses
  %.130.10 = phi ptr [ %.028.ptr.9, %bb.ag ], [ %.130.9, %bb.af ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02741, i64 280
  %i.bw = load atomic i32, ptr %i.bv monotonic, align 4
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = add nuw nsw i64 %.132.10, 1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %.028.ptr.10 = getelementptr inbounds nuw i8, ptr %.02741, i64 272
  %i.bz = getelementptr inbounds nuw i8, ptr %.02741, i64 288
  store ptr %.130.10, ptr %i.bz, align 8, !tbaa !70
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.132.11 = phi i64 [ %.132.10, %bb.aj ], [ %i.by, %bb.ai ] ; 2 uses
  %.130.11 = phi ptr [ %.028.ptr.10, %bb.aj ], [ %.130.10, %bb.ai ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02741, i64 304
  %i.cb = load atomic i32, ptr %i.ca monotonic, align 4
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cd = add nuw nsw i64 %.132.11, 1
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %.028.ptr.11 = getelementptr inbounds nuw i8, ptr %.02741, i64 296
  %i.ce = getelementptr inbounds nuw i8, ptr %.02741, i64 312
  store ptr %.130.11, ptr %i.ce, align 8, !tbaa !70
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.132.12 = phi i64 [ %.132.11, %bb.am ], [ %i.cd, %bb.al ] ; 2 uses
  %.130.12 = phi ptr [ %.028.ptr.11, %bb.am ], [ %.130.11, %bb.al ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02741, i64 328
  %i.cg = load atomic i32, ptr %i.cf monotonic, align 4
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ci = add nuw nsw i64 %.132.12, 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %.028.ptr.12 = getelementptr inbounds nuw i8, ptr %.02741, i64 320
  %i.cj = getelementptr inbounds nuw i8, ptr %.02741, i64 336
  store ptr %.130.12, ptr %i.cj, align 8, !tbaa !70
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.132.13 = phi i64 [ %.132.12, %bb.ap ], [ %i.ci, %bb.ao ] ; 2 uses
  %.130.13 = phi ptr [ %.028.ptr.12, %bb.ap ], [ %.130.12, %bb.ao ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.02741, i64 352
  %i.cl = load atomic i32, ptr %i.ck monotonic, align 4
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cn = add nuw nsw i64 %.132.13, 1
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %.028.ptr.13 = getelementptr inbounds nuw i8, ptr %.02741, i64 344
  %i.co = getelementptr inbounds nuw i8, ptr %.02741, i64 360
  store ptr %.130.13, ptr %i.co, align 8, !tbaa !70
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.132.14 = phi i64 [ %.132.13, %bb.as ], [ %i.cn, %bb.ar ] ; 3 uses
  %.130.14 = phi ptr [ %.028.ptr.13, %bb.as ], [ %.130.13, %bb.ar ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02741, i64 376
  %i.cq = load atomic i32, ptr %i.cp monotonic, align 4
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.au, label %.thread

.thread:                                          ; preds = %bb.at
  %i.cs = add nuw nsw i64 %.132.14, 1
  %i.ct = load ptr, ptr %.02741, align 8, !tbaa !144
  br label %bb.ax

bb.au:                                            ; preds = %bb.at
  %.028.ptr.14 = getelementptr inbounds nuw i8, ptr %.02741, i64 368 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.02741, i64 384
  store ptr %.130.14, ptr %i.cu, align 8, !tbaa !70
  %i.cv = load ptr, ptr %.02741, align 8, !tbaa !144 ; 4 uses
  %i.cw = icmp eq i64 %.132.14, 0
  br i1 %i.cw, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.cx = load i64, ptr %i.g, align 8, !tbaa !202 ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, %i.e
  br i1 %i.cy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store ptr %i.cv, ptr %.02542, align 8, !tbaa !525
  %i.cz = add i64 %i.cx, -1
  store i64 %i.cz, ptr %i.g, align 8, !tbaa !202
  tail call void @_ZdlPvm(ptr noundef nonnull %.02741, i64 noundef 392) #23
  br label %bb.ay

bb.ax:                                            ; preds = %.thread, %bb.av, %bb.au
  %i.da = phi ptr [ %i.ct, %.thread ], [ %i.cv, %bb.av ], [ %i.cv, %bb.au ]
  %.130.1549 = phi ptr [ %.130.14, %.thread ], [ %.028.ptr.14, %bb.av ], [ %.028.ptr.14, %bb.au ]
  %.132.1548 = phi i64 [ %i.cs, %.thread ], [ 0, %bb.av ], [ %.132.14, %bb.au ]
  store ptr %.130.1549, ptr %i.a, align 8, !tbaa !201
  %i.db = add i64 %.132.1548, %.043
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.dc = phi ptr [ %i.da, %bb.ax ], [ %i.cv, %bb.aw ] ; 2 uses
  %.126 = phi ptr [ %.02741, %bb.ax ], [ %.02542, %bb.aw ]
  %.1 = phi i64 [ %i.db, %bb.ax ], [ %.043, %bb.aw ] ; 2 uses
  %.not = icmp eq ptr %i.dc, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !526
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm17PinnedHermesValueEE10invalidateEP23HermesABIManagedPointer(ptr noundef captures(none) %0) #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE(ptr noundef %0, ptr readonly captures(none) %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !149
  %i.c = icmp ult i64 %i.b, %2
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !152
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !153
  tail call void %i.e(ptr noundef nonnull %0, i64 noundef %2) #22
  %.pre = load i64, ptr %i.a, align 8, !tbaa !149
  %i.f = icmp ult i64 %.pre, %2
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.2) #24
  unreachable

.thread:                                          ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr align 1 %1, i64 %2, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %i.i, align 8, !tbaa !157
  ret void
}

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZN6hermes3hbc17BCProviderFromSrc23createBCProviderFromSrcB5cxx11ESt10unique_ptrINS_6BufferESt14default_deleteIS3_EEN4llvh9StringRefES2_INS_9SourceMapES4_IS9_EERKNS0_12CompileFlagsE(ptr dead_on_unwind writable sret(%"struct.std::pair") align 8, ptr noundef, ptr, i64, ptr noundef, ptr noundef nonnull align 4 dereferenceable(28)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, i64 } @_ZN12_GLOBAL__N_113runBCProviderEPNS_20HermesABIRuntimeImplESt10unique_ptrIN6hermes3hbc14BCProviderBaseESt14default_deleteIS5_EEN4llvh9StringRefE(ptr noundef captures(none) %0, ptr noundef nonnull %1, ptr %2, i64 %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %5 = alloca %"class.std::shared_ptr.248", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.b, ptr %4, align 8, !tbaa !204
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !206
  store ptr %i.e, ptr %i.c, align 8, !tbaa !209
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !217
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.j, align 4, !tbaa !218
  store ptr %i.g, ptr %i.h, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !219
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 192
  store ptr %i.g, ptr %i.k, align 8, !tbaa !220
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr %i.f, ptr %i.l, align 8, !tbaa !221
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i32 0, ptr %i.m, align 8, !tbaa !222
  store ptr %4, ptr %i.d, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EEC2IS2_St14default_deleteIS2_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 856
  call void @_ZN6hermes2vm6GCBase18runtimeWillExecuteEv(ptr noundef nonnull align 8 dereferenceable(717) %i.n) #22
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = call { i32, i64 } @_ZN6hermes2vm7Runtime11runBytecodeEOSt10shared_ptrINS_3hbc14BCProviderBaseEENS0_18RuntimeModuleFlagsEN4llvh9StringRefENS0_6HandleINS0_11EnvironmentEEENSA_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, ptr %2, i64 %3, ptr nonnull @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, i64 %i.p) #22 ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.q, 0
  %i.s = extractvalue { i32, i64 } %i.q, 1
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !58   ; 8 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.v, align 8, !tbaa !52
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !54
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #22, !inline_history !527
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #22, !inline_history !527
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.e ], [ %i.ai, %bb.f ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.g, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !133

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #22
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ak = icmp eq i32 %i.r, 0
  br i1 %i.ak, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.al = call fastcc { i32, i64 } @_ZN12_GLOBAL__N_120HermesABIRuntimeImpl11createValueEN6hermes2vm11HermesValueE(ptr noundef nonnull align 8 dereferenceable(180) %0, i64 %i.s)
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  %.pn = phi { i32, i64 } [ %i.al, %bb.h ], [ { i32 3, i64 1 }, %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret { i32, i64 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113BufferWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_113BufferWrapperE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !528
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !529
  tail call void %i.d(ptr noundef nonnull %i.b) #22
  tail call void @_ZN6hermes6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113BufferWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_113BufferWrapperE, i64 16), ptr %0, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !528
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !529
  tail call void %i.d(ptr noundef nonnull %i.b) #22, !inline_history !531
  tail call void @_ZN6hermes6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %0) #22, !inline_history !531
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6hermes6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes9SourceMapD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !532  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !535  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.f = load i8, ptr %i.e, align 8, !tbaa !536, !range !108, !noundef !109
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
end_hunk_1
begin_hunk_2_@_ZN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm8WeakRootINS3_8JSObjectEEEEELm16EE7collectEv:bb.a

bb.u:                                             ; preds = %bb.s
  %.028.ptr.5 = getelementptr inbounds nuw i8, ptr %.02741, i64 152
  %i.ba = getelementptr inbounds nuw i8, ptr %.02741, i64 168
  store ptr %.130.5, ptr %i.ba, align 8, !tbaa !70
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.132.6 = phi i64 [ %.132.5, %bb.u ], [ %i.az, %bb.t ] ; 2 uses
  %.130.6 = phi ptr [ %.028.ptr.5, %bb.u ], [ %.130.5, %bb.t ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02741, i64 184
  %i.bc = load atomic i32, ptr %i.bb monotonic, align 4
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = add nuw nsw i64 %.132.6, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %.028.ptr.6 = getelementptr inbounds nuw i8, ptr %.02741, i64 176
  %i.bf = getelementptr inbounds nuw i8, ptr %.02741, i64 192
  store ptr %.130.6, ptr %i.bf, align 8, !tbaa !70
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.132.7 = phi i64 [ %.132.6, %bb.x ], [ %i.be, %bb.w ] ; 2 uses
  %.130.7 = phi ptr [ %.028.ptr.6, %bb.x ], [ %.130.6, %bb.w ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02741, i64 208
  %i.bh = load atomic i32, ptr %i.bg monotonic, align 4
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = add nuw nsw i64 %.132.7, 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %.028.ptr.7 = getelementptr inbounds nuw i8, ptr %.02741, i64 200
  %i.bk = getelementptr inbounds nuw i8, ptr %.02741, i64 216
  store ptr %.130.7, ptr %i.bk, align 8, !tbaa !70
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.132.8 = phi i64 [ %.132.7, %bb.aa ], [ %i.bj, %bb.z ] ; 2 uses
  %.130.8 = phi ptr [ %.028.ptr.7, %bb.aa ], [ %.130.7, %bb.z ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.02741, i64 232
  %i.bm = load atomic i32, ptr %i.bl monotonic, align 4
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bo = add nuw nsw i64 %.132.8, 1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %.028.ptr.8 = getelementptr inbounds nuw i8, ptr %.02741, i64 224
  %i.bp = getelementptr inbounds nuw i8, ptr %.02741, i64 240
  store ptr %.130.8, ptr %i.bp, align 8, !tbaa !70
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.132.9 = phi i64 [ %.132.8, %bb.ad ], [ %i.bo, %bb.ac ] ; 2 uses
  %.130.9 = phi ptr [ %.028.ptr.8, %bb.ad ], [ %.130.8, %bb.ac ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.02741, i64 256
  %i.br = load atomic i32, ptr %i.bq monotonic, align 4
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = add nuw nsw i64 %.132.9, 1
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %.028.ptr.9 = getelementptr inbounds nuw i8, ptr %.02741, i64 248
  %i.bu = getelementptr inbounds nuw i8, ptr %.02741, i64 264
  store ptr %.130.9, ptr %i.bu, align 8, !tbaa !70
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.132.10 = phi i64 [ %.132.9, %bb.ag ], [ %i.bt, %bb.af ] ; 2 uses
  %.130.10 = phi ptr [ %.028.ptr.9, %bb.ag ], [ %.130.9, %bb.af ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.02741, i64 280
  %i.bw = load atomic i32, ptr %i.bv monotonic, align 4
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = add nuw nsw i64 %.132.10, 1
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %.028.ptr.10 = getelementptr inbounds nuw i8, ptr %.02741, i64 272
  %i.bz = getelementptr inbounds nuw i8, ptr %.02741, i64 288
  store ptr %.130.10, ptr %i.bz, align 8, !tbaa !70
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.132.11 = phi i64 [ %.132.10, %bb.aj ], [ %i.by, %bb.ai ] ; 2 uses
  %.130.11 = phi ptr [ %.028.ptr.10, %bb.aj ], [ %.130.10, %bb.ai ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02741, i64 304
  %i.cb = load atomic i32, ptr %i.ca monotonic, align 4
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cd = add nuw nsw i64 %.132.11, 1
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %.028.ptr.11 = getelementptr inbounds nuw i8, ptr %.02741, i64 296
  %i.ce = getelementptr inbounds nuw i8, ptr %.02741, i64 312
  store ptr %.130.11, ptr %i.ce, align 8, !tbaa !70
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.132.12 = phi i64 [ %.132.11, %bb.am ], [ %i.cd, %bb.al ] ; 2 uses
  %.130.12 = phi ptr [ %.028.ptr.11, %bb.am ], [ %.130.11, %bb.al ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02741, i64 328
  %i.cg = load atomic i32, ptr %i.cf monotonic, align 4
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ci = add nuw nsw i64 %.132.12, 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %.028.ptr.12 = getelementptr inbounds nuw i8, ptr %.02741, i64 320
  %i.cj = getelementptr inbounds nuw i8, ptr %.02741, i64 336
  store ptr %.130.12, ptr %i.cj, align 8, !tbaa !70
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.132.13 = phi i64 [ %.132.12, %bb.ap ], [ %i.ci, %bb.ao ] ; 2 uses
  %.130.13 = phi ptr [ %.028.ptr.12, %bb.ap ], [ %.130.12, %bb.ao ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.02741, i64 352
  %i.cl = load atomic i32, ptr %i.ck monotonic, align 4
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cn = add nuw nsw i64 %.132.13, 1
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %.028.ptr.13 = getelementptr inbounds nuw i8, ptr %.02741, i64 344
  %i.co = getelementptr inbounds nuw i8, ptr %.02741, i64 360
  store ptr %.130.13, ptr %i.co, align 8, !tbaa !70
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.132.14 = phi i64 [ %.132.13, %bb.as ], [ %i.cn, %bb.ar ] ; 3 uses
  %.130.14 = phi ptr [ %.028.ptr.13, %bb.as ], [ %.130.13, %bb.ar ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.02741, i64 376
  %i.cq = load atomic i32, ptr %i.cp monotonic, align 4
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.au, label %.thread

.thread:                                          ; preds = %bb.at
  %i.cs = add nuw nsw i64 %.132.14, 1
  %i.ct = load ptr, ptr %.02741, align 8, !tbaa !141
  br label %bb.ax

bb.au:                                            ; preds = %bb.at
  %.028.ptr.14 = getelementptr inbounds nuw i8, ptr %.02741, i64 368 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.02741, i64 384
  store ptr %.130.14, ptr %i.cu, align 8, !tbaa !70
  %i.cv = load ptr, ptr %.02741, align 8, !tbaa !141 ; 4 uses
  %i.cw = icmp eq i64 %.132.14, 0
  br i1 %i.cw, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.cx = load i64, ptr %i.g, align 8, !tbaa !509 ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, %i.e
  br i1 %i.cy, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store ptr %i.cv, ptr %.02542, align 8, !tbaa !696
  %i.cz = add i64 %i.cx, -1
  store i64 %i.cz, ptr %i.g, align 8, !tbaa !509
  tail call void @_ZdlPvm(ptr noundef nonnull %.02741, i64 noundef 392) #23
  br label %bb.ay

bb.ax:                                            ; preds = %.thread, %bb.av, %bb.au
  %i.da = phi ptr [ %i.ct, %.thread ], [ %i.cv, %bb.av ], [ %i.cv, %bb.au ]
  %.130.1549 = phi ptr [ %.130.14, %.thread ], [ %.028.ptr.14, %bb.av ], [ %.028.ptr.14, %bb.au ]
  %.132.1548 = phi i64 [ %i.cs, %.thread ], [ 0, %bb.av ], [ %.132.14, %bb.au ]
  store ptr %.130.1549, ptr %i.a, align 8, !tbaa !508
  %i.db = add i64 %.132.1548, %.043
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.dc = phi ptr [ %i.da, %bb.ax ], [ %i.cv, %bb.aw ] ; 2 uses
  %.126 = phi ptr [ %.02741, %bb.ax ], [ %.02542, %bb.aw ]
  %.1 = phi i64 [ %i.db, %bb.ax ], [ %.043, %bb.aw ] ; 2 uses
  %.not = icmp eq ptr %i.dc, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !697
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEE10invalidateEP23HermesABIManagedPointer(ptr noundef captures(none) %0) #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i32 1 monotonic, align 4 ; 0 uses
  ret void
}

declare void @_ZN6hermes2vm7HadesGC18weakRefReadBarrierEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef) local_unnamed_addr #6

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK6hermes2vm10StringView15castToChar16PtrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 1073741824
  %.not = icmp eq i32 %i.c, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  br i1 %.not, label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 8, !tbaa !69
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr                 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp ugt i32 %i.g, 150994943
  br i1 %i.h, label %bb.c, label %bb.d, !prof !133

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !698
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.g, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i, label %bb.g [
    i32 117440512, label %bb.e
    i32 50331648, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.0.0.copyload.i.i.i2 = load i64, ptr %i.m, align 8, !tbaa !69
  %i.n = and i64 %.sroa.0.0.copyload.i.i.i2, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !698
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit

_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.a
  %.0.i.sink = phi ptr [ %i.d, %bb.a ], [ %i.j, %bb.c ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.q, %bb.g ]
  %i.r = and i32 %i.b, 1073741823
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink, i64 %i.s
  ret ptr %i.t
}

declare { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @_ZN6hermes2vm22instanceOfOperator_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #6

declare noundef i32 @_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefES1_(ptr, i32, ptr, i32) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsEPKS1_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef) local_unnamed_addr #6

declare noundef i32 @_ZN6hermes2vm7Runtime9drainJobsEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #6

declare void @_ZN6hermes2vm7Runtime16clearKeptObjectsEv(ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes2vm15BigIntPrimitive12raiseOnErrorERNS0_7RuntimeENS_6bigint15OperationStatusE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %2 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  switch i32 %1, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit
    i32 2, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit6
    i32 3, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit8
    i32 4, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit10
  ]

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.a, align 8, !tbaa !663
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 44, ptr %i.b, align 8, !tbaa !666
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.c, align 8, !tbaa !667
  store ptr @.str.18, ptr %2, align 8, !tbaa !70
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.d, align 8, !tbaa !668
  %i.e = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.c

_ZN6hermes2vm11TwineChar16C2EPKc.exit6:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.f, align 8, !tbaa !663
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 28, ptr %i.g, align 8, !tbaa !666
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.h, align 8, !tbaa !667
  store ptr @.str.19, ptr %3, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.i, align 8, !tbaa !668
  %i.j = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.c

_ZN6hermes2vm11TwineChar16C2EPKc.exit8:           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.k, align 8, !tbaa !663
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 16, ptr %i.l, align 8, !tbaa !666
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !667
  store ptr @.str.20, ptr %4, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.n, align 8, !tbaa !668
  %i.o = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.c

_ZN6hermes2vm11TwineChar16C2EPKc.exit10:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.p, align 8, !tbaa !663
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 25, ptr %i.q, align 8, !tbaa !666
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !667
  store ptr @.str.21, ptr %5, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.s, align 8, !tbaa !668
  %i.t = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %_ZN6hermes2vm11TwineChar16C2EPKc.exit10, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8, %_ZN6hermes2vm11TwineChar16C2EPKc.exit6, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.0 = phi i32 [ %i.t, %_ZN6hermes2vm11TwineChar16C2EPKc.exit10 ], [ %i.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.j, %_ZN6hermes2vm11TwineChar16C2EPKc.exit6 ], [ %i.o, %_ZN6hermes2vm11TwineChar16C2EPKc.exit8 ], [ 1, %bb.a ]
  ret i32 %.0
}

declare noundef i32 @_ZN6hermes6bigint13initWithBytesENS0_16MutableBigIntRefEN4llvh8ArrayRefIhEE(ptr, ptr, ptr, i64) local_unnamed_addr #6

declare noundef i32 @_ZN6hermes2vm15BigIntPrimitive19calcCellSizeInBytesEj(i32 noundef) local_unnamed_addr #6

declare void @_ZN6hermes2vm15BigIntPrimitiveC1Ej(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #6

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN6hermes6bigint31isSingleDigitTruncationLosslessENS0_18ImmutableBigIntRefEb(ptr, i32, i1 noundef zeroext) local_unnamed_addr #6

declare { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive8toStringERNS0_7RuntimeENS0_12PseudoHandleIS1_EEh(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE17_M_realloc_insertIJS8_EEEvN9__gnu_cxx17__normal_iteratorIPS8_SA_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !702    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEZN12_GLOBAL__N_120HermesABIRuntimeImplC1ERKNS1_13RuntimeConfigEEUlS3_S5_E_E9_M_invokeERKSt9_Any_dataOS3_S5_:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 160
  %i.as = load atomic i32, ptr %i.ar monotonic, align 4
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 168
  %i.av = load ptr, ptr %2, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.au) #22, !inline_history !738
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 184
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 192
  %i.bc = load ptr, ptr %2, align 8, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.bb) #22, !inline_history !738
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 208
  %i.bg = load atomic i32, ptr %i.bf monotonic, align 4
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 216
  %i.bj = load ptr, ptr %2, align 8, !tbaa !49
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.bi) #22, !inline_history !738
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 232
  %i.bn = load atomic i32, ptr %i.bm monotonic, align 4
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 240
  %i.bq = load ptr, ptr %2, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.bp) #22, !inline_history !738
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 256
  %i.bu = load atomic i32, ptr %i.bt monotonic, align 4
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 264
  %i.bx = load ptr, ptr %2, align 8, !tbaa !49
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.bw) #22, !inline_history !738
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 280
  %i.cb = load atomic i32, ptr %i.ca monotonic, align 4
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 288
  %i.ce = load ptr, ptr %2, align 8, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  tail call void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.cd) #22, !inline_history !738
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ch = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 304
  %i.ci = load atomic i32, ptr %i.ch monotonic, align 4
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 312
  %i.cl = load ptr, ptr %2, align 8, !tbaa !49
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.ck) #22, !inline_history !738
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 328
  %i.cp = load atomic i32, ptr %i.co monotonic, align 4
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 336
  %i.cs = load ptr, ptr %2, align 8, !tbaa !49
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.cr) #22, !inline_history !738
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cv = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 352
  %i.cw = load atomic i32, ptr %i.cv monotonic, align 4
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 360
  %i.cz = load ptr, ptr %2, align 8, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.cy) #22, !inline_history !738
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dc = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 376
  %i.dd = load atomic i32, ptr %i.dc monotonic, align 4
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %.loopexit.i.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i, i64 384
  %i.dg = load ptr, ptr %2, align 8, !tbaa !49
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.df) #22, !inline_history !738
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !696 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN12_GLOBAL__N_120HermesABIRuntimeImplC1ERKN6hermes2vm13RuntimeConfigEEUlPNS3_7HadesGCERNS3_16WeakRootAcceptorEE_JS8_SA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.preheader.i.i.i.i, !llvm.loop !739

_ZSt10__invoke_rIvRZN12_GLOBAL__N_120HermesABIRuntimeImplC1ERKN6hermes2vm13RuntimeConfigEEUlPNS3_7HadesGCERNS3_16WeakRootAcceptorEE_JS8_SA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %.loopexit.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEZN12_GLOBAL__N_120HermesABIRuntimeImplC1ERKNS1_13RuntimeConfigEEUlS3_S5_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #18 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120HermesABIRuntimeImplC1ERKN6hermes2vm13RuntimeConfigEEUlPNS4_7HadesGCERNS4_16WeakRootAcceptorEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !74
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120HermesABIRuntimeImplC1ERKN6hermes2vm13RuntimeConfigEEUlPNS4_7HadesGCERNS4_16WeakRootAcceptorEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !720
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120HermesABIRuntimeImplC1ERKN6hermes2vm13RuntimeConfigEEUlPNS4_7HadesGCERNS4_16WeakRootAcceptorEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !116
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120HermesABIRuntimeImplC1ERKN6hermes2vm13RuntimeConfigEEUlPNS4_7HadesGCERNS4_16WeakRootAcceptorEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_120HermesABIRuntimeImplC1ERKN6hermes2vm13RuntimeConfigEEUlPNS4_7HadesGCERNS4_16WeakRootAcceptorEE_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 4}
!8 = !{!"_ZTSN6hermes2vm8GCConfigE", !4, i64 0, !4, i64 4, !4, i64 8, !9, i64 16, !4, i64 24, !10, i64 32, !12, i64 48, !13, i64 52, !14, i64 56, !18, i64 88, !12, i64 128, !12, i64 129, !12, i64 130, !12, i64 131, !21, i64 136, !22, i64 168}
!9 = !{!"double", !5, i64 0}
!10 = !{!"_ZTSN6hermes2vm16GCSanitizeConfigE", !9, i64 0, !11, i64 8}
!11 = !{!"long", !5, i64 0}
!12 = !{!"bool", !5, i64 0}
!13 = !{!"_ZTSN6hermes2vm13ReleaseUnusedE", !5, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !11, i64 8, !5, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"_ZTSN6hermes2vm16GCTripwireConfigE", !4, i64 0, !19, i64 8}
!19 = !{!"_ZTSSt8functionIFvRN6hermes2vm17GCTripwireContextEEE", !20, i64 0, !17, i64 24}
!20 = !{!"_ZTSSt14_Function_base", !5, i64 0, !17, i64 16}
!21 = !{!"_ZTSSt8functionIFvRKN6hermes2vm16GCAnalyticsEventEEE", !20, i64 0, !17, i64 24}
!22 = !{!"_ZTSSt8functionIFvN6hermes2vm11GCEventKindEPKcEE", !20, i64 0, !17, i64 24}
!23 = !{!8, !4, i64 8}
!24 = !{!8, !9, i64 16}
!25 = !{!8, !4, i64 24}
!26 = !{!10, !11, i64 8}
!27 = !{!8, !13, i64 52}
!28 = !{!15, !16, i64 0}
!29 = !{!8, !12, i64 128}
!30 = !{!31, !4, i64 208}
!31 = !{!"_ZTSN6hermes2vm13RuntimeConfigE", !8, i64 0, !32, i64 200, !4, i64 208, !4, i64 212, !12, i64 216, !12, i64 217, !12, i64 218, !12, i64 219, !12, i64 220, !12, i64 221, !12, i64 222, !12, i64 223, !12, i64 224, !12, i64 225, !33, i64 226, !12, i64 227, !12, i64 228, !12, i64 229, !4, i64 232, !12, i64 236, !12, i64 237, !12, i64 238, !34, i64 240, !12, i64 244, !35, i64 248, !4, i64 264, !12, i64 268}
!32 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !17, i64 0}
!33 = !{!"_ZTSN6hermes2vm14SynthTraceModeE", !5, i64 0}
!34 = !{!"_ZTSN6hermes2vm15CompilationModeE", !5, i64 0}
!35 = !{!"_ZTSSt10shared_ptrIN6hermes2vm12CrashManagerEE", !36, i64 0}
!36 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm12CrashManagerELN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0, !38, i64 8}
!37 = !{!"p1 _ZTSN6hermes2vm12CrashManagerE", !17, i64 0}
!38 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !39, i64 0}
!39 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!40 = !{!31, !4, i64 212}
!41 = !{!31, !12, i64 216}
!42 = !{!12, !12, i64 0}
!43 = !{!31, !12, i64 223}
!44 = !{!31, !12, i64 224}
!45 = !{!31, !12, i64 236}
!46 = !{!31, !12, i64 237}
!47 = !{!31, !34, i64 240}
!48 = !{!31, !12, i64 244}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !6, i64 0}
!51 = !{!36, !37, i64 0}
!52 = !{!53, !4, i64 8}
!53 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!54 = !{!53, !4, i64 12}
!55 = !{!56, !57, i64 16}
!56 = !{!"_ZTSSt15_Sp_counted_ptrIPN6hermes2vm15NopCrashManagerELN9__gnu_cxx12_Lock_policyE2EE", !53, i64 0, !57, i64 16}
!57 = !{!"p1 _ZTSN6hermes2vm15NopCrashManagerE", !17, i64 0}
!58 = !{!38, !39, i64 0}
!59 = !{!31, !4, i64 264}
!60 = !{!31, !12, i64 268}
!61 = !{!62, !63, i64 0}
!62 = !{!"_ZTS16HermesABIRuntime", !63, i64 0}
!63 = !{!"p1 _ZTS22HermesABIRuntimeVTable", !17, i64 0}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZNK6hermes2vm13RuntimeConfig11getGCConfigEv: argument 0"}
!66 = distinct !{!66, !"_ZNK6hermes2vm13RuntimeConfig11getGCConfigEv"}
!67 = !{!14, !16, i64 0}
!68 = !{!14, !11, i64 8}
!69 = !{!11, !11, i64 0}
!70 = !{!5, !5, i64 0}
!71 = !{!18, !4, i64 0}
!72 = !{!20, !17, i64 16}
!73 = distinct !{null, null, null, null, null}
!74 = !{!17, !17, i64 0}
!75 = distinct !{null, null, null, null}
!76 = distinct !{null, null, null, null}
!77 = !{!78, !9, i64 0}
!78 = !{!"_ZTSN6hermes24ExponentialMovingAverageE", !9, i64 0, !9, i64 8}
!79 = !{!80, !9, i64 40}
!80 = !{!"_ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EEE", !81, i64 0, !11, i64 8, !78, i64 16, !82, i64 32, !9, i64 40}
!81 = !{!"p1 _ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EE5ChunkE", !17, i64 0}
!82 = !{!"p1 _ZTSN12_GLOBAL__N_112ManagedValueIN6hermes2vm17PinnedHermesValueEEE", !17, i64 0}
!83 = distinct !{null, null, null}
!84 = distinct !{null, null, null, null}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK6hermes2vm13RuntimeConfig11getGCConfigEv: argument 0"}
!87 = distinct !{!87, !"_ZNK6hermes2vm13RuntimeConfig11getGCConfigEv"}
!88 = !{!89, !9, i64 40}
!89 = !{!"_ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm8WeakRootINS3_8JSObjectEEEEELm16EEE", !90, i64 0, !11, i64 8, !78, i64 16, !91, i64 32, !9, i64 40}
!90 = !{!"p1 _ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm8WeakRootINS3_8JSObjectEEEEELm16EE5ChunkE", !17, i64 0}
!91 = !{!"p1 _ZTSN12_GLOBAL__N_112ManagedValueIN6hermes2vm8WeakRootINS2_8JSObjectEEEEE", !17, i64 0}
!92 = !{!93, !12, i64 0}
!93 = !{!"_ZTSN6hermes3hbc12CompileFlagsE", !12, i64 0, !12, i64 1, !12, i64 2, !4, i64 4, !4, i64 8, !12, i64 12, !94, i64 13, !12, i64 15, !12, i64 16, !12, i64 17, !12, i64 18, !12, i64 19, !12, i64 20, !98, i64 24}
!94 = !{!"_ZTSN4llvh8OptionalIbEE", !95, i64 0}
!95 = !{!"_ZTSN4llvh15optional_detail15OptionalStorageIbLb1EEE", !96, i64 0, !12, i64 1}
!96 = !{!"_ZTSN4llvh21AlignedCharArrayUnionIbcccccccccEE", !97, i64 0}
!97 = !{!"_ZTSN4llvh16AlignedCharArrayILm1ELm1EEE", !5, i64 0}
!98 = !{!"_ZTSN6hermes16OutputFormatKindE", !5, i64 0}
!99 = !{!93, !12, i64 1}
!100 = !{!93, !12, i64 2}
!101 = !{!93, !4, i64 4}
!102 = !{!93, !4, i64 8}
!103 = !{!93, !12, i64 12}
!104 = !{!95, !12, i64 1}
!105 = !{!93, !12, i64 15}
!106 = !{!93, !98, i64 24}
!107 = !{!31, !12, i64 219}
!108 = !{i8 0, i8 2}
!109 = !{}
!110 = !{!111, !12, i64 168}
!111 = !{!"_ZTSN12_GLOBAL__N_120HermesABIRuntimeImplE", !62, i64 0, !112, i64 8, !80, i64 24, !89, i64 72, !14, i64 120, !93, i64 152}
!112 = !{!"_ZTSSt10shared_ptrIN6hermes2vm7RuntimeEE", !113, i64 0}
!113 = !{!"_ZTSSt12__shared_ptrIN6hermes2vm7RuntimeELN9__gnu_cxx12_Lock_policyE2EE", !114, i64 0, !38, i64 8}
!114 = !{!"p1 _ZTSN6hermes2vm7RuntimeE", !17, i64 0}
!115 = !{!113, !114, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 _ZTSN12_GLOBAL__N_120HermesABIRuntimeImplE", !17, i64 0}
!118 = !{!119, !17, i64 24}
!119 = !{!"_ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEE", !20, i64 0, !17, i64 24}
!120 = !{!121, !122, i64 8}
!121 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_12RootAcceptorEEESaIS8_EE17_Vector_impl_dataE", !122, i64 0, !122, i64 8, !122, i64 16}
!122 = !{!"p1 _ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_12RootAcceptorEEE", !17, i64 0}
!123 = !{!121, !122, i64 16}
!124 = !{i64 0, i64 16, !70}
!125 = distinct !{null, null}
!126 = !{!127, !17, i64 24}
!127 = !{!"_ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEE", !20, i64 0, !17, i64 24}
!128 = !{!129, !130, i64 8}
!129 = !{!"_ZTSNSt12_Vector_baseISt8functionIFvPN6hermes2vm7HadesGCERNS2_16WeakRootAcceptorEEESaIS8_EE17_Vector_impl_dataE", !130, i64 0, !130, i64 8, !130, i64 16}
!130 = !{!"p1 _ZTSSt8functionIFvPN6hermes2vm7HadesGCERNS1_16WeakRootAcceptorEEE", !17, i64 0}
!131 = !{!129, !130, i64 16}
!132 = distinct !{null, null, null, null}
!133 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!134 = distinct !{null, null, null}
!135 = distinct !{null, null, null, null}
!136 = !{!137, !11, i64 0}
!137 = !{!"_ZTSN6hermes3hbc18BytecodeFileHeaderE", !11, i64 0, !4, i64 8, !5, i64 12, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !5, i64 108, !5, i64 109}
!138 = !{!114, !114, i64 0}
!139 = distinct !{null, null, null, null, null}
!140 = !{!89, !90, i64 0}
!141 = !{!142, !90, i64 0}
!142 = !{!"_ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm8WeakRootINS3_8JSObjectEEEEELm16EE5ChunkE", !90, i64 0, !5, i64 8}
!143 = !{!80, !81, i64 0}
!144 = !{!145, !81, i64 0}
!145 = !{!"_ZTSN6hermes18ManagedChunkedListIN12_GLOBAL__N_112ManagedValueINS_2vm17PinnedHermesValueEEELm16EE5ChunkE", !81, i64 0, !5, i64 8}
!146 = distinct !{null, null, null, null}
!147 = !{!148, !11, i64 0}
!148 = !{!"_ZTSN6hermes2vm11HermesValueE", !11, i64 0}
!149 = !{!150, !11, i64 16}
!150 = !{!"_ZTS23HermesABIGrowableBuffer", !151, i64 0, !16, i64 8, !11, i64 16, !11, i64 24}
!151 = !{!"p1 _ZTS29HermesABIGrowableBufferVTable", !17, i64 0}
!152 = !{!150, !151, i64 0}
!153 = !{!154, !17, i64 0}
!154 = !{!"_ZTS29HermesABIGrowableBufferVTable", !17, i64 0}
!155 = !{ptr @_ZN12_GLOBAL__N_110writeToBufEP23HermesABIGrowableBufferN4llvh9StringRefE}
!156 = !{!150, !16, i64 8}
!157 = !{!150, !11, i64 24}
!158 = !{!159, !160, i64 0}
!159 = !{!"_ZTS14HermesABIValue", !160, i64 0, !5, i64 8}
!160 = !{!"_ZTS18HermesABIValueKind", !5, i64 0}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZSt11make_uniqueIN12_GLOBAL__N_113BufferWrapperEJRP15HermesABIBufferEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!163 = distinct !{!163, !"_ZSt11make_uniqueIN12_GLOBAL__N_113BufferWrapperEJRP15HermesABIBufferEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!164 = !{!165, !16, i64 8}
!165 = !{!"_ZTS15HermesABIBuffer", !166, i64 0, !16, i64 8, !11, i64 16}
!166 = !{!"p1 _ZTS21HermesABIBufferVTable", !17, i64 0}
!167 = !{!165, !11, i64 16}
!168 = !{!169, !16, i64 8}
!169 = !{!"_ZTSN6hermes6BufferE", !16, i64 8, !11, i64 16}
!170 = !{!169, !11, i64 16}
!171 = !{!172, !173, i64 24}
!172 = !{!"_ZTSN12_GLOBAL__N_113BufferWrapperE", !169, i64 0, !173, i64 24}
!173 = !{!"p1 _ZTS15HermesABIBuffer", !17, i64 0}
!174 = !{!175, !176, i64 0}
!175 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes6BufferELb0EE", !176, i64 0}
!176 = !{!"p1 _ZTSN6hermes6BufferE", !17, i64 0}
!177 = !{!178, !179, i64 0}
!178 = !{!"_ZTSSt10_Head_baseILm0EPN6hermes9SourceMapELb0EE", !179, i64 0}
!179 = !{!"p1 _ZTSN6hermes9SourceMapE", !17, i64 0}
!180 = !{!179, !179, i64 0}
!181 = !{!176, !176, i64 0}
end_hunk_3
