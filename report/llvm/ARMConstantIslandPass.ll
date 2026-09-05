Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMConstantIslandPass?download=true
inline.NumInlined: 2880
inline.NumDeleted: 1313
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12_GLOBAL__N_118ARMConstantIslands20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a

bb.ba:                                            ; preds = %.lr.ph.i91.1
  store i64 %i.rc, ptr %i.si, align 8
  %.pre.i92.1 = load ptr, ptr %37, align 8, !tbaa !27
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.lr.ph.i91.1
  %i.sl = phi ptr [ %i.sg, %.lr.ph.i91.1 ], [ %.pre.i92.1, %bb.ba ]
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.od
  br i1 %exitcond.i.1, label %._crit_edge.i89, label %.lr.ph.i91, !llvm.loop !369

_ZN12_GLOBAL__N_118ARMConstantIslands23doInitialConstPlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit: ; preds = %._crit_edge65.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %.pre883 = load ptr, ptr %i.s, align 8, !tbaa !112
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN12_GLOBAL__N_118ARMConstantIslands23doInitialConstPlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit, %_ZL11AlignBlocksPN4llvm15MachineFunctionEPKNS_12ARMSubtargetE.exit
  %i.sm = phi ptr [ %.pre884.a, %_ZL11AlignBlocksPN4llvm15MachineFunctionEPKNS_12ARMSubtargetE.exit ], [ %.pre883, %_ZN12_GLOBAL__N_118ARMConstantIslands23doInitialConstPlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit ] ; 3 uses
  %.sroa.0525.0 = phi ptr [ null, %_ZL11AlignBlocksPN4llvm15MachineFunctionEPKNS_12ARMSubtargetE.exit ], [ %.sroa.0525.4, %_ZN12_GLOBAL__N_118ARMConstantIslands23doInitialConstPlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit ] ; 4 uses
  %.sroa.12.0 = phi ptr [ null, %_ZL11AlignBlocksPN4llvm15MachineFunctionEPKNS_12ARMSubtargetE.exit ], [ %.sroa.12.4, %_ZN12_GLOBAL__N_118ARMConstantIslands23doInitialConstPlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit ] ; 4 uses
  %.sroa.21.0 = phi ptr [ null, %_ZL11AlignBlocksPN4llvm15MachineFunctionEPKNS_12ARMSubtargetE.exit ], [ %.sroa.21.4, %_ZN12_GLOBAL__N_118ARMConstantIslands23doInitialConstPlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit ] ; 4 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 64
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !658 ; 3 uses
  %.not = icmp eq ptr %i.so, null
  br i1 %.not, label %_ZN12_GLOBAL__N_118ARMConstantIslands27doInitialJumpTablePlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.ss = load i32, ptr %i.so, align 8, !tbaa !792
  %.not.i94 = icmp eq i32 %i.ss, 5
  br i1 %.not.i94, label %bb.be, label %_ZN12_GLOBAL__N_118ARMConstantIslands27doInitialJumpTablePlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit

bb.be:                                            ; preds = %bb.bd
  %i.st = getelementptr inbounds nuw i8, ptr %i.sm, i64 304
  %i.su = getelementptr inbounds nuw i8, ptr %i.sm, i64 296 ; 2 uses
  %.sroa.076.090.i = load ptr, ptr %i.st, align 8, !tbaa !225 ; 2 uses
  %.not8091.i = icmp eq ptr %.sroa.076.090.i, %i.su
  br i1 %.not8091.i, label %_ZN12_GLOBAL__N_118ARMConstantIslands27doInitialJumpTablePlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit, label %.lr.ph95.i

.lr.ph95.i:                                       ; preds = %bb.be
  %.val36.i = load ptr, ptr %i.sq, align 8, !tbaa !100
  %i.sv = ptrtoint ptr %.val36.i to i64
  %.val35.i = load ptr, ptr %i.sp, align 8, !tbaa !99
  %i.sw = ptrtoint ptr %.val35.i to i64
  %i.sx = sub i64 %i.sv, %i.sw
  %i.sy = sdiv exact i64 %i.sx, 24
  %i.sz = trunc i64 %i.sy to i32
  %i.ta = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.tb = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.tc = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.te = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.tf = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.tg = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.th = getelementptr inbounds nuw i8, ptr %32, i64 12
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.tj = getelementptr inbounds nuw i8, ptr %33, i64 4 ; 2 uses
  br label %bb.bf

