inline.NumInlined: 30203
inline.NumDeleted: 8013
begin_hunk_0_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor11WasmRethrowEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.i = load i32, ptr %2, align 4, !noalias !435
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.j, ptr %5, align 8, !alias.scope !435
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.m, ptr %i.l, align 8, !alias.scope !435
  store i32 %i.i, ptr %i.j, align 8, !alias.scope !435
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 28
  store ptr %i.n, ptr %i.k, align 8, !alias.scope !435
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !11, !align !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.s = call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef 1339) #22 ; 3 uses
  store ptr %i.s, ptr %4, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = load i32, ptr %i.s, align 8
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.w, i32 0, i8 0, i32 noundef 1) #22
  %i.y = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.x, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %i.r, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.z = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface26CallAndMaybeCatchExceptionEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS0_8compiler10turboshaft1VINSA_13UntaggedUnionIJNSA_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSD_ILm32EEEEEEEENS_4base6VectorIKNSA_7OpIndexEEEPKNSA_16TSCallDescriptorENS2_17CheckForExceptionENSA_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i32 %.sroa.0.0.i.i.i, ptr nonnull %i.j, i64 1, ptr noundef %i.y, i32 noundef %3, i32 281664)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i32 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor12WasmThrowRefEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::CallInterfaceDescriptor", align 8 ; 4 uses
  %5 = alloca %"class.v8::base::SmallVector.673", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 noundef zeroext 12, i64 noundef 1340)
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE32RelocatableWasmBuiltinCallTargetENS0_7BuiltinE.exit: ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %.sroa.0.0.i.i.i = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.i = load i32, ptr %2, align 4, !noalias !451
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store ptr %i.j, ptr %5, align 8, !alias.scope !451
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.m, ptr %i.l, align 8, !alias.scope !451
  store i32 %i.i, ptr %i.j, align 8, !alias.scope !451
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 28
  store ptr %i.n, ptr %i.k, align 8, !alias.scope !451
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !11, !align !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.s = call ptr @_ZN2v88internal8Builtins26CallInterfaceDescriptorForENS0_7BuiltinE(i32 noundef 1340) #22 ; 3 uses
  store ptr %i.s, ptr %4, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = load i32, ptr %i.s, align 8
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = call noundef ptr @_ZN2v88internal8compiler7Linkage21GetStubCallDescriptorEPNS0_4ZoneERKNS0_23CallInterfaceDescriptorEiNS_4base5FlagsINS1_14CallDescriptor4FlagEiiEENS9_INS1_8Operator8PropertyEhhEENS0_12StubCallModeE(ptr noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %i.w, i32 0, i8 0, i32 noundef 1) #22
  %i.y = call noundef ptr @_ZN2v88internal8compiler10turboshaft16TSCallDescriptor6CreateEPKNS1_14CallDescriptorENS1_8CanThrowENS1_16LazyDeoptOnThrowEPNS0_4ZoneEPKNS1_20JSWasmCallParametersE(ptr noundef %i.x, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %i.r, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.z = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface26CallAndMaybeCatchExceptionEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS0_8compiler10turboshaft1VINSA_13UntaggedUnionIJNSA_12WordWithBitsILm64EEENS0_4CodeENS0_10JSFunctionENSD_ILm32EEEEEEEENS_4base6VectorIKNSA_7OpIndexEEEPKNSA_16TSCallDescriptorENS2_17CheckForExceptionENSA_9OpEffectsE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i32 %.sroa.0.0.i.i.i, ptr nonnull %i.j, i64 1, ptr noundef %i.y, i32 noundef %3, i32 281664)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft7OpIndexELm2ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i32 %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE10PopControlEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 11 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -128 ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = and i64 %i.h, 549755813760
  %i.j = icmp eq i64 %i.i, 128
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -255
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10PopControlEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS2_7ControlE(ptr noundef nonnull align 8 dereferenceable(288) %i.n, ptr noundef nonnull %0, ptr noundef nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = load i8, ptr %i.d, align 8
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %i.c, i64 -127
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.f, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15PushMergeValuesEPNS5_7ControlEPNS1_5MergeINS5_5ValueEEE.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.c, i64 -64 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.c, i64 -104
  %i.w = load i32, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 6 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = load i32, ptr %i.t, align 8             ; 4 uses
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.c, i64 -56
  %.sroa.03.0.copyload.i = load i64, ptr %i.ad, align 8
  store i64 %.sroa.03.0.copyload.i, ptr %i.z, align 4
  %i.ae = load ptr, ptr %i.aa, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.af, ptr %i.aa, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15PushMergeValuesEPNS5_7ControlEPNS1_5MergeINS5_5ValueEEE.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.z to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = sext i32 %i.ab to i64
  %.not.i.i = icmp slt i64 %i.al, %i.am
  br i1 %.not.i.i, label %bb.i, label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE4GrowEiPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i32 noundef %i.ab, ptr noundef %i.ao)
  %.pre.i = load i32, ptr %i.t, align 8
  br label %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i

