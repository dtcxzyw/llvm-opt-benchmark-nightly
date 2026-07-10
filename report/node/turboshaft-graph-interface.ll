inline.NumInlined: 30203
inline.NumDeleted: 8013
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrTableEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEERKNS1_20BranchTableImmediateERKNS2_5ValueE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit
  %i.ed = load i64, ptr %i.l, align 8
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ef = load ptr, ptr %i.j, align 8
  call void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16clear_and_deleteEPSF_PSD_(ptr noundef %i.ef, ptr noundef nonnull %i.k)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEED2Ev.exit

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEED2Ev.exit: ; preds = %bb.x, %bb.y
  call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %i.m, label %bb.bb, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEED2Ev.exit._crit_edge

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEED2Ev.exit._crit_edge: ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEED2Ev.exit
  %.pre237 = load i32, ptr %2, align 8
  br label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEED2Ev.exit._crit_edge, %bb.a
  %i.eg = phi i32 [ %.pre237, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEED2Ev.exit._crit_edge ], [ %i.b, %bb.a ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !11, !align !19
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !11, !align !19
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.em = load ptr, ptr %i.el, align 8            ; 3 uses
  %i.en = zext i32 %i.eg to i64
  %i.eo = shl nuw nsw i64 %i.en, 4                ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 3 uses
  %i.es = load i64, ptr %i.er, align 8            ; 2 uses
  %i.et = sub i64 %i.eq, %i.es
  %i.eu = icmp ugt i64 %i.eo, %i.et
  br i1 %i.eu, label %bb.aa, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit, !prof !9

bb.aa:                                            ; preds = %bb.z
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.em, i64 noundef %i.eo) #22
  %.pre.i.i = load i64, ptr %i.er, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit: ; preds = %bb.z, %bb.aa
  %i.ev = phi i64 [ %.pre.i.i, %bb.aa ], [ %i.es, %bb.z ] ; 2 uses
  %i.ew = inttoptr i64 %i.ev to ptr               ; 4 uses
  %i.ex = add i64 %i.ev, %i.eo
  store i64 %i.ex, ptr %i.er, align 8
  %i.ey = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = load i32, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = ptrtoint ptr %i.fd to i64
  store i64 %i.fe, ptr %7, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.fg, ptr %i.ff, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.fg, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 160
  store ptr %i.fj, ptr %i.fi, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit, %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit
  %.066220 = phi ptr [ null, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit ], [ %.1, %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit ]
  %.sroa.9127.0219 = phi i32 [ 0, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit ], [ %i.gn, %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit ] ; 4 uses
  %.sroa.5126.0218 = phi ptr [ %i.fa, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler10turboshaft8SwitchOp4CaseEA_S6_EEPT_m.exit ], [ %i.gt, %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit ] ; 3 uses
  %i.fk = load ptr, ptr %i.eh, align 8, !nonnull !11, !align !19
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !nonnull !11, !align !19 ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 88 ; 3 uses
  %i.fo = load i64, ptr %i.fn, align 8            ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 80
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = icmp eq i64 %i.fo, %i.fq
  br i1 %i.fr, label %bb.ac, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit, !prof !9

bb.ac:                                            ; preds = %bb.ab
  call preserve_mostcc void @_ZN2v88internal8compiler10turboshaft5Graph17AllocateNewBlocksEv(ptr noundef nonnull align 8 dereferenceable(328) %i.fm)
  %.pre.i = load i64, ptr %i.fn, align 8
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit: ; preds = %bb.ab, %bb.ac
  %i.fs = phi i64 [ %i.fo, %bb.ab ], [ %.pre.i, %bb.ac ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 72
  %i.fu = add i64 %i.fs, 1
  store i64 %i.fu, ptr %i.fn, align 8
  %i.fv = load ptr, ptr %i.ft, align 8
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fs
  %i.fx = load ptr, ptr %i.fw, align 8            ; 10 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.fx, i8 0, i64 41, i1 false)
  store i32 -1, ptr %i.fy, align 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  store i32 -1, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 52
  store i32 -1, ptr %i.ga, align 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 56
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 88
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 96
  store i32 0, ptr %i.gd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gb, i8 0, i64 28, i1 false)
  store ptr null, ptr %i.gc, align 8
  %i.ge = load ptr, ptr %i.fh, align 8            ; 2 uses
  %i.gf = load ptr, ptr %i.fi, align 8
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %bb.ad, label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm16ENS2_13ZoneAllocatorIS6_EEE12emplace_backIJRS6_EEEvDpOT_.exit, !prof !9