._crit_edge.i109:                                 ; preds = %bb.bs
  %.not32.i = icmp eq ptr %.3.i, null
  br i1 %.not32.i, label %_ZN12_GLOBAL__N_118ARMConstantIslands27doInitialJumpTablePlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit, label %bb.bt

bb.bf:                                            ; preds = %bb.bs, %.lr.ph95.i
  %.sroa.0525.5 = phi ptr [ %.sroa.0525.0, %.lr.ph95.i ], [ %.sroa.0525.7, %bb.bs ] ; 7 uses
  %.sroa.12.5 = phi ptr [ %.sroa.12.0, %.lr.ph95.i ], [ %.sroa.12.7, %bb.bs ] ; 6 uses
  %.sroa.21.5 = phi ptr [ %.sroa.21.0, %.lr.ph95.i ], [ %.sroa.21.7, %bb.bs ] ; 4 uses
  %.sroa.076.094.i = phi ptr [ %.sroa.076.090.i, %.lr.ph95.i ], [ %.sroa.076.0.i, %bb.bs ] ; 5 uses
  %.093.i = phi i32 [ %i.sz, %.lr.ph95.i ], [ %.2.i108, %bb.bs ] ; 4 uses
  %.02992.i = phi ptr [ null, %.lr.ph95.i ], [ %.3.i, %bb.bs ] ; 4 uses
  %i.tk = call ptr @_ZN4llvm17MachineBasicBlock20getLastNonDebugInstrEb(ptr noundef nonnull align 8 dereferenceable(360) %.sroa.076.094.i, i1 noundef zeroext true) #19 ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.076.094.i, i64 48 ; 3 uses
  %.not8185.i = icmp eq ptr %i.tk, %i.tl
  br i1 %.not8185.i, label %.critedge.i, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.bf, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i
  %.sroa.067.086.i = phi ptr [ %.sroa.0.1.i.i.i.i97, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i ], [ %i.tk, %bb.bf ] ; 3 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.067.086.i, i64 52
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !657 ; 2 uses
  switch i32 %i.tn, label %_ZN4llvmL31isSpeculationBarrierEndBBOpcodeEi.exit.i [
    i32 762, label %.critedge2.i
    i32 459, label %.critedge2.i
    i32 458, label %.critedge2.i
    i32 763, label %.critedge2.i
  ]

_ZN4llvmL31isSpeculationBarrierEndBBOpcodeEi.exit.i: ; preds = %.lr.ph.i95
  %.off.i.i = add i32 %i.tn, -14
  %switch.i.i = icmp ult i32 %.off.i.i, 5
  br i1 %switch.i.i, label %.critedge2.i, label %.critedge.i

