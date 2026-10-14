Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMFrameLowering?download=true
inline.NumInlined: 3663
inline.NumDeleted: 1322
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZNK4llvm16ARMFrameLowering12emitPrologueERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
  %i.fg = icmp sgt i32 %.0377.lcssa, 0
  br i1 %i.fg, label %bb.z, label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit478

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.copyload.i463 = load ptr, ptr %23, align 8 ; 9 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i464 = load i64, ptr %.sroa.0.0.copyload.i463, align 8
  %i.fh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i464, 4
  %.not.i.i.i.i465 = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i.i.i465, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i467, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit472

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i467: ; preds = %bb.z
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i463, i64 44
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !254
  %i.fk = and i32 %i.fj, 8
  %.not34.i.i.i.i468 = icmp eq i32 %i.fk, 0
  br i1 %.not34.i.i.i.i468, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit472, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i469

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i469: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i467, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i469
  %.sroa.0.05.i.i.i.i470 = phi ptr [ %i.fm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i469 ], [ %.sroa.0.0.copyload.i463, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i467 ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i470, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !183 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 44
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !254
  %i.fp = and i32 %i.fo, 8
  %.not3.i.i.i.i471 = icmp eq i32 %i.fp, 0
  br i1 %.not3.i.i.i.i471, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit472, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i469, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit472: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i469, %bb.z, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i467
  %.sroa.0.1.i.i.i.i466 = phi ptr [ %.sroa.0.0.copyload.i463, %bb.z ], [ %.sroa.0.0.copyload.i463, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i467 ], [ %i.fm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i469 ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i466, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !183
  store ptr %i.fr, ptr %23, align 8
  %.sroa.4.8.insert.ext.i473 = zext nneg i32 %.0377.lcssa to i64
  %.sroa.4.12.insert.insert.i474 = or disjoint i64 %.sroa.4.8.insert.ext.i473, 4294967296 ; 2 uses
  %i.fs = load i32, ptr %i.bj, align 8, !tbaa !230 ; 2 uses
  %i.ft = load i32, ptr %i.bk, align 4, !tbaa !231
  %.not.i.i475 = icmp ult i32 %i.fs, %i.ft
  br i1 %.not.i.i475, label %bb.ab, label %bb.aa, !prof !256

bb.aa:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit472
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119StackAdjustingInsts8InstInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr nonnull %.sroa.0.0.copyload.i463, i64 range(i64 0, 8589934592) %.sroa.4.12.insert.insert.i474)
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit478

bb.ab:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit472
  %i.fu = zext i32 %i.fs to i64
  %.val.i.i476 = load ptr, ptr %25, align 8, !tbaa !33
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i476, i64 %i.fu ; 2 uses
  store ptr %.sroa.0.0.copyload.i463, ptr %i.fv, align 1
  %.sroa.3.0..sroa_idx.i.i477 = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store i64 %.sroa.4.12.insert.insert.i474, ptr %.sroa.3.0..sroa_idx.i.i477, align 1
  %i.fw = load i32, ptr %i.bj, align 8, !tbaa !230
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr %i.bj, align 8, !tbaa !230
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit478

_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit478: ; preds = %bb.ab, %bb.aa, %bb.y
  %.sroa.0986.1 = phi ptr [ %.sroa.0986.0, %bb.y ], [ %.sroa.0.0.copyload.i463, %bb.aa ], [ %.sroa.0.0.copyload.i463, %bb.ab ]
  %.not406 = icmp eq i32 %i.ae, 0
  br i1 %.not406, label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit502, label %bb.ac

bb.ac:                                            ; preds = %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit478
  %i.fy = sub i32 0, %i.ae                        ; 2 uses
  br i1 %i.v, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4llvm23emitARMRegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iNS_5ARMCC9CondCodesES9_RKNS_16ARMBaseInstrInfoEj(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %24, i32 17, i32 17, i32 noundef %i.fy, i32 noundef 14, i32 0, ptr noundef nonnull align 8 dereferenceable(272) %i.s, i32 noundef range(i32 0, 3) 1) #22
  br label %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit479

bb.ae:                                            ; preds = %bb.ac
  call void @_ZN4llvm22emitT2RegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iNS_5ARMCC9CondCodesES9_RKNS_16ARMBaseInstrInfoEj(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %24, i32 17, i32 17, i32 noundef %i.fy, i32 noundef 14, i32 0, ptr noundef nonnull align 8 dereferenceable(272) %i.s, i32 noundef range(i32 0, 3) 1) #22
  br label %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit479

_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit479: ; preds = %bb.ad, %bb.ae
  %.sroa.0116.0.copyload = load ptr, ptr %23, align 8
  %.0.copyload.i.i.i.i.i.i.i.i.i8.i484 = load i64, ptr %.sroa.0116.0.copyload, align 8
  %i.fz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i8.i484, -8
  %i.ga = inttoptr i64 %i.fz to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ga) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i485 = load i64, ptr %i.ga, align 8
  %i.gb = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i485, 4
  %.not.i5.i.i.i486 = icmp eq i64 %i.gb, 0
  br i1 %.not.i5.i.i.i486, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i490, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i487

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i490: ; preds = %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit479
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 44
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !254
  %i.ge = and i32 %i.gd, 4
  %.not45.i.i.i.i491 = icmp eq i32 %i.ge, 0
  br i1 %.not45.i.i.i.i491, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i487, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i492

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i492: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i490, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i492
  %.sroa.0.06.i.i.i.i493 = phi ptr [ %i.gg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i492 ], [ %i.ga, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i490 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i494 = load i64, ptr %.sroa.0.06.i.i.i.i493, align 8
  %i.gf = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i494, -8
  %i.gg = inttoptr i64 %i.gf to ptr               ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 44
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !254
  %i.gj = and i32 %i.gi, 4
  %.not4.i.i.i.i495 = icmp eq i32 %i.gj, 0
  br i1 %.not4.i.i.i.i495, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i487, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i492, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i487: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i492, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i490, %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit479
  %.sroa.0.1.i.i.i9.i488 = phi ptr [ %i.ga, %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit479 ], [ %i.ga, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i490 ], [ %i.gg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i492 ] ; 4 uses
  %.sroa.4.8.insert.ext.i497 = zext i32 %i.ae to i64
  %.sroa.4.12.insert.insert.i498 = or disjoint i64 %.sroa.4.8.insert.ext.i497, 4294967296 ; 2 uses
  %i.gk = load i32, ptr %i.bj, align 8, !tbaa !230 ; 2 uses
  %i.gl = load i32, ptr %i.bk, align 4, !tbaa !231
  %.not.i.i499 = icmp ult i32 %i.gk, %i.gl
  br i1 %.not.i.i499, label %bb.ag, label %bb.af, !prof !256

bb.af:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i487
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119StackAdjustingInsts8InstInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr nonnull %.sroa.0.1.i.i.i9.i488, i64 range(i64 0, 8589934592) %.sroa.4.12.insert.insert.i498)
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit502

bb.ag:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i487
  %i.gm = zext i32 %i.gk to i64
  %.val.i.i500 = load ptr, ptr %25, align 8, !tbaa !33
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i500, i64 %i.gm ; 2 uses
  store ptr %.sroa.0.1.i.i.i9.i488, ptr %i.gn, align 1
  %.sroa.3.0..sroa_idx.i.i501 = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i64 %.sroa.4.12.insert.insert.i498, ptr %.sroa.3.0..sroa_idx.i.i501, align 1
  %i.go = load i32, ptr %i.bj, align 8, !tbaa !230
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.bj, align 8, !tbaa !230
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit502

_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit502: ; preds = %bb.ag, %bb.af, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit478
  %.sroa.0986.2 = phi ptr [ %.sroa.0986.1, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit478 ], [ %.sroa.0.1.i.i.i9.i488, %bb.af ], [ %.sroa.0.1.i.i.i9.i488, %bb.ag ]
  %.not407 = icmp eq i32 %.0379.lcssa, 0
  br i1 %.not407, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit502
  %.sroa.0.0.copyload.i503 = load ptr, ptr %23, align 8 ; 9 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i504 = load i64, ptr %.sroa.0.0.copyload.i503, align 8
  %i.gq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i504, 4
  %.not.i.i.i.i505 = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i.i.i505, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i507, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit512

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i507: ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i503, i64 44
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !254
  %i.gt = and i32 %i.gs, 8
  %.not34.i.i.i.i508 = icmp eq i32 %i.gt, 0
  br i1 %.not34.i.i.i.i508, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit512, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i509

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i509: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i507, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i509
  %.sroa.0.05.i.i.i.i510 = phi ptr [ %i.gv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i509 ], [ %.sroa.0.0.copyload.i503, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i507 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i510, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !183 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 44
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !254
  %i.gy = and i32 %i.gx, 8
  %.not3.i.i.i.i511 = icmp eq i32 %i.gy, 0
  br i1 %.not3.i.i.i.i511, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit512, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i509, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit512: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i509, %bb.ah, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i507
  %.sroa.0.1.i.i.i.i506 = phi ptr [ %.sroa.0.0.copyload.i503, %bb.ah ], [ %.sroa.0.0.copyload.i503, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i507 ], [ %i.gv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i509 ]
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i506, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !183
  store ptr %i.ha, ptr %23, align 8
  %.sroa.4.8.insert.ext.i513 = zext i32 %.0379.lcssa to i64
  %.sroa.4.12.insert.insert.i514 = or disjoint i64 %.sroa.4.8.insert.ext.i513, 4294967296 ; 2 uses
  %i.hb = load i32, ptr %i.bj, align 8, !tbaa !230 ; 2 uses
  %i.hc = load i32, ptr %i.bk, align 4, !tbaa !231
  %.not.i.i515 = icmp ult i32 %i.hb, %i.hc
  br i1 %.not.i.i515, label %bb.aj, label %bb.ai, !prof !256

bb.ai:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit512
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119StackAdjustingInsts8InstInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr nonnull %.sroa.0.0.copyload.i503, i64 range(i64 0, 8589934592) %.sroa.4.12.insert.insert.i514)
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit518

bb.aj:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit512
  %i.hd = zext i32 %i.hb to i64
  %.val.i.i516 = load ptr, ptr %25, align 8, !tbaa !33
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i516, i64 %i.hd ; 2 uses
  store ptr %.sroa.0.0.copyload.i503, ptr %i.he, align 1
  %.sroa.3.0..sroa_idx.i.i517 = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store i64 %.sroa.4.12.insert.insert.i514, ptr %.sroa.3.0..sroa_idx.i.i517, align 1
  %i.hf = load i32, ptr %i.bj, align 8, !tbaa !230
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.bj, align 8, !tbaa !230
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit518

