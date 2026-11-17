Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/turboshaft-graph-interface?download=true
inline.NumInlined: 30203
inline.NumDeleted: 8011
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_11StructGetOpEJNS2_14ShadowyOpIndexEPKNS0_4wasm10StructTypeENSH_15ModuleTypeIndexEibNS1_12CheckForNullESt8optionalINS0_17AtomicMemoryOrderEEEEENS2_7OpIndexEDpT0_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi17 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
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
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11StructGetOpEEEvRKT_.exit, label %bb.c, !prof !974

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11StructGetOpEE3NewIJNS2_14ShadowyOpIndexEPKNS0_4wasm10StructTypeENS8_15ModuleTypeIndexEibNS1_12CheckForNullESt8optionalINS0_17AtomicMemoryOrderEEEEERS4_PNS2_5GraphEDpT_.exit
  %i.ay = add nuw i8 %i.ax, 1
  store i8 %i.ay, ptr %i.aw, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11StructGetOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11StructGetOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11StructGetOpEE3NewIJNS2_14ShadowyOpIndexEPKNS0_4wasm10StructTypeENS8_15ModuleTypeIndexEibNS1_12CheckForNullESt8optionalINS0_17AtomicMemoryOrderEEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 660
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 4
  %i.ba = load ptr, ptr %i.a, align 8, !nonnull !976, !align !978 ; 4 uses
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
  br i1 %.not.i.i13, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !973

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
define linkonce_odr hidden i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface12ArrayNewImplEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEENS1_15ModuleTypeIndexEPKNS1_9ArrayTypeENS0_8compiler10turboshaft1VINSE_12WordWithBitsILm32EEEEENSF_INSE_3AnyEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i32 %2, ptr noundef %3, i32 %4, i32 %5) local_unnamed_addr #0 comdat align 2 !guid !3549 {
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
  %i.o = load i8, ptr %i.n, align 2, !range !975, !noundef !976
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !976, !align !978 ; 4 uses
  %.not.i = xor i1 %i.p, true
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.t = load i8, ptr %i.s, align 8, !range !975
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.u
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 672
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i, !prof !974

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i: ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !976, !align !978
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ab = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, i32 %.sroa.0.0.copyload.i.i.i, i32 -1, i8 49, i8 11, i8 4, i32 noundef 168, i8 noundef zeroext 0)
  %.pre.i = load ptr, ptr %i.q, align 8           ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 672
  %.pre9.i = load ptr, ptr %.phi.trans.insert.i, align 8
  %i.ac = icmp eq ptr %.pre9.i, null
  br i1 %i.ac, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit, label %bb.c, !prof !981

bb.c:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.ae = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6LoadOpEJNS2_14ShadowyOpIndexENS2_15OptionalOpIndexENSF_4KindENS2_20MemoryRepresentationENS2_22RegisterRepresentationEihEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, i32 %i.ab, i32 -1, i8 49, i8 12, i8 4, i32 noundef 240, i8 noundef zeroext 0)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit

bb.d:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !976, !align !978
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.sroa.0.0.copyload.i7.i = load i32, ptr %i.ah, align 4
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit: ; preds = %bb.b, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i, %bb.c, %bb.d
  %.sroa.08.0.i = phi i32 [ %.sroa.0.0.copyload.i7.i, %bb.d ], [ %i.ae, %bb.c ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21trusted_instance_dataEb.exit.i ], [ -1, %bb.b ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 672
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i, label %bb.e, !prof !974

bb.e:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.am = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10RttCanonOpEJNS2_14ShadowyOpIndexENS0_4wasm15ModuleTypeIndexEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.al, i32 %.sroa.08.0.i, i32 %2)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i: ; preds = %bb.e, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit
  %.sroa.04.0.i.i = phi i32 [ %i.am, %bb.e ], [ -1, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface19managed_object_mapsEb.exit ]
  %i.an = load ptr, ptr %i.q, align 8, !nonnull !976, !align !978 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 672
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE17WasmAllocateArrayENS2_1VINS0_3MapEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEPKNS0_4wasm9ArrayTypeEb.exit, !prof !974

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE17WasmAllocateArrayENS2_1VINS0_3MapEEENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEEPKNS0_4wasm9ArrayTypeEb.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.as = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_19WasmAllocateArrayOpEJNS2_14ShadowyOpIndexESG_PKNS0_4wasm9ArrayTypeEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ar, i32 %.sroa.04.0.i.i, i32 %4, ptr noundef %3, i1 noundef zeroext %i.p) ; 2 uses
  %.pre = load ptr, ptr %i.q, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre26 = load ptr, ptr %.phi.trans.insert, align 8
  %i.at = icmp eq ptr %.pre26, null
  br i1 %i.at, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, label %bb.f, !prof !981

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
define linkonce_odr hidden void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface13ArrayFillImplENS0_8compiler10turboshaft1VINS0_9WasmArrayEEENS5_INS4_12WordWithBitsILm32EEEEENS5_INS4_3AnyEEENS4_7OpIndexEPKNS1_9ArrayTypeEb(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 %1, i32 %2, i32 %3, i32 %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat align 2 !guid !3553 {
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
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !976, !align !978
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !976, !align !978 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN2v88internal8compiler10turboshaft5LabelIJEEC2INS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEEPT_NS_14SourceLocationE.exit, !prof !974

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
  %i.ae = load ptr, ptr %i.b, align 8, !nonnull !976, !align !978 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 672
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !976, !align !978
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
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %14, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 2 uses
  %i.bd = zext i1 %6 to i64
  %i.be = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bf = zext i32 %.sroa.0.0.copyload.i to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %16, i64 20 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.f

.loopexit:                                        ; preds = %.critedge, %.critedge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %.pre125.a = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread

bb.f:                                             ; preds = %bb.e, %.critedge
  %.0115 = phi i32 [ 0, %bb.e ], [ %i.dj, %.critedge ] ; 2 uses
  switch i32 %.0115, label %.critedge [
    i32 2, label %.critedge.thread
    i32 0, label %bb.g
  ]

.critedge.thread:                                 ; preds = %bb.f
  %i.bi = load ptr, ptr %i.b, align 8, !nonnull !976, !align !978
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 536
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_EndIfEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull %13)
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %i.b, align 8, !nonnull !976, !align !978 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 536
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 672 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, !prof !974

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i: ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bq = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, i8 noundef zeroext 0, i64 noundef 16)
  %.pr = load ptr, ptr %i.bm, align 8
  %i.br = icmp eq ptr %.pr, null
  br i1 %i.br, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, label %bb.h, !prof !981

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i
  %i.bs = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_12ComparisonOpEJNS2_14ShadowyOpIndexESG_NSF_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.bp, i32 %4, i32 %i.bq, i8 noundef zeroext 3, i8 0)
  %i.bt = zext i32 %i.bs to i64
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit: ; preds = %bb.g, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, %bb.h
  %.sroa.06.0.i.i = phi i64 [ %i.bt, %bb.h ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i ], [ 4294967295, %bb.g ]
  %i.bu = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE27ControlFlowHelper_BindIfNotENS2_17ConditionWithHintEPNSE_25ControlFlowHelper_IfStateE(ptr noundef nonnull align 1 dereferenceable(1) %i.bl, i64 %.sroa.06.0.i.i, ptr noundef nonnull %13)
  br i1 %i.bu, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit
  %i.bv = call i32 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface16StoreInStackSlotENS0_8compiler10turboshaft7OpIndexENS1_9ValueTypeE(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 %3, i32 %.sroa.0.0.copyload.i) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store <4 x i16> <i16 2568, i16 772, i16 772, i16 772>, ptr %14, align 8
  store i16 772, ptr %i.aw, align 8
  store i16 5, ptr %i.ax, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store i64 0, ptr %15, align 8
  store i64 6, ptr %i.ay, align 8
  store ptr %14, ptr %i.az, align 8
  %i.bw = call i64 @_ZN2v88internal17ExternalReference15wasm_array_fillEv() #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store i32 %1, ptr %16, align 4
  store i32 %2, ptr %i.ba, align 4
  store i32 %4, ptr %i.bb, align 4
  %i.bx = load ptr, ptr %i.b, align 8, !nonnull !976, !align !978 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 672
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, !prof !974

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.thread: ; preds = %bb.i
  store i32 -1, ptr %i.bc, align 4
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit: ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cc = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.cb, i8 noundef zeroext 0, i64 noundef %i.bd)
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 672
  %.pre118 = load ptr, ptr %.phi.trans.insert, align 8
  %i.cd = icmp eq ptr %.pre118, null
  store i32 %i.cc, ptr %i.bc, align 4
  br i1 %i.cd, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60, !prof !981

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit.thread
  store i32 -1, ptr %i.be, align 4
  store i32 %i.bv, ptr %i.bg, align 4
  br label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEi.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.cf = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ce, i8 noundef zeroext 0, i64 noundef %i.bf)
  %.pre119.a = load ptr, ptr %i.b, align 8        ; 2 uses
  %.phi.trans.insert120 = getelementptr inbounds nuw i8, ptr %.pre119.a, i64 672
  %.pre121 = load ptr, ptr %.phi.trans.insert120, align 8
  %i.cg = icmp eq ptr %.pre121, null
  store i32 %i.cf, ptr %i.be, align 4
  store i32 %i.bv, ptr %i.bg, align 4
  br i1 %i.cg, label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit, label %bb.j, !prof !981

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre119.a, i64 32
  %i.ci = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindENS0_17ExternalReferenceEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ch, i8 noundef zeroext 7, i64 %i.bw)
  br label %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit

_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60.thread, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60, %bb.j
  %.sroa.02.0.i.i.i = phi i32 [ %i.ci, %bb.j ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60 ], [ -1, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Word32ConstantEj.exit60.thread ]
  %i.cj = call i32 @_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS4_7OpIndexESt16initializer_listISG_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %15, i32 %.sroa.02.0.i.i.i, ptr nonnull %16, i64 6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.ck = load ptr, ptr %i.b, align 8, !nonnull !976, !align !978 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 672
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit.thread: ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.critedge

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i: ; preds = %_ZN2v88internal4wasm20WasmGraphBuilderBaseINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE5CallCEPKNS0_9SignatureINS0_11MachineTypeEEENS0_17ExternalReferenceESt16initializer_listINS4_7OpIndexEE.exit
  store i8 1, ptr %i.ac, align 8
  %i.co = load ptr, ptr %12, align 8              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 52
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = icmp ne i32 %i.cq, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.ct = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.cs, ptr noundef nonnull %i.co, i1 noundef zeroext %i.cr), !inline_history !6 ; 0 uses
  %i.cu = load ptr, ptr %12, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 52
  %i.cw = load i32, ptr %i.cv, align 4
  %.not.i.i.i = icmp eq i32 %i.cw, -1
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #21
  unreachable

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i
  %i.cx = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.cy = load ptr, ptr %i.z, align 8
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.m, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit, !prof !974

bb.m:                                             ; preds = %bb.l
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.w)
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit: ; preds = %bb.l, %bb.m
  %i.da = phi ptr [ %.pre.i.i.i.i.i.i, %bb.m ], [ %i.cx, %bb.l ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %i.db, ptr %i.y, align 8
  store ptr %i.cm, ptr %i.da, align 8
  %.pre122.a = load ptr, ptr %i.b, align 8        ; 2 uses
  %.phi.trans.insert123 = getelementptr inbounds nuw i8, ptr %.pre122.a, i64 672
  %.pre124 = load ptr, ptr %.phi.trans.insert123, align 8
  %i.dc = icmp eq ptr %.pre124, null
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br i1 %i.dc, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit
  %i.dd = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 52
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = icmp ne i32 %i.df, -1
  %i.dh = getelementptr inbounds nuw i8, ptr %.pre122.a, i64 32
  %i.di = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.dh, ptr noundef nonnull %i.dd, i1 noundef zeroext %i.dg), !inline_history !6 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit.thread, %bb.n, %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE14Uint32LessThanENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit, %bb.f
  %i.dj = add nuw nsw i32 %.0115, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dj, 3
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !3550

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread: ; preds = %bb.d, %bb.c, %.loopexit, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit
  %i.dk = phi ptr [ %i.ae, %bb.d ], [ %i.ae, %bb.c ], [ %.pre125.a, %.loopexit ], [ %i.ae, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i64 0, ptr %9, align 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 104 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i, i8 -1, i64 20, i1 false)
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 120
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -32
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dm, %i.dp
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %i.dq = load ptr, ptr %i.dl, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 2 uses
  store ptr %i.dr, ptr %i.dl, align 8
  br label %bb.q