.critedge2.i:                                     ; preds = %_ZN4llvmL31isSpeculationBarrierEndBBOpcodeEi.exit.i, %.lr.ph.i95, %.lr.ph.i95, %.lr.ph.i95, %.lr.ph.i95
  %.0.copyload.i.i.i.i.i.i.i.i.i.i96 = load i64, ptr %.sroa.067.086.i, align 8
  %i.to = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i96, -8
  %i.tp = inttoptr i64 %i.to to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tp) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i = load i64, ptr %i.tp, align 8
  %i.tq = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i, 4
  %.not.i5.i.i.i = icmp eq i64 %i.tq, 0
  br i1 %.not.i5.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i116, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i116: ; preds = %.critedge2.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 44
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !243
  %i.tt = and i32 %i.ts, 4
  %.not45.i.i.i.i = icmp eq i32 %i.tt, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i117

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i117: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i116, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i117
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.tv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i117 ], [ %i.tp, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i116 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.tu = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.tv = inttoptr i64 %i.tu to ptr               ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 44
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !243
  %i.ty = and i32 %i.tx, 4
  %.not4.i.i.i.i = icmp eq i32 %i.ty, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i117, !llvm.loop !3

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i117, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i116, %.critedge2.i
  %.sroa.0.1.i.i.i.i97 = phi ptr [ %i.tp, %.critedge2.i ], [ %i.tp, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i116 ], [ %i.tv, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i117 ] ; 3 uses
  %.not81.i = icmp eq ptr %.sroa.0.1.i.i.i.i97, %i.tl
  br i1 %.not81.i, label %.critedge.i, label %.lr.ph.i95, !llvm.loop !370

.critedge.i:                                      ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i, %_ZN4llvmL31isSpeculationBarrierEndBBOpcodeEi.exit.i, %bb.bf
  %.sroa.067.0.lcssa.i = phi ptr [ %i.tk, %bb.bf ], [ %.sroa.067.086.i, %_ZN4llvmL31isSpeculationBarrierEndBBOpcodeEi.exit.i ], [ %.sroa.0.1.i.i.i.i97, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i ] ; 6 uses
  %i.tz = icmp eq ptr %.sroa.067.0.lcssa.i, %i.tl
  br i1 %i.tz, label %bb.bs, label %bb.bg

bb.bg:                                            ; preds = %.critedge.i
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.067.0.lcssa.i, i64 52
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !657
  switch i32 %i.ub, label %bb.bs [
    i32 348, label %bb.bk
    i32 351, label %bb.bk
    i32 781, label %bb.bk
    i32 349, label %bb.bk
    i32 350, label %bb.bk
    i32 696, label %bb.bh
    i32 810, label %bb.bi
    i32 764, label %bb.bi
    i32 811, label %bb.bj
    i32 765, label %bb.bj
  ]

bb.bh:                                            ; preds = %bb.bg
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bg, %bb.bg
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bg, %bb.bg
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg
  %.028.neg.i = phi i64 [ -370, %bb.bj ], [ -368, %bb.bh ], [ -369, %bb.bi ], [ -367, %bb.bg ], [ -367, %bb.bg ], [ -367, %bb.bg ], [ -367, %bb.bg ], [ -367, %bb.bg ]
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.067.0.lcssa.i, i64 16
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !654 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  %i.uf = load i16, ptr %i.ue, align 4, !tbaa !659
  %i.ug = zext i16 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.067.0.lcssa.i, i64 44
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !243 ; 2 uses
  %i.uj = and i32 %i.ui, 12
  %i.uk = icmp eq i32 %i.uj, 0
  %i.ul = and i32 %i.ui, 4
  %i.um = icmp ne i32 %i.ul, 0
  %or.cond.i.i.i98 = or i1 %i.uk, %i.um
  br i1 %or.cond.i.i.i98, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.un = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %i.uo = load i64, ptr %i.un, align 8, !tbaa !656
  %i.up = and i64 %i.uo, 4194304
  %i.uq = icmp ne i64 %i.up, 0
  br label %_ZNK4llvm12MachineInstr12isPredicableENS0_9QueryTypeE.exit.i99

bb.bm:                                            ; preds = %bb.bk
  %i.ur = call noundef zeroext i1 @_ZNK4llvm12MachineInstr19hasPropertyInBundleEmNS0_9QueryTypeE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.067.0.lcssa.i, i64 noundef 4194304, i32 noundef 2) #19
  br label %_ZNK4llvm12MachineInstr12isPredicableENS0_9QueryTypeE.exit.i99

