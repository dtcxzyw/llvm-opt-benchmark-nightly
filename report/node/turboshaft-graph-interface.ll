inline.NumInlined: 30203
inline.NumDeleted: 8013
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11StructGetOpEJNS2_14ShadowyOpIndexEPKNS0_4wasm10StructTypeENSH_15ModuleTypeIndexEibNS1_12CheckForNullESt8optionalINS0_17AtomicMemoryOrderEEEEENS2_7OpIndexEDpT0_:bb.a
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi17, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 5, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 40
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 5, ptr %i.af, align 2
  %i.ag = zext i1 %5 to i8
  %i.ah = zext i1 %6 to i8
  store i8 23, ptr %i.s, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 1, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 %1, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %i.ag, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %i.ah, ptr %i.am, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %2, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 %3, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 %4, ptr %i.ap, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i16 %7, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.f, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = zext i32 %1 to i64
  %i.au = add i64 %i.as, %i.at
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ax, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11StructGetOpEEEvRKT_.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11StructGetOpEE3NewIJNS2_14ShadowyOpIndexEPKNS0_4wasm10StructTypeENS8_15ModuleTypeIndexEibNS1_12CheckForNullESt8optionalINS0_17AtomicMemoryOrderEEEEERS4_PNS2_5GraphEDpT_.exit
  %i.ay = add nuw i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11StructGetOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11StructGetOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11StructGetOpEE3NewIJNS2_14ShadowyOpIndexEPKNS0_4wasm10StructTypeENS8_15ModuleTypeIndexEibNS1_12CheckForNullESt8optionalINS0_17AtomicMemoryOrderEEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 4
  %i.ba = load ptr, ptr %i.a, align 8, !nonnull !11, !align !19 ; 4 uses
  %i.bb = lshr i64 %i.i, 4
  %i.bc = and i64 %i.bb, 268435455                ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 216
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 208 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 2
  %.not.i.i13 = icmp ugt i64 %i.bk, %i.bc
  br i1 %.not.i.i13, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !8

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11StructGetOpEEEvRKT_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 200 ; 2 uses
  %i.bm = lshr i64 %i.bc, 1
  %i.bn = add nuw nsw i64 %i.bc, 32
  %i.bo = add nuw nsw i64 %i.bn, %i.bm
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 224
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = load ptr, ptr %i.bf, align 8
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %i.bv)
  %.pre.i.i = load ptr, ptr %i.bf, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11StructGetOpEEEvRKT_.exit, %bb.d
  %i.bw = phi ptr [ %.pre.i.i, %bb.d ], [ %i.bg, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11StructGetOpEEEvRKT_.exit ]
  %i.bx = trunc i64 %i.i to i32
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bc
  store i32 %.sroa.0.0.copyload.i, ptr %i.by, align 4
  ret i32 %i.bx
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface12ArrayNewImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_15ModuleTypeIndexEPKNS1_9ArrayTypeENS0_8compiler10turboshaft1VINSE_12WordWithBitsILm32EEEEENSF_INSE_3AnyEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i32 %2, ptr noundef %3, i32 %4, i32 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 24
  %i.k = zext i32 %2 to i64                       ; 2 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 22
  %i.o = load i8, ptr %i.n, align 2, !range !10, !noundef !11
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !11, !align !19 ; 4 uses
  %.not.i = xor i1 %i.p, true
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load i8, ptr %i.s, align 8, !range !10
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.u
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 672
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i, !prof !9

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !11, !align !19
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ab = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, i32 %.sroa.0.0.copyload.i.i.i, i32 -1, i8 49, i8 11, i8 4, i32 noundef 168, i8 noundef zeroext 0)
  %.pre.i = load ptr, ptr %i.q, align 8           ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 672
  %.pre9.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %i.ac = icmp eq ptr %.pre9.i, null
  br i1 %i.ac, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit, label %bb.c, !prof !62

bb.c:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.ae = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i32 %i.ab, i32 -1, i8 49, i8 12, i8 4, i32 noundef 240, i8 noundef zeroext 0)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit

