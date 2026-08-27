Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/EPCGenericDylibManager?download=true
inline.NumInlined: 1487
inline.NumDeleted: 897
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm3orc22EPCGenericDylibManager33CreateWithDefaultBootstrapSymbolsERNS0_22ExecutorProcessControlE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr %2, ptr %4, align 8, !tbaa !8
  %i.a = load ptr, ptr @_ZN4llvm3orc2rt38SimpleExecutorDylibManagerInstanceNameE, align 8, !tbaa !11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #18
  br label %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit

_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %.sroa.0.0.i.i, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.f, ptr %i.e, align 8, !tbaa !8
  %i.g = load ptr, ptr @_ZN4llvm3orc2rt41SimpleExecutorDylibManagerOpenWrapperNameE, align 8, !tbaa !11 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.g, null
  br i1 %.not.i.i2, label %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit4, label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #18
  br label %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit4

_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit4: ; preds = %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit, %bb.c
  %.sroa.0.0.i.i3 = phi i64 [ %i.h, %bb.c ], [ 0, %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.g, ptr %i.i, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %.sroa.0.0.i.i3, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.l, ptr %i.k, align 8, !tbaa !8
  %i.m = load ptr, ptr @_ZN4llvm3orc2rt44SimpleExecutorDylibManagerResolveWrapperNameE, align 8, !tbaa !11 ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.m, null
  br i1 %.not.i.i5, label %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit7, label %bb.d

bb.d:                                             ; preds = %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit4
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #18
  br label %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit7

_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit7: ; preds = %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit4, %bb.d
  %.sroa.0.0.i.i6 = phi i64 [ %i.n, %bb.d ], [ 0, %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit4 ]
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.m, ptr %i.o, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i64 %.sroa.0.0.i.i6, ptr %i.p, align 8, !tbaa !16
  call void @_ZNK4llvm3orc22ExecutorProcessControl19getBootstrapSymbolsENS_8ArrayRefISt4pairIRNS0_12ExecutorAddrENS_9StringRefEEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.q = load ptr, ptr %3, align 8, !tbaa !17     ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit8, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = or i8 %i.s, 1
  store i8 %i.t, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.e

_ZN4llvm5ErrorD2Ev.exit8:                         ; preds = %_ZNSt4pairIRN4llvm3orc12ExecutorAddrENS0_9StringRefEEC2IS3_RPKcTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm3orc22EPCGenericDylibManagerE, i64 16), ptr %5, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %1, ptr %i.v, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, -2
  store i8 %i.y, ptr %i.w, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @_ZN4llvm3orc12DylibManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit8
  %.sink = phi ptr [ getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm3orc22EPCGenericDylibManagerE, i64 16), %_ZN4llvm5ErrorD2Ev.exit8 ], [ %i.q, %_ZN4llvm5ErrorD2Ev.exit ]
  store ptr %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm3orc22ExecutorProcessControl19getBootstrapSymbolsENS_8ArrayRefISt4pairIRNS0_12ExecutorAddrENS_9StringRefEEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr %2, i64 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %.idx = mul nuw nsw i64 %3, 24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not27 = icmp eq i64 %3, 0
  br i1 %.not27, label %_ZN4llvm5ErrorD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.028 = phi ptr [ %2, %.lr.ph ], [ %i.p, %bb.c ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %.sroa.02.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !11 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8, !tbaa !24 ; 2 uses
  %i.e = tail call noundef i32 @_ZN4llvm13StringMapImpl4hashENS_9StringRefE(ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload) #18
  %i.f = tail call noundef i32 @_ZNK4llvm13StringMapImpl7FindKeyENS_9StringRefEj(ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, i32 noundef %i.e) #18 ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  br i1 %i.g, label %_ZNK4llvm9StringMapINS_3orc12ExecutorAddrENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread, label %_ZNK4llvm9StringMapINS_3orc12ExecutorAddrENS_15MallocAllocatorEE4findENS_9StringRefE.exit

_ZNK4llvm9StringMapINS_3orc12ExecutorAddrENS_15MallocAllocatorEE4findENS_9StringRefE.exit: ; preds = %bb.b
  %i.i = sext i32 %i.f to i64                     ; 2 uses
  %.pre = load i32, ptr %i.c, align 8, !tbaa !29
  %.pre31 = zext i32 %.pre to i64
  %i.j = icmp eq i64 %i.i, %.pre31
  br i1 %i.j, label %_ZNK4llvm9StringMapINS_3orc12ExecutorAddrENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm9StringMapINS_3orc12ExecutorAddrENS_15MallocAllocatorEE4findENS_9StringRefE.exit
  %i.k = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %.028, align 8, !tbaa !32, !nonnull !34, !align !35
  %i.o = load i64, ptr %i.m, align 8, !tbaa !24
  store i64 %i.o, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %.028, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.p, %i.a
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZNK4llvm9StringMapINS_3orc12ExecutorAddrENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread: ; preds = %bb.b, %_ZNK4llvm9StringMapINS_3orc12ExecutorAddrENS_15MallocAllocatorEE4findENS_9StringRefE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %.sroa.23.0..sroa_idx.le = getelementptr inbounds nuw i8, ptr %.028, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !11
  %.sroa.2.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx.le, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 3, ptr %i.r, align 8, !tbaa !36, !alias.scope !39
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 5, ptr %i.s, align 1, !tbaa !42, !alias.scope !39
  store ptr @.str, ptr %5, align 8, !tbaa !43, !alias.scope !39
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sroa.0.0.copyload, ptr %i.t, align 8, !tbaa !43, !alias.scope !39
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.sroa.2.0.copyload, ptr %i.u, align 8, !tbaa !43, !alias.scope !39
  store ptr %5, ptr %4, align 8, !alias.scope !44
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.1, ptr %i.v, align 8, !alias.scope !44
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 2, ptr %i.w, align 8, !tbaa !36, !alias.scope !44
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 3, ptr %i.x, align 1, !tbaa !42, !alias.scope !44
  %i.y = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #18 ; 2 uses
  %i.z = extractvalue { i32, ptr } %i.y, 0
  %i.aa = extractvalue { i32, ptr } %i.y, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.ab = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19, !noalias !52 ; 2 uses
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.ab, ptr noundef nonnull align 8 dereferenceable(34) %4, i32 %i.z, ptr %i.aa) #18, !noalias !52
  store ptr %i.ab, ptr %0, align 8, !tbaa !17, !alias.scope !49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.d

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.c, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm9StringMapINS_3orc12ExecutorAddrENS_15MallocAllocatorEE4findENS_9StringRefE.exit.thread, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN4llvm3orc12DylibManagerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc22EPCGenericDylibManager6CreateERNS0_8JITDylibENS0_2rt37SimpleExecutorDylibManagerSymbolNamesE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(272) %1, ptr nofree noundef readonly byval(%"struct.llvm::orc::rt::SimpleExecutorDylibManagerSymbolNames") align 8 captures(none) %2) local_unnamed_addr #0 align 2 {
_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i:
  %3 = alloca %"struct.llvm::orc::EPCGenericDylibManager::SymbolAddrs", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %5 = alloca %"class.std::vector.20", align 8    ; 7 uses
  %6 = alloca %"class.std::vector.73", align 8    ; 7 uses
  %7 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %8 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %9 = alloca %"class.llvm::orc::SymbolStringPtr", align 8 ; 6 uses
  %10 = alloca %"class.llvm::orc::EPCGenericDylibManager", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55, !nonnull !34, !align !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19, !noalias !90 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !noalias !90
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !90
  store ptr %i.f, ptr %i.e, align 8, !tbaa !93, !alias.scope !90
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !90
  store ptr %i.d, ptr %5, align 8, !alias.scope !90
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %.sroa.03.0.copyload = load ptr, ptr %2, align 8, !tbaa !11
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %11 = load ptr, ptr %i.g, align 8, !tbaa !22, !noalias !94
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97, !noalias !102
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr %.sroa.03.0.copyload, i64 %.sroa.24.0.copyload)
  %i.j = load ptr, ptr %7, align 8, !tbaa !105    ; 4 uses
  store ptr null, ptr %7, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.01.0.copyload = load ptr, ptr %i.k, align 8, !tbaa !11
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !24
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !22, !noalias !107
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !97, !noalias !110
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %8, ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load ptr, ptr %8, align 8, !tbaa !105    ; 4 uses
  store ptr null, ptr %8, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !11
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !24
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !22, !noalias !113
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97, !noalias !116
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = load ptr, ptr %9, align 8, !tbaa !105    ; 4 uses
  store ptr null, ptr %9, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.w, align 8
  %i.x = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19 ; 9 uses
  store ptr %i.x, ptr %6, align 8, !tbaa !119
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !122
  store ptr %i.j, ptr %i.x, align 8, !tbaa !123
  %i.aa = ptrtoint ptr %i.j to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.aa, -1
  %i.ab = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i, -32 ; 2 uses
  br i1 %i.ab, label %bb.a, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.a:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ad = atomicrmw add ptr %i.ac, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.a, %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EE9push_backEOS6_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %3, ptr %i.ae, align 8, !tbaa !125
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.p, ptr %i.af, align 8, !tbaa !123
  %i.ag = ptrtoint ptr %i.p to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.1 = add i64 %i.ag, -1
  %i.ah = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.1, -32 ; 2 uses
  br i1 %i.ah, label %bb.b, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