_ZNK4llvm12MachineInstr12isPredicableENS0_9QueryTypeE.exit.i99: ; preds = %bb.bm, %bb.bl
  %.0.i.i.i100 = phi i1 [ %i.uq, %bb.bl ], [ %i.ur, %bb.bm ]
  %.neg.i101 = select i1 %.0.i.i.i100, i64 4294967294, i64 4294967295
  %i.us = add nuw nsw i64 %.neg.i101, %i.ug
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.067.0.lcssa.i, i64 32
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !660
  %i.uv = and i64 %i.us, 4294967295
  %i.uw = getelementptr inbounds nuw [32 x i8], ptr %i.uu, i64 %i.uv
  %.sroa.363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %.sroa.363.0.copyload.i = load i32, ptr %.sroa.363.0..sroa_idx.i, align 8 ; 4 uses
  %i.ux = zext i32 %.sroa.363.0.copyload.i to i64
  %i.uy = load ptr, ptr %i.sr, align 8, !tbaa !663
  %i.uz = getelementptr inbounds nuw [32 x i8], ptr %i.uy, i64 %i.ux ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !309
  %i.vc = load ptr, ptr %i.uz, align 8, !tbaa !109
  %45 = load ptr, ptr %i.s, align 8, !tbaa !112
  %46 = call noundef ptr @_ZN4llvm15MachineFunction23CreateMachineBasicBlockEPKNS_10BasicBlockESt8optionalINS_10UniqueBBIDEE(ptr noundef nonnull align 8 dereferenceable(1065) %45, ptr noundef null, i64 undef, i8 0) #19 ; 8 uses
  %47 = load ptr, ptr %i.s, align 8, !tbaa !112
  %48 = getelementptr inbounds nuw i8, ptr %.sroa.076.094.i, i64 8
  %i.vd = load ptr, ptr %48, align 8, !tbaa !225  ; 3 uses
  %49 = ptrtoint ptr %i.vb to i64
  %50 = ptrtoint ptr %i.vc to i64
  %51 = sub i64 %49, %50
  %52 = lshr exact i64 %51, 1
  %i.ve = getelementptr inbounds nuw i8, ptr %47, i64 296
  call void @_ZN4llvm21ilist_callback_traitsINS_17MachineBasicBlockEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.ve, ptr noundef %46) #19
  %i.vf = load ptr, ptr %i.vd, align 8, !tbaa !294 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %46, i64 8
  store ptr %i.vd, ptr %i.vg, align 8, !tbaa !225
  store ptr %i.vf, ptr %46, align 8, !tbaa !294
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  store ptr %46, ptr %i.vh, align 8, !tbaa !225
  store ptr %46, ptr %i.vd, align 8, !tbaa !294
  %i.vi = getelementptr inbounds nuw i8, ptr %46, i64 56
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !230 ; 4 uses
  %i.vk = load ptr, ptr %i.bb, align 8, !tbaa !221
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !299
  %i.vn = getelementptr inbounds [32 x i8], ptr %i.vm, i64 %.028.neg.i
  %i.vo = getelementptr inbounds nuw i8, ptr %46, i64 32
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !300 ; 4 uses
  %i.vq = call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.vp, ptr noundef nonnull align 8 dereferenceable(32) %i.vn, ptr null, i1 noundef zeroext false) #19 ; 12 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %46, i64 40
  call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.vr, ptr noundef %i.vq) #19
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i102 = load i64, ptr %i.vj, align 8
  %i.vs = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i102, -8 ; 2 uses
  %i.vt = inttoptr i64 %i.vs to ptr
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vq, i64 8
  store ptr %i.vj, ptr %i.vu, align 8, !tbaa !230
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i103 = load i64, ptr %i.vq, align 8
  %i.vv = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i.i103, 7
  %i.vw = or disjoint i64 %i.vv, %i.vs
  store i64 %i.vw, ptr %i.vq, align 8
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  store ptr %i.vq, ptr %i.vx, align 8, !tbaa !230
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i104 = load i64, ptr %i.vj, align 8
  %i.vy = ptrtoint ptr %i.vq to i64
  %i.vz = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i.i104, 7
  %i.wa = or disjoint i64 %i.vz, %i.vy
  store i64 %i.wa, ptr %i.vj, align 8
  %i.wb = add i32 %.093.i, 1
  %i.wc = zext i32 %.093.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  store i32 1, ptr %31, align 8, !alias.scope !793
  store ptr null, ptr %i.ta, align 8, !tbaa !306, !alias.scope !793
  store i64 %i.wc, ptr %i.tb, align 8, !tbaa !307, !alias.scope !793
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.vq, ptr noundef nonnull align 8 dereferenceable(1065) %i.vp, ptr noundef nonnull align 8 dereferenceable(32) %31) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  store ptr null, ptr %i.tc, align 8, !tbaa !306, !alias.scope !794
  store i32 %.sroa.363.0.copyload.i, ptr %i.td, align 8, !tbaa !307, !alias.scope !794
  store i32 8, ptr %30, align 8, !alias.scope !794
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.vq, ptr noundef nonnull align 8 dereferenceable(1065) %i.vp, ptr noundef nonnull align 8 dereferenceable(32) %30) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  %i.wd = and i64 %52, 4294967292
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  store i32 1, ptr %29, align 8, !alias.scope !795
  store ptr null, ptr %i.te, align 8, !tbaa !306, !alias.scope !795
  store i64 %i.wd, ptr %i.tf, align 8, !tbaa !307, !alias.scope !795
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.vq, ptr noundef nonnull align 8 dereferenceable(1065) %i.vp, ptr noundef nonnull align 8 dereferenceable(32) %29) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #19
  %.not.i.i105 = icmp eq ptr %.sroa.12.5, %.sroa.21.5
  br i1 %.not.i.i105, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNK4llvm12MachineInstr12isPredicableENS0_9QueryTypeE.exit.i99
  store ptr %i.vq, ptr %.sroa.12.5, align 8, !tbaa !247
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i106

