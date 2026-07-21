inline.NumInlined: 1738
inline.NumDeleted: 917
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE:bb.a
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aj, align 4
  %.sroa.0.4.extract.shift2.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.024.0.extract.trunc = trunc i64 %.sroa.0.4.extract.shift2.i to i8
  switch i8 %.sroa.024.0.extract.trunc, label %bb.p [
    i8 1, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit
    i8 2, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit
    i8 3, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit
    i8 4, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit
    i8 5, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.i
    i8 9, label %bb.i
    i8 12, label %bb.i
    i8 10, label %bb.j
    i8 11, label %bb.j
    i8 16, label %bb.k
    i8 17, label %bb.k
    i8 18, label %bb.l
    i8 19, label %bb.m
    i8 20, label %bb.n
    i8 6, label %bb.i
    i8 13, label %bb.h
    i8 14, label %bb.h
    i8 0, label %bb.o
    i8 15, label %bb.o
  ]

bb.h:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.i:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.j:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.k:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.l:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.m:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.n:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit

bb.o:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #18
  unreachable

bb.p:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit
  unreachable

_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit: ; preds = %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %.sroa.0.0.i = phi i8 [ 0, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit ], [ 1, %bb.h ], [ 4, %bb.i ], [ 5, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ 6, %bb.m ], [ 7, %bb.n ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 %.038
  store i8 %.sroa.0.0.i, ptr %i.ak, align 1
  %i.al = add nuw i64 %.038, 1                    ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp ult i64 %i.al, %i.ao
  br i1 %i.ap, label %_ZNK2v88internal8compiler14CallDescriptor16GetParameterTypeEm.exit, label %._crit_edge, !llvm.loop !6

._crit_edge40.loopexit:                           ; preds = %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
  %.pre = load i64, ptr %i.i, align 8
  br label %._crit_edge40

._crit_edge40:                                    ; preds = %._crit_edge40.loopexit, %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft22RegisterRepresentationEA_S5_EENS_4base6VectorIT_EEm.exit16
  %i.aq = phi i64 [ %.pre, %._crit_edge40.loopexit ], [ %i.ab, %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft22RegisterRepresentationEA_S5_EENS_4base6VectorIT_EEm.exit16 ] ; 2 uses
  %i.ar = load i64, ptr %i.g, align 8
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = icmp ult i64 %i.as, 56
  br i1 %i.at, label %bb.q, label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft16TSCallDescriptorEJRPKNS3_14CallDescriptorERNS_4base6VectorINS4_22RegisterRepresentationEEESE_RNS3_8CanThrowERNS3_16LazyDeoptOnThrowERPKNS3_20JSWasmCallParametersEEEEPT_DpOT0_.exit, !prof !5

bb.q:                                             ; preds = %._crit_edge40
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef 56) #17
  %.pre.i.i = load i64, ptr %i.i, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft16TSCallDescriptorEJRPKNS3_14CallDescriptorERNS_4base6VectorINS4_22RegisterRepresentationEEESE_RNS3_8CanThrowERNS3_16LazyDeoptOnThrowERPKNS3_20JSWasmCallParametersEEEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft16TSCallDescriptorEJRPKNS3_14CallDescriptorERNS_4base6VectorINS4_22RegisterRepresentationEEESE_RNS3_8CanThrowERNS3_16LazyDeoptOnThrowERPKNS3_20JSWasmCallParametersEEEEPT_DpOT0_.exit: ; preds = %._crit_edge40, %bb.q
  %i.au = phi i64 [ %.pre.i.i, %bb.q ], [ %i.aq, %._crit_edge40 ] ; 2 uses
  %i.av = inttoptr i64 %i.au to ptr               ; 9 uses
  %i.aw = add i64 %i.au, 56
  store i64 %i.aw, ptr %i.i, align 8
  store ptr %0, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.n, ptr %i.ax, align 8
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.d, ptr %.sroa.25.0..sroa_idx.i.i, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.aa, ptr %i.ay, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store i64 %i.s, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i8 %1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 41
  store i8 %2, ptr %i.ba, align 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  store ptr %4, ptr %i.bb, align 8
  ret ptr %i.av