bb.b:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1: ; preds = %bb.b, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %i.o, ptr %i.ak, align 8, !tbaa !125
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store ptr %i.v, ptr %i.al, align 8, !tbaa !123
  %i.am = ptrtoint ptr %i.v to i64
  %notsub.i.i.i.i.i.i.i.i.i.i.i.2 = add i64 %i.am, -1
  %i.an = icmp ult i64 %notsub.i.i.i.i.i.i.i.i.i.i.i.2, -32 ; 2 uses
  br i1 %i.an, label %bb.c, label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2

bb.c:                                             ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ap = atomicrmw add ptr %i.ao, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2

_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2: ; preds = %bb.c, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store ptr %i.u, ptr %i.aq, align 8, !tbaa !125
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !128
  call void @_ZN4llvm3orc20lookupAndRecordAddrsERNS0_16ExecutionSessionENS0_10LookupKindERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS9_EES4_IS5_INS0_15SymbolStringPtrEPNS0_12ExecutorAddrEESaISH_EENS0_17SymbolLookupFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %4, ptr noundef nonnull align 8 dereferenceable(392) %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr nofree noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0) #18
  %i.at = load ptr, ptr %6, align 8, !tbaa !119   ; 3 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !128 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i ], [ %i.at, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2 ] ; 2 uses
  %i.av = load ptr, ptr %.05.i.i.i, align 8, !tbaa !123 ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %notsub.i.i.i.i.i.i.i.i = add i64 %i.aw, -1
  %i.ax = icmp ult i64 %notsub.i.i.i.i.i.i.i.i, -32
  br i1 %i.ax, label %bb.d, label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = atomicrmw sub ptr %i.ay, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.ba, %i.au
  br i1 %.not.i.i.i15, label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !129

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !119
  br label %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i