bb.bo:                                            ; preds = %_ZNK4llvm12MachineInstr12isPredicableENS0_9QueryTypeE.exit.i99
  %i.we = ptrtoint ptr %.sroa.12.5 to i64
  %i.wf = ptrtoint ptr %.sroa.0525.5 to i64
  %i.wg = sub i64 %i.we, %i.wf                    ; 6 uses
  %i.wh = icmp eq i64 %i.wg, 9223372036854775800
  br i1 %i.wh, label %bb.bp, label %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i110

bb.bp:                                            ; preds = %bb.bo
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #21
  unreachable

_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i110: ; preds = %bb.bo
  %i.wi = ashr exact i64 %i.wg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i111 = call i64 @llvm.umax.i64(i64 %i.wi, i64 1)
  %i.wj = add nsw i64 %.sroa.speculated.i.i.i.i111, %i.wi ; 2 uses
  %i.wk = icmp ult i64 %i.wj, %i.wi
  %i.wl = call i64 @llvm.umin.i64(i64 %i.wj, i64 1152921504606846975)
  %i.wm = select i1 %i.wk, i64 1152921504606846975, i64 %i.wl ; 3 uses
  %.not.i.i.i.i112 = icmp ne i64 %i.wm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i112)
  %i.wn = shl nuw nsw i64 %i.wm, 3
  %i.wo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wn) #20 ; 4 uses
  %i.wp = getelementptr inbounds i8, ptr %i.wo, i64 %i.wg ; 2 uses
  store ptr %i.vq, ptr %i.wp, align 8, !tbaa !247
  %i.wq = icmp sgt i64 %i.wg, 0
  br i1 %i.wq, label %bb.bq, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i113