_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit: ; preds = %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft22RegisterRepresentationEA_S5_EENS_4base6VectorIT_EEm.exit16, %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
  %i.bc = phi ptr [ %i.bi, %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21 ], [ %i.ac, %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft22RegisterRepresentationEA_S5_EENS_4base6VectorIT_EEm.exit16 ]
  %.01139 = phi i64 [ %i.bh, %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21 ], [ 0, %_ZN2v88internal4Zone14AllocateVectorINS0_8compiler10turboshaft22RegisterRepresentationEA_S5_EENS_4base6VectorIT_EEm.exit16 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.01139
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.bf, align 4
  %.sroa.0.4.extract.shift2.i18 = lshr i64 %.sroa.0.0.copyload.i.i17, 32
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.4.extract.shift2.i18 to i8
  switch i8 %.sroa.0.0.extract.trunc, label %bb.z [
    i8 1, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
    i8 2, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
    i8 3, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
    i8 4, label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21
    i8 5, label %bb.r
    i8 7, label %bb.s
    i8 8, label %bb.s
    i8 9, label %bb.s
    i8 12, label %bb.s
    i8 10, label %bb.t
    i8 11, label %bb.t
    i8 16, label %bb.u
    i8 17, label %bb.u
    i8 18, label %bb.v
    i8 19, label %bb.w
    i8 20, label %bb.x
    i8 6, label %bb.s
    i8 13, label %bb.r
    i8 14, label %bb.r
    i8 0, label %bb.y
    i8 15, label %bb.y
  ]

bb.r:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.s:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.t:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.u:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.v:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.w:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.x:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  br label %_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21

bb.y:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #18
  unreachable

bb.z:                                             ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit
  unreachable

_ZN2v88internal8compiler10turboshaft22RegisterRepresentation25FromMachineRepresentationENS0_21MachineRepresentationE.exit21: ; preds = %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %.sroa.0.0.i20 = phi i8 [ 0, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit ], [ 1, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 2, %bb.u ], [ 3, %bb.v ], [ 6, %bb.w ], [ 7, %bb.x ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit ], [ 0, %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.01139
  store i8 %.sroa.0.0.i20, ptr %i.bg, align 1
  %i.bh = add nuw i64 %.01139, 1                  ; 2 uses
  %i.bi = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = icmp ult i64 %i.bh, %i.bj
  br i1 %i.bk, label %_ZNK2v88internal8compiler14CallDescriptor13GetReturnTypeEm.exit, label %._crit_edge40.loopexit, !llvm.loop !8
}

declare noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32, i8, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler10turboshaft41CreateAllocateWasmSharedBuiltinDescriptorEPNS0_4ZoneEPNS0_7IsolateE(ptr noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.v8::internal::WasmAllocateSharedDescriptor", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal15CallDescriptors21call_descriptor_data_E, i64 10160), ptr %2, align 8
  %i.a = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 4, i8 32, i32 noundef 2) #17
  %i.b = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.a, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef %0, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer3RunEv(ptr noundef nonnull align 8 dereferenceable(220) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %2 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"struct.std::pair.636", align 8    ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %"struct.absl::container_internal::HashKey.659", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::compiler::turboshaft::V.62", align 4 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %.sroa.08.0.copyload = load i32, ptr %i.b, align 8
  %i.c = zext i32 %.sroa.08.0.copyload to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.c ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  store ptr null, ptr %i.f, align 8
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i8 0, ptr %.sroa.496.0..sroa_idx, align 4
  br i1 %i.i, label %_ZNSt8optionalIN2v88internal8compiler10turboshaft14MemoryAnalyzer10BlockStateEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.g, align 8
  br label %_ZNSt8optionalIN2v88internal8compiler10turboshaft14MemoryAnalyzer10BlockStateEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit

_ZNSt8optionalIN2v88internal8compiler10turboshaft14MemoryAnalyzer10BlockStateEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !align !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 3
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = load i32, ptr %i.b, align 8              ; 2 uses
  %i.v = icmp ult i32 %i.u, %i.t
  br i1 %i.v, label %.lr.ph127, label %._crit_edge

.lr.ph127:                                        ; preds = %_ZNSt8optionalIN2v88internal8compiler10turboshaft14MemoryAnalyzer10BlockStateEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  br label %bb.c

.loopexit.loopexit:                               ; preds = %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit
  %.pre = load i32, ptr %i.b, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.ao = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.bb, %bb.c ] ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %i.t
  br i1 %i.ap, label %bb.c, label %._crit_edge, !llvm.loop !12

bb.c:                                             ; preds = %.lr.ph127, %.loopexit
  %i.aq = phi i32 [ %i.u, %.lr.ph127 ], [ %i.ao, %.loopexit ] ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = load ptr, ptr %i.d, align 8
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  %i.au = load ptr, ptr %i.j, align 8, !nonnull !10, !align !11 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ar
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 44
  %.sroa.01.0.copyload.i = load i32, ptr %i.az, align 4, !noalias !13 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.ba, align 8, !noalias !13 ; 2 uses
  %i.bb = add nuw i32 %i.aq, 1                    ; 2 uses
  store i32 %i.bb, ptr %i.b, align 8
  %.not125 = icmp eq i32 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %.not125, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit
  %.sroa.0.0126 = phi i32 [ %.sroa.01.0.copyload.i, %.lr.ph ], [ %i.mo, %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit ] ; 3 uses
  %i.be = load ptr, ptr %i.bc, align 8
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = zext i32 %.sroa.0.0126 to i64
  %i.bh = add i64 %i.bf, %i.bg                    ; 5 uses
  %i.bi = inttoptr i64 %i.bh to ptr               ; 20 uses
  %i.bj = load i8, ptr %i.bi, align 4             ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 104
  br i1 %i.bk, label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i: ; preds = %bb.e
  %i.bo = call i32 @_ZNK2v88internal8compiler10turboshaft9Operation7EffectsEv(ptr noundef nonnull align 4 dereferenceable(4) %i.bi)
  %i.bp = and i32 %i.bo, 262144
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit, label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge.i: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.i
  %.pre.i = load i8, ptr %i.bi, align 4
  br label %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20.i

_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20.i: ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge.i, %bb.e
  %i.bq = phi i8 [ %.pre.i, %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit._ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20_crit_edge.i ], [ %i.bj, %bb.e ]
  switch i8 %i.bq, label %bb.cd [
    i8 -87, label %bb.f
    i8 78, label %bb.bf
  ]

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19ShouldSkipOperationERKNS2_9OperationE.exit.thread20.i
  %i.br = load ptr, ptr %i.j, align 8, !nonnull !10, !align !11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.bx = add i64 %i.bv, %i.bw
  %i.by = inttoptr i64 %i.bx to ptr               ; 2 uses
  %i.bz = load i8, ptr %i.by, align 4
  %.not.i24 = icmp eq i8 %i.bz, 75                ; 3 uses
  br i1 %.not.i24, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.029.0.i = phi i64 [ undef, %bb.f ], [ %i.cb, %bb.g ] ; 5 uses
  %i.cc = load i32, ptr %i.ac, align 8
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.i, label %bb.ac

bb.i:                                             ; preds = %bb.h
  %i.ce = load ptr, ptr %i.w, align 8             ; 3 uses
  %.not14.i = icmp eq ptr %i.ce, null
  br i1 %.not14.i, label %bb.ac, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i24, label %bb.k, label %.thread34.i

.thread34.i:                                      ; preds = %bb.j
  store ptr %i.bi, ptr %i.w, align 8
  store i8 0, ptr %i.ad, align 4
  br label %bb.ae

bb.k:                                             ; preds = %bb.j
  %i.cf = load i8, ptr %i.ad, align 4, !range !9, !noundef !10
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.l, label %.thread.i

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.ci = load i8, ptr %i.ch, align 4             ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ck = load i8, ptr %i.cj, align 4
  %i.cl = icmp ne i8 %i.ci, %i.ck
  %.not15.i25 = icmp eq i8 %i.ci, 5
  %or.cond.i = or i1 %.not15.i25, %i.cl
  br i1 %or.cond.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = load i32, ptr %i.ae, align 8            ; 2 uses
  %i.cn = sub i32 131072, %i.cm
  %i.co = zext i32 %i.cn to i64
  %.not16.i = icmp ugt i64 %.sroa.029.0.i, %i.co
  br i1 %.not16.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = trunc nuw i64 %.sroa.029.0.i to i32
  %i.cq = add i32 %i.cm, %i.cp
  %.sroa.019.0.insert.ext.i = zext i32 %i.cq to i64
  %.sroa.019.0.insert.insert.i = or disjoint i64 %.sroa.019.0.insert.ext.i, 4294967296
  store i64 %.sroa.019.0.insert.insert.i, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr %i.bi, ptr %i.a, align 8
  %i.cr = load i64, ptr %i.af, align 8, !noalias !16 ; 4 uses
  %i.cs = icmp ult i64 %i.cr, 2
  br i1 %i.cs, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ct = load i64, ptr %i.ah, align 8, !noalias !23
  %.not.i.i.i.i.i.i.i77 = icmp ult i64 %i.ct, 131072
  br i1 %.not.i.i.i.i.i.i.i77, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 131072, ptr %i.ah, align 8, !noalias !23
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.cu = load ptr, ptr %i.ag, align 8, !noalias !23
  %i.cv = icmp eq ptr %i.cu, %i.bi
  br i1 %i.cv, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17, !noalias !23
  store ptr %i.af, ptr %1, align 8, !noalias !23
  store ptr %i.a, ptr %i.aj, align 8, !noalias !23
  %i.cw = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %1, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft10AllocateOpEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #17, !noalias !23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17, !noalias !23
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i79 = load ptr, ptr %i.ai, align 8, !noalias !23
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i79, i64 %i.cw
  br label %bb.v

bb.s:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !noalias !28 ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !28
  %i.cy = load i64, ptr %i.ah, align 8, !noalias !28
  %sext.i = shl i64 %i.cy, 48
  %i.cz = ashr exact i64 %sext.i, 48
  %i.da = xor i64 %i.bh, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.db = zext i64 %i.da to i128
  %i.dc = mul nuw nsw i128 %i.db, 8779197792823184629 ; 2 uses
  %i.dd = lshr i128 %i.dc, 64
  %i.de = xor i128 %i.dd, %i.dc
  %i.df = trunc i128 %i.de to i64
  %i.dg = xor i64 %i.cz, %i.df                    ; 3 uses
  %i.dh = lshr i64 %i.dg, 57
  %i.di = trunc nuw nsw i64 %i.dh to i8
  %.sroa.0.0.copyload.i.i.i22.i = load ptr, ptr %i.ai, align 8, !noalias !28 ; 2 uses
  %i.dj = insertelement <16 x i8> poison, i8 %i.di, i64 0
  %i.dk = shufflevector <16 x i8> %i.dj, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.pn.i = phi i64 [ %i.dg, %bb.s ], [ %i.ei, %bb.u ]
  %.sroa.15.0.i = phi i64 [ 0, %bb.s ], [ %i.eh, %bb.u ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.cr            ; 5 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.dl, i32 0, i32 3, i32 1), !noalias !28
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i
  %i.dn = load <16 x i8>, ptr %i.dm, align 1, !noalias !28 ; 2 uses
  %i.do = icmp eq <16 x i8> %i.dk, %i.dn
  %i.dp = bitcast <16 x i1> %i.do to i16          ; 2 uses
  %.not64.i = icmp eq i16 %i.dp, 0
  br i1 %.not64.i, label %.critedge19.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %.critedge.i
  %.sroa.035.065.i = phi i16 [ %i.dy, %.critedge.i ], [ %i.dp, %bb.t ] ; 3 uses
  %i.dq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.035.065.i, i1 true)
  %i.dr = zext nneg i16 %i.dq to i64
  %i.ds = add i64 %.sroa.7.0.i, %i.dr
  %i.dt = and i64 %i.ds, %i.cr
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i22.i, i64 %i.dt ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !28
  %i.dw = icmp eq ptr %i.dv, %i.bi
  br i1 %i.dw, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit, label %.critedge.i, !prof !31

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.dx = add i16 %.sroa.035.065.i, -1
  %i.dy = and i16 %i.dx, %.sroa.035.065.i         ; 2 uses
  %.not.i83 = icmp eq i16 %i.dy, 0
  br i1 %.not.i83, label %.critedge19.i, label %.lr.ph.i