bb.ad:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm16ENS2_13ZoneAllocatorIS6_EEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(160) %7)
  %.pre.i99 = load ptr, ptr %i.fh, align 8
  br label %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm16ENS2_13ZoneAllocatorIS6_EEE12emplace_backIJRS6_EEEvDpOT_.exit

_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm16ENS2_13ZoneAllocatorIS6_EEE12emplace_backIJRS6_EEEvDpOT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit, %bb.ad
  %i.gh = phi ptr [ %.pre.i99, %bb.ad ], [ %i.ge, %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE8NewBlockEv.exit ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store ptr %i.gi, ptr %i.fh, align 8
  store ptr %i.fx, ptr %i.gh, align 8
  %i.gj = load i32, ptr %2, align 8
  %i.gk = icmp eq i32 %.sroa.9127.0219, %i.gj
  br i1 %i.gk, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm16ENS2_13ZoneAllocatorIS6_EEE12emplace_backIJRS6_EEEvDpOT_.exit
  %i.gl = zext i32 %.sroa.9127.0219 to i64
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.gl ; 3 uses
  store i8 0, ptr %i.gm, align 8
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store i32 %.sroa.9127.0219, ptr %.sroa.4120.0..sroa_idx, align 4
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.fx, ptr %.sroa.5121.0..sroa_idx, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm16ENS2_13ZoneAllocatorIS6_EEE12emplace_backIJRS6_EEEvDpOT_.exit, %bb.ae
  %.1 = phi ptr [ %.066220, %bb.ae ], [ %i.fx, %_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm16ENS2_13ZoneAllocatorIS6_EEE12emplace_backIJRS6_EEEvDpOT_.exit ] ; 3 uses
  %i.gn = add i32 %.sroa.9127.0219, 1             ; 2 uses
  %i.go = load i8, ptr %.sroa.5126.0218, align 1
  %.not.i.i.i100 = icmp sgt i8 %i.go, -1
  br i1 %.not.i.i.i100, label %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit, label %bb.ag, !prof !8

bb.ag:                                            ; preds = %bb.af
  %i.gp = call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %i.ey, ptr noundef nonnull %.sroa.5126.0218) ; 3 uses
  %i.gq = icmp ult i64 %i.gp, 25769803776
  call void @llvm.assume(i1 %i.gq)
  %i.gr = icmp samesign ugt i64 %i.gp, 4294967295
  call void @llvm.assume(i1 %i.gr)
  %i.gs = lshr i64 %i.gp, 32
  br label %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit

_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit: ; preds = %bb.af, %bb.ag
  %.sroa.5.0.i.i = phi i64 [ %i.gs, %bb.ag ], [ 1, %bb.af ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.5126.0218, i64 %.sroa.5.0.i.i
  %.not204 = icmp ugt i32 %i.gn, %i.fb
  br i1 %.not204, label %bb.ah, label %bb.ab, !llvm.loop !496

bb.ah:                                            ; preds = %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit
  %i.gu = load ptr, ptr %i.eh, align 8, !nonnull !11, !align !19 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 672
  %i.gw = load ptr, ptr %i.gv, align 8            ; 3 uses
  %i.gx = icmp eq ptr %i.gw, null
  %.pre239 = load i32, ptr %2, align 8            ; 3 uses
  br i1 %i.gx, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6SwitchENS2_1VINS2_12WordWithBitsILm32EEEEENS5_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintE.exit, label %bb.ai, !prof !9

bb.ai:                                            ; preds = %bb.ah
  %i.gy = zext i32 %.pre239 to i64                ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.03.0.copyload = load i32, ptr %i.gz, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.hb = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_8SwitchOpEJNS2_14ShadowyOpIndexENS5_6VectorINSF_4CaseEEEPNS2_5BlockENS0_10BranchHintEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ha, i32 %.sroa.03.0.copyload, ptr %i.ew, i64 %i.gy, ptr noundef %.1, i8 noundef zeroext 0) ; 0 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.gy, 4
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx.i.i.i.i.i
  %.not18.i.i.i.i.i = icmp eq i32 %.pre239, 0
  br i1 %.not18.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE12ReduceSwitchIJNS2_1VINS2_12WordWithBitsILm32EEEEENS8_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintEEEEDaDpT_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ai, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi ptr [ %i.hd, %.lr.ph.i.i.i.i.i ], [ %i.ew, %bb.ai ] ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 8
  %.sroa.3.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8
  call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESE_b(ptr noundef nonnull align 8 dereferenceable(696) %i.gu, ptr noundef nonnull %i.gw, ptr noundef %.sroa.3.0.copyload.i.i.i.i.i, i1 noundef zeroext true)
  %i.hd = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hd, %i.hc
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE12ReduceSwitchIJNS2_1VINS2_12WordWithBitsILm32EEEEENS8_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintEEEEDaDpT_.exit.i, label %.lr.ph.i.i.i.i.i

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE12ReduceSwitchIJNS2_1VINS2_12WordWithBitsILm32EEEEENS8_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintEEEEDaDpT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.ai
  call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE14AddPredecessorEPNS2_5BlockESE_b(ptr noundef nonnull align 8 dereferenceable(696) %i.gu, ptr noundef nonnull %i.gw, ptr noundef %.1, i1 noundef zeroext true)
  %.pre238 = load i32, ptr %2, align 8
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6SwitchENS2_1VINS2_12WordWithBitsILm32EEEEENS5_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6SwitchENS2_1VINS2_12WordWithBitsILm32EEEEENS5_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintE.exit: ; preds = %bb.ah, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE12ReduceSwitchIJNS2_1VINS2_12WordWithBitsILm32EEEEENS8_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintEEEEDaDpT_.exit.i
  %i.he = phi i32 [ %.pre239, %bb.ah ], [ %.pre238, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES6_EEEEEEEEEE12ReduceSwitchIJNS2_1VINS2_12WordWithBitsILm32EEEEENS8_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintEEEEDaDpT_.exit.i ]
  %i.hf = load ptr, ptr %i.a, align 8
  %i.hg = load ptr, ptr %i.ez, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6SwitchENS2_1VINS2_12WordWithBitsILm32EEEEENS5_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintE.exit, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit115
  %.067223 = phi i32 [ 0, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6SwitchENS2_1VINS2_12WordWithBitsILm32EEEEENS5_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintE.exit ], [ %9, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit115 ] ; 3 uses
  %.sroa.5.0222 = phi ptr [ %i.hg, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEEEE6SwitchENS2_1VINS2_12WordWithBitsILm32EEEEENS5_6VectorINS2_8SwitchOp4CaseEEEPNS2_5BlockENS0_10BranchHintE.exit ], [ %i.lo, %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit115 ] ; 3 uses
  %8 = zext nneg i32 %.067223 to i64
  %i.hh = load ptr, ptr %i.ff, align 8
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %8
  %i.hj = load ptr, ptr %i.hi, align 8            ; 19 uses
  %9 = add nuw i32 %.067223, 1
  %i.hk = load ptr, ptr %i.eh, align 8, !nonnull !11, !align !19 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hm = load i8, ptr %i.hl, align 8
  %i.hn = icmp eq i8 %i.hm, 1
  br i1 %i.hn, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 72
  %i.hp = load ptr, ptr %i.ho, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.hp, null
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE13BindReachableEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(696) %i.hk, ptr noundef nonnull %i.hp)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hr = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerES3_EEEEEE4EmitINS2_6GotoOpEJPNS2_5BlockEbEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.hq, ptr noundef nonnull %i.hj, i1 noundef zeroext false) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !nonnull !11, !align !19 ; 7 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 56 ; 5 uses
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ht, i64 48 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = icmp eq ptr %i.hw, %i.hy
  br i1 %i.hz, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.ib = load ptr, ptr %i.ia, align 8
  %.not206 = icmp eq ptr %i.ib, null
  br i1 %.not206, label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.id = load ptr, ptr %i.ic, align 8
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = ptrtoint ptr %i.ig to i64
  %i.ii = sub i64 %i.ie, %i.ih
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hj, i64 44
  store i32 %i.ij, ptr %i.ik, align 4
  %i.il = load ptr, ptr %i.hv, align 8
  %i.im = load ptr, ptr %i.hx, align 8
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = lshr exact i64 %i.ip, 3
  %i.ir = trunc i64 %i.iq to i32
  %i.is = getelementptr inbounds nuw i8, ptr %i.hj, i64 52
  store i32 %i.ir, ptr %i.is, align 4
  %i.it = load ptr, ptr %i.hv, align 8            ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ht, i64 64
  %i.iv = load ptr, ptr %i.iu, align 8            ; 2 uses
  %i.iw = icmp ult ptr %i.it, %i.iv
  br i1 %i.iw, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit, label %bb.ap, !prof !8