_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit518: ; preds = %bb.ai, %bb.aj
  %i.hh = icmp ne i32 %.0396.lcssa, 0
  %spec.select424 = zext i1 %i.hh to i8
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit518, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit502
  %.sroa.0985.0 = phi ptr [ null, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit502 ], [ %.sroa.0.0.copyload.i503, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit518 ] ; 8 uses
  %.sroa.0986.3 = phi ptr [ %.sroa.0986.2, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit502 ], [ %.sroa.0.0.copyload.i503, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit518 ]
  %.0398 = phi i8 [ 1, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit502 ], [ %spec.select424, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit518 ] ; 3 uses
  %i.hi = add i32 %.0379.lcssa, %i.ae
  %i.hj = add i32 %i.hi, %.0377.lcssa             ; 2 uses
  %i.hk = sub i32 %i.ah, %i.hj                    ; 2 uses
  %i.hl = sub i32 %i.hk, %.0381.lcssa             ; 2 uses
  %.not408 = icmp eq i32 %.0385.lcssa, 0          ; 2 uses
  %.sroa.speculated = call i8 @llvm.umin.i8(i8 %.sroa.0.0.copyload.i457, i8 3)
  %i.hm = add i32 %.0381.lcssa, %.0383.lcssa
  %i.hn = add i32 %i.hm, %i.hj
  %52 = zext i32 %i.hn to i64
  %53 = zext nneg i8 %.sroa.speculated to i64
  %notmask = shl nsw i64 -1, %53
  %54 = xor i64 %notmask, -1
  %55 = select i1 %.not408, i64 3, i64 %54
  %56 = and i64 %55, %52                          ; 4 uses
  %57 = trunc nuw nsw i64 %56 to i32              ; 5 uses
  %58 = sub nsw i32 0, %57                        ; 2 uses
  %i.ho = add i32 %.0383.lcssa, %.0385.lcssa
  %i.hp = add i32 %i.ho, %57
  %i.hq = sub i32 %i.hl, %i.hp                    ; 2 uses
  br i1 %i.bq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !314
  %i.hu = add i32 %i.ht, %.0391.lcssa
  %i.hv = zext i32 %i.hu to i64
  %i.hw = load ptr, ptr %i.hr, align 8, !tbaa !315
  %i.hx = getelementptr inbounds nuw [40 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !318
  %i.hz = add i64 %i.hy, %i.ag
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.ia, ptr %i.ib, align 8, !tbaa !319
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ic = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.hk, ptr %i.ic, align 4, !tbaa !676
  %i.id = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.hl, ptr %i.id, align 8, !tbaa !677
  %i.ie = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.hq, ptr %i.ie, align 4, !tbaa !678
  %.not409 = icmp eq i32 %.0381.lcssa, 0
  br i1 %.not409, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.sroa.0.0.copyload.i520 = load ptr, ptr %23, align 8 ; 9 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i521 = load i64, ptr %.sroa.0.0.copyload.i520, align 8
  %i.if = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i521, 4
  %.not.i.i.i.i522 = icmp eq i64 %i.if, 0
  br i1 %.not.i.i.i.i522, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i524, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit529

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i524: ; preds = %bb.an
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i520, i64 44
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !254
  %i.ii = and i32 %i.ih, 8
  %.not34.i.i.i.i525 = icmp eq i32 %i.ii, 0
  br i1 %.not34.i.i.i.i525, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit529, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i526

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i526: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i524, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i526
  %.sroa.0.05.i.i.i.i527 = phi ptr [ %i.ik, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i526 ], [ %.sroa.0.0.copyload.i520, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i524 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i527, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !183 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 44
  %i.im = load i32, ptr %i.il, align 4, !tbaa !254
  %i.in = and i32 %i.im, 8
  %.not3.i.i.i.i528 = icmp eq i32 %i.in, 0
  br i1 %.not3.i.i.i.i528, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit529, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i526, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit529: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i526, %bb.an, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i524
  %.sroa.0.1.i.i.i.i523 = phi ptr [ %.sroa.0.0.copyload.i520, %bb.an ], [ %.sroa.0.0.copyload.i520, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i524 ], [ %i.ik, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i526 ]
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i523, i64 8
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !183
  store ptr %i.ip, ptr %23, align 8
  %.sroa.4.8.insert.ext.i530 = zext i32 %.0381.lcssa to i64
  %i.iq = zext nneg i8 %.0398 to i64
  %.sroa.4.12.insert.shift.i = shl nuw nsw i64 %i.iq, 32
  %.sroa.4.12.insert.insert.i531 = or disjoint i64 %.sroa.4.12.insert.shift.i, %.sroa.4.8.insert.ext.i530 ; 2 uses
  %i.ir = load i32, ptr %i.bj, align 8, !tbaa !230 ; 2 uses
  %i.is = load i32, ptr %i.bk, align 4, !tbaa !231
  %.not.i.i532 = icmp ult i32 %i.ir, %i.is
  br i1 %.not.i.i532, label %bb.ap, label %bb.ao, !prof !256

bb.ao:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit529
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119StackAdjustingInsts8InstInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr nonnull %.sroa.0.0.copyload.i520, i64 range(i64 0, 8589934592) %.sroa.4.12.insert.insert.i531)
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit535

bb.ap:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit529
  %i.it = zext i32 %i.ir to i64
  %.val.i.i533 = load ptr, ptr %25, align 8, !tbaa !33
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i533, i64 %i.it ; 2 uses
  store ptr %.sroa.0.0.copyload.i520, ptr %i.iu, align 1
  %.sroa.3.0..sroa_idx.i.i534 = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i64 %.sroa.4.12.insert.insert.i531, ptr %.sroa.3.0..sroa_idx.i.i534, align 1
  %i.iv = load i32, ptr %i.bj, align 8, !tbaa !230
  %i.iw = add i32 %i.iv, 1
  store i32 %i.iw, ptr %i.bj, align 8, !tbaa !230
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit535

_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit535: ; preds = %bb.ao, %bb.ap
  %i.ix = icmp eq i32 %.0396.lcssa, 1
  %spec.select425 = select i1 %i.ix, i8 0, i8 %.0398
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit535, %bb.am
  %.sroa.0984.0 = phi ptr [ null, %bb.am ], [ %.sroa.0.0.copyload.i520, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit535 ] ; 8 uses
  %.sroa.0986.4 = phi ptr [ %.sroa.0986.3, %bb.am ], [ %.sroa.0.0.copyload.i520, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit535 ]
  %.1399 = phi i8 [ %.0398, %bb.am ], [ %spec.select425, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit535 ] ; 3 uses
  %.not411 = icmp eq i32 %.0383.lcssa, 0
  br i1 %.not411, label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit561, label %.preheader1048

.preheader1048:                                   ; preds = %bb.aq
  %.promoted = load ptr, ptr %23, align 8         ; 3 uses
  %.not10331107 = icmp eq ptr %.promoted, %i.dy
  br i1 %.not10331107, label %.thread, label %.lr.ph1108

.lr.ph1108:                                       ; preds = %.preheader1048, %.loopexit
  %i.iy = phi ptr [ %i.jl, %.loopexit ], [ %.promoted, %.preheader1048 ] ; 7 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 52
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !320
  switch i32 %i.ja, label %.thread [
    i32 3062, label %bb.ar
    i32 3059, label %bb.ar
  ]

bb.ar:                                            ; preds = %.lr.ph1108, %.lr.ph1108
  %.0.copyload.i.i.i.i.i.i.i.i.i.i537 = load i64, ptr %i.iy, align 8
  %i.jb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i537, 4
  %.not.i.i.i.i538 = icmp eq i64 %i.jb, 0
  br i1 %.not.i.i.i.i538, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i540, label %.loopexit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i540: ; preds = %bb.ar
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 44
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !254
  %i.je = and i32 %i.jd, 8
  %.not34.i.i.i.i541 = icmp eq i32 %i.je, 0
  br i1 %.not34.i.i.i.i541, label %.loopexit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i542

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i542: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i540, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i542
  %.sroa.0.05.i.i.i.i543 = phi ptr [ %i.jg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i542 ], [ %i.iy, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i540 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i543, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !183 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 44
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !254
  %i.jj = and i32 %i.ji, 8
  %.not3.i.i.i.i544 = icmp eq i32 %i.jj, 0
  br i1 %.not3.i.i.i.i544, label %.loopexit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i542, !llvm.loop !4

.loopexit:                                        ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i542, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i540, %bb.ar
  %.sroa.0.1.i.i.i.i539 = phi ptr [ %i.iy, %bb.ar ], [ %i.iy, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i540 ], [ %i.jg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i542 ]
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i539, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !183 ; 4 uses
  store ptr %i.jl, ptr %23, align 8
  %.not1033 = icmp eq ptr %i.jl, %i.dy
  br i1 %.not1033, label %.thread, label %.lr.ph1108

.thread:                                          ; preds = %.loopexit, %.lr.ph1108, %.preheader1048
  %.sroa.0.0.copyload.i546 = phi ptr [ %.promoted, %.preheader1048 ], [ %i.jl, %.loopexit ], [ %i.iy, %.lr.ph1108 ] ; 9 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i547 = load i64, ptr %.sroa.0.0.copyload.i546, align 8
  %i.jm = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i547, 4
  %.not.i.i.i.i548 = icmp eq i64 %i.jm, 0
  br i1 %.not.i.i.i.i548, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i550, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit555

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i550: ; preds = %.thread
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i546, i64 44
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !254
  %i.jp = and i32 %i.jo, 8
  %.not34.i.i.i.i551 = icmp eq i32 %i.jp, 0
  br i1 %.not34.i.i.i.i551, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit555, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i552

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i552: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i550, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i552
  %.sroa.0.05.i.i.i.i553 = phi ptr [ %i.jr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i552 ], [ %.sroa.0.0.copyload.i546, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i550 ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i553, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !183 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 44
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !254
  %i.ju = and i32 %i.jt, 8
  %.not3.i.i.i.i554 = icmp eq i32 %i.ju, 0
  br i1 %.not3.i.i.i.i554, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit555, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i552, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit555: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i552, %.thread, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i550
  %.sroa.0.1.i.i.i.i549 = phi ptr [ %.sroa.0.0.copyload.i546, %.thread ], [ %.sroa.0.0.copyload.i546, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i550 ], [ %i.jr, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i552 ]
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i549, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !183
  store ptr %i.jw, ptr %23, align 8
  %.sroa.4.8.insert.ext.i556 = zext i32 %.0383.lcssa to i64 ; 2 uses
  %i.jx = load i32, ptr %i.bj, align 8, !tbaa !230 ; 2 uses
  %i.jy = load i32, ptr %i.bk, align 4, !tbaa !231
  %.not.i.i558 = icmp ult i32 %i.jx, %i.jy
  br i1 %.not.i.i558, label %bb.at, label %bb.as, !prof !256

bb.as:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit555
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119StackAdjustingInsts8InstInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr nonnull %.sroa.0.0.copyload.i546, i64 range(i64 0, 8589934592) %.sroa.4.8.insert.ext.i556)
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit561

bb.at:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit555
  %i.jz = zext i32 %i.jx to i64
  %.val.i.i559 = load ptr, ptr %25, align 8, !tbaa !33
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i559, i64 %i.jz ; 2 uses
  store ptr %.sroa.0.0.copyload.i546, ptr %i.ka, align 1
  %.sroa.3.0..sroa_idx.i.i560 = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i64 %.sroa.4.8.insert.ext.i556, ptr %.sroa.3.0..sroa_idx.i.i560, align 1
  %i.kb = load i32, ptr %i.bj, align 8, !tbaa !230
  %i.kc = add i32 %i.kb, 1
  store i32 %i.kc, ptr %i.bj, align 8, !tbaa !230
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit561

_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit561: ; preds = %bb.at, %bb.as, %bb.aq
  %.sroa.0986.5 = phi ptr [ %.sroa.0986.4, %bb.aq ], [ %.sroa.0.0.copyload.i546, %bb.as ], [ %.sroa.0.0.copyload.i546, %bb.at ] ; 12 uses
  %.not412 = icmp eq i64 %56, 0
  br i1 %.not412, label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit587, label %bb.au

bb.au:                                            ; preds = %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit561
  %.not1034 = icmp eq ptr %.sroa.0986.5, %i.dy
  br i1 %.not1034, label %.critedge3, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kd = load ptr, ptr %i.i, align 8, !tbaa !186, !nonnull !30, !align !155
  %i.ke = call noundef zeroext i1 @_ZN4llvm26tryFoldSPUpdateIntoPushPopERKNS_12ARMSubtargetERNS_15MachineFunctionEPNS_12MachineInstrEj(ptr noundef nonnull align 8 dereferenceable(519368) %i.kd, ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull %.sroa.0986.5, i32 noundef %57) #22
  br i1 %i.ke, label %bb.aw, label %.critedge3

bb.aw:                                            ; preds = %bb.av
  %.val447 = load ptr, ptr %25, align 8, !tbaa !33 ; 4 uses
  %.val448 = load i32, ptr %i.bj, align 8, !tbaa !230 ; 3 uses
  %i.kf = zext i32 %.val448 to i64                ; 2 uses
  %.idx3.i.i = shl nuw nsw i64 %i.kf, 4           ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.val447, i64 %.idx3.i.i
  %i.kh = lshr i64 %i.kf, 2                       ; 2 uses
  %.not.i.i562 = icmp eq i64 %i.kh, 0
  br i1 %.not.i.i562, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aw
  %i.ki = and i64 %.idx3.i.i, 68719476672
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val447, i64 %i.ki
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bb, %.lr.ph.i.i.i.i.i
  %.051.i.i.i.i.i = phi i64 [ %i.kh, %.lr.ph.i.i.i.i.i ], [ %i.kr, %bb.bb ] ; 2 uses
  %.02950.i.i.i.i.i = phi ptr [ %.val447, %.lr.ph.i.i.i.i.i ], [ %i.kq, %bb.bb ] ; 9 uses
  %.029.val39.i.i.i.i.i = load ptr, ptr %.02950.i.i.i.i.i, align 8, !tbaa !259
  %i.kj = icmp eq ptr %.029.val39.i.i.i.i.i, %.sroa.0986.5
  br i1 %i.kj, label %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kk = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 16
  %.val37.i.i.i.i.i = load ptr, ptr %i.kk, align 8, !tbaa !259
  %i.kl = icmp eq ptr %.val37.i.i.i.i.i, %.sroa.0986.5
  br i1 %i.kl, label %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.km = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 32
  %.val35.i.i.i.i.i = load ptr, ptr %i.km, align 8, !tbaa !259
  %i.kn = icmp eq ptr %.val35.i.i.i.i.i, %.sroa.0986.5
  br i1 %i.kn, label %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit1248, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ko = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 48
  %.val33.i.i.i.i.i = load ptr, ptr %i.ko, align 8, !tbaa !259
  %i.kp = icmp eq ptr %.val33.i.i.i.i.i, %.sroa.0986.5
  br i1 %i.kp, label %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit1250, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kq = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 64
  %i.kr = add nsw i64 %.051.i.i.i.i.i, -1
  %i.ks = icmp sgt i64 %.051.i.i.i.i.i, 1
  br i1 %i.ks, label %bb.ax, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !574

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.bb
  %i.kt = and i32 %.val448, 3
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.aw
  %.pre-phi60.i.i.i.i.i = phi i32 [ %i.kt, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val448, %bb.aw ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val447, %bb.aw ] ; 5 uses
  switch i32 %.pre-phi60.i.i.i.i.i, label %bb.bf [
    i32 3, label %bb.bc
    i32 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i32 1, label %._crit_edge._crit_edge57.i.i.i.i.i
  ]

bb.bc:                                            ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load ptr, ptr %.029.lcssa.i.i.i.i.i, align 8, !tbaa !259
  %i.ku = icmp eq ptr %.029.val.i.i.i.i.i, %.sroa.0986.5
  br i1 %i.ku, label %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kv = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 16
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.bd, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.kv, %bb.bd ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load ptr, ptr %.1.i.i.i.i.i, align 8, !tbaa !259
  %i.kw = icmp eq ptr %.1.val.i.i.i.i.i, %.sroa.0986.5
  br i1 %i.kw, label %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit, label %bb.be

bb.be:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 16
  br label %._crit_edge._crit_edge57.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i:               ; preds = %bb.be, %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.kx, %bb.be ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load ptr, ptr %.2.i.i.i.i.i, align 8, !tbaa !259
  %i.ky = icmp eq ptr %.2.val.i.i.i.i.i, %.sroa.0986.5
  br i1 %i.ky, label %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge._crit_edge57.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit

_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit: ; preds = %bb.ay
  %i.kz = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 16
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit

_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit1248: ; preds = %bb.az
  %i.la = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 32
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit

_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit1250: ; preds = %bb.ba
  %i.lb = getelementptr inbounds nuw i8, ptr %.02950.i.i.i.i.i, i64 48
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit

_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit: ; preds = %bb.ax, %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit, %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit1248, %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit1250, %bb.bc, %._crit_edge._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i, %bb.bf
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %i.kg, %bb.bf ], [ %.2.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i, %bb.bc ], [ %i.lb, %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit1250 ], [ %i.la, %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit1248 ], [ %i.kz, %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit.loopexit.split.loop.exit ], [ %.02950.i.i.i.i.i, %bb.ax ]
  %i.lc = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i.i, i64 8 ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !323
  %i.le = add i32 %i.ld, %57
  store i32 %i.le, ptr %i.lc, align 8, !tbaa !323
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit587

.critedge3:                                       ; preds = %bb.au, %bb.av
  br i1 %i.v, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.critedge3
  call void @_ZN4llvm23emitARMRegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iNS_5ARMCC9CondCodesES9_RKNS_16ARMBaseInstrInfoEj(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %24, i32 17, i32 17, i32 noundef %58, i32 noundef 14, i32 0, ptr noundef nonnull align 8 dereferenceable(272) %i.s, i32 noundef range(i32 0, 3) 1) #22
  br label %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit563

bb.bh:                                            ; preds = %.critedge3
  call void @_ZN4llvm22emitT2RegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iNS_5ARMCC9CondCodesES9_RKNS_16ARMBaseInstrInfoEj(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %24, i32 17, i32 17, i32 noundef %58, i32 noundef 14, i32 0, ptr noundef nonnull align 8 dereferenceable(272) %i.s, i32 noundef range(i32 0, 3) 1) #22
  br label %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit563

_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit563: ; preds = %bb.bg, %bb.bh
  %.sroa.087.0.copyload = load ptr, ptr %23, align 8
  %.0.copyload.i.i.i.i.i.i.i.i.i8.i568 = load i64, ptr %.sroa.087.0.copyload, align 8
  %i.lf = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i8.i568, -8
  %i.lg = inttoptr i64 %i.lf to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lg) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i569 = load i64, ptr %i.lg, align 8
  %i.lh = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i569, 4
  %.not.i5.i.i.i570 = icmp eq i64 %i.lh, 0
  br i1 %.not.i5.i.i.i570, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i574, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i571

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i574: ; preds = %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit563
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 44
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !254
  %i.lk = and i32 %i.lj, 4
  %.not45.i.i.i.i575 = icmp eq i32 %i.lk, 0
  br i1 %.not45.i.i.i.i575, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i571, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i576

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i576: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i574, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i576
  %.sroa.0.06.i.i.i.i577 = phi ptr [ %i.lm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i576 ], [ %i.lg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i574 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i578 = load i64, ptr %.sroa.0.06.i.i.i.i577, align 8
  %i.ll = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i578, -8
  %i.lm = inttoptr i64 %i.ll to ptr               ; 3 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 44
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !254
  %i.lp = and i32 %i.lo, 4
  %.not4.i.i.i.i579 = icmp eq i32 %i.lp, 0
  br i1 %.not4.i.i.i.i579, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i571, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i576, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i571: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i576, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i574, %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit563
  %.sroa.0.1.i.i.i9.i572 = phi ptr [ %i.lg, %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit563 ], [ %i.lg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i574 ], [ %i.lm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i576 ] ; 2 uses
  %i.lq = zext nneg i8 %.1399 to i64
  %.sroa.4.12.insert.shift.i582 = shl nuw nsw i64 %i.lq, 32
  %.sroa.4.12.insert.insert.i583 = or disjoint i64 %.sroa.4.12.insert.shift.i582, %56 ; 2 uses
  %i.lr = load i32, ptr %i.bj, align 8, !tbaa !230 ; 2 uses
  %i.ls = load i32, ptr %i.bk, align 4, !tbaa !231
  %.not.i.i584 = icmp ult i32 %i.lr, %i.ls
  br i1 %.not.i.i584, label %bb.bj, label %bb.bi, !prof !256

bb.bi:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i571
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119StackAdjustingInsts8InstInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr nonnull %.sroa.0.1.i.i.i9.i572, i64 range(i64 0, 8589934592) %.sroa.4.12.insert.insert.i583)
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit587