.critedge19.i:                                    ; preds = %.critedge.i, %bb.t
  %i.dz = icmp eq <16 x i8> %i.dn, splat (i8 -128)
  %i.ea = bitcast <16 x i1> %i.dz to i16          ; 2 uses
  %.not57.i = icmp eq i16 %i.ea, 0
  br i1 %.not57.i, label %bb.u, label %.thread.i84, !prof !5

.thread.i84:                                      ; preds = %.critedge19.i
  %i.eb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ea, i1 true)
  %i.ec = zext nneg i16 %i.eb to i64
  %i.ed = add i64 %.sroa.7.0.i, %i.ec
  %i.ee = and i64 %i.ed, %i.cr
  %i.ef = call noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEE18GetPolicyFunctionsEvE5value, i64 noundef %i.dg, i64 %i.ee, i64 %.sroa.15.0.i) #17, !noalias !28
  %.sroa.0.0.copyload.i.i.i2.i26.i = load ptr, ptr %i.ai, align 8, !noalias !28
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i26.i, i64 %i.ef
  br label %bb.v

bb.u:                                             ; preds = %.critedge19.i
  %i.eh = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.ei = add i64 %i.eh, %.sroa.7.0.i
  br label %bb.t

bb.v:                                             ; preds = %bb.r, %bb.p, %.thread.i84
  %.sroa.3104.0.ph = phi ptr [ %i.eg, %.thread.i84 ], [ %i.ag, %bb.p ], [ %i.cx, %bb.r ] ; 3 uses
  %i.ej = load ptr, ptr %i.a, align 8, !noalias !32
  store ptr %i.ej, ptr %.sroa.3104.0.ph, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.3104.0.ph, i64 8
  store ptr null, ptr %i.ek, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit: ; preds = %.lr.ph.i, %bb.q, %bb.v
  %.sroa.3104.0108 = phi ptr [ %.sroa.3104.0.ph, %bb.v ], [ %i.ag, %bb.q ], [ %i.du, %.lr.ph.i ]
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.3104.0108, i64 8
  store ptr %i.ce, ptr %i.el, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !36)
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.em = load i64, ptr %i.ak, align 8, !noalias !42
  %i.en = icmp ult i64 %i.em, 2
  br i1 %i.en, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.eo = load i64, ptr %i.al, align 8, !noalias !49
  %.not.i.i.i.i.i.i.i = icmp ult i64 %i.eo, 131072
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 131072, ptr %i.al, align 8, !noalias !49
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ep = load ptr, ptr %i.am, align 8, !noalias !49
  %i.eq = load ptr, ptr %i.w, align 8, !noalias !49
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !49
  store ptr %i.ak, ptr %2, align 8, !noalias !49
  store ptr %i.w, ptr %6, align 8, !noalias !49
  %i.es = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler10turboshaft10AllocateOpEvE4HashESB_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #17, !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !49
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !noalias !49
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i, i64 %i.es
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  %.sink16.i.i.i.i.i.i = phi ptr [ %i.et, %bb.z ], [ %i.am, %bb.x ], [ %i.am, %bb.y ] ; 2 uses
  %.sink.i.i.i.i.i.i = phi i8 [ 1, %bb.z ], [ 1, %bb.x ], [ 0, %bb.y ]
  store ptr %.sink16.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !49
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i