_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2
  %i.bb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exitthread-pre-split.i ], [ %i.at, %_ZSt10_ConstructISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEJRKS6_EEvPT_DpOT0_.exit.i.i.i.i.i.i.2 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i
  %i.bc = load ptr, ptr %i.z, align 8, !tbaa !122
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #20
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEEEvT_S8_.exit.i, %bb.e
  br i1 %i.an, label %bb.f, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrEPNS2_12ExecutorAddrEESaIS6_EED2Ev.exit, %bb.f
  br i1 %i.ah, label %bb.g, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.1

bb.g:                                             ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.1

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.1: ; preds = %bb.g, %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit
  br i1 %i.ab, label %bb.h, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.2

bb.h:                                             ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.2

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.2: ; preds = %bb.h, %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.1
  %i.bm = load ptr, ptr %9, align 8, !tbaa !123   ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %notsub.i.i.i = add i64 %i.bn, -1
  %i.bo = icmp ult i64 %notsub.i.i.i, -32
  br i1 %i.bo, label %bb.i, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.i:                                             ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS1_12ExecutorAddrEED2Ev.exit.2, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.br = load ptr, ptr %8, align 8, !tbaa !123   ; 2 uses
  %i.bs = ptrtoint ptr %i.br to i64
  %notsub.i.i.i16 = add i64 %i.bs, -1
  %i.bt = icmp ult i64 %notsub.i.i.i16, -32
  br i1 %i.bt, label %bb.j, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit17

bb.j:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit17

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit17:         ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.bw = load ptr, ptr %7, align 8, !tbaa !123   ; 2 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %notsub.i.i.i18 = add i64 %i.bx, -1
  %i.by = icmp ult i64 %notsub.i.i.i18, -32
  br i1 %i.by, label %bb.k, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit19

bb.k:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit17
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = atomicrmw sub ptr %i.bz, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit19

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit19:         ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit17, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.cb = load ptr, ptr %5, align 8, !tbaa !131   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit19
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #20
  br label %_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm3orc8JITDylibENS2_19JITDylibLookupFlagsEESaIS6_EED2Ev.exit: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit19, %bb.l
end_hunk_0