_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i: ; preds = %bb.i, %bb.h
  %i.ap = phi i32 [ %i.ab, %bb.h ], [ %.pre.i, %bb.i ]
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15PushMergeValuesEPNS5_7ControlEPNS1_5MergeINS5_5ValueEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i
  %i.aq = getelementptr inbounds i8, ptr %i.c, i64 -56
  %.pre13.i = load ptr, ptr %i.aa, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %i.ar = phi ptr [ %.pre13.i, %.lr.ph.i ], [ %i.av, %bb.j ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i = load i64, ptr %i.at, align 4
  store i64 %.sroa.0.0.copyload.i, ptr %i.ar, align 4
  %i.au = load ptr, ptr %i.aa, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.aa, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aw = load i32, ptr %i.t, align 8
  %i.ax = zext i32 %i.aw to i64
  %i.ay = icmp samesign ult i64 %indvars.iv.next.i, %i.ax
  br i1 %i.ay, label %bb.j, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15PushMergeValuesEPNS5_7ControlEPNS1_5MergeINS5_5ValueEEE.exit, !llvm.loop !149

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15PushMergeValuesEPNS5_7ControlEPNS1_5MergeINS5_5ValueEEE.exit: ; preds = %bb.j, %_ZN2v88internal4wasm14FastZoneVectorINS1_32TurboshaftGraphBuildingInterface5ValueEE18EnsureMoreCapacityEiPNS0_4ZoneE.exit.i, %bb.g, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 529
  %i.ba = load i8, ptr %i.az, align 1, !range !10, !noundef !11
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15PushMergeValuesEPNS5_7ControlEPNS1_5MergeINS5_5ValueEEE.exit
  %i.bc = getelementptr inbounds i8, ptr %i.c, i64 -100
  %i.bd = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = load ptr, ptr %i.be, align 8
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = lshr exact i64 %i.bk, 2
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = icmp ult i32 %i.bd, %i.bm
  br i1 %i.bn, label %.lr.ph.i10, label %bb.m

.lr.ph.i10:                                       ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i10
  %i.bp = phi ptr [ %i.bg, %.lr.ph.i10 ], [ %i.bv, %bb.l ]
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4
  store ptr %i.bq, ptr %i.bf, align 8
  %i.bs = load ptr, ptr %i.bo, align 8
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 0, ptr %i.bu, align 1
  %i.bv = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bw = load ptr, ptr %i.be, align 8
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = lshr exact i64 %i.bz, 2
  %i.cb = trunc i64 %i.ca to i32
  %i.cc = icmp ult i32 %i.bd, %i.cb
  br i1 %i.cc, label %bb.l, label %bb.m, !llvm.loop !150

bb.m:                                             ; preds = %bb.l, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE15PushMergeValuesEPNS5_7ControlEPNS1_5MergeINS5_5ValueEEE.exit, %bb.k
  %1 = getelementptr inbounds i8, ptr %i.c, i64 -127
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0
  %i.cd = getelementptr inbounds i8, ptr %i.c, i64 -48
  %i.ce = load i8, ptr %i.cd, align 8, !range !10
  %i.cf = trunc nuw i8 %i.ce to i1
  %or.cond = select i1 %3, i1 true, i1 %i.cf
  br i1 %or.cond, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cg = load i8, ptr %i.d, align 8
  %i.ch = icmp eq i8 %i.cg, 0
  %4 = load ptr, ptr %i.b, align 8                ; 2 uses
  %i.ci = getelementptr i8, ptr %4, i64 -128      ; 3 uses
  store ptr %i.ci, ptr %i.b, align 8
  br i1 %i.ch, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr i8, ptr %4, i64 -255      ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.p, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.cj, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i8 0, ptr %i.cm, align 8
  %.pre12 = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

.critedge:                                        ; preds = %bb.m
  %5 = load ptr, ptr %i.b, align 8
  %i.cn = getelementptr i8, ptr %5, i64 -128      ; 2 uses
  store ptr %i.cn, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder15NoValidationTagENS1_32TurboshaftGraphBuildingInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit: ; preds = %bb.p, %bb.o, %.critedge, %bb.n
  %i.co = phi ptr [ %.pre12, %bb.p ], [ %i.ci, %bb.o ], [ %i.cn, %.critedge ], [ %i.ci, %bb.n ]
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -127
  %i.cq = load i8, ptr %i.cp, align 1
  %i.cr = icmp eq i8 %i.cq, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ct = zext i1 %i.cr to i8
  store i8 %i.ct, ptr %i.cs, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9CatchCaseEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS2_7ControlERKNS1_9CatchCaseENS_4base6VectorINS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::tuple.598", align 4    ; 4 uses
  %7 = alloca %"class.std::tuple.598", align 4    ; 4 uses
  %8 = alloca %"class.std::tuple.582", align 4    ; 5 uses
  %9 = alloca %"class.v8::internal::compiler::turboshaft::Label", align 8 ; 17 uses
  %10 = alloca %"class.v8::internal::compiler::turboshaft::Label.594", align 8 ; 15 uses
  %11 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 6 uses
  %12 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 5 uses
  %13 = alloca %"class.std::tuple.600", align 1   ; 3 uses
  %14 = alloca %"class.std::tuple.603", align 4   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 10 uses
  tail call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface24BindBlockAndGeneratePhisEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS0_8compiler10turboshaft5BlockEPNS1_5MergeINS2_5ValueEEEPNSA_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %i.b, ptr noundef null, ptr noundef nonnull %i.c)
  %i.d = load i8, ptr %3, align 8                 ; 2 uses
  %i.e = and i8 %i.d, -2
  %switch = icmp eq i8 %i.e, 2
  br i1 %switch, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.d, 3
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr [8 x i8], ptr %4, i64 %5
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %i.i = load i32, ptr %i.c, align 8
  store i32 %i.i, ptr %i.h, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 7
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.t, -1
  %i.v = icmp eq i32 %i.k, %i.u
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8DoReturnEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEj(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit

bb.f:                                             ; preds = %bb.d
  %i.w = zext i32 %i.k to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr [128 x i8], ptr %i.n, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -32      ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface20SetupControlFlowEdgeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS0_8compiler10turboshaft5BlockEjNSA_1VINS0_6ObjectEEEPNS1_5MergeINS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %1, ptr noundef %i.aa, i32 noundef 0, i32 -1, ptr noundef null)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 672
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit, label %bb.g, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 52
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp ne i32 %i.ai, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.al = tail call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.ak, ptr noundef nonnull %i.ag, i1 noundef zeroext %i.aj), !inline_history !61 ; 0 uses
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit

bb.h:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !11, !align !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.ao, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 25 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 672 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i: ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  %i.av = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.au)
  %.pr.i = load ptr, ptr %i.ar, align 8
  %i.aw = icmp eq ptr %.pr.i, null
  br i1 %i.aw, label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit, label %bb.i, !prof !62

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i
  %i.ax = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.au, i32 %i.av, i32 -1, i8 48, i8 7, i8 1, i32 noundef 7992, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit

_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit: ; preds = %bb.h, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i, %bb.i
  %.sroa.014.0.i = phi i32 [ -1, %bb.h ], [ %i.ax, %bb.i ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i ]
  store i32 %.sroa.014.0.i, ptr %8, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.az = load i32, ptr %i.c, align 8
  store i32 %i.az, ptr %i.ay, align 4
  %i.ba = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor18WasmGetOwnPropertyEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS5_1VINS0_7ContextEEERKNSA_11arguments_tENS2_17CheckForExceptionEQsrSA_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i32 %.sroa.0.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef 0) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bb = load ptr, ptr %i.ap, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 672
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21LoadFixedArrayElementENS2_1VINS0_10FixedArrayEEEi.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit
  %i.bf = load ptr, ptr %i.am, align 8, !nonnull !11, !align !19
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bh = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bg, i32 %.sroa.0.0.copyload.i7.i, i32 -1, i8 49, i8 12, i8 4, i32 noundef 224, i8 noundef zeroext 0)
  %.pre = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre249 = load ptr, ptr %.phi.trans.insert, align 8
  %i.bi = icmp eq ptr %.pre249, null
  br i1 %i.bi, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21LoadFixedArrayElementENS2_1VINS0_10FixedArrayEEEi.exit, label %bb.j, !prof !62

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = shl nsw i32 %i.bk, 3
  %i.bm = add i32 %i.bl, 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.bo = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i32 %i.bh, i32 -1, i8 17, i8 11, i8 4, i32 noundef %i.bm, i8 noundef zeroext 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21LoadFixedArrayElementENS2_1VINS0_10FixedArrayEEEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21LoadFixedArrayElementENS2_1VINS0_10FixedArrayEEEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, %bb.j
  %.sroa.011.0.i.i.i.i.i = phi i32 [ %i.bo, %bb.j ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit ] ; 3 uses
  %i.bp = call noundef ptr @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16NewBlockWithPhisEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS1_5MergeINS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef null) ; 6 uses
  call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface20SetupControlFlowEdgeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS0_8compiler10turboshaft5BlockEjNSA_1VINS0_6ObjectEEEPNS1_5MergeINS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef %i.bp, i32 noundef 0, i32 -1, ptr noundef null)
  store ptr %i.bp, ptr %i.a, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit, label %bb.an