bb.ap:                                            ; preds = %bb.ao
  %i.ix = load ptr, ptr %i.hx, align 8
  %i.iy = ptrtoint ptr %i.iv to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 3
  %i.jc = add nsw i64 %i.jb, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.hu, i64 noundef %i.jc)
  %.pre.i102 = load ptr, ptr %i.hv, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit: ; preds = %bb.ao, %bb.ap
  %i.jd = phi ptr [ %i.it, %bb.ao ], [ %.pre.i102, %bb.ap ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store ptr %i.je, ptr %i.hv, align 8
  store ptr %i.hj, ptr %i.jd, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hj, i64 56
  %i.jg = load ptr, ptr %i.jf, align 8            ; 4 uses
  %i.jh = icmp eq ptr %i.jg, null
  br i1 %i.jh, label %bb.aq, label %.preheader.i, !prof !9

.preheader.i:                                     ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %.0.in8.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 64
  %.09.i = load ptr, ptr %.0.in8.i, align 8       ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

bb.aq:                                            ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler10turboshaft5BlockEE9push_backERKS5_.exit
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %i.hj, ptr %i.ji, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i8 0, i64 16, i1 false)
  br label %bb.au

._crit_edge.i:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, %.preheader.i
  %.07.lcssa.i = phi ptr [ %i.jg, %.preheader.i ], [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ] ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8            ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 20 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 20
  %i.jp = load i32, ptr %i.jo, align 4            ; 2 uses
  %i.jq = sub nsw i32 %i.jn, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.js = load i32, ptr %i.jr, align 8
  %i.jt = sub nsw i32 %i.jp, %i.js
  %i.ju = icmp eq i32 %i.jq, %i.jt
  br i1 %i.ju, label %bb.ar, label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

bb.ar:                                            ; preds = %._crit_edge.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8
  br label %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i