bb.p:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface21IsSimd128ZeroConstantENS0_8compiler10turboshaft7OpIndexE.exit.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  call void @_ZNSt5dequeIN2v88internal8compiler10turboshaft18SnapshotTableEntryINS3_7OpIndexENS3_12VariableDataEEENS1_22RecyclingZoneAllocatorIS7_EEE16_M_push_back_auxIJS7_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.ds, ptr noundef nonnull align 8 dereferenceable(28) %9)
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !noalias !3554
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dt = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %bb.p ], [ %i.dr, %bb.o ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !3554
  %i.dw = icmp eq ptr %i.dt, %i.dv
  br i1 %i.dw, label %bb.r, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 128
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !3554
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 512
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i: ; preds = %bb.q, %bb.r
  %i.ec = phi ptr [ %i.eb, %bb.r ], [ %i.dt, %bb.q ]
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  store ptr %i.ed, ptr %17, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.dk, ptr %i.ee, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 672
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEECI2NS2_3VarIS5_SA_EEINS0_4wasm32TurboshaftGraphBuildingInterfaceEEEPT_NS2_8ConstOrVIS5_jEE.exit, label %bb.s, !prof !974

bb.s:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  call void @_ZN2v88internal8compiler10turboshaft27ChangeTrackingSnapshotTableINS2_15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES4_S7_EEEEEEEEEEEE13VariableTableENS2_7OpIndexENS2_12VariableDataEE3SetENS2_16SnapshotTableKeyISL_SM_EESL_(ptr noundef nonnull align 8 dereferenceable(504) %i.ei, ptr nonnull %i.ed, i32 %2)
  br label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEECI2NS2_3VarIS5_SA_EEINS0_4wasm32TurboshaftGraphBuildingInterfaceEEEPT_NS2_8ConstOrVIS5_jEE.exit

_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEECI2NS2_3VarIS5_SA_EEINS0_4wasm32TurboshaftGraphBuildingInterfaceEEEPT_NS2_8ConstOrVIS5_jEE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.ej = load ptr, ptr %i.b, align 8, !nonnull !976, !align !978
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 536
  %i.el = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.en, align 8
  %i.eo = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #23 ; 5 uses
  store ptr %0, ptr %i.eo, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %17, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store ptr %10, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store ptr %11, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %i.eo, ptr %19, align 8
  store ptr @_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_4wasm32TurboshaftGraphBuildingInterface13ArrayFillImplENS4_INS1_9WasmArrayEEES7_NS4_INS3_3AnyEEENS3_7OpIndexEPKNS9_9ArrayTypeEbEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.em, align 8
  store ptr @_ZNSt17_Function_handlerIFN2v88internal8compiler10turboshaft1VINS3_12WordWithBitsILm32EEEEEvEZNS1_4wasm32TurboshaftGraphBuildingInterface13ArrayFillImplENS4_INS1_9WasmArrayEEES7_NS4_INS3_3AnyEEENS3_7OpIndexEPKNS9_9ArrayTypeEbEUlvE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation, ptr %i.el, align 8
  call void @_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE23ControlFlowHelper_WhileESt8functionIFNS2_1VINS2_12WordWithBitsILm32EEEEEvEE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1387") align 8 %18, ptr noundef nonnull align 1 dereferenceable(1) %i.ek, ptr noundef nonnull %19)
  %i.ep = load ptr, ptr %i.el, align 8            ; 2 uses
  %.not.i62 = icmp eq ptr %i.ep, null
  br i1 %.not.i62, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEECI2NS2_3VarIS5_SA_EEINS0_4wasm32TurboshaftGraphBuildingInterfaceEEEPT_NS2_8ConstOrVIS5_jEE.exit
  %i.eq = call noundef zeroext i1 %i.ep(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef 3) #22, !inline_history !27 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEECI2NS2_3VarIS5_SA_EEINS0_4wasm32TurboshaftGraphBuildingInterfaceEEEPT_NS2_8ConstOrVIS5_jEE.exit, %bb.t
  %i.er = getelementptr inbounds nuw i8, ptr %18, i64 264 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 2 uses
  %i.et = load i8, ptr %i.er, align 8, !range !975, !noundef !976
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ev = load ptr, ptr %i.b, align 8, !nonnull !976, !align !978 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 672
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i80, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8ArraySetENS2_1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENSF_INS2_12WordWithBitsILm32EEEEENSF_INS2_3AnyEEENS0_4wasm9ValueTypeESt8optionalINS0_17AtomicMemoryOrderEE.exit, !prof !974

._crit_edge:                                      ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEaSENS2_8ConstOrVIS5_jEE.exit, %_ZNSt14_Function_baseD2Ev.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %18, i64 184
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ez)
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 96
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 8
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.fc = load ptr, ptr %i.b, align 8, !nonnull !976, !align !978 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 672
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit67, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i63

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i63: ; preds = %._crit_edge
  store i8 1, ptr %i.ac, align 8
  %i.fg = load ptr, ptr %12, align 8              ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 52
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = icmp ne i32 %i.fi, -1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fl = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.fk, ptr noundef nonnull %i.fg, i1 noundef zeroext %i.fj), !inline_history !6 ; 0 uses
  %i.fm = load ptr, ptr %12, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 52
  %i.fo = load i32, ptr %i.fn, align 4
  %.not.i.i.i64 = icmp eq i32 %i.fo, -1
  br i1 %.not.i.i.i64, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i63
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.26) #21
  unreachable

