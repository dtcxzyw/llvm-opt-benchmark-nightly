begin_hunk_0
inline.NumInlined: 7185
inline.NumDeleted: 2643
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE4ToJSENS4_7OpIndexENS1_18CanonicalValueTypeENS4_1VINS0_7ContextEEE:bb.a

bb.y:                                             ; preds = %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268, %_ZNK2v88internal4wasm13ValueTypeBase4kindEv.exit.thread268
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !9, !align !10 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 4, ptr %4, align 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_1
begin_hunk_2_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE4ToJSENS4_7OpIndexENS1_18CanonicalValueTypeENS4_1VINS0_7ContextEEE:bb.a
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i

_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i: ; preds = %bb.ac, %bb.ab
  %i.dc = phi ptr [ %i.db, %bb.ac ], [ %i.ct, %bb.ab ] ; 7 uses
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.de = getelementptr inbounds nuw i8, ptr %i.ck, i64 672 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.aj, label %14, !prof !5

14:                                               ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i
  %15 = getelementptr inbounds i8, ptr %i.dc, i64 -16 ; 2 uses
  %.sroa.07.0.copyload.i = load i32, ptr %15, align 4 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.07.0.copyload.i, -1
  br i1 %.not.i, label %bb.aj, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds nuw i8, ptr %i.ck, i64 248 ; 3 uses
  %18 = load ptr, ptr %17, align 8                ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.ck, i64 256
  %20 = load ptr, ptr %19, align 8                ; 2 uses
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %31, label %22, !prof !11

22:                                               ; preds = %16
  %23 = getelementptr inbounds nuw i8, ptr %i.ck, i64 232
  %24 = getelementptr inbounds nuw i8, ptr %i.ck, i64 240
  %25 = load ptr, ptr %24, align 8
  %26 = ptrtoint ptr %20 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = ashr exact i64 %28, 4
  %30 = add nsw i64 %29, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %30)
  %.pre.i.i.i.i = load ptr, ptr %17, align 8
  br label %31

31:                                               ; preds = %22, %16
  %32 = phi ptr [ %18, %16 ], [ %.pre.i.i.i.i, %22 ] ; 4 uses
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr %33, ptr %17, align 8
  store ptr %i.dd, ptr %32, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 %.sroa.07.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %32, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  store i32 -1, ptr %15, align 8
  %34 = getelementptr inbounds i8, ptr %i.dc, i64 -31
  %35 = load i8, ptr %34, align 1, !range !31, !noundef !9
  %36 = trunc nuw i8 %35 to i1
  br i1 %36, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %31
  %37 = getelementptr inbounds i8, ptr %i.dc, i64 -24 ; 2 uses
  %38 = load i64, ptr %37, align 8                ; 2 uses
  %39 = getelementptr inbounds nuw i8, ptr %i.ck, i64 392 ; 4 uses
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds i8, ptr %40, i64 -8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %41, align 8
  %42 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  store i64 %38, ptr %42, align 8
  %43 = load ptr, ptr %39, align 8
  %44 = getelementptr inbounds i8, ptr %43, i64 -8
  %45 = getelementptr inbounds nuw i8, ptr %i.ck, i64 384
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds nuw [8 x i8], ptr %46, i64 %38
  %48 = load i64, ptr %44, align 8
  store i64 %48, ptr %47, align 8
  store i64 -1, ptr %37, align 8
  %49 = load ptr, ptr %39, align 8
  %i.dh = getelementptr inbounds i8, ptr %49, i64 -8
  store ptr %i.dh, ptr %39, align 8
  br label %bb.aj

bb.ae:                                            ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit160.2
end_hunk_2
begin_hunk_3_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE4ToJSENS4_7OpIndexENS1_18CanonicalValueTypeENS4_1VINS0_7ContextEEE:bb.a
  store ptr %i.en, ptr %i.ec, align 8
  br label %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE24BuildChangeInt32ToNumberENS4_1VINS4_12WordWithBitsILm32EEEEE.exit

bb.aj:                                            ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i, %14, %31, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17BuildReceiverNodeENS4_7OpIndexESB_NS4_1VINS0_9UndefinedEEE:bb.a

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE16Word32BitwiseAndENS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEESI_.exit: ; preds = %bb.a, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE22LoadSharedFunctionInfoENS4_1VINS0_6ObjectEEE.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i, %bb.b
  %.sroa.06.0.i.i = phi i64 [ %i.q, %bb.b ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE7resolveERKNS2_8ConstOrVINS2_12WordWithBitsILm32EEEjEE.exit9.i ], [ 4294967295, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE4LoadENS2_7OpIndexENS2_6LoadOp4KindENS2_20MemoryRepresentationEi.exit ], [ 4294967295, %_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE22LoadSharedFunctionInfoENS4_1VINS0_6ObjectEEE.exit ], [ 4294967295, %bb.a ]
  %i.r = load ptr, ptr %i.a, align 8, !nonnull !9, !align !10 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i64 4, ptr %4, align 8
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_4
begin_hunk_5_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17BuildReceiverNodeENS4_7OpIndexESB_NS4_1VINS0_9UndefinedEEE:bb.a
  br label %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i