bb.bq:                                            ; preds = %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i110
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wo, ptr align 8 %.sroa.0525.5, i64 %i.wg, i1 false)
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i113

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i113: ; preds = %bb.bq, %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i110
  %.not.i17.i.i.i114 = icmp eq ptr %.sroa.0525.5, null
  br i1 %.not.i17.i.i.i114, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i115, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i113
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0525.5, i64 noundef %i.wg) #22
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i115

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i115: ; preds = %bb.br, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i113
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.wo, i64 %i.wm
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i106

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i106: ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i115, %bb.bn
  %.sroa.0525.6 = phi ptr [ %i.wo, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i115 ], [ %.sroa.0525.5, %bb.bn ]
  %.pn558 = phi ptr [ %i.wp, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i115 ], [ %.sroa.12.5, %bb.bn ]
  %.sroa.21.6 = phi ptr [ %i.wr, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i115 ], [ %.sroa.21.5, %bb.bn ]
  %.sroa.12.6 = getelementptr inbounds nuw i8, ptr %.pn558, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  store ptr %i.vq, ptr %32, align 8, !tbaa !784
  store i32 %.sroa.363.0.copyload.i, ptr %i.tg, align 8, !tbaa !785
  store i32 0, ptr %i.th, align 4, !tbaa !786
  call fastcc void @_ZNSt6vectorIS_IN12_GLOBAL__N_118ARMConstantIslands7CPEntryESaIS2_EESaIS4_EE12emplace_backIJiS2_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.sp, i32 1, ptr noundef nonnull align 8 dereferenceable(16) %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  %.val.i = load ptr, ptr %i.sp, align 8, !tbaa !99
  %.val34.i = load ptr, ptr %i.sq, align 8, !tbaa !100
  %i.ws = ptrtoint ptr %.val34.i to i64
  %i.wt = ptrtoint ptr %.val.i to i64
  %i.wu = sub i64 %i.ws, %i.wt
  %i.wv = sdiv exact i64 %i.wu, 24
  store i32 %.sroa.363.0.copyload.i, ptr %33, align 4, !tbaa !796
  %i.ww = trunc i64 %i.wv to i32
  %i.wx = add i32 %i.ww, -1
  store i32 %i.wx, ptr %i.tj, align 4, !tbaa !797
  %i.wy = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIiiNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiiEEEEiiS3_S6_E24lookupOrInsertIntoBucketIiJiEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ti, ptr noundef nonnull align 4 dereferenceable(8) %33, ptr noundef nonnull align 4 dereferenceable(4) %i.tj), !noalias !798 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  %.not33.i = icmp eq ptr %.02992.i, null
  %spec.select.i107 = select i1 %.not33.i, ptr %.sroa.076.094.i, ptr %.02992.i
  br label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i106, %bb.bg, %.critedge.i
  %.sroa.0525.7 = phi ptr [ %.sroa.0525.5, %.critedge.i ], [ %.sroa.0525.5, %bb.bg ], [ %.sroa.0525.6, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i106 ] ; 3 uses
  %.sroa.12.7 = phi ptr [ %.sroa.12.5, %.critedge.i ], [ %.sroa.12.5, %bb.bg ], [ %.sroa.12.6, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i106 ] ; 3 uses
  %.sroa.21.7 = phi ptr [ %.sroa.21.5, %.critedge.i ], [ %.sroa.21.5, %bb.bg ], [ %.sroa.21.6, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i106 ] ; 3 uses
  %.3.i = phi ptr [ %.02992.i, %.critedge.i ], [ %.02992.i, %bb.bg ], [ %spec.select.i107, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i106 ] ; 3 uses
  %.2.i108 = phi i32 [ %.093.i, %.critedge.i ], [ %.093.i, %bb.bg ], [ %i.wb, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i106 ]
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.076.094.i, i64 8
  %.sroa.076.0.i = load ptr, ptr %i.wz, align 8, !tbaa !225 ; 2 uses
  %.not80.i = icmp eq ptr %.sroa.076.0.i, %i.su
  br i1 %.not80.i, label %._crit_edge.i109, label %bb.bf

bb.bt:                                            ; preds = %._crit_edge.i109
  %i.xa = load ptr, ptr %i.s, align 8, !tbaa !112
  call void @_ZN4llvm15MachineFunction14RenumberBlocksEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(1065) %i.xa, ptr noundef nonnull %.3.i) #19
  br label %_ZN12_GLOBAL__N_118ARMConstantIslands27doInitialJumpTablePlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit

_ZN12_GLOBAL__N_118ARMConstantIslands27doInitialJumpTablePlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit: ; preds = %bb.bt, %._crit_edge.i109, %bb.be, %bb.bd, %bb.bc
  %.sroa.0525.1 = phi ptr [ %.sroa.0525.0, %bb.bc ], [ %.sroa.0525.0, %bb.be ], [ %.sroa.0525.7, %._crit_edge.i109 ], [ %.sroa.0525.7, %bb.bt ], [ %.sroa.0525.0, %bb.bd ] ; 5 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0, %bb.bc ], [ %.sroa.12.0, %bb.be ], [ %.sroa.12.7, %._crit_edge.i109 ], [ %.sroa.12.7, %bb.bt ], [ %.sroa.12.0, %bb.bd ]
  %.sroa.21.1 = phi ptr [ %.sroa.21.0, %bb.bc ], [ %.sroa.21.0, %bb.be ], [ %.sroa.21.7, %._crit_edge.i109 ], [ %.sroa.21.7, %bb.bt ], [ %.sroa.21.0, %bb.bd ]
  %i.xb = load ptr, ptr %i.bq, align 8, !tbaa !533
  %i.xc = ptrtoint ptr %.sroa.12.1 to i64
  %i.xd = ptrtoint ptr %.sroa.0525.1 to i64       ; 2 uses
  %i.xe = sub i64 %i.xc, %i.xd
  %i.xf = lshr exact i64 %i.xe, 3
  %i.xg = trunc i64 %i.xf to i32
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xb, i64 76
  store i32 %i.xg, ptr %i.xh, align 4, !tbaa !799
  %i.xi = load ptr, ptr %i.an, align 8, !tbaa !111 ; 7 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 24 ; 2 uses
  %i.xk = load ptr, ptr %i.xi, align 8, !tbaa !800, !nonnull !24, !align !218 ; 3 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 88
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 96
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !309
  %i.xo = load ptr, ptr %i.xl, align 8, !tbaa !109
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = ptrtoint ptr %i.xo to i64
  %i.xr = sub i64 %i.xp, %i.xq
  %i.xs = lshr exact i64 %i.xr, 3                 ; 2 uses
  %i.xt = trunc i64 %i.xs to i32
  %i.xu = and i64 %i.xs, 4294967295               ; 6 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xi, i64 32 ; 3 uses
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !36
  %i.xx = zext i32 %i.xw to i64                   ; 3 uses
  %i.xy = icmp eq i64 %i.xu, %i.xx
  br i1 %i.xy, label %_ZN4llvm15SmallVectorImplINS_14BasicBlockInfoEE6resizeEm.exit.i.i, label %bb.bu

bb.bu:                                            ; preds = %_ZN12_GLOBAL__N_118ARMConstantIslands27doInitialJumpTablePlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit
  %i.xz = icmp samesign ult i64 %i.xu, %i.xx
  br i1 %i.xz, label %.sink.split.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xi, i64 36
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !37
  %i.yc = zext i32 %i.yb to i64
  %i.yd = icmp samesign ugt i64 %i.xu, %i.yc
  br i1 %i.yd, label %bb.bw, label %_ZN4llvm15SmallVectorImplINS_14BasicBlockInfoEE7reserveEm.exit.i.i.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xi, i64 40
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.xj, ptr noundef nonnull %i.ye, i64 noundef %i.xu, i64 noundef 12) #19
  %.pre.i.i.i.i = load i32, ptr %i.xv, align 8, !tbaa !36
  %.pre13.i.i.i.i = zext i32 %.pre.i.i.i.i to i64
  br label %_ZN4llvm15SmallVectorImplINS_14BasicBlockInfoEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplINS_14BasicBlockInfoEE7reserveEm.exit.i.i.i.i: ; preds = %bb.bw, %bb.bv
  %.pre-phi.i.i.i.i = phi i64 [ %i.xx, %bb.bv ], [ %.pre13.i.i.i.i, %bb.bw ]
  %.pre-phi.i.fr.i.i.i = freeze i64 %.pre-phi.i.i.i.i ; 3 uses
  %.not11.i.i.i.i = icmp samesign eq i64 %i.xu, %.pre-phi.i.fr.i.i.i
  br i1 %.not11.i.i.i.i, label %.sink.split.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN4llvm15SmallVectorImplINS_14BasicBlockInfoEE7reserveEm.exit.i.i.i.i
  %i.yf = load ptr, ptr %i.xj, align 8, !tbaa !27
  %i.yg = getelementptr [12 x i8], ptr %i.yf, i64 %.pre-phi.i.fr.i.i.i
  %reass.add.i.i = sub i64 %i.xu, %.pre-phi.i.fr.i.i.i
  %reass.mul.i.i = mul i64 %reass.add.i.i, 12     ; 2 uses
  %i.yh = add i64 %reass.mul.i.i, -12
  %i.yi = urem i64 %i.yh, 12
  %i.yj = sub i64 %reass.mul.i.i, %i.yi
  call void @llvm.memset.p0.i64(ptr align 4 %i.yg, i8 0, i64 %i.yj, i1 false)
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.preheader.i.i.i.i, %_ZN4llvm15SmallVectorImplINS_14BasicBlockInfoEE7reserveEm.exit.i.i.i.i, %bb.bu
  store i32 %i.xt, ptr %i.xv, align 8, !tbaa !36
  %.pre.i.i118 = load ptr, ptr %i.xi, align 8, !tbaa !800
  br label %_ZN4llvm15SmallVectorImplINS_14BasicBlockInfoEE6resizeEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_14BasicBlockInfoEE6resizeEm.exit.i.i: ; preds = %.sink.split.i.i.i.i, %_ZN12_GLOBAL__N_118ARMConstantIslands27doInitialJumpTablePlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit
  %i.yk = phi ptr [ %i.xk, %_ZN12_GLOBAL__N_118ARMConstantIslands27doInitialJumpTablePlacementERSt6vectorIPN4llvm12MachineInstrESaIS4_EE.exit ], [ %.pre.i.i118, %.sink.split.i.i.i.i ] ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 304
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 296 ; 2 uses
  %.sroa.04.07.i.i = load ptr, ptr %i.yl, align 8, !tbaa !225 ; 2 uses
  %.not8.i.i = icmp eq ptr %.sroa.04.07.i.i, %i.ym
  br i1 %.not8.i.i, label %_ZN4llvm18ARMBasicBlockUtils20computeAllBlockSizesEv.exit.i, label %.lr.ph.i.i119