bb.bj:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i571
  %i.lt = zext i32 %i.lr to i64
  %.val.i.i585 = load ptr, ptr %25, align 8, !tbaa !33
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i585, i64 %i.lt ; 2 uses
  store ptr %.sroa.0.1.i.i.i9.i572, ptr %i.lu, align 1
  %.sroa.3.0..sroa_idx.i.i586 = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store i64 %.sroa.4.12.insert.insert.i583, ptr %.sroa.3.0..sroa_idx.i.i586, align 1
  %i.lv = load i32, ptr %i.bj, align 8, !tbaa !230
  %i.lw = add i32 %i.lv, 1
  store i32 %i.lw, ptr %i.bj, align 8, !tbaa !230
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit587

_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit587: ; preds = %bb.bj, %bb.bi, %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit561
  br i1 %.not408, label %.critedge5, label %.preheader1047

.preheader1047:                                   ; preds = %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit587
  %i.lx = load ptr, ptr %23, align 8, !tbaa !259  ; 3 uses
  %.not10351118 = icmp eq ptr %i.lx, %i.dy
  br i1 %.not10351118, label %.critedge5, label %.lr.ph1121

.lr.ph1121:                                       ; preds = %.preheader1047
  %i.ly = zext nneg i8 %.1399 to i64
  %.sroa.4.12.insert.shift.i589 = shl nuw nsw i64 %i.ly, 32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 52
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !320
  %i.mb = icmp eq i32 %i.ma, 3891
  br i1 %i.mb, label %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit, label %.critedge5

bb.bk:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit604
  %i.mc = getelementptr inbounds nuw i8, ptr %i.na, i64 52
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !320
  %i.me = icmp eq i32 %i.md, 3891
  br i1 %i.me, label %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit, label %.critedge5, !llvm.loop !575

_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit: ; preds = %.lr.ph1121, %bb.bk
  %i.mf = phi ptr [ %i.na, %bb.bk ], [ %i.lx, %.lr.ph1121 ] ; 3 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 40
  %.val455 = load i24, ptr %i.mg, align 8
  %i.mh = zext i24 %.val455 to i32
  %i.mi = call i32 @llvm.usub.sat.i32(i32 %i.mh, i32 4)
  %i.mj = shl nuw nsw i32 %i.mi, 3
  %.sroa.4.8.insert.ext.i588 = zext nneg i32 %i.mj to i64
  %.sroa.4.12.insert.insert.i590 = or disjoint i64 %.sroa.4.12.insert.shift.i589, %.sroa.4.8.insert.ext.i588 ; 2 uses
  %i.mk = load i32, ptr %i.bj, align 8, !tbaa !230 ; 2 uses
  %i.ml = load i32, ptr %i.bk, align 4, !tbaa !231
  %.not.i.i591 = icmp ult i32 %i.mk, %i.ml
  br i1 %.not.i.i591, label %bb.bm, label %bb.bl, !prof !256