bb.d:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !11, !align !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.ah, align 4
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit: ; preds = %bb.b, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i, %bb.c, %bb.d
  %.sroa.08.0.i = phi i32 [ %.sroa.0.0.copyload.i7.i, %bb.d ], [ %i.ae, %bb.c ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i ], [ -1, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 672
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, label %bb.e, !prof !9

bb.e:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.am = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10RttCanonOpEJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i32 %.sroa.08.0.i, i32 %2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %bb.e, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit
  %.sroa.04.0.i.i = phi i32 [ %i.am, %bb.e ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit ]
  %i.an = load ptr, ptr %i.q, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 672
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE17WasmAllocateArrayENS2_1VINS0_3MapEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEPKNS0_4wasm9ArrayTypeEb.exit, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE17WasmAllocateArrayENS2_1VINS0_3MapEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEPKNS0_4wasm9ArrayTypeEb.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_19WasmAllocateArrayOpEJNS2_14ShadowyOpIndexESG_PKNS0_4wasm9ArrayTypeEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i32 %.sroa.04.0.i.i, i32 %4, ptr noundef %3, i1 noundef zeroext %i.p) ; 2 uses
  %.pre = load ptr, ptr %i.q, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre26 = load ptr, ptr %.phi.trans.insert, align 8
  %i.at = icmp eq ptr %.pre26, null
  br i1 %i.at, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.f, !prof !62