_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE21LoadFixedArrayElementENS2_1VINS0_10FixedArrayEEEi.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = load i64, ptr %i.bs, align 8
  %i.bz = getelementptr [4 x i8], ptr %i.bx, i64 %i.by
  %.sroa.0.0.copyload.i128 = load i32, ptr %i.bz, align 4
  %i.ca = icmp eq i32 %.sroa.0.0.copyload.i128, 3845
  br i1 %i.ca, label %bb.k, label %bb.an

bb.k:                                             ; preds = %_ZNK2v88internal9SignatureINS0_4wasm9ValueTypeEE8GetParamEm.exit
  %i.cb = load ptr, ptr %i.ap, align 8, !nonnull !11, !align !19 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 672 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i129, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i129: ; preds = %bb.k
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 2 uses
  %i.cg = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_18LoadRootRegisterOpEJEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cf)
  %.pr.i130 = load ptr, ptr %i.cc, align 8
  %i.ch = icmp eq ptr %.pr.i130, null
  br i1 %i.ch, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit, label %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit132, !prof !62

_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit132: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i129
  %i.ci = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cf, i32 %i.cg, i32 -1, i8 48, i8 7, i8 1, i32 noundef 520, i8 noundef zeroext 0)
  %.pre250 = load ptr, ptr %i.cc, align 8
  %i.cj = icmp eq ptr %.pre250, null
  br i1 %i.cj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit, label %bb.l, !prof !62

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit132
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cl = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_22RegisterRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ck, i32 %i.ba, i32 %i.ci, i8 noundef zeroext 0, i8 4)
  %i.cm = zext i32 %i.cl to i64
  %i.cn = or disjoint i64 %i.cm, 8589934592
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE11TaggedEqualENS2_1VINS0_6ObjectEEESH_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i129, %bb.k, %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit132, %bb.l
  %.sroa.06.0.i.i.i.i = phi i64 [ %i.cn, %bb.l ], [ 12884901887, %_ZN2v88internal8compiler10turboshaft14LoadRootHelperIRNS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEENS2_7OpIndexEOT_NS0_9RootIndexE.exit132 ], [ 12884901887, %bb.k ], [ 12884901887, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16LoadRootRegisterEv.exit.i129 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.co = load ptr, ptr %i.ap, align 8, !nonnull !11, !align !19
end_hunk_0