_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i: ; preds = %bb.ar, %._crit_edge.i
  %.0.i.i107 = phi ptr [ %i.jw, %bb.ar ], [ %.07.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  store ptr %.07.lcssa.i, ptr %i.jx, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  store ptr %.0.i.i107, ptr %i.jy, align 8
  %i.jz = load i32, ptr %i.jm, align 4
  %i.ka = add nsw i32 %i.jz, 1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hj, i64 20 ; 2 uses
  store i32 %i.ka, ptr %i.kb, align 4
  %i.kc = getelementptr inbounds nuw i8, ptr %.0.i.i107, i64 20
  %i.kd = load i32, ptr %i.kc, align 4
  %i.ke = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  store i32 %i.kd, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %.07.lcssa.i, i64 8 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8
  store ptr %i.kg, ptr %i.hj, align 8
  store ptr %i.hj, ptr %i.kf, align 8
  %.pre.i108 = load i32, ptr %i.kb, align 4
  br label %bb.au

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i
  %.012.i = phi ptr [ %.0.i105, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %.09.i, %.preheader.i ] ; 4 uses
  %.0711.i = phi ptr [ %.2.lcssa.i.i, %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i ], [ %i.jg, %.preheader.i ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.012.i, i64 20
  %i.ki = load i32, ptr %i.kh, align 4
  %i.kj = getelementptr inbounds nuw i8, ptr %.0711.i, i64 20
  %i.kk = load i32, ptr %i.kj, align 4
  %i.kl = icmp sgt i32 %i.ki, %i.kk               ; 2 uses
  %spec.select.i.i = select i1 %i.kl, ptr %.012.i, ptr %.0711.i ; 3 uses
  %spec.select17.i.i = select i1 %i.kl, ptr %.0711.i, ptr %.012.i ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %spec.select17.i.i, i64 20
  %i.kn = load i32, ptr %i.km, align 4            ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 20
  %i.kp = load i32, ptr %i.ko, align 4
  %.not18.i.i = icmp eq i32 %i.kp, %i.kn
  br i1 %.not18.i.i, label %.preheader.i.i104, label %.lr.ph.i.i

.preheader.i.i104:                                ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.116.lcssa.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i ], [ %storemerge7.i.i, %.lr.ph.i.i ] ; 3 uses
  %.not520.i.i = icmp eq ptr %.116.lcssa.i.i, %spec.select17.i.i
  br i1 %.not520.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.11619.i.i = phi ptr [ %storemerge7.i.i, %.lr.ph.i.i ], [ %spec.select.i.i, %.lr.ph.i ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 16
  %i.kr = load i32, ptr %i.kq, align 8
  %.not6.i.i = icmp slt i32 %i.kr, %i.kn
  %storemerge7.in.v.i.i = select i1 %.not6.i.i, i64 24, i64 32
  %storemerge7.in.i.i = getelementptr inbounds nuw i8, ptr %.11619.i.i, i64 %storemerge7.in.v.i.i
  %storemerge7.i.i = load ptr, ptr %storemerge7.in.i.i, align 8 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %storemerge7.i.i, i64 20
  %i.kt = load i32, ptr %i.ks, align 4
  %.not.i.i103 = icmp eq i32 %i.kt, %i.kn
  br i1 %.not.i.i103, label %.preheader.i.i104, label %.lr.ph.i.i, !llvm.loop !37

.lr.ph23.i.i:                                     ; preds = %.preheader.i.i104, %bb.at
  %.122.i.i = phi ptr [ %storemerge.i.i, %bb.at ], [ %spec.select17.i.i, %.preheader.i.i104 ] ; 2 uses
  %.221.i.i = phi ptr [ %.3.i.i, %bb.at ], [ %.116.lcssa.i.i, %.preheader.i.i104 ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8            ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 32
  %i.kx = load ptr, ptr %i.kw, align 8            ; 2 uses
  %i.ky = icmp eq ptr %i.kv, %i.kx
  br i1 %i.ky, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph23.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %.221.i.i, i64 24
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %.122.i.i, i64 24
  %storemerge.pre.i.i = load ptr, ptr %i.lb, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph23.i.i
  %storemerge.i.i = phi ptr [ %storemerge.pre.i.i, %bb.as ], [ %i.kx, %.lr.ph23.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %i.la, %bb.as ], [ %i.kv, %.lr.ph23.i.i ] ; 3 uses
  %.not5.i.i = icmp eq ptr %.3.i.i, %storemerge.i.i
  br i1 %.not5.i.i, label %_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i, label %.lr.ph23.i.i, !llvm.loop !38

_ZNK2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE18GetCommonDominatorEPS5_.exit.i: ; preds = %bb.at, %.preheader.i.i104
  %.2.lcssa.i.i = phi ptr [ %.116.lcssa.i.i, %.preheader.i.i104 ], [ %.3.i.i, %bb.at ] ; 2 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 64
  %.0.i105 = load ptr, ptr %.0.in.i, align 8      ; 2 uses
  %.not.i106 = icmp eq ptr %.0.i105, null
  br i1 %.not.i106, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !39

bb.au:                                            ; preds = %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i, %bb.aq
  %i.lc = phi i32 [ %.pre.i108, %_ZN2v88internal8compiler10turboshaft30RandomAccessStackDominatorNodeINS2_5BlockEE12SetDominatorEPS4_.exit.i ], [ 0, %bb.aq ]
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ht, i64 232 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 8
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.le, i32 %i.lc)
  store i32 %.sroa.speculated, ptr %i.ld, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.hk, i64 672
  store ptr %i.hj, ptr %i.lf, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  call void @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE4BindEPNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(504) %i.lg, ptr noundef nonnull %i.hj)
  br label %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit

_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit: ; preds = %bb.an, %bb.au
  %i.lh = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.li = load i8, ptr %.sroa.5.0222, align 1     ; 2 uses
  %.not.i.i.i109 = icmp sgt i8 %i.li, -1
  br i1 %.not.i.i.i109, label %bb.av, label %bb.aw, !prof !8

bb.av:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit
  %i.lj = zext nneg i8 %i.li to i64
  br label %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit114

bb.aw:                                            ; preds = %_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerENS2_15VariableReducerENS2_13TSReducerBaseEEEEE4BindEPNS2_5BlockENS_14SourceLocationE.exit
  %i.lk = call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %i.hf, ptr noundef nonnull %.sroa.5.0222) ; 4 uses
  %i.ll = icmp ult i64 %i.lk, 25769803776
  call void @llvm.assume(i1 %i.ll)
  %i.lm = icmp samesign ugt i64 %i.lk, 4294967295
  call void @llvm.assume(i1 %i.lm)
  %i.ln = lshr i64 %i.lk, 32
  br label %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit114