bb.f:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE17WasmAllocateArrayENS2_1VINS0_3MapEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEPKNS0_4wasm9ArrayTypeEb.exit
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.av = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.au, i8 noundef zeroext 0, i64 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE17WasmAllocateArrayENS2_1VINS0_3MapEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEPKNS0_4wasm9ArrayTypeEb.exit, %bb.f
  %.sroa.05.0.i.i28 = phi i32 [ %i.as, %bb.f ], [ %i.as, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE17WasmAllocateArrayENS2_1VINS0_3MapEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEPKNS0_4wasm9ArrayTypeEb.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi i32 [ %i.av, %bb.f ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE17WasmAllocateArrayENS2_1VINS0_3MapEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEPKNS0_4wasm9ArrayTypeEb.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i ]
  tail call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13ArrayFillImplENS0_8compiler10turboshaft1VINS0_9WasmArrayEEENS5_INS4_12WordWithBitsILm32EEEEENS5_INS4_3AnyEEENS4_7OpIndexEPKNS1_9ArrayTypeEb(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 %.sroa.05.0.i.i28, i32 %.sroa.0.0.i.i.i, i32 %5, i32 %4, ptr noundef %3, i1 noundef zeroext false)
  ret i32 %.sroa.05.0.i.i28
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13ArrayFillImplENS0_8compiler10turboshaft1VINS0_9WasmArrayEEENS5_INS4_12WordWithBitsILm32EEEEENS5_INS4_3AnyEEENS4_7OpIndexEPKNS1_9ArrayTypeEb(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 %1, i32 %2, i32 %3, i32 %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %7 = alloca %"class.std::tuple.397", align 1    ; 3 uses
  %8 = alloca %"class.std::tuple.600", align 1    ; 3 uses
  %9 = alloca %"struct.v8::internal::compiler::turboshaft::SnapshotTableEntry", align 8 ; 6 uses
  %10 = alloca %"class.v8::internal::compiler::turboshaft::V.324", align 4 ; 2 uses
  %11 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 2 uses
  %12 = alloca %"class.v8::internal::compiler::turboshaft::Label.594", align 8 ; 15 uses
  %13 = alloca %"struct.v8::internal::compiler::turboshaft::GenericAssemblerOpInterface<v8::internal::compiler::turboshaft::Assembler<v8::base::tmp::list1<v8::internal::compiler::turboshaft::SelectLoweringReducer, v8::internal::compiler::turboshaft::DataViewLoweringReducer, v8::internal::compiler::turboshaft::VariableReducer, v8::internal::compiler::turboshaft::TSReducerBase>>>::ControlFlowHelper_IfState", align 8 ; 5 uses
  %14 = alloca [6 x %"class.v8::internal::MachineType"], align 8 ; 7 uses
  %15 = alloca %"class.v8::internal::Signature.1034", align 8 ; 7 uses
  %16 = alloca [6 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 9 uses
  %17 = alloca %"class.v8::internal::compiler::turboshaft::ScopedVar.1385", align 8 ; 9 uses
  %18 = alloca %"class.std::tuple.1387", align 8  ; 9 uses
  %19 = alloca %"class.std::function", align 8    ; 7 uses
  %20 = alloca %"class.std::tuple.600", align 1   ; 3 uses
  store i32 %2, ptr %10, align 4
  store i32 %4, ptr %11, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !align !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !11, !align !19 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.e)
  %.pre.i.i = load i64, ptr %i.f, align 8
  br label %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.g, %bb.a ], [ %.pre.i.i, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.m = add i64 %i.k, 1
  store i64 %i.m, ptr %i.f, align 8
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8              ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.p, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i32 -1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  store i32 -1, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  store i32 0, ptr %i.v, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.u, align 8
  store ptr %i.p, ptr %12, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.aa, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 72
  store ptr null, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 3 uses
  store i8 0, ptr %i.ac, align 8
  %i.ad = icmp eq i32 %.sroa.0.0.copyload.i, 6672
  br i1 %i.ad, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit
  %i.ae = load ptr, ptr %i.b, align 8, !nonnull !11, !align !19 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 672
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !11, !align !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = zext i32 %3 to i64
  %i.ao = add i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4
  %.not.i = icmp eq i8 %i.aq, 35
  br i1 %.not.i, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit: ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = load i128, ptr %i.ar, align 1
  %i.at = icmp ne i128 0, %i.as
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.e, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread

bb.e:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit, %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %21 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %22 = getelementptr inbounds nuw i8, ptr %14, i64 10
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.bb = zext i1 %6 to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bd = zext i32 %.sroa.0.0.copyload.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.f

.loopexit:                                        ; preds = %.critedge, %.critedge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %.pre125 = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread

bb.f:                                             ; preds = %bb.e, %.critedge
  %.0115 = phi i32 [ 0, %bb.e ], [ %i.dh, %.critedge ] ; 2 uses
  switch i32 %.0115, label %.critedge [
    i32 2, label %.critedge.thread
    i32 0, label %bb.g
  ]

.critedge.thread:                                 ; preds = %bb.f
  %i.bg = load ptr, ptr %i.b, align 8, !nonnull !11, !align !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 536
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.bh, ptr noundef nonnull %13)
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr %i.b, align 8, !nonnull !11, !align !19 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 536
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 672 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i: ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bo = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i8 noundef zeroext 0, i64 noundef 16)
  %.pr = load ptr, ptr %i.bk, align 8
  %i.bp = icmp eq ptr %.pr, null
  br i1 %i.bp, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.h, !prof !62

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i
  %i.bq = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i32 %4, i32 %i.bo, i8 noundef zeroext 3, i8 0)
  %i.br = zext i32 %i.bq to i64
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, %bb.h
  %.sroa.06.0.i.i = phi i64 [ %i.br, %bb.h ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i ], [ 4294967295, %bb.g ]
  %i.bs = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_BindIfNotENS2_17ConditionWithHintEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, i64 %.sroa.06.0.i.i, ptr noundef nonnull %13)
  br i1 %i.bs, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit
  %i.bt = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16StoreInStackSlotENS0_8compiler10turboshaft7OpIndexENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 %3, i32 %.sroa.0.0.copyload.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store <4 x i16> <i16 2568, i16 772, i16 772, i16 772>, ptr %14, align 8
  store i16 772, ptr %21, align 8
  store i16 5, ptr %22, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store i64 0, ptr %15, align 8
  store i64 6, ptr %i.aw, align 8
  store ptr %14, ptr %i.ax, align 8
  %i.bu = call i64 @_ZN2v88internal17ExternalReference15wasm_array_fillEv() #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store i32 %1, ptr %16, align 4
  store i32 %2, ptr %i.ay, align 4
  store i32 %4, ptr %i.az, align 4
  %i.bv = load ptr, ptr %i.b, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 672
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.thread: ; preds = %bb.i
  store i32 -1, ptr %i.ba, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.ca = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bz, i8 noundef zeroext 0, i64 noundef %i.bb)
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre118 = load ptr, ptr %.phi.trans.insert, align 8
  %i.cb = icmp eq ptr %.pre118, null
  store i32 %i.ca, ptr %i.ba, align 4
  br i1 %i.cb, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.thread
  store i32 -1, ptr %i.bc, align 4
  store i32 %i.bt, ptr %i.be, align 4
  br label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.cd = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cc, i8 noundef zeroext 0, i64 noundef %i.bd)
  %.pre119 = load ptr, ptr %i.b, align 8          ; 2 uses
  %.phi.trans.insert120 = getelementptr inbounds nuw i8, ptr %.pre119, i64 672
  %.pre121 = load ptr, ptr %.phi.trans.insert120, align 8
  %i.ce = icmp eq ptr %.pre121, null
  store i32 %i.cd, ptr %i.bc, align 4
  store i32 %i.bt, ptr %i.be, align 4
  br i1 %i.ce, label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit, label %bb.j, !prof !62

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre119, i64 32
  %i.cg = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cf, i8 noundef zeroext 7, i64 %i.bu)
  br label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit

_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60, %bb.j
  %.sroa.02.0.i.i.i = phi i32 [ %i.cg, %bb.j ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60.thread ]
  %i.ch = call i32 @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS4_7OpIndexESt16initializer_listISG_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %15, i32 %.sroa.02.0.i.i.i, ptr nonnull %16, i64 6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.ci = load ptr, ptr %i.b, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 672
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit.thread: ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.critedge

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i: ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit
  store i8 1, ptr %i.ac, align 8
  %i.cm = load ptr, ptr %12, align 8              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 52
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp ne i32 %i.co, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cr = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.cq, ptr noundef nonnull %i.cm, i1 noundef zeroext %i.cp), !inline_history !61 ; 0 uses
  %i.cs = load ptr, ptr %12, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 52
  %i.cu = load i32, ptr %i.ct, align 4
  %.not.i.i.i = icmp eq i32 %i.cu, -1
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #21
  unreachable

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  %i.cv = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.cw = load ptr, ptr %i.z, align 8
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.m, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit, !prof !9

bb.m:                                             ; preds = %bb.l
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.w)
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit: ; preds = %bb.l, %bb.m
  %i.cy = phi ptr [ %.pre.i.i.i.i.i.i, %bb.m ], [ %i.cv, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.cz, ptr %i.y, align 8
  store ptr %i.ck, ptr %i.cy, align 8
  %.pre122 = load ptr, ptr %i.b, align 8          ; 2 uses
  %.phi.trans.insert123 = getelementptr inbounds nuw i8, ptr %.pre122, i64 672
  %.pre124 = load ptr, ptr %.phi.trans.insert123, align 8
  %i.da = icmp eq ptr %.pre124, null
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %i.da, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit
  %i.db = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 52
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = icmp ne i32 %i.dd, -1
  %i.df = getelementptr inbounds nuw i8, ptr %.pre122, i64 32
  %i.dg = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.df, ptr noundef nonnull %i.db, i1 noundef zeroext %i.de), !inline_history !61 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit.thread, %bb.n, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, %bb.f
  %i.dh = add nuw nsw i32 %.0115, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dh, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !1766

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread: ; preds = %bb.d, %bb.c, %.loopexit, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit
  %i.di = phi ptr [ %i.ae, %bb.d ], [ %i.ae, %bb.c ], [ %.pre125, %.loopexit ], [ %i.ae, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i64 0, ptr %9, align 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, i8 -1, i64 20, i1 false)
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 120
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -32
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dk, %i.dn
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.do = load ptr, ptr %i.dj, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 32 ; 2 uses
  store ptr %i.dp, ptr %i.dj, align 8
  br label %bb.q