bb.bl:                                            ; preds = %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119StackAdjustingInsts8InstInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr nonnull %i.mf, i64 range(i64 0, 8589934592) %.sroa.4.12.insert.insert.i590)
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit594

bb.bm:                                            ; preds = %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit
  %i.mm = zext i32 %i.mk to i64
  %.val.i.i592 = load ptr, ptr %25, align 8, !tbaa !33
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i592, i64 %i.mm ; 2 uses
  store ptr %i.mf, ptr %i.mn, align 1
  %.sroa.3.0..sroa_idx.i.i593 = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store i64 %.sroa.4.12.insert.insert.i590, ptr %.sroa.3.0..sroa_idx.i.i593, align 1
  %i.mo = load i32, ptr %i.bj, align 8, !tbaa !230
  %i.mp = add i32 %i.mo, 1
  store i32 %i.mp, ptr %i.bj, align 8, !tbaa !230
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit594

_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit594: ; preds = %bb.bl, %bb.bm
  %.sroa.0.0.copyload.i595 = load ptr, ptr %23, align 8 ; 9 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i596 = load i64, ptr %.sroa.0.0.copyload.i595, align 8
  %i.mq = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i596, 4
  %.not.i.i.i.i597 = icmp eq i64 %i.mq, 0
  br i1 %.not.i.i.i.i597, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i599, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit604

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i599: ; preds = %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit594
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i595, i64 44
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !254
  %i.mt = and i32 %i.ms, 8
  %.not34.i.i.i.i600 = icmp eq i32 %i.mt, 0
  br i1 %.not34.i.i.i.i600, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit604, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i601

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i601: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i599, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i601
  %.sroa.0.05.i.i.i.i602 = phi ptr [ %i.mv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i601 ], [ %.sroa.0.0.copyload.i595, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i599 ]
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i602, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !183 ; 3 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 44
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !254
  %i.my = and i32 %i.mx, 8
  %.not3.i.i.i.i603 = icmp eq i32 %i.my, 0
  br i1 %.not3.i.i.i.i603, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit604, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i601, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit604: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i601, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit594, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i599
  %.sroa.0.1.i.i.i.i598 = phi ptr [ %.sroa.0.0.copyload.i595, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit594 ], [ %.sroa.0.0.copyload.i595, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i599 ], [ %i.mv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i601 ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i598, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !183 ; 4 uses
  store ptr %i.na, ptr %23, align 8
  %.not1035 = icmp eq ptr %i.na, %i.dy
  br i1 %.not1035, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit604..critedge5.loopexit_crit_edge, label %bb.bk, !llvm.loop !575

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit604..critedge5.loopexit_crit_edge: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit604
  br label %.critedge5, !llvm.loop !575

.critedge5:                                       ; preds = %bb.bk, %.lr.ph1121, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit604..critedge5.loopexit_crit_edge, %.preheader1047, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit587
  %.sroa.0983.1 = phi ptr [ null, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit587 ], [ null, %.preheader1047 ], [ %.sroa.0.0.copyload.i595, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit604..critedge5.loopexit_crit_edge ], [ null, %.lr.ph1121 ], [ %.sroa.0.0.copyload.i595, %bb.bk ] ; 5 uses
  %.sroa.0986.7 = phi ptr [ %.sroa.0986.5, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit587 ], [ %.sroa.0986.5, %.preheader1047 ], [ %.sroa.0.0.copyload.i595, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEi.exit604..critedge5.loopexit_crit_edge ], [ %.sroa.0986.5, %.lr.ph1121 ], [ %.sroa.0.0.copyload.i595, %bb.bk ]
  br i1 %.0389.lcssa, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %.critedge5
  %.sroa.083.0.copyload = load ptr, ptr %23, align 8, !nonnull !30, !noundef !30 ; 5 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !313
  %.0.copyload.i.i.i.i.i.i.i.i.i.i605 = load i64, ptr %.sroa.083.0.copyload, align 8
  %i.nd = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i605, 4
  %.not.i.i.i.i606 = icmp eq i64 %i.nd, 0
  br i1 %.not.i.i.i.i606, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i608, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i608: ; preds = %bb.bn
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 44
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !254
  %i.ng = and i32 %i.nf, 8
  %.not34.i.i.i.i609 = icmp eq i32 %i.ng, 0
  br i1 %.not34.i.i.i.i609, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i610

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i610: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i608, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i610
  %.sroa.0.05.i.i.i.i611 = phi ptr [ %i.ni, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i610 ], [ %.sroa.083.0.copyload, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i608 ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i611, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !183 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 44
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !254
  %i.nl = and i32 %i.nk, 8
  %.not3.i.i.i.i612 = icmp eq i32 %i.nl, 0
  br i1 %.not3.i.i.i.i612, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i610, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i610, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i608, %bb.bn
  %.sroa.0.1.i.i.i.i607 = phi ptr [ %.sroa.083.0.copyload, %bb.bn ], [ %.sroa.083.0.copyload, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i608 ], [ %i.ni, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i610 ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i607, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !183, !nonnull !30, !noundef !30 ; 5 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i2.i = load i64, ptr %i.nn, align 8
  %i.no = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i2.i, 4
  %.not.i.i.i3.i = icmp eq i64 %i.no, 0
  br i1 %.not.i.i.i3.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i5.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit10.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i5.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 44
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !254
  %i.nr = and i32 %i.nq, 8
  %.not34.i.i.i6.i = icmp eq i32 %i.nr, 0
  br i1 %.not34.i.i.i6.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit10.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i7.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i7.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i5.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i7.i
  %.sroa.0.05.i.i.i8.i = phi ptr [ %i.nt, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i7.i ], [ %i.nn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i5.i ]
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i8.i, i64 8
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !183 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 44
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !254
  %i.nw = and i32 %i.nv, 8
  %.not3.i.i.i9.i = icmp eq i32 %i.nw, 0
  br i1 %.not3.i.i.i9.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit10.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i7.i, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit10.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i7.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i5.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.0.1.i.i.i4.i = phi ptr [ %i.nn, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %i.nn, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i5.i ], [ %i.nt, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i7.i ]
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i4.i, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !183, !nonnull !30, !noundef !30 ; 5 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i12.i = load i64, ptr %i.ny, align 8
  %i.nz = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i12.i, 4
  %.not.i.i.i13.i = icmp eq i64 %i.nz, 0
  br i1 %.not.i.i.i13.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i15.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit20.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i15.i: ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit10.i
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 44
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !254
  %i.oc = and i32 %i.ob, 8
  %.not34.i.i.i16.i = icmp eq i32 %i.oc, 0
  br i1 %.not34.i.i.i16.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit20.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i17.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i17.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i15.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i17.i
  %.sroa.0.05.i.i.i18.i = phi ptr [ %i.oe, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i17.i ], [ %i.ny, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i15.i ]
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i18.i, i64 8
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !183 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 44
  %i.og = load i32, ptr %i.of, align 4, !tbaa !254
  %i.oh = and i32 %i.og, 8
  %.not3.i.i.i19.i = icmp eq i32 %i.oh, 0
  br i1 %.not3.i.i.i19.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit20.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i17.i, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit20.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i17.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i15.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit10.i
  %.sroa.0.1.i.i.i14.i = phi ptr [ %i.ny, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit10.i ], [ %i.ny, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i15.i ], [ %i.oe, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i17.i ]
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i14.i, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !183 ; 10 uses
  switch i32 %i.nc, label %bb.bp [
    i32 7, label %bb.bo
    i32 1, label %bb.bq
    i32 2, label %bb.bq
    i32 4, label %bb.bq
end_hunk_0
begin_hunk_1_@_ZNK4llvm16ARMFrameLowering12emitPrologueERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
bb.cm:                                            ; preds = %bb.cb, %bb.ca
  %i.zk = sub i32 0, %.1                          ; 2 uses
  br i1 %i.v, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN4llvm23emitARMRegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iNS_5ARMCC9CondCodesES9_RKNS_16ARMBaseInstrInfoEj(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %24, i32 17, i32 17, i32 noundef %i.zk, i32 noundef 14, i32 0, ptr noundef nonnull align 8 dereferenceable(272) %i.s, i32 noundef range(i32 0, 3) 1) #22
  br label %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit697

bb.co:                                            ; preds = %bb.cm
  call void @_ZN4llvm22emitT2RegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iNS_5ARMCC9CondCodesES9_RKNS_16ARMBaseInstrInfoEj(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %24, i32 17, i32 17, i32 noundef %i.zk, i32 noundef 14, i32 0, ptr noundef nonnull align 8 dereferenceable(272) %i.s, i32 noundef range(i32 0, 3) 1) #22
  br label %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit697

_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit697: ; preds = %bb.cn, %bb.co
  %.sroa.051.0.copyload = load ptr, ptr %23, align 8
  %.0.copyload.i.i.i.i.i.i.i.i.i8.i702 = load i64, ptr %.sroa.051.0.copyload, align 8
  %i.zl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i8.i702, -8
  %i.zm = inttoptr i64 %i.zl to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zm) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i703 = load i64, ptr %i.zm, align 8
  %i.zn = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i703, 4
  %.not.i5.i.i.i704 = icmp eq i64 %i.zn, 0
  br i1 %.not.i5.i.i.i704, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i708, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i705

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i708: ; preds = %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit697
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 44
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !254
  %i.zq = and i32 %i.zp, 4
  %.not45.i.i.i.i709 = icmp eq i32 %i.zq, 0
  br i1 %.not45.i.i.i.i709, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i705, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i710

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i710: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i708, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i710
  %.sroa.0.06.i.i.i.i711 = phi ptr [ %i.zs, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i710 ], [ %i.zm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i708 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i712 = load i64, ptr %.sroa.0.06.i.i.i.i711, align 8
  %i.zr = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i712, -8
  %i.zs = inttoptr i64 %i.zr to ptr               ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 44
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !254
  %i.zv = and i32 %i.zu, 4
  %.not4.i.i.i.i713 = icmp eq i32 %i.zv, 0
  br i1 %.not4.i.i.i.i713, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i705, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i710, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i705: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i710, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i708, %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit697
  %.sroa.0.1.i.i.i9.i706 = phi ptr [ %i.zm, %_ZL12emitSPUpdatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEijNS_5ARMCC9CondCodesEj.exit697 ], [ %i.zm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i10.i708 ], [ %i.zs, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i11.i710 ] ; 2 uses
  %.sroa.4.8.insert.ext.i715 = zext i32 %.1 to i64 ; 2 uses
  %i.zw = load i32, ptr %i.bj, align 8, !tbaa !230 ; 2 uses
  %i.zx = load i32, ptr %i.bk, align 4, !tbaa !231
  %.not.i.i717 = icmp ult i32 %i.zw, %i.zx
  br i1 %.not.i.i717, label %bb.cq, label %bb.cp, !prof !256

bb.cp:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i705
  call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_119StackAdjustingInsts8InstInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr nonnull %.sroa.0.1.i.i.i9.i706, i64 range(i64 0, 8589934592) %.sroa.4.8.insert.ext.i715)
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit720

bb.cq:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i705
  %i.zy = zext i32 %i.zw to i64
  %.val.i.i718 = load ptr, ptr %25, align 8, !tbaa !33
  %i.zz = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i718, i64 %i.zy ; 2 uses
  store ptr %.sroa.0.1.i.i.i9.i706, ptr %i.zz, align 1
  %.sroa.3.0..sroa_idx.i.i719 = getelementptr inbounds nuw i8, ptr %i.zz, i64 8
  store i64 %.sroa.4.8.insert.ext.i715, ptr %.sroa.3.0..sroa_idx.i.i719, align 1
  %i.aaa = load i32, ptr %i.bj, align 8, !tbaa !230
  %i.aab = add i32 %i.aaa, 1
  store i32 %i.aab, ptr %i.bj, align 8, !tbaa !230
  br label %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit720

_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit720: ; preds = %bb.cq, %bb.cp, %_ZN12_GLOBAL__N_119StackAdjustingInsts13addExtraBytesEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEj.exit696
  %or.cond9 = and i1 %i.bq, %i.w
  br i1 %or.cond9, label %bb.cr, label %.thread1022

bb.cr:                                            ; preds = %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit720
  %i.aac = getelementptr inbounds nuw i8, ptr %i.f, i64 21
  store i8 1, ptr %i.aac, align 1, !tbaa !328
  br label %.thread1022

.thread1022:                                      ; preds = %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit664, %_ZN4llvm7BuildMIERNS_15MachineFunctionERKNS_10MIMetadataERKNS_11MCInstrDescE.exit, %_ZN12_GLOBAL__N_119StackAdjustingInsts7addInstEN4llvm26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEjb.exit720, %bb.cr, %_ZL25WindowsRequiresStackProbeRKN4llvm15MachineFunctionEm.exit632.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  store ptr null, ptr %39, align 8, !tbaa !259
  br i1 %i.bq, label %bb.cs, label %bb.dp

bb.cs:                                            ; preds = %.thread1022
  %i.aad = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aae = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !314
  %i.aag = add i32 %i.aaf, %.0391.lcssa
  %i.aah = zext i32 %i.aag to i64
  %i.aai = load ptr, ptr %i.aad, align 8, !tbaa !315
  %i.aaj = getelementptr inbounds nuw [40 x i8], ptr %i.aai, i64 %i.aah
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !318
  %i.aal = zext i32 %i.ae to i64                  ; 3 uses
  %i.aam = sext i32 %.0377.lcssa to i64           ; 3 uses
  switch i32 %.0396.lcssa, label %bb.dc [
    i32 0, label %bb.ct
    i32 1, label %bb.cw
    i32 5, label %bb.cz
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.aan = getelementptr i8, ptr %.sroa.0985.0, i64 40
  %.val453 = load i24, ptr %i.aan, align 8
  %i.aao = getelementptr i8, ptr %.sroa.0985.0, i64 52
  %.val454 = load i32, ptr %i.aao, align 4, !tbaa !320
  switch i32 %.val454, label %bb.cv [
    i32 3891, label %.loopexit.loopexit.i722
    i32 2022, label %bb.cu
    i32 4354, label %bb.cu
    i32 4378, label %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit724
    i32 2051, label %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit724
  ]

bb.cu:                                            ; preds = %bb.ct, %bb.ct
  br label %.loopexit.loopexit.i722

bb.cv:                                            ; preds = %bb.ct
  unreachable

.loopexit.loopexit.i722:                          ; preds = %bb.cu, %bb.ct
  %.08.i723 = phi i32 [ 4, %bb.cu ], [ 8, %bb.ct ]
  %i.aap = zext i24 %.val453 to i32
  %i.aaq = call i32 @llvm.usub.sat.i32(i32 %i.aap, i32 4)
  %i.aar = mul nuw nsw i32 %.08.i723, %i.aaq
  %i.aas = zext nneg i32 %i.aar to i64
  br label %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit724

_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit724: ; preds = %bb.ct, %bb.ct, %.loopexit.loopexit.i722
  %.09.i721 = phi i64 [ 4, %bb.ct ], [ 4, %bb.ct ], [ %i.aas, %.loopexit.loopexit.i722 ]
  %i.aat = add nsw i64 %i.aam, %i.aal
  br label %bb.dd

bb.cw:                                            ; preds = %bb.cs
  %i.aau = zext i32 %.0379.lcssa to i64
  %i.aav = getelementptr i8, ptr %.sroa.0984.0, i64 40
  %.val451 = load i24, ptr %i.aav, align 8
  %i.aaw = getelementptr i8, ptr %.sroa.0984.0, i64 52
  %.val452 = load i32, ptr %i.aaw, align 4, !tbaa !320
  switch i32 %.val452, label %bb.cy [
    i32 3891, label %.loopexit.loopexit.i726
    i32 2022, label %bb.cx
    i32 4354, label %bb.cx
    i32 4378, label %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit728
    i32 2051, label %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit728
  ]

bb.cx:                                            ; preds = %bb.cw, %bb.cw
  br label %.loopexit.loopexit.i726

bb.cy:                                            ; preds = %bb.cw
  unreachable

.loopexit.loopexit.i726:                          ; preds = %bb.cx, %bb.cw
  %.08.i727 = phi i32 [ 4, %bb.cx ], [ 8, %bb.cw ]
  %i.aax = zext i24 %.val451 to i32
  %i.aay = call i32 @llvm.usub.sat.i32(i32 %i.aax, i32 4)
  %i.aaz = mul nuw nsw i32 %.08.i727, %i.aay
  %i.aba = zext nneg i32 %i.aaz to i64
  br label %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit728

_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit728: ; preds = %bb.cw, %bb.cw, %.loopexit.loopexit.i726
  %.09.i725 = phi i64 [ 4, %bb.cw ], [ 4, %bb.cw ], [ %i.aba, %.loopexit.loopexit.i726 ]
  %i.abb = add nuw nsw i64 %i.aau, %i.aal
  %i.abc = add nsw i64 %i.abb, %i.aam
  br label %bb.dd

bb.cz:                                            ; preds = %bb.cs
  %i.abd = zext i32 %.0379.lcssa to i64
  %i.abe = zext i32 %.0383.lcssa to i64
  %i.abf = zext i32 %.0381.lcssa to i64
  %i.abg = zext i32 %.0385.lcssa to i64
  %i.abh = getelementptr i8, ptr %.sroa.0982.0, i64 40
  %.val449 = load i24, ptr %i.abh, align 8
  %i.abi = getelementptr i8, ptr %.sroa.0982.0, i64 52
  %.val450 = load i32, ptr %i.abi, align 4, !tbaa !320
  switch i32 %.val450, label %bb.db [
    i32 3891, label %.loopexit.loopexit.i730
    i32 2022, label %bb.da
    i32 4354, label %bb.da
    i32 4378, label %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit732
    i32 2051, label %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit732
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cz
  br label %.loopexit.loopexit.i730

bb.db:                                            ; preds = %bb.cz
  unreachable

.loopexit.loopexit.i730:                          ; preds = %bb.da, %bb.cz
  %.08.i731 = phi i32 [ 4, %bb.da ], [ 8, %bb.cz ]
  %i.abj = zext i24 %.val449 to i32
  %i.abk = call i32 @llvm.usub.sat.i32(i32 %i.abj, i32 4)
  %i.abl = mul nuw nsw i32 %.08.i731, %i.abk
  %i.abm = zext nneg i32 %i.abl to i64
  br label %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit732

_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit732: ; preds = %bb.cz, %bb.cz, %.loopexit.loopexit.i730
  %.09.i729 = phi i64 [ 4, %bb.cz ], [ 4, %bb.cz ], [ %i.abm, %.loopexit.loopexit.i730 ]
  %i.abn = add nuw nsw i64 %i.abg, %i.aal
  %i.abo = add nuw nsw i64 %i.abn, %i.abe
  %i.abp = add nuw nsw i64 %i.abo, %i.abf
  %i.abq = add nuw nsw i64 %i.abp, %i.abd
  %i.abr = add nsw i64 %i.abq, %i.aam
  %i.abs = add nsw i64 %i.abr, %56
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cs
  unreachable

bb.dd:                                            ; preds = %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit724, %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit728, %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit732
  %.sink1264 = phi i64 [ %i.aat, %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit724 ], [ %i.abc, %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit728 ], [ %i.abs, %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit732 ]
  %.09.i721.sink = phi i64 [ %.09.i721, %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit724 ], [ %.09.i725, %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit728 ], [ %.09.i729, %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit732 ]
  %.sroa.0888.0 = phi ptr [ %.sroa.0985.0, %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit724 ], [ %.sroa.0984.0, %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit728 ], [ %.sroa.0982.0, %_ZL18sizeOfSPAdjustmentRKN4llvm12MachineInstrE.exit732 ] ; 5 uses
  %i.abt = add i64 %.sink1264, %i.aak
  %i.abu = add nsw i64 %i.abt, %.09.i721.sink     ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i733 = load i64, ptr %.sroa.0888.0, align 8
  %i.abv = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i733, 4
  %.not.i.i.i.i734 = icmp eq i64 %i.abv, 0
  br i1 %.not.i.i.i.i734, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i737, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i735

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i737: ; preds = %bb.dd
  %i.abw = getelementptr inbounds nuw i8, ptr %.sroa.0888.0, i64 44
  %i.abx = load i32, ptr %i.abw, align 4, !tbaa !254
  %i.aby = and i32 %i.abx, 8
  %.not34.i.i.i.i738 = icmp eq i32 %i.aby, 0
  br i1 %.not34.i.i.i.i738, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i735, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i739

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i739: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i737, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i739
  %.sroa.0.05.i.i.i.i740 = phi ptr [ %i.aca, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i739 ], [ %.sroa.0888.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i737 ]
  %i.abz = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i740, i64 8
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !183 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 44
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !254
  %i.acd = and i32 %i.acc, 8
  %.not3.i.i.i.i741 = icmp eq i32 %i.acd, 0
  br i1 %.not3.i.i.i.i741, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i735, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i739, !llvm.loop !4

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i735: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i739, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i737, %bb.dd
  %.sroa.0.1.i.i.i.i736 = phi ptr [ %.sroa.0888.0, %bb.dd ], [ %.sroa.0888.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i737 ], [ %i.aca, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i739 ]
  %i.ace = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i736, i64 8
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !183
  store ptr %i.acf, ptr %39, align 8
  %i.acg = load i8, ptr %i.t, align 8, !tbaa !197, !range !29, !noundef !30
  %i.ach = trunc nuw i8 %i.acg to i1
  %i.aci = trunc i64 %i.abu to i32                ; 2 uses
  br i1 %i.ach, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i735
  call void @_ZN4llvm23emitARMRegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iNS_5ARMCC9CondCodesES9_RKNS_16ARMBaseInstrInfoEj(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %24, i32 %i.bc, i32 17, i32 noundef %i.aci, i32 noundef 14, i32 0, ptr noundef nonnull align 8 dereferenceable(272) %i.s, i32 noundef 1) #22
  br label %_ZL20emitRegPlusImmediatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEjjijNS_5ARMCC9CondCodesEj.exit

bb.df:                                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i735
  call void @_ZN4llvm22emitT2RegPlusImmediateERNS_17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocENS_8RegisterES9_iNS_5ARMCC9CondCodesES9_RKNS_16ARMBaseInstrInfoEj(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %24, i32 %i.bc, i32 17, i32 noundef %i.aci, i32 noundef 14, i32 0, ptr noundef nonnull align 8 dereferenceable(272) %i.s, i32 noundef 1) #22
  br label %_ZL20emitRegPlusImmediatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEjjijNS_5ARMCC9CondCodesEj.exit

_ZL20emitRegPlusImmediatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEjjijNS_5ARMCC9CondCodesEj.exit: ; preds = %bb.de, %bb.df
  br i1 %i.aw, label %.thread1025, label %bb.dg

bb.dg:                                            ; preds = %_ZL20emitRegPlusImmediatebRN4llvm17MachineBasicBlockERNS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocERKNS_16ARMBaseInstrInfoEjjijNS_5ARMCC9CondCodesEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  %.sroa.046.0.copyload = load ptr, ptr %39, align 8
  %i.acj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !307 ; 2 uses
  store ptr %i.ack, ptr %40, align 8, !tbaa !329
  %i.acl = getelementptr inbounds nuw i8, ptr %40, i64 8
  store ptr %2, ptr %i.acl, align 8, !tbaa !330
  %i.acm = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.acn = getelementptr inbounds nuw i8, ptr %40, i64 24
  store i32 1, ptr %i.acn, align 8, !tbaa !337
  %i.aco = getelementptr inbounds nuw i8, ptr %40, i64 28 ; 3 uses
  store i8 1, ptr %i.aco, align 4, !tbaa !338
  %i.acp = getelementptr inbounds nuw i8, ptr %40, i64 32 ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.ack, i64 16
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !154, !nonnull !30, !align !155 ; 2 uses
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !21
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 200
  %i.acu = load ptr, ptr %i.act, align 8
  %i.acv = call noundef ptr %i.acu(ptr noundef nonnull align 8 dereferenceable(344) %i.acr) #22, !inline_history !5
  store ptr %i.acv, ptr %i.acp, align 8, !tbaa !339
  %i.acw = getelementptr inbounds nuw i8, ptr %40, i64 40
  %i.acx = load ptr, ptr %40, align 8, !tbaa !340, !nonnull !30, !align !155
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 16
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !154, !nonnull !30, !align !155 ; 2 uses
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !21
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 128
  %i.adc = load ptr, ptr %i.adb, align 8
  %i.add = call noundef ptr %i.adc(ptr noundef nonnull align 8 dereferenceable(344) %i.acz) #22, !inline_history !5
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !263
  %i.adg = getelementptr inbounds i8, ptr %i.adf, i64 -96
  store ptr %i.adg, ptr %i.acw, align 8, !tbaa !341
  %i.adh = getelementptr inbounds nuw i8, ptr %40, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.adh, i8 0, i64 32, i1 false)
  store ptr %.sroa.046.0.copyload, ptr %i.acm, align 8
  %.not418 = icmp eq i64 %i.abu, 0
  br i1 %.not418, label %bb.dl, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.adi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.adj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.adk = load i32, ptr %i.adj, align 8, !tbaa !314
  %i.adl = add i32 %i.adk, %.0391.lcssa
  %i.adm = zext i32 %i.adl to i64
  %i.adn = load ptr, ptr %i.adi, align 8, !tbaa !315
  %i.ado = getelementptr inbounds nuw [40 x i8], ptr %i.adn, i64 %i.adm
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !318
  %i.adq = sub nsw i64 0, %i.adp
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.adr = load ptr, ptr %i.acp, align 8, !tbaa !342, !nonnull !30, !align !155 ; 2 uses
  %i.ads = load i8, ptr %i.aco, align 4, !tbaa !338, !range !29, !noundef !30
  %i.adt = trunc nuw i8 %i.ads to i1
  %i.adu = load ptr, ptr %i.adr, align 8, !tbaa !21
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 16
  %i.adw = load ptr, ptr %i.adv, align 8
  %i.adx = call noundef i64 %i.adw(ptr noundef nonnull align 8 dereferenceable(240) %i.adr, i32 %i.bc, i1 noundef zeroext %i.adt) #22, !inline_history !628
  %i.ady = trunc i64 %i.adx to i32
  store ptr null, ptr %9, align 8, !tbaa !353, !alias.scope !799
  %i.adz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i32 %i.ady, ptr %i.adz, align 8, !tbaa !312, !alias.scope !799
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 %i.adq, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !tbaa !354, !alias.scope !799
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !312, !alias.scope !799
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !312, !alias.scope !799
  %i.aea = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i8 0, ptr %i.aea, align 8, !tbaa !355, !alias.scope !799
  %i.aeb = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i8 7, ptr %i.aeb, align 8, !tbaa !356, !alias.scope !799
  %i.aec = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr null, ptr %i.aec, align 8, !tbaa !357, !alias.scope !799
  call void @_ZNK4llvm14CFIInstBuilder13insertCFIInstERKNS_16MCCFIInstructionE(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef nonnull align 8 dereferenceable(88) %9)
  %i.aed = load i8, ptr %i.aea, align 8, !tbaa !355
  switch i8 %i.aed, label %bb.dk [
    i8 -1, label %_ZNK4llvm14CFIInstBuilder11buildDefCFAENS_10MCRegisterEl.exit
    i8 0, label %_ZNK4llvm14CFIInstBuilder11buildDefCFAENS_10MCRegisterEl.exit
    i8 1, label %bb.di
    i8 2, label %_ZNK4llvm14CFIInstBuilder11buildDefCFAENS_10MCRegisterEl.exit
    i8 3, label %_ZNK4llvm14CFIInstBuilder11buildDefCFAENS_10MCRegisterEl.exit
    i8 4, label %bb.dj
    i8 5, label %_ZNK4llvm14CFIInstBuilder11buildDefCFAENS_10MCRegisterEl.exit
    i8 6, label %_ZNK4llvm14CFIInstBuilder11buildDefCFAENS_10MCRegisterEl.exit
  ], !prof !358

bb.di:                                            ; preds = %bb.dh
  %i.aee = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !359 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.aeh = icmp eq ptr %i.aef, %i.aeg
  br i1 %i.aeh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.di
  %i.aei = load i64, ptr %i.aeg, align 8, !tbaa !35
  %i.aej = add i64 %i.aei, 1
  call void @_ZdlPvm(ptr noundef %i.aef, i64 noundef %i.aej) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aek = load ptr, ptr %i.adz, align 8, !tbaa !361 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aek, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm14CFIInstBuilder11buildDefCFAENS_10MCRegisterEl.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.ael = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !tbaa !364 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i = icmp eq ptr %i.ael, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i, label %_ZNK4llvm14CFIInstBuilder11buildDefCFAENS_10MCRegisterEl.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i

bb.dk:                                            ; preds = %bb.dh
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i: ; preds = %bb.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sink26.i.i.i.i.i = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ 24, %bb.dj ]
  %.sink23.i.i.i.i.i = phi ptr [ %i.aek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ael, %bb.dj ] ; 2 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adz, i64 %.sink26.i.i.i.i.i
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !365
  %i.aeo = ptrtoint ptr %i.aen to i64
  %i.aep = ptrtoint ptr %.sink23.i.i.i.i.i to i64
  %i.aeq = sub i64 %i.aeo, %i.aep
  call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i.i, i64 noundef %i.aeq) #24
  br label %_ZNK4llvm14CFIInstBuilder11buildDefCFAENS_10MCRegisterEl.exit

_ZNK4llvm14CFIInstBuilder11buildDefCFAENS_10MCRegisterEl.exit: ; preds = %bb.dh, %bb.dh, %bb.dh, %bb.dh, %bb.dh, %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.dj, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %.thread1026

bb.dl:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.aer = load ptr, ptr %i.acp, align 8, !tbaa !342, !nonnull !30, !align !155 ; 2 uses
  %i.aes = load i8, ptr %i.aco, align 4, !tbaa !338, !range !29, !noundef !30
  %i.aet = trunc nuw i8 %i.aes to i1
  %i.aeu = load ptr, ptr %i.aer, align 8, !tbaa !21
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.aew = load ptr, ptr %i.aev, align 8
  %i.aex = call noundef i64 %i.aew(ptr noundef nonnull align 8 dereferenceable(240) %i.aer, i32 %i.bc, i1 noundef zeroext %i.aet) #22, !inline_history !631
  %i.aey = trunc i64 %i.aex to i32
  store ptr null, ptr %8, align 8, !tbaa !353, !alias.scope !800
  %i.aez = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 %i.aey, ptr %i.aez, align 8, !tbaa !312, !alias.scope !800
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !tbaa !354, !alias.scope !800
  %.sroa.5.0..sroa_idx.i.i743 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i743, align 8, !tbaa !312, !alias.scope !800
  %.sroa.6.0..sroa_idx.i.i744 = getelementptr inbounds nuw i8, ptr %8, i64 28
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i744, align 4, !tbaa !312, !alias.scope !800
end_hunk_1
begin_hunk_2_@_ZNK4llvm16ARMFrameLowering12emitPrologueERNS_15MachineFunctionERNS_17MachineBasicBlockE:bb.a
  br i1 %.not.i.i.i.i793, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i797, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i797: ; preds = %.preheader1043
  %i.ain = load i32, ptr %i.aho, align 4, !tbaa !254
  %i.aio = and i32 %i.ain, 8
  %.not34.i.i.i.i798 = icmp eq i32 %i.aio, 0
  br i1 %.not34.i.i.i.i798, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i799

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i799: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i797, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i799
  %.sroa.0.05.i.i.i.i800 = phi ptr [ %i.aiq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i799 ], [ %.sroa.0983.1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i797 ]
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i800, i64 8
  %i.aiq = load ptr, ptr %i.aip, align 8, !tbaa !183 ; 3 uses
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 44
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !254
  %i.ait = and i32 %i.ais, 8
  %.not3.i.i.i.i801 = icmp eq i32 %i.ait, 0
  br i1 %.not3.i.i.i.i801, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i799, !llvm.loop !4

.preheader1045:                                   ; preds = %bb.ds
  %.0.copyload.i.i.i.i.i.i.i.i.i.i805 = load i64, ptr %.sroa.0982.0, align 8
  %i.aiu = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i805, 4
  %.not.i.i.i.i806 = icmp eq i64 %i.aiu, 0
  br i1 %.not.i.i.i.i806, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i810, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i810: ; preds = %.preheader1045
  %i.aiv = load i32, ptr %i.ahn, align 4, !tbaa !254
  %i.aiw = and i32 %i.aiv, 8
  %.not34.i.i.i.i811 = icmp eq i32 %i.aiw, 0
  br i1 %.not34.i.i.i.i811, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i812

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i812: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i810, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i812
  %.sroa.0.05.i.i.i.i813 = phi ptr [ %i.aiy, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i812 ], [ %.sroa.0982.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i810 ]
  %i.aix = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i813, i64 8
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !183 ; 3 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 44
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !254
  %i.ajb = and i32 %i.aja, 8
  %.not3.i.i.i.i814 = icmp eq i32 %i.ajb, 0
  br i1 %.not3.i.i.i.i814, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i812, !llvm.loop !4

_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i812, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i799, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i786, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i773, %.preheader1045, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i810, %.preheader1043, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i797, %.preheader1041, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i784, %.preheader, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i771
  %.sroa.0.1.i.i.i.i808.sink = phi ptr [ %i.aii, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i786 ], [ %i.aia, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i773 ], [ %i.aiq, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i799 ], [ %.sroa.0985.0, %.preheader ], [ %.sroa.0985.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i771 ], [ %.sroa.0984.0, %.preheader1041 ], [ %.sroa.0984.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i784 ], [ %.sroa.0983.1, %.preheader1043 ], [ %.sroa.0983.1, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i797 ], [ %.sroa.0982.0, %.preheader1045 ], [ %.sroa.0982.0, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i810 ], [ %i.aiy, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i812 ]
  %i.ajc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i808.sink, i64 8
  %.sroa.0875.0 = load ptr, ptr %i.ajc, align 8, !tbaa !183 ; 2 uses
  %.not1038 = icmp eq ptr %.sroa.0875.0, null
  br i1 %.not1038, label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776.thread, label %bb.dt

bb.dt:                                            ; preds = %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.ajd = load ptr, ptr %i.agx, align 8, !tbaa !307 ; 2 uses
  store ptr %i.ajd, ptr %42, align 8, !tbaa !329
  store ptr %2, ptr %i.agy, align 8, !tbaa !330
  store ptr null, ptr %i.agz, align 8, !tbaa !259
  store i32 1, ptr %i.aha, align 8, !tbaa !337
  store i8 1, ptr %i.ahb, align 4, !tbaa !338
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !154, !nonnull !30, !align !155 ; 2 uses
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !21
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 200
  %i.aji = load ptr, ptr %i.ajh, align 8
  %i.ajj = call noundef ptr %i.aji(ptr noundef nonnull align 8 dereferenceable(344) %i.ajf) #22, !inline_history !5
  store ptr %i.ajj, ptr %i.ahc, align 8, !tbaa !339
  %i.ajk = load ptr, ptr %42, align 8, !tbaa !340, !nonnull !30, !align !155
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 16
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !154, !nonnull !30, !align !155 ; 2 uses
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !21
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 128
  %i.ajp = load ptr, ptr %i.ajo, align 8
  %i.ajq = call noundef ptr %i.ajp(ptr noundef nonnull align 8 dereferenceable(344) %i.ajm) #22, !inline_history !5
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajq, i64 8
  %i.ajs = load ptr, ptr %i.ajr, align 8, !tbaa !263
  %i.ajt = getelementptr inbounds i8, ptr %i.ajs, i64 -96
  store ptr %i.ajt, ptr %i.ahd, align 8, !tbaa !341
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ahe, i8 0, i64 32, i1 false)
  store ptr %.sroa.0875.0, ptr %i.agz, align 8
  %i.aju = icmp eq i32 %.sroa.0.0.copyload.i763, 86
  %spec.select1030 = select i1 %i.aju, i32 16, i32 %.sroa.0.0.copyload.i763
  %i.ajv = load i32, ptr %i.ahg, align 8, !tbaa !314
  %i.ajw = add i32 %i.ajv, %i.aht
  %i.ajx = zext i32 %i.ajw to i64
  %i.ajy = load ptr, ptr %i.ahf, align 8, !tbaa !315
  %i.ajz = getelementptr inbounds nuw [40 x i8], ptr %i.ajy, i64 %i.ajx
  %i.aka = load i64, ptr %i.ajz, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.akb = load ptr, ptr %i.ahc, align 8, !tbaa !342, !nonnull !30, !align !155 ; 2 uses
  %i.akc = load i8, ptr %i.ahb, align 4, !tbaa !338, !range !29, !noundef !30
  %i.akd = trunc nuw i8 %i.akc to i1
  %i.ake = load ptr, ptr %i.akb, align 8, !tbaa !21
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 16
  %i.akg = load ptr, ptr %i.akf, align 8
  %i.akh = call noundef i64 %i.akg(ptr noundef nonnull align 8 dereferenceable(240) %i.akb, i32 %spec.select1030, i1 noundef zeroext %i.akd) #22, !inline_history !6
  %i.aki = trunc i64 %i.akh to i32
  store ptr null, ptr %7, align 8, !tbaa !353, !alias.scope !803
  store i32 %i.aki, ptr %i.ahh, align 8, !tbaa !312, !alias.scope !803
  store i64 %i.aka, ptr %.sroa.43.0..sroa_idx.i.i816, align 8, !tbaa !354, !alias.scope !803
  store i32 -1, ptr %.sroa.5.0..sroa_idx.i.i817, align 8, !tbaa !312, !alias.scope !803
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i818, align 4, !tbaa !312, !alias.scope !803
  store i8 0, ptr %i.ahi, align 8, !tbaa !355, !alias.scope !803
  store i8 3, ptr %i.ahj, align 8, !tbaa !356, !alias.scope !803
  store ptr null, ptr %i.ahk, align 8, !tbaa !357, !alias.scope !803
  call void @_ZNK4llvm14CFIInstBuilder13insertCFIInstERKNS_16MCCFIInstructionE(ptr noundef nonnull align 8 dereferenceable(80) %42, ptr noundef nonnull align 8 dereferenceable(88) %7)
  %i.akj = load i8, ptr %i.ahi, align 8, !tbaa !355
  switch i8 %i.akj, label %bb.dw [
    i8 -1, label %_ZNK4llvm14CFIInstBuilder11buildOffsetENS_10MCRegisterEl.exit
    i8 0, label %_ZNK4llvm14CFIInstBuilder11buildOffsetENS_10MCRegisterEl.exit
    i8 1, label %bb.du
    i8 2, label %_ZNK4llvm14CFIInstBuilder11buildOffsetENS_10MCRegisterEl.exit
    i8 3, label %_ZNK4llvm14CFIInstBuilder11buildOffsetENS_10MCRegisterEl.exit
    i8 4, label %bb.dv
    i8 5, label %_ZNK4llvm14CFIInstBuilder11buildOffsetENS_10MCRegisterEl.exit
    i8 6, label %_ZNK4llvm14CFIInstBuilder11buildOffsetENS_10MCRegisterEl.exit
  ], !prof !358

bb.du:                                            ; preds = %bb.dt
  %i.akk = load ptr, ptr %i.ahl, align 8, !tbaa !359 ; 2 uses
  %i.akl = icmp eq ptr %i.akk, %i.ahm
  br i1 %i.akl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i824, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i823

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i823: ; preds = %bb.du
  %i.akm = load i64, ptr %i.ahm, align 8, !tbaa !35
  %i.akn = add i64 %i.akm, 1
  call void @_ZdlPvm(ptr noundef %i.akk, i64 noundef %i.akn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i824

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i824: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i823
  %i.ako = load ptr, ptr %i.ahh, align 8, !tbaa !361 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i825 = icmp eq ptr %i.ako, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i825, label %_ZNK4llvm14CFIInstBuilder11buildOffsetENS_10MCRegisterEl.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i820

bb.dv:                                            ; preds = %bb.dt
  %i.akp = load ptr, ptr %.sroa.43.0..sroa_idx.i.i816, align 8, !tbaa !364 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i819 = icmp eq ptr %i.akp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i16.i.i.i.i.i819, label %_ZNK4llvm14CFIInstBuilder11buildOffsetENS_10MCRegisterEl.exit, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i820

bb.dw:                                            ; preds = %bb.dt
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i820: ; preds = %bb.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i824
  %.sink26.i.i.i.i.i821 = phi i64 [ 16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i824 ], [ 24, %bb.dv ]
  %.sink23.i.i.i.i.i822 = phi ptr [ %i.ako, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i824 ], [ %i.akp, %bb.dv ] ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ahh, i64 %.sink26.i.i.i.i.i821
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !365
  %i.aks = ptrtoint ptr %i.akr to i64
  %i.akt = ptrtoint ptr %.sink23.i.i.i.i.i822 to i64
  %i.aku = sub i64 %i.aks, %i.akt
  call void @_ZdlPvm(ptr noundef nonnull %.sink23.i.i.i.i.i822, i64 noundef %i.aku) #24
  br label %_ZNK4llvm14CFIInstBuilder11buildOffsetENS_10MCRegisterEl.exit

_ZNK4llvm14CFIInstBuilder11buildOffsetENS_10MCRegisterEl.exit: ; preds = %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %bb.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i824, %bb.dv, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4llvm16MCCFIInstruction12CommonFieldsENS5_12EscapeFieldsENS5_11LabelFieldsENS5_18RegisterPairFieldsENS5_21VectorRegistersFieldsENS5_18VectorOffsetFieldsENS5_24VectorRegisterMaskFieldsEEE8_M_resetEvEUlOT_E_RSt7variantIJS6_S7_S8_S9_SA_SB_SC_EEEJEEESt16integer_sequenceImJLm1EEEE14__visit_invokeESH_SK_.exit.sink.split.i.i.i.i.i820
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776.thread

_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776.thread: ; preds = %bb.ds, %_ZNK4llvm14CFIInstBuilder11buildOffsetENS_10MCRegisterEl.exit, %_ZSt9__advanceIN4llvm26MachineInstrBundleIteratorINS0_12MachineInstrELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit776
  %.not1037 = icmp eq ptr %i.ahr, %i.agv
  br i1 %.not1037, label %._crit_edge1138, label %bb.ds

._crit_edge1138.thread:                           ; preds = %.critedge11, %._crit_edge1138
  call fastcc void @_ZN12_GLOBAL__N_119StackAdjustingInsts17emitDefCFAOffsetsERN4llvm17MachineBasicBlockEb(ptr noundef nonnull align 8 dereferenceable(80) %25, ptr noundef nonnull align 8 dereferenceable(360) %2, i1 noundef zeroext %i.bq)
  br label %.critedge427

.critedge427:                                     ; preds = %.thread1025, %_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit762, %.thread1027, %._crit_edge1138.thread, %._crit_edge1138
  %i.akv = load ptr, ptr %i.i, align 8, !tbaa !186, !nonnull !30, !align !155
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akv, i64 612
  %i.akx = load i32, ptr %i.akw, align 4, !tbaa !804
  %i.aky = icmp eq i32 %i.akx, 3
  br i1 %i.aky, label %bb.dx, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit827.thread

bb.dx:                                            ; preds = %.critedge427
  %i.akz = load ptr, ptr %1, align 8, !tbaa !178, !nonnull !30, !align !155
  %i.ala = call noundef zeroext i1 @_ZNK4llvm8Function14hasFnAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140) %i.akz, i32 noundef 21) #22
  br i1 %i.ala, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit827.thread, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit827

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit827: ; preds = %bb.dx
  %i.alb = load ptr, ptr %0, align 8, !tbaa !21
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 384
  %i.ald = load ptr, ptr %i.alc, align 8
  %i.ale = call noundef zeroext i1 %i.ald(ptr noundef nonnull align 8 dereferenceable(21) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) #22, !inline_history !2
  br i1 %i.ale, label %bb.dy, label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit827.thread