_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit114: ; preds = %bb.av, %bb.aw
  %.sroa.04.0.i.i111 = phi i64 [ %i.lj, %bb.av ], [ %i.lk, %bb.aw ] ; 2 uses
  %.sroa.5.0.i.i112 = phi i64 [ 1, %bb.av ], [ %i.ln, %bb.aw ]
  %.sroa.0.0.extract.trunc.i113 = trunc i64 %.sroa.04.0.i.i111 to i32
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.5.0222, i64 %.sroa.5.0.i.i112
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lh, i64 504
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 512
  %i.lr = load ptr, ptr %i.lq, align 8            ; 2 uses
  %i.ls = load ptr, ptr %i.lp, align 8
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = lshr exact i64 %i.lv, 7
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = add i32 %i.lx, -1
  %i.lz = icmp eq i32 %i.ly, %.sroa.0.0.extract.trunc.i113
  br i1 %i.lz, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit114
  call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface8DoReturnEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEj(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %i.lh, i32 noundef 0)
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit115

bb.ay:                                            ; preds = %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit114
  %i.ma = and i64 %.sroa.04.0.i.i111, 4294967295
  %i.mb = sub nsw i64 0, %i.ma
  %i.mc = getelementptr [128 x i8], ptr %i.lr, i64 %i.mb
  %i.md = getelementptr i8, ptr %i.mc, i64 -32    ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8
  call void @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface20SetupControlFlowEdgeEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEPNS0_8compiler10turboshaft5BlockEjNSA_1VINS0_6ObjectEEEPNS1_5MergeINS2_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull %i.lh, ptr noundef %i.me, i32 noundef 0, i32 -1, ptr noundef null)
  %i.mf = load ptr, ptr %i.eh, align 8, !nonnull !11, !align !19 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 672
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit115, label %bb.az, !prof !9