bb.p:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.dq, ptr noundef nonnull align 8 dereferenceable(28) %9)
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.dj, align 8, !noalias !1767
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dr = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %bb.p ], [ %i.dp, %bb.o ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 112
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !1767
  %i.du = icmp eq ptr %i.dr, %i.dt
  br i1 %i.du, label %bb.r, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 128
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !1767
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -8
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 512
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i: ; preds = %bb.q, %bb.r
  %i.ea = phi ptr [ %i.dz, %bb.r ], [ %i.dr, %bb.q ]
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  store ptr %i.eb, ptr %17, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.di, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.di, i64 672
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEECI2NS2_3VarIS5_SA_EEINS0_4wasm32TurboshaftGraphBuildingInterfaceEEEPT_NS2_8ConstOrVIS5_jEE.exit, label %bb.s, !prof !9

bb.s:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISL_SM_EESL_(ptr noundef nonnull align 8 dereferenceable(504) %i.eg, ptr nonnull %i.eb, i32 %2)
  br label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEECI2NS2_3VarIS5_SA_EEINS0_4wasm32TurboshaftGraphBuildingInterfaceEEEPT_NS2_8ConstOrVIS5_jEE.exit

_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEECI2NS2_3VarIS5_SA_EEINS0_4wasm32TurboshaftGraphBuildingInterfaceEEEPT_NS2_8ConstOrVIS5_jEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.eh = load ptr, ptr %i.b, align 8, !nonnull !11, !align !19
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 536
  %i.ej = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.el, align 8
  %i.em = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 5 uses
  store ptr %0, ptr %i.em, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store ptr %17, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr %10, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store ptr %11, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %i.em, ptr %19, align 8
  store ptr @_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_4wasm32TurboshaftGraphBuildingInterface13ArrayFillImplENS4_INS1_9WasmArrayEEES7_NS4_INS3_3AnyEEENS3_7OpIndexEPKNS9_9ArrayTypeEbEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.ek, align 8
  store ptr @_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_4wasm32TurboshaftGraphBuildingInterface13ArrayFillImplENS4_INS1_9WasmArrayEEES7_NS4_INS3_3AnyEEENS3_7OpIndexEPKNS9_9ArrayTypeEbEUlvE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation, ptr %i.ej, align 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10MemoryCopyEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_19MemoryCopyImmediateERKNS2_5ValueESE_SE_:bb.a
_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit47: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit, %bb.d, %bb.e
  %.sroa.05.0.i.i46 = phi i32 [ -1, %bb.d ], [ %i.aa, %bb.e ], [ %.sroa.026.0.copyload, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ] ; 3 uses
  %i.ab = load i8, ptr %i.f, align 2
  %i.ac = icmp eq i8 %i.ab, 1
  br i1 %i.ac, label %bb.f, label %.thread

.thread:                                          ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit47
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.sroa.023.0.copyload60 = load i32, ptr %i.ad, align 4
  br label %bb.g

bb.f:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit47
  %i.ae = load i8, ptr %i.q, align 2
  %.not62 = icmp eq i8 %i.ae, 1
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %.sroa.023.0.copyload = load i32, ptr %i.af, align 4 ; 2 uses
  br i1 %.not62, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit49, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.023.0.copyload61 = phi i32 [ %.sroa.023.0.copyload60, %.thread ], [ %.sroa.023.0.copyload, %bb.f ]
  %i.ag = phi ptr [ %i.ad, %.thread ], [ %i.af, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 672
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit49, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.an = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.am, i32 %.sroa.023.0.copyload61, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit49

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit49: ; preds = %bb.f, %bb.g, %bb.h
  %i.ao = phi ptr [ %i.ag, %bb.g ], [ %i.ag, %bb.h ], [ %i.af, %bb.f ]
  %.sroa.05.0.i.i48 = phi i32 [ -1, %bb.g ], [ %i.an, %bb.h ], [ %.sroa.023.0.copyload, %bb.f ] ; 3 uses
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 900), align 4, !range !10, !noundef !11
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit49
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !11, !align !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 672
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft19SupportedOperations23HasFullUnalignedSupportEv() #22
  br i1 %i.aw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.ar, align 8, !nonnull !11, !align !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !11, !align !19
  %.sroa.020.0.copyload = load i32, ptr %i.ao, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = zext i32 %.sroa.020.0.copyload to i64
  %i.be = add i64 %i.bc, %i.bd
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 4
  %.not = icmp eq i8 %i.bg, 75
  br i1 %.not, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp ult i64 %i.bi, 113
  br i1 %i.bj, label %.critedge, label %bb.m

.critedge:                                        ; preds = %bb.l
  %i.bk = trunc nuw nsw i64 %i.bi to i32
  tail call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13InlineMemCopyEPKNS1_10WasmMemoryES5_NS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEESB_SB_i(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 %.sroa.05.0.i.i, i32 %.sroa.05.0.i.i46, i32 %.sroa.05.0.i.i48, i32 noundef %i.bk)
  br label %bb.p

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %.ptr6.i.i50 = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i64 1, ptr %6, align 8, !alias.scope !1831
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 6, ptr %i.bl, align 8, !alias.scope !1831
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.ptr6.i.i50, ptr %i.bm, align 8, !alias.scope !1831
  store <4 x i16> <i16 516, i16 5, i16 772, i16 772>, ptr %.ptr6.i.i50, align 8, !alias.scope !1831
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 1285, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1831
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 34
  store i16 1285, ptr %.sroa.7.0..sroa_idx.i, align 2, !alias.scope !1831
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i16 1285, ptr %.sroa.8.0..sroa_idx.i, align 4, !alias.scope !1831
  %i.bn = call i64 @_ZN2v88internal17ExternalReference16wasm_memory_copyEv() #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 672
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit.thread: ; preds = %bb.m
  store i32 -1, ptr %7, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit: ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !11, !align !19
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bx = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESH_NSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bw, i32 %.sroa.0.0.copyload.i7.i, i8 4, i8 1, i8 noundef zeroext 1)
  %.pre = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre64 = load ptr, ptr %.phi.trans.insert, align 8
  %i.by = icmp eq ptr %.pre64, null
  store i32 %i.bx, ptr %7, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  br i1 %i.by, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit.thread
  %.ph = phi ptr [ %i.bt, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit.thread ], [ %i.bz, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit ]
  store i32 -1, ptr %.ph, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit52.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit
  %i.cb = load i32, ptr %2, align 8
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.ce = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cd, i8 noundef zeroext 0, i64 noundef %i.cc)
  %.pre65 = load ptr, ptr %i.bo, align 8          ; 2 uses
  %.phi.trans.insert66 = getelementptr inbounds nuw i8, ptr %.pre65, i64 672
  %.pre67 = load ptr, ptr %.phi.trans.insert66, align 8
  %i.cf = icmp eq ptr %.pre67, null
  store i32 %i.ce, ptr %i.bz, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br i1 %i.cf, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit52.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit52, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit52.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread
  %.ph74 = phi ptr [ %i.ca, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread ], [ %i.cg, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit ]
  store i32 -1, ptr %.ph74, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.05.0.i.i, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.05.0.i.i46, ptr %i.ci, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %.sroa.05.0.i.i48, ptr %i.cj, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit52: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit
  %i.ck = load i32, ptr %i.c, align 8
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre65, i64 32
  %i.cn = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cm, i8 noundef zeroext 0, i64 noundef %i.cl)
  %.pre68 = load ptr, ptr %i.bo, align 8          ; 2 uses
  %.phi.trans.insert69 = getelementptr inbounds nuw i8, ptr %.pre68, i64 672
  %.pre70 = load ptr, ptr %.phi.trans.insert69, align 8
  %i.co = icmp eq ptr %.pre70, null
  store i32 %i.cn, ptr %i.cg, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %.sroa.05.0.i.i, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.05.0.i.i46, ptr %i.cq, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %.sroa.05.0.i.i48, ptr %i.cr, align 4
  br i1 %i.co, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, label %bb.n, !prof !62

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit52
  %i.cs = getelementptr inbounds nuw i8, ptr %.pre68, i64 32
  %i.ct = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cs, i8 noundef zeroext 7, i64 %i.bn)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit52.thread, %bb.n, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit52
  %.sroa.02.0.i.i.i = phi i32 [ %i.ct, %bb.n ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit52 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit52.thread ]
  %i.cu = call i32 @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS4_7OpIndexESt16initializer_listISG_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, i32 %.sroa.02.0.i.i.i, ptr nonnull %7, i64 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.cv = load ptr, ptr %i.bo, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 672
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %bb.o, !prof !9

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.da = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8TrapIfOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEEbNS1_6TrapIdEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cz, i32 %i.cu, i32 -1, i1 noundef zeroext true, i32 noundef 1371) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.p