bb.aa:                                            ; preds = %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpES9_EENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_S9_EEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEEOSO_.exit
  call void @_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_largeIS9_EESG_INSK_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.636") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 8, !range !9, !alias.scope !50
  %.sroa.2.0.copyload.i.pre141.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i: ; preds = %bb.aa, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i
  %.sroa.2.0.copyload.i.pre141 = phi ptr [ %.sink16.i.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i ], [ %.sroa.2.0.copyload.i.pre141.pre, %bb.aa ] ; 3 uses
  %i.eu = phi i8 [ %.sink.i.i.i.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE28find_or_prepare_insert_smallIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i ], [ %.pre.i.i.i, %bb.aa ]
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.ab, label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit

bb.ab:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i
  %i.ew = load ptr, ptr %i.w, align 8, !noalias !50
  store ptr %i.ew, ptr %.sroa.2.0.copyload.i.pre141, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.pre141, i64 8
  store i32 0, ptr %i.ex, align 8
  %.sroa.2.0.copyload.i.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8
  br label %_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit

_ZN4absl18container_internal12raw_hash_mapINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEEixIS9_SA_Li0EEEDTclsrT0_5valueclL_ZSt9addressofISI_EPT_RSO_EclL_ZSt7declvalIRSI_EDTcl9__declvalISO_ELi0EEEvEEEEERKSO_.exit: ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i, %bb.ab
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i.pre141, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE22find_or_prepare_insertIS9_EESG_INSK_8iteratorEbERKT_.exit.i.i.i ], [ %.sroa.2.0.copyload.i.pre, %bb.ab ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = load i32, ptr %i.ae, align 8
  %i.fb = call i32 @llvm.umax.i32(i32 %i.ez, i32 %i.fa)
  store i32 %i.fb, ptr %i.ey, align 4
  br label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit

.thread.i:                                        ; preds = %bb.m, %bb.l, %bb.k
  store ptr %i.bi, ptr %i.w, align 8
  store i8 0, ptr %i.ad, align 4
  %.old.i = icmp ult i64 %.sroa.029.0.i, 131073
  br i1 %.old.i, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %bb.i, %bb.h
  store ptr %i.bi, ptr %i.w, align 8
  store i8 0, ptr %i.ad, align 4
  %i.fc = icmp ult i64 %.sroa.029.0.i, 131073
  %or.cond37.i = select i1 %.not.i24, i1 %i.fc, i1 false
  br i1 %or.cond37.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac, %.thread.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.029.0.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.ae, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.thread.i, %.thread34.i
  %i.fd = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.fe = icmp ult i64 %i.fd, 2                   ; 2 uses
  br i1 %i.fe, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.ff = load i64, ptr %i.al, align 8
  %.not.i.i.i.i68 = icmp ult i64 %i.ff, 131072
  br i1 %.not.i.i.i.i68, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fg = load ptr, ptr %i.am, align 8
  %i.fh = icmp eq ptr %i.fg, %i.bi
  %i.fi = select i1 %i.fh, ptr @_ZN4absl18container_internal11kSooControlE, ptr null
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i

bb.ah:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i.i.i.i.i47 = load ptr, ptr %i.am, align 8 ; 4 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i47, i32 0, i32 1, i32 1)
  %i.fj = load i64, ptr %i.al, align 8
  %sext.i.i48 = shl i64 %i.fj, 48
  %i.fk = ashr exact i64 %sext.i.i48, 48
  %i.fl = xor i64 %i.bh, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.fm = zext i64 %i.fl to i128
  %i.fn = mul nuw nsw i128 %i.fm, 8779197792823184629 ; 2 uses
  %i.fo = lshr i128 %i.fn, 64
  %i.fp = xor i128 %i.fo, %i.fn
  %i.fq = trunc i128 %i.fp to i64
  %i.fr = xor i64 %i.fk, %i.fq                    ; 2 uses
  %i.fs = lshr i64 %i.fr, 57
  %i.ft = trunc nuw nsw i64 %i.fs to i8
  %.sroa.0.0.copyload.i.i.i14.i.i.i49 = load ptr, ptr %i.an, align 8 ; 2 uses
  %i.fu = insertelement <16 x i8> poison, i8 %i.ft, i64 0
  %i.fv = shufflevector <16 x i8> %i.fu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %bb.ah
  %.pn.i7.i.i50 = phi i64 [ %i.fr, %bb.ah ], [ %i.go, %bb.ak ]
  %.sroa.13.0.i.i.i51 = phi i64 [ 0, %bb.ah ], [ %i.gn, %bb.ak ]
  %.sroa.6.0.i.i.i52 = and i64 %.pn.i7.i.i50, %i.fd ; 4 uses
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i49, i64 %.sroa.6.0.i.i.i52
  call void @llvm.prefetch.p0(ptr %i.fw, i32 0, i32 3, i32 1)
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i47, i64 %.sroa.6.0.i.i.i52
  %i.fy = load <16 x i8>, ptr %i.fx, align 1      ; 2 uses
  %i.fz = icmp eq <16 x i8> %i.fv, %i.fy
  %i.ga = bitcast <16 x i1> %i.fz to i16          ; 2 uses
  %.not46.i.i.i53 = icmp eq i16 %i.ga, 0
  br i1 %.not46.i.i.i53, label %._crit_edge.i.i.i57, label %.lr.ph.i.i.i54