bb.dy:                                            ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit827
  %i.alf = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.alg = load i64, ptr %i.alf, align 8, !tbaa !805
  %i.alh = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ali = load i32, ptr %i.alh, align 8, !tbaa !319
  %i.alj = zext i32 %i.ali to i64
  %i.alk = sub nsw i64 %i.alg, %i.alj
  store i64 %i.alk, ptr %i.alf, align 8, !tbaa !805
  br label %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit827.thread

_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit827.thread: ; preds = %bb.dx, %bb.dy, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit827, %.critedge427
  %i.all = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %.0377.lcssa, ptr %i.all, align 8, !tbaa !366
  %i.alm = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %.0379.lcssa, ptr %i.alm, align 8, !tbaa !367
  %i.aln = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  store i32 %.0381.lcssa, ptr %i.aln, align 4, !tbaa !368
  %i.alo = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 %.0383.lcssa, ptr %i.alo, align 8, !tbaa !369
  %i.alp = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  store i32 %57, ptr %i.alp, align 4, !tbaa !370
  %i.alq = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 %.0385.lcssa, ptr %i.alq, align 8, !tbaa !371
  %i.alr = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  store i32 %.0387.lcssa, ptr %i.alr, align 4, !tbaa !372
  %i.als = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.alt = load i32, ptr %i.als, align 8, !tbaa !313
  %.not419 = icmp eq i32 %i.alt, 0
  br i1 %.not419, label %bb.dz, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