bb.p:                                             ; preds = %.critedge, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface10MemoryFillEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_20MemoryIndexImmediateERKNS2_5ValueESE_SE_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::FixedSizeSignature.1464", align 8 ; 9 uses
  %7 = alloca [5 x %"class.v8::internal::compiler::turboshaft::OpIndex"], align 4 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i8, ptr %i.c, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.023.0.copyload = load i32, ptr %i.e, align 4 ; 2 uses
  %i.f = icmp eq i8 %i.d, 0
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 672
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.c, !prof !9

.thread:                                          ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit38

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %.sroa.021.0.copyload = load i32, ptr %i.m, align 4
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit38

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.n, i32 %.sroa.023.0.copyload, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1) ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre53 = load ptr, ptr %.phi.trans.insert, align 8
  %i.p = icmp eq ptr %.pre53, null
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  br i1 %i.p, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit38, label %bb.d, !prof !62

bb.d:                                             ; preds = %bb.c
  %.sroa.021.0.copyload48 = load i32, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, i32 %.sroa.021.0.copyload48, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit38

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit38: ; preds = %.thread, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit, %bb.c, %bb.d
  %i.t = phi ptr [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %i.m, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ], [ %i.l, %.thread ]
  %.sroa.05.0.i.i49 = phi i32 [ %i.o, %bb.c ], [ %i.o, %bb.d ], [ %.sroa.023.0.copyload, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ], [ -1, %.thread ] ; 3 uses
  %.sroa.05.0.i.i37 = phi i32 [ -1, %bb.c ], [ %i.s, %bb.d ], [ %.sroa.021.0.copyload, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ], [ -1, %.thread ] ; 3 uses
  %i.u = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 900), align 4, !range !10, !noundef !11
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit38
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !11, !align !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 672
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft19SupportedOperations23HasFullUnalignedSupportEv() #22
  br i1 %i.ab, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.w, align 8, !nonnull !11, !align !19
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !11, !align !19
  %.sroa.018.0.copyload = load i32, ptr %i.t, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = zext i32 %.sroa.018.0.copyload to i64
  %i.aj = add i64 %i.ah, %i.ai
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = load i8, ptr %i.ak, align 4
  %.not = icmp eq i8 %i.al, 75
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp ult i64 %i.an, 145
  br i1 %i.ao, label %.critedge, label %bb.i