bb.az:                                            ; preds = %bb.ay
  %i.mj = load ptr, ptr %i.md, align 8            ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 52
  %i.ml = load i32, ptr %i.mk, align 4
  %i.mm = icmp ne i32 %i.ml, -1
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  %i.mo = call i32 @_ZN2v88internal8compiler10turboshaft15VariableReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_21SelectLoweringReducerENS2_23DataViewLoweringReducerES3_S6_EEEEEEEEEEEE10ReduceGotoEPNS2_5BlockEb(ptr noundef nonnull align 8 dereferenceable(504) %i.mn, ptr noundef nonnull %i.mj, i1 noundef zeroext %i.mm), !inline_history !61 ; 0 uses
  br label %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit115

_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit115: ; preds = %bb.ax, %bb.ay, %bb.az
  %.not205.not = icmp ult i32 %.067223, %i.he
  br i1 %.not205.not, label %bb.aj, label %bb.ba, !llvm.loop !497

bb.ba:                                            ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface7BrOrRetEPNS1_15WasmFullDecoderINS1_7Decoder15NoValidationTagES2_LNS1_12DecodingModeE0EEEjj.exit115
  call preserve_mostcc void @_ZN2v84base11SmallVectorIPNS_8internal8compiler10turboshaft5BlockELm16ENS2_13ZoneAllocatorIS6_EEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(160) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEED2Ev.exit, %bb.ba
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = shl i64 %i.i, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.k = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.l = sub nuw nsw i64 64, %i.k
  %i.m = shl nuw i64 1, %i.l                      ; 2 uses
  %i.n = load ptr, ptr %0, align 8                ; 3 uses
  %i.o = add nuw i64 %i.m, 7
  %i.p = and i64 %i.o, -8                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.b, label %_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE22AllocateDynamicStorageEm.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 noundef %i.p) #22
  %.pre.i.i.i.i = load i64, ptr %i.s, align 8
  br label %_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE22AllocateDynamicStorageEm.exit

_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE22AllocateDynamicStorageEm.exit: ; preds = %bb.a, %bb.b
  %i.w = phi i64 [ %.pre.i.i.i.i, %bb.b ], [ %i.t, %bb.a ] ; 3 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 5 uses
  %i.y = add i64 %i.w, %i.p
  store i64 %i.y, ptr %i.s, align 8
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE22AllocateDynamicStorageEm.exit
  tail call void @_ZN2v84base8FatalOOMENS0_7OOMTypeEPKc(i32 noundef 1, ptr noundef nonnull @.str.31) #21
  unreachable

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE22AllocateDynamicStorageEm.exit
  %i.aa = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  br label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %bb.g, label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.aa, align 1, !range !10, !noundef !11
  store i8 %i.ah, ptr %i.x, align 1
  br label %_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_moveIPbS0_ET0_T_S2_S1_.exit:  ; preds = %bb.e, %bb.f, %bb.g
  %i.ai = ptrtoint ptr %i.b to i64
  %i.aj = sub i64 %i.ai, %i.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  store ptr %i.x, ptr %i.c, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aj
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.m
  store ptr %i.al, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIbLm32ENS_8internal13ZoneAllocatorIbEEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEE15LowerToBranchesEPS4_RKNS1_20BranchTableImmediateE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.752", align 8    ; 7 uses
  %4 = alloca %"struct.std::pair.758", align 8    ; 6 uses
  %5 = alloca %"struct.std::pair.752", align 8    ; 7 uses
  %6 = alloca %"struct.std::pair.754", align 8    ; 3 uses
  %7 = alloca %"class.std::tuple.747", align 8    ; 4 uses
  %8 = alloca %"class.std::tuple.397", align 1    ; 3 uses
  %9 = alloca %"struct.std::pair.716", align 8    ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load i32, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.critedge16
  %.sroa.9.025 = phi i32 [ 0, %bb.a ], [ %i.i, %.critedge16 ] ; 3 uses
  %.sroa.5.024 = phi ptr [ %i.e, %bb.a ], [ %i.p, %.critedge16 ] ; 3 uses
  %i.i = add i32 %.sroa.9.025, 1                  ; 2 uses
  %i.j = load i8, ptr %.sroa.5.024, align 1       ; 2 uses
  %.not.i.i.i = icmp sgt i8 %i.j, -1
  br i1 %.not.i.i.i, label %bb.c, label %bb.d, !prof !8

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i8 %i.j to i64
  br label %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call preserve_mostcc i64 @_ZN2v88internal4wasm7Decoder17read_leb_slowpathIjNS2_15NoValidationTagELNS2_9TraceFlagE0ELm32EEESt4pairIT_jEPKhNSt11conditionalIXsrT0_8validateEPKcNS2_6NoNameEE4typeE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %.sroa.5.024) ; 4 uses
  %i.m = icmp ult i64 %i.l, 25769803776
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp samesign ugt i64 %i.l, 4294967295
  tail call void @llvm.assume(i1 %i.n)
  %i.o = lshr i64 %i.l, 32
  br label %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit

_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit: ; preds = %bb.c, %bb.d
  %.sroa.04.0.i.i = phi i64 [ %i.k, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %.sroa.5.0.i.i = phi i64 [ 1, %bb.c ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.5.024, i64 %.sroa.5.0.i.i
  %i.q = load i32, ptr %2, align 8
  %i.r = icmp eq i32 %.sroa.9.025, %i.q
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit
  %.sroa.01.0.insert.ext.i = and i64 %.sroa.04.0.i.i, 4294967295
  %.sroa.01.0.insert.insert.i = or disjoint i64 %.sroa.01.0.insert.ext.i, 4294967296 ; 2 uses
  store i64 %.sroa.01.0.insert.insert.i, ptr %0, align 8
  %i.s = load i8, ptr %i.g, align 4, !range !10, !noundef !11
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.critedge16, label %_ZNK2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEE14default_targetEv.exit.i

_ZNK2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEE14default_targetEv.exit.i: ; preds = %bb.e
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.h, align 8
  br label %.critedge16

bb.f:                                             ; preds = %_ZN2v88internal4wasm19BranchTableIteratorINS1_7Decoder15NoValidationTagEE4nextEv.exit
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.04.0.i.i to i32
  %i.u = tail call noundef zeroext i1 @_ZN2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEE12TryAddTargetEjj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %.sroa.0.0.extract.trunc.i, i32 noundef %.sroa.9.025)
  br i1 %i.u, label %.critedge16, label %.loopexit, !llvm.loop !498

.critedge16:                                      ; preds = %_ZNK2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEE14default_targetEv.exit.i, %bb.e, %bb.f
  %.not23 = icmp ugt i32 %i.i, %i.f
  br i1 %.not23, label %bb.g, label %bb.b

bb.g:                                             ; preds = %.critedge16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.w = load i8, ptr %i.g, align 4, !range !10, !noundef !11
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZNK2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEE14primary_targetEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt27__throw_bad_optional_accessv() #25
  unreachable

_ZNK2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEE14primary_targetEv.exit: ; preds = %bb.g
  %i.y = load i32, ptr %i.h, align 8
  store i32 %i.y, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !499
  store ptr %i.a, ptr %7, align 8, !alias.scope !504, !noalias !499
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !499
  call void @_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE13insert_uniqueIjJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEESA_INS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EEbERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.716") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !499
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !499
  %i.z = load ptr, ptr %9, align 8                ; 4 uses
  %.not.i.i.i17 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i17, label %bb.i, label %bb.j, !prof !9

bb.i:                                             ; preds = %_ZNK2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEE14primary_targetEv.exit
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %_ZNK2v88internal4wasm32TurboshaftGraphBuildingInterface15BrTableAnalysisINS1_7Decoder15NoValidationTagEE14primary_targetEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ab = load i32, ptr %i.aa, align 8            ; 4 uses
  %.not1.i.i.i = icmp slt i32 %i.ab, 0
  br i1 %.not1.i.i.i, label %bb.k, label %bb.l, !prof !9
end_hunk_0