.lr.ph.i.i.i54:                                   ; preds = %bb.ai, %bb.aj
  %.sroa.017.047.i.i.i55 = phi i16 [ %i.gk, %bb.aj ], [ %i.ga, %bb.ai ] ; 3 uses
  %i.gb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i55, i1 true)
  %i.gc = zext nneg i16 %i.gb to i64
  %i.gd = add i64 %.sroa.6.0.i.i.i52, %i.gc
  %i.ge = and i64 %i.gd, %i.fd                    ; 2 uses
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i49, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = icmp eq ptr %i.gg, %i.bi
  br i1 %i.gh, label %.thread33.i.i.i67, label %bb.aj, !prof !31

.thread33.i.i.i67:                                ; preds = %.lr.ph.i.i.i54
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i47, i64 %i.ge
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i47) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i54
  %i.gj = add i16 %.sroa.017.047.i.i.i55, -1
  %i.gk = and i16 %i.gj, %.sroa.017.047.i.i.i55   ; 2 uses
  %.not.i.i.i56 = icmp eq i16 %i.gk, 0
  br i1 %.not.i.i.i56, label %._crit_edge.i.i.i57, label %.lr.ph.i.i.i54

._crit_edge.i.i.i57:                              ; preds = %bb.aj, %bb.ai
  %i.gl = icmp eq <16 x i8> %i.fy, splat (i8 -128)
  %i.gm = bitcast <16 x i1> %i.gl to i16
  %.not44.i.i.i58 = icmp eq i16 %i.gm, 0
  br i1 %.not44.i.i.i58, label %bb.ak, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit, !prof !5