bb.v:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4GotoEPNS2_5BlockE.exit.i.i63
  %i.fp = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.fq = load ptr, ptr %i.z, align 8
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %bb.w, label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE12RecordValuesEPNS2_5BlockERNS4_9BlockDataERKSt5tupleIJEE.exit.i.i65, !prof !974

bb.w:                                             ; preds = %bb.v
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %i.w)
  %.pre.i.i.i.i.i.i66 = load ptr, ptr %i.y, align 8
  br label %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE12RecordValuesEPNS2_5BlockERNS4_9BlockDataERKSt5tupleIJEE.exit.i.i65

_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE12RecordValuesEPNS2_5BlockERNS4_9BlockDataERKSt5tupleIJEE.exit.i.i65: ; preds = %bb.w, %bb.v
  %i.fs = phi ptr [ %.pre.i.i.i.i.i.i66, %bb.w ], [ %i.fp, %bb.v ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.ft, ptr %i.y, align 8
  store ptr %i.fe, ptr %i.fs, align 8
  %.pre130 = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit67

_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit67: ; preds = %._crit_edge, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE12RecordValuesEPNS2_5BlockERNS4_9BlockDataERKSt5tupleIJEE.exit.i.i65
  %i.fu = phi ptr [ %i.fc, %._crit_edge ], [ %.pre130, %_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE12RecordValuesEPNS2_5BlockERNS4_9BlockDataERKSt5tupleIJEE.exit.i.i65 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @_ZN2v88internal8compiler10turboshaft9LabelBaseILb0EJEE4BindINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEEESt5tupleIJbEERT_NS_14SourceLocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.600") align 1 %20, ptr noundef nonnull align 8 dereferenceable(81) %12, ptr noundef nonnull align 8 dereferenceable(696) %i.fu, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.fv = load ptr, ptr %i.ee, align 8, !nonnull !976, !align !978 ; 7 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %17, align 8 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 672
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit, label %bb.x, !prof !974

bb.x:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit67
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 16 ; 2 uses
  %.sroa.07.0.copyload.i.i = load i32, ptr %i.fz, align 4 ; 2 uses
  %.not.i.i68 = icmp eq i32 %.sroa.07.0.copyload.i.i, -1
  br i1 %.not.i.i68, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 248 ; 3 uses
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 256
  %i.gd = load ptr, ptr %i.gc, align 8            ; 2 uses
  %i.ge = icmp ult ptr %i.gb, %i.gd
  br i1 %i.ge, label %bb.aa, label %bb.z, !prof !973

bb.z:                                             ; preds = %bb.y
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fv, i64 232
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 240
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = ptrtoint ptr %i.gd to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 4
  %i.gm = add nsw i64 %i.gl, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.gf, i64 noundef %i.gm)
  %.pre.i.i.i.i.i = load ptr, ptr %i.ga, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gn = phi ptr [ %i.gb, %bb.y ], [ %.pre.i.i.i.i.i, %bb.z ] ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store ptr %i.go, ptr %i.ga, align 8
  store ptr %.sroa.01.0.copyload.i, ptr %i.gn, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i32 %.sroa.07.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  store i32 -1, ptr %i.fz, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !range !975, !noundef !976
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 8 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8            ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fv, i64 392 ; 4 uses
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -8
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i, i64 8
  store i64 %i.gt, ptr %i.gx, align 8
  %i.gy = load ptr, ptr %i.gu, align 8
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fv, i64 384
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gt
  %i.hd = load i64, ptr %i.gz, align 8
  store i64 %i.hd, ptr %i.hc, align 8
  store i64 -1, ptr %i.gs, align 8
  %i.he = load ptr, ptr %i.gu, align 8
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -8
  store ptr %i.hf, ptr %i.gu, align 8
  br label %_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit

_ZN2v88internal8compiler10turboshaft9ScopedVarINS2_12WordWithBitsILm32EEENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE22ControlFlowHelper_GotoINS2_5LabelIJEEEEEvRT_RKNSI_17const_or_values_tE.exit67, %bb.x, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm4ESaIS6_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  ret void

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8ArraySetENS2_1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENSF_INS2_12WordWithBitsILm32EEEEENSF_INS2_3AnyEEENS0_4wasm9ValueTypeESt8optionalINS0_17AtomicMemoryOrderEE.exit: ; preds = %.lr.ph.preheader
  %.sroa.0.0.copyload.i69 = load i32, ptr %i.a, align 4
  %.sroa.0.0.copyload.i.i = load ptr, ptr %17, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %.sroa.02.0.copyload.i.i.i = load i32, ptr %i.hg, align 4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.hi = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ArraySetOpEJNS2_14ShadowyOpIndexESG_SG_NS0_4wasm9ValueTypeESt8optionalINS0_17AtomicMemoryOrderEEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hh, i32 %1, i32 %.sroa.02.0.copyload.i.i.i, i32 %3, i32 %.sroa.0.0.copyload.i69, i16 0) ; 0 uses
  %.pre126 = load ptr, ptr %i.b, align 8          ; 4 uses
  %.phi.trans.insert127 = getelementptr inbounds nuw i8, ptr %.pre126, i64 672
  %.pre128.a = load ptr, ptr %.phi.trans.insert127, align 8
  %i.hj = icmp eq ptr %.pre128.a, null
  %.sroa.0.0.copyload.i.i70 = load ptr, ptr %17, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i70, i64 16
  %.sroa.02.0.copyload.i.i.i71 = load i32, ptr %i.hk, align 4
  br i1 %i.hj, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i80, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i76, !prof !981

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i76: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE8ArraySetENS2_1VINS0_5UnionIJNS0_9WasmArrayENS0_8WasmNullEEEEEENSF_INS2_12WordWithBitsILm32EEEEENSF_INS2_3AnyEEENS0_4wasm9ValueTypeESt8optionalINS0_17AtomicMemoryOrderEE.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %.pre126, i64 672
  %i.hm = getelementptr inbounds nuw i8, ptr %.pre126, i64 32
  %i.hn = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_10ConstantOpEJNSF_4KindEmEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hm, i8 noundef zeroext 0, i64 noundef 1)
  %.pre129 = load ptr, ptr %i.hl, align 8
  %i.ho = icmp eq ptr %.pre129, null
  br i1 %i.ho, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit.i.i80, label %bb.ac, !prof !981
end_hunk_0