bb.dz:                                            ; preds = %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit827.thread
  %i.alu = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 536
  %i.alw = load ptr, ptr %i.alv, align 8
  %i.alx = call noundef zeroext i1 %i.alw(ptr noundef nonnull align 8 dereferenceable(316) %i.n, ptr noundef nonnull align 8 dereferenceable(1065) %1) #22, !inline_history !1
  br i1 %i.alx, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit: ; preds = %bb.dz
  %i.aly = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 528
  %i.ama = load ptr, ptr %i.alz, align 8
  %i.amb = call noundef zeroext i1 %i.ama(ptr noundef nonnull align 8 dereferenceable(316) %i.n, ptr noundef nonnull align 8 dereferenceable(1065) %1) #22, !inline_history !1
  br i1 %i.amb, label %bb.ea, label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

bb.ea:                                            ; preds = %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit
  %i.amc = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.0.0.copyload.i828 = load i8, ptr %i.amc, align 8, !tbaa !35 ; 2 uses
  %i.amd = load i8, ptr %i.t, align 8, !tbaa !197, !range !29, !noundef !30
  %i.ame = trunc nuw i8 %i.amd to i1
  %.sroa.024.0.copyload = load ptr, ptr %23, align 8 ; 2 uses
  br i1 %i.ame, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit832, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.amf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val440 = load ptr, ptr %i.amf, align 8, !tbaa !154
  call fastcc void @_ZL24emitAligningInstructionsRN4llvm15MachineFunctionEPNS_15ARMFunctionInfoERKNS_15TargetInstrInfoERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocEjNS_5AlignEb(ptr %.val440, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.s, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %.sroa.024.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 17, i8 %.sroa.0.0.copyload.i828)
  br label %bb.ec