.lr.ph.i.i119:                                    ; preds = %_ZN4llvm15SmallVectorImplINS_14BasicBlockInfoEE6resizeEm.exit.i.i, %.lr.ph.i.i119
  %.sroa.04.09.i.i = phi ptr [ %.sroa.04.0.i.i, %.lr.ph.i.i119 ], [ %.sroa.04.07.i.i, %_ZN4llvm15SmallVectorImplINS_14BasicBlockInfoEE6resizeEm.exit.i.i ] ; 2 uses
  call void @_ZN4llvm18ARMBasicBlockUtils16computeBlockSizeEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(136) %i.xi, ptr noundef nonnull %.sroa.04.09.i.i) #19
  %i.yn = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8
  %.sroa.04.0.i.i = load ptr, ptr %i.yn, align 8, !tbaa !225 ; 2 uses
  %.not.i.i120 = icmp eq ptr %.sroa.04.0.i.i, %i.ym
  br i1 %.not.i.i120, label %_ZN4llvm18ARMBasicBlockUtils20computeAllBlockSizesEv.exit.i, label %.lr.ph.i.i119

_ZN4llvm18ARMBasicBlockUtils20computeAllBlockSizesEv.exit.i: ; preds = %.lr.ph.i.i119, %_ZN4llvm15SmallVectorImplINS_14BasicBlockInfoEE6resizeEm.exit.i.i
  %i.yo = load ptr, ptr %i.an, align 8, !tbaa !111 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  %i.yq = load ptr, ptr %i.s, align 8, !tbaa !112 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 316
  %.sroa.0.0.copyload.i.i121 = load i8, ptr %i.yr, align 4, !tbaa !307
  %i.ys = load ptr, ptr %i.yp, align 8, !tbaa !27
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  store i8 %.sroa.0.0.copyload.i.i121, ptr %i.yt, align 4, !tbaa !802
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 304
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !225
  call void @_ZN4llvm18ARMBasicBlockUtils20adjustBBOffsetsAfterEPNS_17MachineBasicBlockE(ptr noundef nonnull align 8 dereferenceable(136) %i.yo, ptr noundef nonnull %i.yv) #19
  %i.yw = load ptr, ptr %i.s, align 8, !tbaa !112 ; 3 uses
end_hunk_0