_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i: ; preds = %bb.f, %bb.e
  %i.aj = phi ptr [ %i.ai, %bb.f ], [ %i.aa, %bb.e ] ; 7 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 672 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.l, label %6, !prof !5

6:                                                ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i
  %7 = getelementptr inbounds i8, ptr %i.aj, i64 -16 ; 2 uses
  %.sroa.07.0.copyload.i = load i32, ptr %7, align 4 ; 2 uses
  %.not.i32 = icmp eq i32 %.sroa.07.0.copyload.i, -1
  br i1 %.not.i32, label %bb.l, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %i.r, i64 248 ; 3 uses
  %10 = load ptr, ptr %9, align 8                 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %12 = load ptr, ptr %11, align 8                ; 2 uses
  %13 = icmp ult ptr %10, %12
  br i1 %13, label %23, label %14, !prof !11

14:                                               ; preds = %8
  %15 = getelementptr inbounds nuw i8, ptr %i.r, i64 232
  %16 = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  %17 = load ptr, ptr %16, align 8
  %18 = ptrtoint ptr %12 to i64
  %19 = ptrtoint ptr %17 to i64
  %20 = sub i64 %18, %19
  %21 = ashr exact i64 %20, 4
  %22 = add nsw i64 %21, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft13SnapshotTableINS3_7OpIndexENS3_12VariableDataEE8LogEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %22)
  %.pre.i.i.i.i = load ptr, ptr %9, align 8
  br label %23

23:                                               ; preds = %14, %8
  %24 = phi ptr [ %10, %8 ], [ %.pre.i.i.i.i, %14 ] ; 4 uses
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  store ptr %25, ptr %9, align 8
  store ptr %i.ak, ptr %24, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.sroa.07.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %24, i64 12
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  store i32 -1, ptr %7, align 8
  %26 = getelementptr inbounds i8, ptr %i.aj, i64 -31
  %27 = load i8, ptr %26, align 1, !range !31, !noundef !9
  %28 = trunc nuw i8 %27 to i1
  br i1 %28, label %bb.l, label %bb.g

bb.g:                                             ; preds = %23
  %29 = getelementptr inbounds i8, ptr %i.aj, i64 -24 ; 2 uses
  %30 = load i64, ptr %29, align 8                ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %i.r, i64 392 ; 4 uses
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %33, align 8
  %34 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  store i64 %30, ptr %34, align 8
  %35 = load ptr, ptr %31, align 8
  %36 = getelementptr inbounds i8, ptr %35, i64 -8
  %37 = getelementptr inbounds nuw i8, ptr %i.r, i64 384
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds nuw [8 x i8], ptr %38, i64 %30
  %40 = load i64, ptr %36, align 8
  store i64 %40, ptr %39, align 8
  store i64 -1, ptr %29, align 8
  %41 = load ptr, ptr %31, align 8
  %i.ao = getelementptr inbounds i8, ptr %41, i64 -8
  store ptr %i.ao, ptr %31, align 8
  br label %bb.l

bb.h:                                             ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit.2
end_hunk_5
begin_hunk_6_@_ZN2v88internal4wasm25WasmWrapperTSGraphBuilderINS0_8compiler10turboshaft11TSAssemblerIJNS4_21SelectLoweringReducerENS4_23DataViewLoweringReducerENS4_15VariableReducerEEEEE17BuildReceiverNodeENS4_7OpIndexESB_NS4_1VINS0_9UndefinedEEE:bb.a
_ZN2v88internal8compiler10turboshaft9ScopedVarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEED2Ev.exit: ; preds = %_ZN2v88internal8compiler10turboshaft27GenericAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE31ControlFlowHelper_FinishIfBlockEPNSE_25ControlFlowHelper_IfStateE.exit.2, %bb.j, %bb.k
  ret i32 %.sroa.02.0.copyload.i.i.i

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft3VarINS0_6ObjectENS2_11TSAssemblerIJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerEEEEEC2INS0_4wasm25WasmWrapperTSGraphBuilderIS9_EEEEPT_.exit.i.i, %6, %23, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
end_hunk_6