_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit832: ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  %.sroa.023.0.copyload = load ptr, ptr %24, align 8, !tbaa !260
  store ptr %.sroa.023.0.copyload, ptr %43, align 8, !tbaa !260
  %i.amg = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.amh = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amg, i8 0, i64 24, i1 false)
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !263
  %i.amj = getelementptr inbounds i8, ptr %i.ami, i64 -143872
  %i.amk = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %.sroa.024.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(32) %i.amj, i32 78) ; 2 uses
  %i.aml = extractvalue { ptr, ptr } %i.amk, 0    ; 3 uses
  %i.amm = extractvalue { ptr, ptr } %i.amk, 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.amn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.amn, align 8, !tbaa !326, !alias.scope !806
  %i.amo = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 17, ptr %i.amo, align 4, !tbaa !35, !alias.scope !806
  %i.amp = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amp, i8 0, i64 16, i1 false), !alias.scope !806
  store i32 67108864, ptr %6, align 8, !alias.scope !806
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.amm, ptr noundef nonnull align 8 dereferenceable(1065) %i.aml, ptr noundef nonnull align 8 dereferenceable(32) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  store i32 1, ptr %44, align 8, !alias.scope !807
  %i.amq = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr null, ptr %i.amq, align 8, !tbaa !326, !alias.scope !807
  %i.amr = getelementptr inbounds nuw i8, ptr %44, i64 16
  store i64 14, ptr %i.amr, align 8, !tbaa !35, !alias.scope !807
  %i.ams = getelementptr inbounds nuw i8, ptr %44, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ams, i8 0, i64 32, i1 false), !alias.scope !808
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.amm, ptr noundef nonnull align 8 dereferenceable(1065) %i.aml, ptr noundef nonnull align 8 dereferenceable(32) %44) #22
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.amm, ptr noundef nonnull align 8 dereferenceable(1065) %i.aml, ptr noundef nonnull align 8 dereferenceable(32) %i.ams) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %.sroa.022.0.copyload = load ptr, ptr %23, align 8
  %i.amt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val439 = load ptr, ptr %i.amt, align 8, !tbaa !154
  call fastcc void @_ZL24emitAligningInstructionsRN4llvm15MachineFunctionEPNS_15ARMFunctionInfoERKNS_15TargetInstrInfoERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_8DebugLocEjNS_5AlignEb(ptr %.val439, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.s, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %.sroa.022.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 78, i8 %.sroa.0.0.copyload.i828)
  %.sroa.020.0.copyload = load ptr, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
  %.sroa.019.0.copyload = load ptr, ptr %24, align 8, !tbaa !260
  store ptr %.sroa.019.0.copyload, ptr %45, align 8, !tbaa !260
  %i.amu = getelementptr inbounds nuw i8, ptr %45, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amu, i8 0, i64 24, i1 false)
  %i.amv = load ptr, ptr %i.amh, align 8, !tbaa !263
  %i.amw = getelementptr inbounds i8, ptr %i.amv, i64 -143872
  %i.amx = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %.sroa.020.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(32) %i.amw, i32 17) ; 2 uses
  %i.amy = extractvalue { ptr, ptr } %i.amx, 0    ; 3 uses
  %i.amz = extractvalue { ptr, ptr } %i.amx, 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ana = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.ana, align 8, !tbaa !326, !alias.scope !809
  %i.anb = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 78, ptr %i.anb, align 4, !tbaa !35, !alias.scope !809
  %i.anc = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anc, i8 0, i64 16, i1 false), !alias.scope !809
  store i32 67108864, ptr %5, align 8, !alias.scope !809
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.amz, ptr noundef nonnull align 8 dereferenceable(1065) %i.amy, ptr noundef nonnull align 8 dereferenceable(32) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #22
  store i32 1, ptr %46, align 8, !alias.scope !810
  %i.and = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr null, ptr %i.and, align 8, !tbaa !326, !alias.scope !810
  %i.ane = getelementptr inbounds nuw i8, ptr %46, i64 16
  store i64 14, ptr %i.ane, align 8, !tbaa !35, !alias.scope !810
  %i.anf = getelementptr inbounds nuw i8, ptr %46, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anf, i8 0, i64 32, i1 false), !alias.scope !811
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.amz, ptr noundef nonnull align 8 dereferenceable(1065) %i.amy, ptr noundef nonnull align 8 dereferenceable(32) %46) #22
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.amz, ptr noundef nonnull align 8 dereferenceable(1065) %i.amy, ptr noundef nonnull align 8 dereferenceable(32) %i.anf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %bb.ec