bb.ak:                                            ; preds = %._crit_edge.i.i.i57
  %i.gn = add i64 %.sroa.13.0.i.i.i51, 16         ; 2 uses
  %i.go = add i64 %i.gn, %.sroa.6.0.i.i.i52
  br label %bb.ai, !llvm.loop !51

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i: ; preds = %.thread33.i.i.i67, %bb.ag
  %.pn.i.i63 = phi ptr [ %i.fi, %bb.ag ], [ %i.gi, %.thread33.i.i.i67 ] ; 5 uses
  %i.gp = icmp eq ptr %.pn.i.i63, null            ; 2 uses
  %i.gq = icmp eq ptr %.pn.i.i63, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i64 = or i1 %i.gp, %i.gq
  br i1 %or.cond.i.i.i64, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i65, label %bb.al

bb.al:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i
  %i.gr = load i8, ptr %.pn.i.i63, align 1
  %i.gs = icmp sgt i8 %i.gr, -1
  br i1 %i.gs, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i65, label %bb.am, !prof !31

bb.am:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i65: ; preds = %bb.al, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE4findIS9_EENSK_8iteratorERKT_.exit.i
  br i1 %i.gq, label %bb.an, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit.i, !prof !52

bb.an:                                            ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i65
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #17
  call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit.i: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i65
  br i1 %i.gp, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit.i
  %i.gt = load i8, ptr %.pn.i.i63, align 1
  %i.gu = icmp sgt i8 %i.gt, -1
  br i1 %i.gu, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit.i, label %bb.ap, !prof !31