.critedge:                                        ; preds = %bb.h
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.016.0.copyload = load i32, ptr %i.aq, align 4
  %i.ar = trunc nuw nsw i64 %i.an to i32
  tail call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13InlineMemFillEPKNS1_10WasmMemoryENS0_8compiler10turboshaft1VINS7_12WordWithBitsILm64EEEEENS8_INS9_ILm32EEEEESB_i(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %i.ap, i32 %.sroa.05.0.i.i49, i32 %.sroa.016.0.copyload, i32 %.sroa.05.0.i.i37, i32 noundef %i.ar)
  br label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface31MemoryAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %.ptr6.i.i39 = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i64 1, ptr %6, align 8, !alias.scope !1834
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 5, ptr %i.as, align 8, !alias.scope !1834
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.ptr6.i.i39, ptr %i.at, align 8, !alias.scope !1834
  store <4 x i16> <i16 516, i16 5, i16 772, i16 1285>, ptr %.ptr6.i.i39, align 8, !alias.scope !1834
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i16 770, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1834
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 34
  store i16 1285, ptr %.sroa.7.0..sroa_idx.i, align 2, !alias.scope !1834
  %i.au = call i64 @_ZN2v88internal17ExternalReference16wasm_memory_fillEv() #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 672
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit.thread: ; preds = %bb.i
  store i32 -1, ptr %7, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit: ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !11, !align !19
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.be = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_15TaggedBitcastOpEJNS2_14ShadowyOpIndexENS2_22RegisterRepresentationESH_NSF_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bd, i32 %.sroa.0.0.copyload.i7.i, i8 4, i8 1, i8 noundef zeroext 1)
  %.pre54 = load ptr, ptr %i.av, align 8          ; 2 uses
  %.phi.trans.insert55 = getelementptr inbounds nuw i8, ptr %.pre54, i64 672
  %.pre56 = load ptr, ptr %.phi.trans.insert55, align 8
  %i.bf = icmp eq ptr %.pre56, null
  store i32 %i.be, ptr %7, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  br i1 %i.bf, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit.thread
  %.ph = phi ptr [ %i.ba, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit.thread ], [ %i.bg, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit ]
  store i32 -1, ptr %.ph, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.05.0.i.i49, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bk = load i32, ptr %i.bj, align 4
  store i32 %i.bk, ptr %i.bi, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.05.0.i.i37, ptr %i.bl, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE26BitcastHeapObjectToWordPtrENS2_1VINS0_10HeapObjectEEE.exit
  %i.bm = load i32, ptr %2, align 8
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre54, i64 32
  %i.bp = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bo, i8 noundef zeroext 0, i64 noundef %i.bn)
  %.pre57 = load ptr, ptr %i.av, align 8          ; 2 uses
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %.pre57, i64 672
  %.pre59 = load ptr, ptr %.phi.trans.insert58, align 8
  %i.bq = icmp eq ptr %.pre59, null
  store i32 %i.bp, ptr %i.bg, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.sroa.05.0.i.i49, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.bu = load i32, ptr %i.bt, align 4
  store i32 %i.bu, ptr %i.bs, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %.sroa.05.0.i.i37, ptr %i.bv, align 4
  br i1 %i.bq, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, label %bb.j, !prof !62

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre57, i64 32
  %i.bx = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bw, i8 noundef zeroext 7, i64 %i.au)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread, %bb.j, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit
  %.sroa.02.0.i.i.i = phi i32 [ %i.bx, %bb.j ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit.thread ]
  %i.by = call i32 @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS4_7OpIndexESt16initializer_listISG_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, i32 %.sroa.02.0.i.i.i, ptr nonnull %7, i64 5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bz = load ptr, ptr %i.av, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 672
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit, label %bb.k, !prof !9

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.ce = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8TrapIfOpEJNS2_14ShadowyOpIndexENS2_9OptionalVINS2_10FrameStateEEEbNS1_6TrapIdEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cd, i32 %i.by, i32 -1, i1 noundef zeroext true, i32 noundef 1371) ; 0 uses
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE9TrapIfNotENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEENS1_6TrapIdE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface9TableInitEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_18TableInitImmediateERKNS2_5ValueESE_SE_(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.std::tuple.1468", align 4   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.e = load i8, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.03.0.copyload = load i32, ptr %i.f, align 4 ; 2 uses
  %i.g = icmp eq i8 %i.e, 0
  br i1 %i.g, label %bb.b, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 672
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSF_4KindENSF_10AssumptionENS2_18WordRepresentationESJ_EEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.m, i32 %.sroa.03.0.copyload, i8 noundef zeroext 10, i8 noundef zeroext 0, i8 0, i8 1)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.05.0.i.i = phi i32 [ -1, %bb.b ], [ %i.n, %bb.c ], [ %.sroa.03.0.copyload, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.02.0.copyload = load i32, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.sroa.01.0.copyload = load i32, ptr %i.p, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !11, !align !19 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 672
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit15, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit
  %i.v = load i32, ptr %i.a, align 8
  %i.w = uitofp i32 %i.v to double
  %i.x = bitcast double %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.y, i8 noundef zeroext 5, i64 %i.x) ; 2 uses
  %.pre = load ptr, ptr %i.q, align 8             ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre25 = load ptr, ptr %.phi.trans.insert, align 8
  %i.aa = icmp eq ptr %.pre25, null
  br i1 %i.aa, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit15, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i13, !prof !62

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i13: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit
  %i.ab = load i32, ptr %2, align 8
  %i.ac = uitofp i32 %i.ab to double
  %i.ad = bitcast double %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.af = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, i8 noundef zeroext 5, i64 %i.ad)
  %.pre26 = load ptr, ptr %i.q, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit15

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit15: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i13
  %.sroa.01.0.i28 = phi i32 [ %i.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit ], [ %i.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i13 ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ]
  %i.ag = phi ptr [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit ], [ %.pre26, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i13 ], [ %i.r, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ] ; 2 uses
  %.sroa.01.0.i14 = phi i32 [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit ], [ %i.af, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i13 ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface30TableAddressToUintPtrOrOOBTrapENS1_11AddressTypeENS0_8compiler10turboshaft1VINS5_13UntaggedUnionIJNS5_12WordWithBitsILm32EEENS8_ILm64EEEEEEEE.exit ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = load i8, ptr %i.ah, align 8, !range !10, !noundef !11
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.al = load i8, ptr %i.ak, align 2, !range !10, !noundef !11
  %i.am = uitofp nneg i8 %i.al to double
  %i.an = bitcast double %i.am to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit15
  %i.ao = phi i64 [ 0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit15 ], [ %i.an, %bb.d ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 672
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit18, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i16, !prof !9

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i16: ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.at = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_7Float64EEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.as, i8 noundef zeroext 5, i64 %i.ao)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit18

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantEd.exit18: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i16
  %.sroa.01.0.i17 = phi i32 [ -1, %bb.e ], [ %i.at, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14NumberConstantENS0_7Float64E.exit.sink.split.i16 ]
  store i32 %.sroa.01.0.i17, ptr %6, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %.sroa.01.0.i14, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.01.0.i28, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %.sroa.01.0.copyload, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sroa.02.0.copyload, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %.sroa.05.0.i.i, ptr %i.ay, align 4
  %i.az = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface27CallBuiltinThroughJumptableINS0_8compiler10turboshaft21BuiltinCallDescriptor13WasmTableInitEEENS5_6detail12IndexTypeForINT_9results_tEE4typeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNSA_11arguments_tENS2_17CheckForExceptionEQntsrSA_13kNeedsContext(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(24) %6, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8ElemDropEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_14IndexImmediateE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
end_hunk_1