bb.ec:                                            ; preds = %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit832, %bb.eb
  %i.ang = getelementptr inbounds nuw i8, ptr %i.f, i64 21
  store i8 1, ptr %i.ang, align 1, !tbaa !328
  br label %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread

_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread: ; preds = %bb.dz, %bb.ec, %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit, %_ZNK4llvm19TargetFrameLowering5hasFPERKNS_15MachineFunctionE.exit827.thread
  %i.anh = call noundef zeroext i1 @_ZNK4llvm19ARMBaseRegisterInfo14hasBasePointerERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(320) %i.n, ptr noundef nonnull align 8 dereferenceable(1065) %1) #22
  br i1 %i.anh, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %_ZNK4llvm18TargetRegisterInfo19hasStackRealignmentERKNS_15MachineFunctionE.exit.thread
  %i.ani = getelementptr inbounds nuw i8, ptr %2, i64 235
  %i.anj = load i8, ptr %i.ani, align 1, !tbaa !812, !range !29, !noundef !30
  %i.ank = trunc nuw i8 %i.anj to i1
  br i1 %i.ank, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.sroa.015.0.copyload = load ptr, ptr %23, align 8 ; 2 uses
  %i.anl = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.n, i64 316 ; 2 uses
  br i1 %i.v, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit844, label %_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit840

_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit840: ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #22
  %.sroa.017.0.copyload = load ptr, ptr %24, align 8, !tbaa !260
  store ptr %.sroa.017.0.copyload, ptr %47, align 8, !tbaa !260
  %i.ann = getelementptr inbounds nuw i8, ptr %47, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ann, i8 0, i64 24, i1 false)
  %i.ano = load ptr, ptr %i.anl, align 8, !tbaa !263
  %i.anp = getelementptr inbounds i8, ptr %i.ano, i64 -32224
  %i.anq = load i32, ptr %i.anm, align 4, !tbaa !394
  %i.anr = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %.sroa.015.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(32) %i.anp, i32 %i.anq) ; 2 uses
  %i.ans = extractvalue { ptr, ptr } %i.anr, 0    ; 4 uses
  %i.ant = extractvalue { ptr, ptr } %i.anr, 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.anu = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.anu, align 8, !tbaa !326, !alias.scope !813
  %i.anv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 17, ptr %i.anv, align 4, !tbaa !35, !alias.scope !813
  %i.anw = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anw, i8 0, i64 16, i1 false), !alias.scope !813
  store i32 0, ptr %4, align 8, !alias.scope !813
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ant, ptr noundef nonnull align 8 dereferenceable(1065) %i.ans, ptr noundef nonnull align 8 dereferenceable(32) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  store i32 1, ptr %48, align 8, !alias.scope !814
  %i.anx = getelementptr inbounds nuw i8, ptr %48, i64 8
  store ptr null, ptr %i.anx, align 8, !tbaa !326, !alias.scope !814
  %i.any = getelementptr inbounds nuw i8, ptr %48, i64 16
  store i64 14, ptr %i.any, align 8, !tbaa !35, !alias.scope !814
  %i.anz = getelementptr inbounds nuw i8, ptr %48, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.anz, i8 0, i64 32, i1 false), !alias.scope !815
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ant, ptr noundef nonnull align 8 dereferenceable(1065) %i.ans, ptr noundef nonnull align 8 dereferenceable(32) %48) #22
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ant, ptr noundef nonnull align 8 dereferenceable(1065) %i.ans, ptr noundef nonnull align 8 dereferenceable(32) %i.anz) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %49, i8 0, i64 32, i1 false), !alias.scope !816
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.ant, ptr noundef nonnull align 8 dereferenceable(1065) %i.ans, ptr noundef nonnull align 8 dereferenceable(32) %49) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  br label %bb.ef

_ZNK4llvm19MachineInstrBuilder3addENS_8ArrayRefINS_14MachineOperandEEE.exit844: ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  %.sroa.014.0.copyload = load ptr, ptr %24, align 8, !tbaa !260
  store ptr %.sroa.014.0.copyload, ptr %50, align 8, !tbaa !260
  %i.aoa = getelementptr inbounds nuw i8, ptr %50, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aoa, i8 0, i64 24, i1 false)
  %i.aob = load ptr, ptr %i.anl, align 8, !tbaa !263
  %i.aoc = getelementptr inbounds i8, ptr %i.aob, i64 -143872
  %i.aod = load i32, ptr %i.anm, align 4, !tbaa !394
  %i.aoe = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr %.sroa.015.0.copyload, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(32) %i.aoc, i32 %i.aod) ; 2 uses
  %i.aof = extractvalue { ptr, ptr } %i.aoe, 0    ; 3 uses
  %i.aog = extractvalue { ptr, ptr } %i.aoe, 1    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.aoh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.aoh, align 8, !tbaa !326, !alias.scope !817
  %i.aoi = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 17, ptr %i.aoi, align 4, !tbaa !35, !alias.scope !817
  %i.aoj = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aoj, i8 0, i64 16, i1 false), !alias.scope !817
  store i32 0, ptr %3, align 8, !alias.scope !817
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.aog, ptr noundef nonnull align 8 dereferenceable(1065) %i.aof, ptr noundef nonnull align 8 dereferenceable(32) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #22
  store i32 1, ptr %51, align 8, !alias.scope !818
  %i.aok = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr null, ptr %i.aok, align 8, !tbaa !326, !alias.scope !818
  %i.aol = getelementptr inbounds nuw i8, ptr %51, i64 16
  store i64 14, ptr %i.aol, align 8, !tbaa !35, !alias.scope !818
  %i.aom = getelementptr inbounds nuw i8, ptr %51, i64 32 ; 2 uses
end_hunk_2