bb.ap:                                            ; preds = %bb.ao
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.15, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26) #17
  call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit.i: ; preds = %bb.ao
  br i1 %i.fe, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit.i
  call void @_ZN4absl18container_internal18EraseMetaOnlySmallERNS0_12CommonFieldsEbm(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i1 noundef zeroext true, i64 noundef 16) #17
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit

bb.ar:                                            ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iterator14assert_is_fullEPKc.exit.i
  call void @_ZN4absl18container_internal18EraseMetaOnlyLargeERNS0_12CommonFieldsEPKNS0_6ctrl_tEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull %.pn.i.i63, i64 noundef 16) #17
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit: ; preds = %._crit_edge.i.i.i57, %bb.af, %bb.ar, %bb.aq, %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE8iteratorESN_.exit.i
  %i.gv = load i64, ptr %i.af, align 8            ; 3 uses
  %i.gw = icmp ult i64 %i.gv, 2                   ; 2 uses
  br i1 %i.gw, label %bb.as, label %bb.au

bb.as:                                            ; preds = %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler10turboshaft10AllocateOpEjEENS0_6HashEqIS9_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS9_jEEEE5eraseIS9_EEmRKT_.exit
  %i.gx = load i64, ptr %i.ah, align 8
  %.not.i.i.i.i44 = icmp ult i64 %i.gx, 131072
  br i1 %.not.i.i.i.i44, label %_ZN2v88internal8compiler10turboshaft14MemoryAnalyzer7ProcessERKNS2_9OperationE.exit, label %bb.at

end_hunk_0
