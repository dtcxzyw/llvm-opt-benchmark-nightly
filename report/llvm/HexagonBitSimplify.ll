Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonBitSimplify?download=true
inline.NumInlined: 3093
inline.NumDeleted: 1251
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_123HexagonLoopRescheduling20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %.not.i.i207.i = icmp eq ptr %storemerge.i.i206.i, null
  br i1 %.not.i.i207.i, label %._crit_edge734.i, label %bb.az

bb.az:                                            ; preds = %.preheader624.i
  %i.qa = load i32, ptr %storemerge.i.i206.i, align 8
  %i.qb = and i32 %i.qa, 16777216
  %.not1.i.i208.i = icmp eq i32 %i.qb, 0
  br i1 %.not1.i.i208.i, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit209.i, label %.preheader624.i, !llvm.loop !266

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit209.i: ; preds = %bb.az
  br label %bb.ap, !llvm.loop !314

._crit_edge734.i:                                 ; preds = %.preheader.i.i.i, %.preheader624.i, %bb.am
  %.not.i.i210.i = icmp eq ptr %.sroa.11528.0738.i, %.sroa.16.0739.i
  br i1 %.not.i.i210.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge734.i
  store ptr %.sroa.0517.0740.i, ptr %.sroa.11528.0738.i, align 8, !tbaa !311
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.11528.0738.i, i64 8
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit.i

bb.bb:                                            ; preds = %._crit_edge734.i
  %i.qd = ptrtoint ptr %.sroa.16.0739.i to i64
  %i.qe = ptrtoint ptr %.sroa.0521.0737.i to i64
  %i.qf = sub i64 %i.qd, %i.qe                    ; 6 uses
  %i.qg = icmp eq i64 %i.qf, 9223372036854775800
  br i1 %i.qg, label %bb.bc, label %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bc:                                            ; preds = %bb.bb
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #21
  unreachable

_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bb
  %i.qh = ashr exact i64 %i.qf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i211.i = call i64 @llvm.umax.i64(i64 %i.qh, i64 1)
  %i.qi = add nsw i64 %.sroa.speculated.i.i.i.i211.i, %i.qh ; 2 uses
  %i.qj = icmp ult i64 %i.qi, %i.qh
  %i.qk = call i64 @llvm.umin.i64(i64 %i.qi, i64 1152921504606846975)
  %i.ql = select i1 %i.qj, i64 1152921504606846975, i64 %i.qk ; 3 uses
  %.not.i.i.i.i212.i = icmp ne i64 %i.ql, 0
  call void @llvm.assume(i1 %.not.i.i.i.i212.i)
  %i.qm = shl nuw nsw i64 %i.ql, 3
  %i.qn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qm) #22 ; 4 uses
  %i.qo = getelementptr inbounds i8, ptr %i.qn, i64 %i.qf ; 2 uses
  store ptr %.sroa.0517.0740.i, ptr %i.qo, align 8, !tbaa !311
  %i.qp = icmp sgt i64 %i.qf, 0
  br i1 %i.qp, label %bb.bd, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.bd:                                            ; preds = %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qn, ptr align 8 %.sroa.0521.0737.i, i64 %i.qf, i1 false)
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.bd, %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0521.0737.i, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0521.0737.i, i64 noundef %i.qf) #23
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.be, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %i.ql
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit.i: ; preds = %bb.al, %.loopexit1051.i, %.split946.i, %._crit_edge.i.i.i.i.i, %.split945.i, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.ba, %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit.i, %_ZNK4llvm9BitVector10find_firstEv.exit.i.i, %bb.ak, %bb.ai, %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrDefsERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i
  %.sroa.0521.2.i = phi ptr [ %.sroa.0521.0737.i, %bb.ba ], [ %.sroa.0521.0737.i, %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit.i ], [ %.sroa.0521.0737.i, %.loopexit1051.i ], [ %.sroa.0521.0737.i, %_ZNK4llvm9BitVector10find_firstEv.exit.i.i ], [ %.sroa.0521.0737.i, %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit.i ], [ %.sroa.0521.0737.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrDefsERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i ], [ %i.qn, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.0521.0737.i, %bb.ak ], [ %.sroa.0521.0737.i, %bb.ai ], [ %.sroa.0521.0737.i, %.split945.i ], [ %.sroa.0521.0737.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.0521.0737.i, %.split946.i ], [ %.sroa.0521.0737.i, %bb.al ]
  %.sroa.11528.2.i = phi ptr [ %i.qc, %bb.ba ], [ %.sroa.11528.0738.i, %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit.i ], [ %.sroa.11528.0738.i, %.loopexit1051.i ], [ %.sroa.11528.0738.i, %_ZNK4llvm9BitVector10find_firstEv.exit.i.i ], [ %.sroa.11528.0738.i, %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit.i ], [ %.sroa.11528.0738.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrDefsERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i ], [ %i.qq, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.11528.0738.i, %bb.ak ], [ %.sroa.11528.0738.i, %bb.ai ], [ %.sroa.11528.0738.i, %.split945.i ], [ %.sroa.11528.0738.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.11528.0738.i, %.split946.i ], [ %.sroa.11528.0738.i, %bb.al ]
  %.sroa.16.2.i = phi ptr [ %.sroa.16.0739.i, %bb.ba ], [ %.sroa.16.0739.i, %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit.i ], [ %.sroa.16.0739.i, %.loopexit1051.i ], [ %.sroa.16.0739.i, %_ZNK4llvm9BitVector10find_firstEv.exit.i.i ], [ %.sroa.16.0739.i, %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit.i ], [ %.sroa.16.0739.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrDefsERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i ], [ %i.qr, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %.sroa.16.0739.i, %bb.ak ], [ %.sroa.16.0739.i, %bb.ai ], [ %.sroa.16.0739.i, %.split945.i ], [ %.sroa.16.0739.i, %._crit_edge.i.i.i.i.i ], [ %.sroa.16.0739.i, %.split946.i ], [ %.sroa.16.0739.i, %bb.al ]
  %i.qs = load ptr, ptr %i.ab, align 8, !tbaa !298 ; 2 uses
  %.not.i.i.i213.i = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i213.i, label %_ZNSt5dequeIjSaIjEED2Ev.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit.i
  %i.qt = load ptr, ptr %i.ae, align 8, !tbaa !315 ; 2 uses
  %i.qu = load ptr, ptr %i.ai, align 8, !tbaa !316 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = icmp ult ptr %i.qt, %i.qv
  br i1 %i.qw, label %.lr.ph.i.i.i.i214.i, label %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.i.i.i.i

.lr.ph.i.i.i.i214.i:                              ; preds = %bb.bf, %.lr.ph.i.i.i.i214.i
  %.06.i.i.i.i.i = phi ptr [ %i.qy, %.lr.ph.i.i.i.i214.i ], [ %i.qt, %bb.bf ] ; 3 uses
  %i.qx = load ptr, ptr %.06.i.i.i.i.i, align 8, !tbaa !299
  call void @_ZdlPvm(ptr noundef %i.qx, i64 noundef 512) #23
  %i.qy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.qz = icmp ult ptr %.06.i.i.i.i.i, %i.qu
  br i1 %i.qz, label %.lr.ph.i.i.i.i214.i, label %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.loopexit.i.i.i.i, !llvm.loop !317

_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i214.i
  %.pre.i.i.i215.i = load ptr, ptr %i.ab, align 8, !tbaa !298
  br label %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.i.i.i.i

_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.i.i.i.i: ; preds = %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.loopexit.i.i.i.i, %bb.bf
  %i.ra = phi ptr [ %.pre.i.i.i215.i, %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.loopexit.i.i.i.i ], [ %i.qs, %bb.bf ]
  %i.rb = load i64, ptr %i.ac, align 8, !tbaa !294
  %i.rc = shl i64 %i.rb, 3
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rc) #23
  br label %_ZNSt5dequeIjSaIjEED2Ev.exit.i.i

_ZNSt5dequeIjSaIjEED2Ev.exit.i.i:                 ; preds = %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.i.i.i.i, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit.i
  %i.rd = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.re = icmp eq ptr %i.rd, %i.x
  br i1 %i.re, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt5dequeIjSaIjEED2Ev.exit.i.i
  call void @free(ptr noundef %i.rd) #20
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZNSt5dequeIjSaIjEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %.thread589.i

.thread589.i:                                     ; preds = %bb.bh, %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i, %.split.i
  %.sroa.16.3596.i = phi ptr [ %.sroa.16.0739.i, %.split.i ], [ %.sroa.16.2.i, %bb.bh ], [ %.sroa.16.0739.i, %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i ] ; 2 uses
  %.sroa.11528.3595.i = phi ptr [ %.sroa.11528.0738.i, %.split.i ], [ %.sroa.11528.2.i, %bb.bh ], [ %.sroa.11528.0738.i, %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i ] ; 2 uses
  %.sroa.0521.3594.i = phi ptr [ %.sroa.0521.0737.i, %.split.i ], [ %.sroa.0521.2.i, %bb.bh ], [ %.sroa.0521.0737.i, %_ZNK4llvm12MachineInstr12isTerminatorENS0_9QueryTypeE.exit.i ] ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i217.i = load i64, ptr %.sroa.0517.0740.i, align 8
  %i.rf = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i217.i, -8
  %i.rg = inttoptr i64 %i.rf to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rg) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.rg, align 8
  %i.rh = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i218.i = icmp eq i64 %i.rh, 0
  br i1 %.not.i.i.i.i218.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %.thread589.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 44
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !280
  %i.rk = and i32 %i.rj, 4
  %.not45.i.i.i.i.i = icmp eq i32 %i.rk, 0
  br i1 %.not45.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.rm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.rg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i, align 8
  %i.rl = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i, -8
  %i.rm = inttoptr i64 %i.rl to ptr               ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 44
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !280
  %i.rp = and i32 %i.ro, 4
  %.not4.i.i.i.i.i = icmp eq i32 %i.rp, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !282

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %.thread589.i
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %i.rg, %.thread589.i ], [ %i.rg, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.rm, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1.i.i.i.i.i, %i.kb
  br i1 %.not.i, label %.thread597.loopexit.i, label %bb.ac

.thread597.loopexit.i:                            ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i, %bb.ad, %bb.ad
  %.sroa.0521.0.lcssa.ph.i = phi ptr [ %.sroa.0521.3594.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i ], [ %.sroa.0521.0737.i, %bb.ad ], [ %.sroa.0521.0737.i, %bb.ad ]
  %.sroa.11528.0.lcssa.ph.i = phi ptr [ %.sroa.11528.3595.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i ], [ %.sroa.11528.0738.i, %bb.ad ], [ %.sroa.11528.0738.i, %bb.ad ]
  %.sroa.16.0.lcssa.ph.i = phi ptr [ %.sroa.16.3596.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit.i ], [ %.sroa.16.0739.i, %bb.ad ], [ %.sroa.16.0739.i, %bb.ad ]
  %i.rq = ptrtoint ptr %.sroa.11528.0.lcssa.ph.i to i64
  %i.rr = ptrtoint ptr %.sroa.16.0.lcssa.ph.i to i64
  br label %.thread597.i

.thread597.i:                                     ; preds = %.thread597.loopexit.i, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i
  %.sroa.0521.0.lcssa.i = phi ptr [ null, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i ], [ %.sroa.0521.0.lcssa.ph.i, %.thread597.loopexit.i ] ; 5 uses
  %.sroa.11528.0.lcssa.i = phi i64 [ 0, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i ], [ %i.rq, %.thread597.loopexit.i ]
  %.sroa.16.0.lcssa.i = phi i64 [ 0, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit.i ], [ %i.rr, %.thread597.loopexit.i ]
  %i.rs = ptrtoint ptr %.sroa.0521.0.lcssa.i to i64 ; 2 uses
  %i.rt = sub i64 %.sroa.11528.0.lcssa.i, %i.rs
  %i.ru = lshr exact i64 %i.rt, 3                 ; 2 uses
  %i.rv = trunc i64 %i.ru to i32                  ; 2 uses
  %.not779.i = icmp eq i32 %i.rv, 0
  br i1 %.not779.i, label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EED2Ev.exit.i, label %.lr.ph769.i

.lr.ph769.i:                                      ; preds = %.thread597.i
  %i.rw = ptrtoint ptr %.sroa.9563.0.lcssa.ph.i to i64 ; 2 uses
  %i.rx = ptrtoint ptr %.sroa.0562.0.lcssa.ph.i to i64
  %i.ry = sub i64 %i.rw, %i.rx                    ; 3 uses
  %i.rz = sdiv exact i64 %i.ry, 40
  %i.sa = ashr i64 %i.rz, 2                       ; 4 uses
  %i.sb = icmp sgt i64 %i.sa, 0                   ; 2 uses
  %i.sc = mul nuw nsw i64 %i.sa, 160
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %.sroa.0562.0.lcssa.ph.i, i64 %i.sc ; 3 uses
  %.pre.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i to i64
  %.pre32.i.i.i.i.i.i = sub i64 %i.rw, %.pre.i.i.i.i.i.i ; 2 uses
  %i.sd = and i64 %i.ru, 4294967295               ; 2 uses
  br label %bb.bi

.preheader.i:                                     ; preds = %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit.i
  %i.se = ptrtoint ptr %.sroa.14.3.i to i64
  %.not618773.i = icmp eq ptr %.sroa.0498.3.i, %.sroa.8.3.i
  br i1 %.not618773.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvT_S4_.exit.i.i, label %.lr.ph776.i

.lr.ph776.i:                                      ; preds = %.preheader.i
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.083.0217, i64 8 ; 2 uses
  %i.sg = load ptr, ptr %i.t, align 8, !tbaa !172
  %i.sh = getelementptr i8, ptr %i.sg, i64 24
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !207
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !253
  %i.sl = icmp eq ptr %i.sk, null
  br i1 %i.sl, label %.lr.ph.i.i.i.preheader.i, label %.lr.ph776.split.i

bb.bi:                                            ; preds = %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit.i, %.lr.ph769.i
  %indvars.iv820.i = phi i64 [ 0, %.lr.ph769.i ], [ %indvars.iv.next821.pre-phi.i, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph769.i ], [ %indvars.iv.next.i, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit.i ] ; 3 uses
  %.sroa.14.0767.i = phi ptr [ null, %.lr.ph769.i ], [ %.sroa.14.3.i, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit.i ] ; 8 uses
  %.sroa.8.0765.i = phi ptr [ null, %.lr.ph769.i ], [ %.sroa.8.3.i, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit.i ] ; 14 uses
  %.sroa.0498.0764.i = phi ptr [ null, %.lr.ph769.i ], [ %.sroa.0498.3.i, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit.i ] ; 9 uses
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0521.0.lcssa.i, i64 %indvars.iv820.i
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !311 ; 5 uses
  %i.so = icmp eq ptr %i.sn, null
  br i1 %i.so, label %._ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit_crit_edge.i, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i

._ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit_crit_edge.i: ; preds = %bb.bi
  %.pre830.i = add nuw nsw i64 %indvars.iv820.i, 1
  br label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i: ; preds = %bb.bi
  %i.sp = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 4 uses
  store ptr %i.sn, ptr %i.sp, align 8, !tbaa !311
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8 ; 4 uses
  %i.sr = call fastcc noundef i32 @_ZN12_GLOBAL__N_123HexagonLoopRescheduling9getDefRegEPKN4llvm12MachineInstrE(ptr noundef nonnull %i.sn) ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  store ptr %i.al, ptr %16, align 8, !tbaa !21
  store i32 0, ptr %i.am, align 8, !tbaa !174
  store i32 6, ptr %i.an, align 4, !tbaa !286
  store i32 0, ptr %i.ao, align 8, !tbaa !287
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ap, i8 0, i64 80, i1 false)
  store i64 8, ptr %i.aq, align 8, !tbaa !294
  %i.ss = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 2 uses
  store ptr %i.ss, ptr %i.ap, align 8, !tbaa !298
  %i.st = load i64, ptr %i.aq, align 8, !tbaa !294
  %i.su = add i64 %i.st, -1
  %i.sv = lshr i64 %i.su, 1
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.sv ; 3 uses
  %i.sx = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #22 ; 6 uses
  store ptr %i.sx, ptr %i.sw, align 8, !tbaa !299
  store ptr %i.sw, ptr %i.as, align 8, !tbaa !300
  store ptr %i.sx, ptr %i.at, align 8, !tbaa !301
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 512 ; 2 uses
  store ptr %i.sy, ptr %i.au, align 8, !tbaa !302
  store ptr %i.sw, ptr %i.aw, align 8, !tbaa !300
  store ptr %i.sx, ptr %i.ax, align 8, !tbaa !301
  store ptr %i.sy, ptr %i.ay, align 8, !tbaa !302
  store ptr %i.sx, ptr %i.ar, align 8, !tbaa !303
  store ptr %i.sx, ptr %i.av, align 8, !tbaa !304
  %i.sz = getelementptr i8, ptr %i.sn, i64 32
  %.val145.i = load ptr, ptr %i.sz, align 8, !tbaa !271 ; 2 uses
  %i.ta = getelementptr i8, ptr %i.sn, i64 40
  %.val146.i = load i24, ptr %i.ta, align 8       ; 2 uses
  %i.tb = zext i24 %.val146.i to i64
  %.idx.i221.i = shl nuw nsw i64 %i.tb, 5
  %i.tc = getelementptr inbounds nuw i8, ptr %.val145.i, i64 %.idx.i221.i
  %.not3.i.i = icmp eq i24 %.val146.i, 0
  br i1 %.not3.i.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i, label %.lr.ph.i222.i

.lr.ph.i222.i:                                    ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i, %bb.bl
  %.0114.i.i = phi ptr [ %i.tj, %bb.bl ], [ %.val145.i, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %i.td = load i32, ptr %.0114.i.i, align 8
  %i.te = and i32 %i.td, 16777471
  %or.cond.i223.i = icmp eq i32 %i.te, 0
  br i1 %or.cond.i223.i, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %.lr.ph.i222.i
  %i.tf = getelementptr inbounds nuw i8, ptr %.0114.i.i, i64 4
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !265 ; 2 uses
  %i.th = icmp slt i32 %i.tg, 0
  br i1 %i.th, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ti = call fastcc noundef nonnull align 8 dereferenceable(152) ptr @_ZN12_GLOBAL__N_111RegisterSet6insertEj(ptr noundef nonnull align 8 dereferenceable(152) %16, i32 noundef %i.tg) ; 0 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %.lr.ph.i222.i
  %i.tj = getelementptr inbounds nuw i8, ptr %.0114.i.i, i64 32 ; 2 uses
  %.not.i224.i = icmp eq ptr %i.tj, %i.tc
  br i1 %.not.i224.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i, label %.lr.ph.i222.i

_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i: ; preds = %bb.bl, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backERKS2_.exit.i
  %i.tk = add nuw nsw i64 %indvars.iv820.i, 1     ; 2 uses
  %i.tl = icmp samesign ult i64 %i.tk, %i.sd
  br i1 %i.tl, label %.lr.ph759.i, label %._crit_edge760.i

._crit_edge760.i:                                 ; preds = %bb.cw, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i
  %.sroa.10.0.lcssa.i = phi ptr [ %i.sp, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i ], [ %.sroa.10.2.i, %bb.cw ] ; 10 uses
  %.sroa.21.0.lcssa.i = phi ptr [ %i.sq, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i ], [ %.sroa.21.2.i, %bb.cw ] ; 2 uses
  %.sroa.33.0.lcssa.i = phi ptr [ %i.sq, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i ], [ %.sroa.33.2.i, %bb.cw ]
  %.val127.i = load ptr, ptr %16, align 8, !tbaa !21 ; 4 uses
  %.val128.i = load i32, ptr %i.am, align 8, !tbaa !174 ; 2 uses
  %i.tm = zext i32 %.val128.i to i64
  %.idx.i.i225.i = shl nuw nsw i64 %i.tm, 3       ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.val127.i, i64 %.idx.i.i225.i
  %.not10.i.i226.i = icmp eq i32 %.val128.i, 0
  br i1 %.not10.i.i226.i, label %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit232.thread.i, label %.lr.ph.i.i227.i.preheader

.lr.ph.i.i227.i.preheader:                        ; preds = %._crit_edge760.i
  %i.to = add nsw i64 %.idx.i.i225.i, -8          ; 2 uses
  %i.tp = lshr exact i64 %i.to, 3
  %i.tq = add nuw nsw i64 %i.tp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.to, 24
  br i1 %min.iters.check, label %.lr.ph.i.i227.i.preheader520, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i227.i.preheader
  %n.vec = and i64 %i.tq, 4611686018427387900     ; 3 uses
  %i.tr = shl i64 %n.vec, 3
  %i.ts = getelementptr i8, ptr %.val127.i, i64 %i.tr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.tz, %vector.body ]
  %vec.phi499 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ua, %vector.body ]
  %i.tt = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.val127.i, i64 %i.tt ; 2 uses
  %i.tu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !28
  %wide.load500 = load <2 x i64>, ptr %i.tu, align 8, !tbaa !28
  %i.tv = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.tw = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load500)
  %i.tx = trunc nuw nsw <2 x i64> %i.tv to <2 x i32>
  %i.ty = trunc nuw nsw <2 x i64> %i.tw to <2 x i32>
  %i.tz = add <2 x i32> %vec.phi, %i.tx           ; 2 uses
  %i.ua = add <2 x i32> %vec.phi499, %i.ty        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ub = icmp eq i64 %index.next, %n.vec
  br i1 %i.ub, label %middle.block, label %vector.body, !llvm.loop !318

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ua, %i.tz
  %i.uc = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.tq, %n.vec
  br i1 %cmp.n, label %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit232.i, label %.lr.ph.i.i227.i.preheader520

.lr.ph.i.i227.i.preheader520:                     ; preds = %.lr.ph.i.i227.i.preheader, %middle.block
  %.012.i.i228.i.ph = phi i32 [ 0, %.lr.ph.i.i227.i.preheader ], [ %i.uc, %middle.block ]
  %.0911.i.i229.i.ph = phi ptr [ %.val127.i, %.lr.ph.i.i227.i.preheader ], [ %i.ts, %middle.block ]
  br label %.lr.ph.i.i227.i

.lr.ph.i.i227.i:                                  ; preds = %.lr.ph.i.i227.i.preheader520, %.lr.ph.i.i227.i
  %.012.i.i228.i = phi i32 [ %i.ug, %.lr.ph.i.i227.i ], [ %.012.i.i228.i.ph, %.lr.ph.i.i227.i.preheader520 ]
  %.0911.i.i229.i = phi ptr [ %i.uh, %.lr.ph.i.i227.i ], [ %.0911.i.i229.i.ph, %.lr.ph.i.i227.i.preheader520 ] ; 2 uses
  %i.ud = load i64, ptr %.0911.i.i229.i, align 8, !tbaa !28
  %i.ue = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ud)
  %i.uf = trunc nuw nsw i64 %i.ue to i32
  %i.ug = add i32 %.012.i.i228.i, %i.uf           ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.0911.i.i229.i, i64 8 ; 2 uses
  %.not.i.i230.i = icmp eq ptr %i.uh, %i.tn
  br i1 %.not.i.i230.i, label %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit232.i, label %.lr.ph.i.i227.i, !llvm.loop !319

_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit232.i: ; preds = %.lr.ph.i.i227.i, %middle.block
  %.lcssa480 = phi i32 [ %i.uc, %middle.block ], [ %i.ug, %.lr.ph.i.i227.i ]
  %i.ui = icmp ugt i32 %.lcssa480, 1
  br i1 %i.ui, label %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit302.i", label %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit232.thread.i

.lr.ph759.i:                                      ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i, %bb.cw
  %indvars.iv817.i = phi i64 [ %indvars.iv.next818.i, %bb.cw ], [ %indvars.iv.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i ] ; 2 uses
  %.sroa.33.0757.i = phi ptr [ %.sroa.33.2.i, %bb.cw ], [ %i.sq, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i ] ; 6 uses
  %.sroa.21.0756.i = phi ptr [ %.sroa.21.2.i, %bb.cw ], [ %i.sq, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i ] ; 6 uses
  %.sroa.10.0755.i = phi ptr [ %.sroa.10.2.i, %bb.cw ], [ %i.sp, %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrUsesERKN4llvm12MachineInstrERNS_11RegisterSetE.exit.i ] ; 7 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0521.0.lcssa.i, i64 %indvars.iv817.i ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !311 ; 5 uses
  %i.ul = icmp eq ptr %i.uk, null
  br i1 %i.ul, label %bb.cw, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph759.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store ptr %i.az, ptr %17, align 8, !tbaa !21
  store i32 0, ptr %i.ba, align 8, !tbaa !174
  store i32 6, ptr %i.bb, align 4, !tbaa !286
  store i32 0, ptr %i.bc, align 8, !tbaa !287
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bd, i8 0, i64 80, i1 false)
  store i64 8, ptr %i.be, align 8, !tbaa !294
  %i.um = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 2 uses
  store ptr %i.um, ptr %i.bd, align 8, !tbaa !298
  %i.un = load i64, ptr %i.be, align 8, !tbaa !294
  %i.uo = add i64 %i.un, -1
  %i.up = lshr i64 %i.uo, 1
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.up ; 3 uses
  %i.ur = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #22 ; 6 uses
  store ptr %i.ur, ptr %i.uq, align 8, !tbaa !299
  store ptr %i.uq, ptr %i.bg, align 8, !tbaa !300
  store ptr %i.ur, ptr %i.bh, align 8, !tbaa !301
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 512 ; 2 uses
  store ptr %i.us, ptr %i.bi, align 8, !tbaa !302
  store ptr %i.uq, ptr %i.bk, align 8, !tbaa !300
  store ptr %i.ur, ptr %i.bl, align 8, !tbaa !301
  store ptr %i.us, ptr %i.bm, align 8, !tbaa !302
  store ptr %i.ur, ptr %i.bf, align 8, !tbaa !303
  store ptr %i.ur, ptr %i.bj, align 8, !tbaa !304
  %i.ut = getelementptr i8, ptr %i.uk, i64 32     ; 2 uses
  %.val.i = load ptr, ptr %i.ut, align 8, !tbaa !271 ; 2 uses
  %i.uu = getelementptr i8, ptr %i.uk, i64 40     ; 2 uses
  %.val124.i = load i24, ptr %i.uu, align 8       ; 2 uses
  %i.uv = zext i24 %.val124.i to i64
  %.idx.i233.i = shl nuw nsw i64 %i.uv, 5
  %i.uw = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.idx.i233.i
  %.not4.i234.i = icmp eq i24 %.val124.i, 0
  br i1 %.not4.i234.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrDefsERKN4llvm12MachineInstrERNS_11RegisterSetE.exit239.i, label %.lr.ph.i235.i

.lr.ph.i235.i:                                    ; preds = %bb.bm, %bb.bp
  %.0115.i236.i = phi ptr [ %i.vd, %bb.bp ], [ %.val.i, %bb.bm ] ; 3 uses
  %i.ux = load i32, ptr %.0115.i236.i, align 8
  %i.uy = and i32 %i.ux, 16777471
  %or.cond.i237.i = icmp eq i32 %i.uy, 16777216
  br i1 %or.cond.i237.i, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %.lr.ph.i235.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_123HexagonLoopRescheduling20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a

"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS3_8LoopCandEE3$_1EC2ERKS7_.exit.i.i.i.i.i": ; preds = %.thread30.i.i.i.i, %bb.dl, %bb.dk, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1C2ERKS3_.exit.i"
  %i.aev = phi ptr [ %i.aet, %.thread30.i.i.i.i ], [ %i.aen, %bb.dl ], [ %i.aek, %bb.dk ], [ null, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1C2ERKS3_.exit.i" ] ; 2 uses
  %i.aew = phi ptr [ %i.aep, %.thread30.i.i.i.i ], [ %i.ael, %bb.dl ], [ %i.aei, %bb.dk ], [ null, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1C2ERKS3_.exit.i" ] ; 2 uses
  %i.aex = phi ptr [ %i.aef, %.thread30.i.i.i.i ], [ %i.aef, %bb.dl ], [ %i.aef, %bb.dk ], [ null, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1C2ERKS3_.exit.i" ] ; 2 uses
  %i.aey = phi ptr [ %i.aer, %.thread30.i.i.i.i ], [ %i.aem, %bb.dl ], [ %i.aej, %bb.dk ], [ null, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1C2ERKS3_.exit.i" ] ; 2 uses
  br i1 %i.sb, label %.lr.ph.i.i.i.i.i273.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i273.i:                            ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS3_8LoopCandEE3$_1EC2ERKS7_.exit.i.i.i.i.i", %bb.dp
  %.027.i.i.i.i.i.i = phi i64 [ %i.afi, %bb.dp ], [ %i.sa, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS3_8LoopCandEE3$_1EC2ERKS7_.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.09.026.i.i.i.i.i.i = phi ptr [ %i.afh, %bb.dp ], [ %.sroa.0562.0.lcssa.ph.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS3_8LoopCandEE3$_1EC2ERKS7_.exit.i.i.i.i.i" ] ; 9 uses
  %i.aez = getelementptr i8, ptr %.sroa.09.026.i.i.i.i.i.i, i64 4
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.aez, align 4, !tbaa !354
  %i.afa = icmp eq i32 %i.sr, %.val2.i.i.i.i.i.i.i
  br i1 %i.afa, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_St26random_access_iterator_tag.exit.i.i.i.i.i", label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.i.i.i.i.i273.i
  %i.afb = getelementptr i8, ptr %.sroa.09.026.i.i.i.i.i.i, i64 44
  %.val2.i26.i.i.i.i.i.i = load i32, ptr %i.afb, align 4, !tbaa !354
  %i.afc = icmp eq i32 %i.sr, %.val2.i26.i.i.i.i.i.i
  br i1 %i.afc, label %.loopexit.split.loop.exit17.i.i.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.afd = getelementptr i8, ptr %.sroa.09.026.i.i.i.i.i.i, i64 84
  %.val2.i27.i.i.i.i.i.i = load i32, ptr %i.afd, align 4, !tbaa !354
  %i.afe = icmp eq i32 %i.sr, %.val2.i27.i.i.i.i.i.i
  br i1 %i.afe, label %.loopexit.split.loop.exit19.i.i.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aff = getelementptr i8, ptr %.sroa.09.026.i.i.i.i.i.i, i64 124
  %.val2.i28.i.i.i.i.i.i = load i32, ptr %i.aff, align 4, !tbaa !354
  %i.afg = icmp eq i32 %i.sr, %.val2.i28.i.i.i.i.i.i
  br i1 %i.afg, label %.loopexit.split.loop.exit21.i.i.i.i.i.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.afh = getelementptr inbounds nuw i8, ptr %.sroa.09.026.i.i.i.i.i.i, i64 160
  %i.afi = add nsw i64 %.027.i.i.i.i.i.i, -1
  %i.afj = icmp sgt i64 %.027.i.i.i.i.i.i, 1
  br i1 %i.afj, label %.lr.ph.i.i.i.i.i273.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !355

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.dp, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS3_8LoopCandEE3$_1EC2ERKS7_.exit.i.i.i.i.i"
  %.pre-phi33.i.i.i.i.i.i = phi i64 [ %i.ry, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS3_8LoopCandEE3$_1EC2ERKS7_.exit.i.i.i.i.i" ], [ %.pre32.i.i.i.i.i.i, %bb.dp ]
  %.sroa.09.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0562.0.lcssa.ph.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS3_8LoopCandEE3$_1EC2ERKS7_.exit.i.i.i.i.i" ], [ %scevgep.i.i.i.i.i.i, %bb.dp ] ; 5 uses
  %i.afk = sdiv exact i64 %.pre-phi33.i.i.i.i.i.i, 40
  switch i64 %i.afk, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_St26random_access_iterator_tag.exit.i.i.i.i.i" [
    i64 3, label %bb.dq
    i64 2, label %bb.ds
    i64 1, label %bb.du
  ]

bb.dq:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.afl = getelementptr i8, ptr %.sroa.09.0.lcssa.i.i.i.i.i.i, i64 4
  %.val2.i29.i.i.i.i.i.i = load i32, ptr %i.afl, align 4, !tbaa !354
  %i.afm = icmp eq i32 %i.sr, %.val2.i29.i.i.i.i.i.i
  br i1 %i.afm, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_St26random_access_iterator_tag.exit.i.i.i.i.i", label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.afn = getelementptr inbounds nuw i8, ptr %.sroa.09.0.lcssa.i.i.i.i.i.i, i64 40
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %._crit_edge.i.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i.i = phi ptr [ %i.afn, %bb.dr ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.afo = getelementptr i8, ptr %.sroa.09.1.i.i.i.i.i.i, i64 4
  %.val2.i30.i.i.i.i.i.i = load i32, ptr %i.afo, align 4, !tbaa !354
  %i.afp = icmp eq i32 %i.sr, %.val2.i30.i.i.i.i.i.i
  br i1 %i.afp, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_St26random_access_iterator_tag.exit.i.i.i.i.i", label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.afq = getelementptr inbounds nuw i8, ptr %.sroa.09.1.i.i.i.i.i.i, i64 40
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %._crit_edge.i.i.i.i.i.i
  %.sroa.09.2.i.i.i.i.i.i = phi ptr [ %i.afq, %bb.dt ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.afr = getelementptr i8, ptr %.sroa.09.2.i.i.i.i.i.i, i64 4
  %.val2.i31.i.i.i.i.i.i = load i32, ptr %i.afr, align 4, !tbaa !354
  %i.afs = icmp eq i32 %i.sr, %.val2.i31.i.i.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.afs, ptr %.sroa.09.2.i.i.i.i.i.i, ptr %.sroa.9563.0.lcssa.ph.i
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_St26random_access_iterator_tag.exit.i.i.i.i.i"

.loopexit.split.loop.exit17.i.i.i.i.i.i:          ; preds = %bb.dm
  %i.aft = getelementptr inbounds nuw i8, ptr %.sroa.09.026.i.i.i.i.i.i, i64 40
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_St26random_access_iterator_tag.exit.i.i.i.i.i"

.loopexit.split.loop.exit19.i.i.i.i.i.i:          ; preds = %bb.dn
  %i.afu = getelementptr inbounds nuw i8, ptr %.sroa.09.026.i.i.i.i.i.i, i64 80
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_St26random_access_iterator_tag.exit.i.i.i.i.i"

.loopexit.split.loop.exit21.i.i.i.i.i.i:          ; preds = %bb.do
  %i.afv = getelementptr inbounds nuw i8, ptr %.sroa.09.026.i.i.i.i.i.i, i64 120
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_St26random_access_iterator_tag.exit.i.i.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_St26random_access_iterator_tag.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i273.i, %.loopexit.split.loop.exit21.i.i.i.i.i.i, %.loopexit.split.loop.exit19.i.i.i.i.i.i, %.loopexit.split.loop.exit17.i.i.i.i.i.i, %bb.du, %bb.ds, %bb.dq, %._crit_edge.i.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.09.1.i.i.i.i.i.i, %bb.ds ], [ %spec.select.i.i.i.i.i.i, %bb.du ], [ %.sroa.9563.0.lcssa.ph.i, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.09.0.lcssa.i.i.i.i.i.i, %bb.dq ], [ %i.afu, %.loopexit.split.loop.exit19.i.i.i.i.i.i ], [ %i.aft, %.loopexit.split.loop.exit17.i.i.i.i.i.i ], [ %i.afv, %.loopexit.split.loop.exit21.i.i.i.i.i.i ], [ %.sroa.09.026.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i273.i ]
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aev, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_.exit.i.i.i.i", label %bb.dv

bb.dv:                                            ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_St26random_access_iterator_tag.exit.i.i.i.i.i"
  call void @_ZdlPvm(ptr noundef nonnull %i.aev, i64 noundef %i.aed) #23
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_.exit.i.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_.exit.i.i.i.i": ; preds = %bb.dv, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_St26random_access_iterator_tag.exit.i.i.i.i.i"
  %.not.i.i.i.i.i.i8.i.i.i.i = icmp eq ptr %i.aey, null
  br i1 %.not.i.i.i.i.i.i8.i.i.i.i, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEEZNS3_11processLoopERNS3_8LoopCandEE3$_1ET_SD_SD_T0_.exit.i.i.i", label %bb.dw

bb.dw:                                            ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_.exit.i.i.i.i"
  call void @_ZdlPvm(ptr noundef nonnull %i.aey, i64 noundef %i.aed) #23
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEEZNS3_11processLoopERNS3_8LoopCandEE3$_1ET_SD_SD_T0_.exit.i.i.i"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEEZNS3_11processLoopERNS3_8LoopCandEE3$_1ET_SD_SD_T0_.exit.i.i.i": ; preds = %bb.dw, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS3_11processLoopERNS3_8LoopCandEE3$_1EEET_SG_SG_T0_.exit.i.i.i.i"
  %.not.i.i.i.i.i.i6.i.i = icmp eq ptr %i.aew, null
  br i1 %.not.i.i.i.i.i.i6.i.i, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEEZNS3_11processLoopERNS3_8LoopCandEE3$_1EbT_SD_T0_.exit.i.i", label %bb.dx

bb.dx:                                            ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEEZNS3_11processLoopERNS3_8LoopCandEE3$_1ET_SD_SD_T0_.exit.i.i.i"
  call void @_ZdlPvm(ptr noundef nonnull %i.aew, i64 noundef %i.aed) #23
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEEZNS3_11processLoopERNS3_8LoopCandEE3$_1EbT_SD_T0_.exit.i.i"

"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEEZNS3_11processLoopERNS3_8LoopCandEE3$_1EbT_SD_T0_.exit.i.i": ; preds = %bb.dx, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEEZNS3_11processLoopERNS3_8LoopCandEE3$_1ET_SD_SD_T0_.exit.i.i.i"
  %.not.i.i.i.i.i.i272.i = icmp eq ptr %i.aex, null
  br i1 %.not.i.i.i.i.i.i272.i, label %"_ZN4llvm7none_ofIRSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESaIS4_EEZNS3_11processLoopERNS3_8LoopCandEE3$_1EEbOT_T0_.exit.i", label %bb.dy

bb.dy:                                            ; preds = %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEEZNS3_11processLoopERNS3_8LoopCandEE3$_1EbT_SD_T0_.exit.i.i"
  call void @_ZdlPvm(ptr noundef nonnull %i.aex, i64 noundef %i.aed) #23
  br label %"_ZN4llvm7none_ofIRSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESaIS4_EEZNS3_11processLoopERNS3_8LoopCandEE3$_1EEbOT_T0_.exit.i"

"_ZN4llvm7none_ofIRSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESaIS4_EEZNS3_11processLoopERNS3_8LoopCandEE3$_1EEbOT_T0_.exit.i": ; preds = %bb.dy, %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESt6vectorIS4_SaIS4_EEEEZNS3_11processLoopERNS3_8LoopCandEE3$_1EbT_SD_T0_.exit.i.i"
  %i.afw = icmp eq ptr %.sroa.9563.0.lcssa.ph.i, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  %.not.i.i.i.i.i274.i = icmp eq ptr %i.aea, null
  br i1 %.not.i.i.i.i.i274.i, label %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit.i", label %bb.dz

bb.dz:                                            ; preds = %"_ZN4llvm7none_ofIRSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESaIS4_EEZNS3_11processLoopERNS3_8LoopCandEE3$_1EEbOT_T0_.exit.i"
  call void @_ZdlPvm(ptr noundef nonnull %i.aea, i64 noundef %i.aed) #23
  br label %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit.i"

"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit.i": ; preds = %bb.dz, %"_ZN4llvm7none_ofIRSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoESaIS4_EEZNS3_11processLoopERNS3_8LoopCandEE3$_1EEbOT_T0_.exit.i"
  br i1 %i.afw, label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE9push_backERKS2_.exit.i, label %bb.ea

bb.ea:                                            ; preds = %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit.i"
  %.val131.i = load ptr, ptr %16, align 8         ; 2 uses
  %.val132.i = load i32, ptr %i.ao, align 8, !tbaa !287 ; 2 uses
  %i.afx = icmp eq i32 %.val132.i, 0
  br i1 %i.afx, label %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit289.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.afy = add i32 %.val132.i, -1                 ; 2 uses
  %i.afz = lshr i32 %i.afy, 6                     ; 3 uses
  %i.aga = and i32 %i.afy, 63
  %i.agb = xor i32 %i.aga, 63
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = lshr i64 -1, %i.agc                    ; 2 uses
  %i.age = zext nneg i32 %i.afz to i64
  %i.agf = add nuw nsw i32 %i.afz, 1
  %wide.trip.count.i.i.i275.i = zext nneg i32 %i.agf to i64
  %i.agg = load i64, ptr %.val131.i, align 8, !tbaa !28
  %i.agh = icmp eq i32 %i.afz, 0                  ; 2 uses
  %i.agi = select i1 %i.agh, i64 %i.agd, i64 -1
  %.230.peel.i.i.i276.i = and i64 %i.agg, %i.agi  ; 2 uses
  %.not37.peel.i.i.i277.i = icmp eq i64 %.230.peel.i.i.i276.i, 0
  br i1 %.not37.peel.i.i.i277.i, label %bb.ec, label %_ZNK4llvm9BitVector10find_firstEv.exit.thread6.i278.i

_ZNK4llvm9BitVector10find_firstEv.exit.thread6.i278.i: ; preds = %bb.eb
  %i.agj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.peel.i.i.i276.i, i1 true)
  %i.agk = trunc nuw nsw i64 %i.agj to i32
  %i.agl = or disjoint i32 %i.agk, -2147483648
  br label %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit289.i

bb.ec:                                            ; preds = %bb.eb
  br i1 %i.agh, label %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit289.i, label %.peel.next.i.i.i280.i

.peel.next.i.i.i280.i:                            ; preds = %bb.ec, %bb.ed
  %indvars.iv.i.i.i281.i = phi i64 [ %indvars.iv.next.i.i.i287.i, %bb.ed ], [ 1, %bb.ec ] ; 4 uses
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %.val131.i, i64 %indvars.iv.i.i.i281.i
  %i.agn = load i64, ptr %i.agm, align 8, !tbaa !28
  %i.ago = icmp eq i64 %indvars.iv.i.i.i281.i, %i.age
  %i.agp = select i1 %i.ago, i64 %i.agd, i64 -1
  %.230.i.i.i282.i = and i64 %i.agp, %i.agn       ; 2 uses
  %.not37.i.i.i283.i = icmp eq i64 %.230.i.i.i282.i, 0
  br i1 %.not37.i.i.i283.i, label %bb.ed, label %_ZNK4llvm9BitVector10find_firstEv.exit.i284.i

bb.ed:                                            ; preds = %.peel.next.i.i.i280.i
  %indvars.iv.next.i.i.i287.i = add nuw nsw i64 %indvars.iv.i.i.i281.i, 1 ; 2 uses
  %exitcond.not.i.i.i288.i = icmp eq i64 %indvars.iv.next.i.i.i287.i, %wide.trip.count.i.i.i275.i
  br i1 %exitcond.not.i.i.i288.i, label %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit289.i, label %.peel.next.i.i.i280.i, !llvm.loop !309

_ZNK4llvm9BitVector10find_firstEv.exit.i284.i:    ; preds = %.peel.next.i.i.i280.i
  %.pre.i.i.i285.i = trunc i64 %indvars.iv.i.i.i281.i to i32
  %i.agq = shl i32 %.pre.i.i.i285.i, 6            ; 2 uses
  %i.agr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.i.i.i282.i, i1 true)
  %i.ags = trunc nuw nsw i64 %i.agr to i32
  %i.agt = icmp slt i32 %i.agq, 0
  %i.agu = or disjoint i32 %i.agq, %i.ags
  %i.agv = or disjoint i32 %i.agu, -2147483648
  %spec.select.i286.i = select i1 %i.agt, i32 0, i32 %i.agv
  br label %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit289.i

_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit289.i: ; preds = %bb.ed, %_ZNK4llvm9BitVector10find_firstEv.exit.i284.i, %bb.ec, %_ZNK4llvm9BitVector10find_firstEv.exit.thread6.i278.i, %bb.ea
  %.0.i279.i = phi i32 [ 0, %bb.ec ], [ %i.agl, %_ZNK4llvm9BitVector10find_firstEv.exit.thread6.i278.i ], [ 0, %bb.ea ], [ %spec.select.i286.i, %_ZNK4llvm9BitVector10find_firstEv.exit.i284.i ], [ 0, %bb.ed ] ; 2 uses
  %.not.i290.i = icmp eq ptr %.sroa.8.0765.i, %.sroa.14.0767.i
  br i1 %.not.i290.i, label %bb.ek, label %bb.ee

bb.ee:                                            ; preds = %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit289.i
  store i32 %.0.i279.i, ptr %.sroa.8.0765.i, align 8
  %.sroa.7462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.8.0765.i, i64 4
  store i32 0, ptr %.sroa.7462.0..sroa_idx.i, align 4
  %.sroa.7466.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.8.0765.i, i64 8
  store i32 %i.sr, ptr %.sroa.7466.0..sroa_idx.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.8.0765.i, i64 12
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.8.0765.i, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.9.0..sroa_idx.i, i8 0, i64 28, i1 false)
  br i1 %.not.i.i.i.i.i269.i, label %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.thread.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.agx = icmp ugt i64 %i.ade, 9223372036854775800
  br i1 %i.agx, label %bb.eg, label %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.i, !prof !351

bb.eg:                                            ; preds = %bb.ef
  call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.i: ; preds = %bb.ef
  %i.agy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ade) #22 ; 5 uses
  store ptr %i.agy, ptr %i.agw, align 8, !tbaa !356
  %i.agz = getelementptr inbounds nuw i8, ptr %.sroa.8.0765.i, i64 24 ; 4 uses
  store ptr %i.agy, ptr %i.agz, align 8, !tbaa !357
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agy, i64 %i.ade ; 4 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.8.0765.i, i64 32
  store ptr %i.aha, ptr %i.ahb, align 8, !tbaa !358
  br i1 %i.adm, label %bb.eh, label %bb.ei, !prof !359

_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.thread.i: ; preds = %bb.ee
  %i.ahc = getelementptr inbounds nuw i8, ptr %.sroa.8.0765.i, i64 24 ; 2 uses
  %i.ahd = getelementptr inbounds i8, ptr null, i64 %i.ade ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %.sroa.8.0765.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agw, i8 0, i64 16, i1 false)
  store ptr %i.ahd, ptr %i.ahe, align 8, !tbaa !358
  br i1 %i.adm, label %bb.eh, label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i, !prof !359

bb.eh:                                            ; preds = %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.thread.i, %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.i
  %i.ahf = phi ptr [ %i.ahd, %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.thread.i ], [ %i.aha, %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.i ]
  %i.ahg = phi ptr [ %i.ahc, %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.thread.i ], [ %i.agz, %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.i ]
  %i.ahh = phi ptr [ null, %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.thread.i ], [ %i.agy, %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.i ]
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ahh, ptr align 8 %.sroa.10.0.lcssa.i, i64 %i.ade, i1 false)
  br label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i

bb.ei:                                            ; preds = %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.i
  %i.ahi = icmp eq i64 %i.ade, 8
  br i1 %i.ahi, label %bb.ej, label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.ahj = load ptr, ptr %.sroa.10.0.lcssa.i, align 8, !tbaa !311
  store ptr %i.ahj, ptr %i.agy, align 8, !tbaa !311
  br label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i

_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i: ; preds = %bb.ej, %bb.ei, %bb.eh, %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.thread.i
  %i.ahk = phi ptr [ %i.aha, %bb.ej ], [ %i.aha, %bb.ei ], [ %i.ahf, %bb.eh ], [ %i.ahd, %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.thread.i ]
  %i.ahl = phi ptr [ %i.agz, %bb.ej ], [ %i.agz, %bb.ei ], [ %i.ahg, %bb.eh ], [ %i.ahc, %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i293.thread.i ]
  store ptr %i.ahk, ptr %i.ahl, align 8, !tbaa !357
  %i.ahm = getelementptr inbounds nuw i8, ptr %.sroa.8.0765.i, i64 40
  br label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE9push_backERKS2_.exit.i

bb.ek:                                            ; preds = %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit289.i
  %i.ahn = ptrtoint ptr %.sroa.14.0767.i to i64
  %i.aho = ptrtoint ptr %.sroa.0498.0764.i to i64
  %i.ahp = sub i64 %i.ahn, %i.aho                 ; 4 uses
  %i.ahq = icmp eq i64 %i.ahp, 9223372036854775800
  br i1 %i.ahq, label %bb.el, label %_ZNKSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.el:                                            ; preds = %bb.ek
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #21
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ek
  %i.ahr = sdiv exact i64 %i.ahp, 40              ; 3 uses
  %i.ahs = icmp eq ptr %.sroa.14.0767.i, %.sroa.0498.0764.i ; 2 uses
  %.sroa.speculated.i.i.i294.i = select i1 %i.ahs, i64 1, i64 %i.ahr
  %i.aht = add nsw i64 %.sroa.speculated.i.i.i294.i, %i.ahr ; 2 uses
  %i.ahu = icmp ult i64 %i.aht, %i.ahr
  %i.ahv = call i64 @llvm.umin.i64(i64 %i.aht, i64 230584300921369395)
  %i.ahw = select i1 %i.ahu, i64 230584300921369395, i64 %i.ahv ; 3 uses
  %.not.i.i.i295.i = icmp ne i64 %i.ahw, 0
  call void @llvm.assume(i1 %.not.i.i.i295.i)
  %i.ahx = mul nuw nsw i64 %i.ahw, 40
  %i.ahy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahx) #22 ; 5 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 %i.ahp ; 8 uses
  store i32 %.0.i279.i, ptr %i.ahz, align 8
  %.sroa.7462.0..sroa_idx463.i = getelementptr inbounds nuw i8, ptr %i.ahz, i64 4
  store i32 0, ptr %.sroa.7462.0..sroa_idx463.i, align 4
  %.sroa.7466.0..sroa_idx467.i = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  store i32 %i.sr, ptr %.sroa.7466.0..sroa_idx467.i, align 8
  %.sroa.9.0..sroa_idx469.i = getelementptr inbounds nuw i8, ptr %i.ahz, i64 12
  store i32 0, ptr %.sroa.9.0..sroa_idx469.i, align 4
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i269.i, label %.thread997.i, label %bb.em

.thread997.i:                                     ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  store ptr null, ptr %i.aia, align 8, !tbaa !356
  %i.aib = getelementptr inbounds i8, ptr null, i64 %i.ade ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahz, i64 32
  store ptr %i.aib, ptr %i.aic, align 8, !tbaa !358
  br label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i.i

bb.em:                                            ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aid = icmp ugt i64 %i.ade, 9223372036854775800
  br i1 %i.aid, label %bb.en, label %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i.i298.i, !prof !351

bb.en:                                            ; preds = %bb.em
  call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i.i298.i: ; preds = %bb.em
  %i.aie = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ade) #22 ; 4 uses
  store ptr %i.aie, ptr %i.aia, align 8, !tbaa !356
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 %i.ade ; 4 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahz, i64 32
  store ptr %i.aif, ptr %i.aig, align 8, !tbaa !358
  %i.aih = icmp samesign ugt i64 %i.ade, 8
  br i1 %i.aih, label %bb.eo, label %bb.ep, !prof !352

bb.eo:                                            ; preds = %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i.i298.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aie, ptr align 8 %.sroa.10.0.lcssa.i, i64 %i.ade, i1 false)
  br label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i.i

bb.ep:                                            ; preds = %_ZNSt12_Vector_baseIPN4llvm12MachineInstrESaIS2_EEC2EmRKS3_.exit.i.i.i.i298.i
  %i.aii = icmp eq i64 %i.ade, 8
  br i1 %i.aii, label %bb.eq, label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.aij = load ptr, ptr %.sroa.10.0.lcssa.i, align 8, !tbaa !311
  store ptr %i.aij, ptr %i.aie, align 8, !tbaa !311
  br label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i.i

_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i.i: ; preds = %bb.eq, %bb.ep, %bb.eo, %.thread997.i
  %i.aik = phi ptr [ %i.aif, %bb.eq ], [ %i.aif, %bb.ep ], [ %i.aif, %bb.eo ], [ %i.aib, %.thread997.i ]
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahz, i64 24
  store ptr %i.aik, ptr %i.ail, align 8, !tbaa !357
  br i1 %i.ahs, label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i299.i

.lr.ph.i.i.i.i.i299.i:                            ; preds = %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i.i, %.lr.ph.i.i.i.i.i299.i
  %.03.i.i.i.i.i.i73 = phi ptr [ %i.ait, %.lr.ph.i.i.i.i.i299.i ], [ %i.ahy, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i.i ] ; 4 uses
  %.092.i.i.i.i.i.i74 = phi ptr [ %i.ais, %.lr.ph.i.i.i.i.i299.i ], [ %.sroa.0498.0764.i, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i.i73, ptr noundef nonnull align 8 dereferenceable(40) %.092.i.i.i.i.i.i74, i64 16, i1 false), !alias.scope !365
  %i.aim = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i73, i64 16
  %i.ain = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i74, i64 16 ; 2 uses
  %i.aio = load <2 x ptr>, ptr %i.ain, align 8, !tbaa !366, !alias.scope !363, !noalias !360
  store <2 x ptr> %i.aio, ptr %i.aim, align 8, !tbaa !366, !alias.scope !360, !noalias !363
  %i.aip = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i73, i64 32
  %i.aiq = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i74, i64 32
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !358, !alias.scope !363, !noalias !360
  store ptr %i.air, ptr %i.aip, align 8, !tbaa !358, !alias.scope !360, !noalias !363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ain, i8 0, i64 24, i1 false), !alias.scope !363, !noalias !360
  %i.ais = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i74, i64 40 ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i73, i64 40 ; 2 uses
  %.not.i.i.i.i.i300.i = icmp eq ptr %i.ais, %.sroa.14.0767.i
  br i1 %.not.i.i.i.i.i300.i, label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i299.i, !llvm.loop !367

_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i299.i, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i75 = phi ptr [ %i.ahy, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i.i ], [ %i.ait, %.lr.ph.i.i.i.i.i299.i ]
  %i.aiu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i75, i64 40
  %.not.i27.i.i.i76 = icmp eq ptr %.sroa.0498.0764.i, null
  br i1 %.not.i27.i.i.i76, label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.er

bb.er:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0498.0764.i, i64 noundef %i.ahp) #23
  br label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.er, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  %i.aiv = getelementptr inbounds nuw [40 x i8], ptr %i.ahy, i64 %i.ahw
  br label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit.i"
  %.sroa.0498.1.i = phi ptr [ %.sroa.0498.0764.i, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit.i" ], [ %i.ahy, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.0498.0764.i, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i ] ; 2 uses
  %.sroa.8.1.i = phi ptr [ %.sroa.8.0765.i, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit.i" ], [ %i.aiu, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.ahm, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i ] ; 2 uses
  %.sroa.14.1.i = phi ptr [ %.sroa.14.0767.i, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit.i" ], [ %i.aiv, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.14.0767.i, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupC2ERKS1_.exit.i.i ] ; 2 uses
  %.not.i.i.i.i.i301.i = icmp eq ptr %i.ado, null
  br i1 %.not.i.i.i.i.i301.i, label %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit302.i", label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE9push_backERKS2_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ado, i64 noundef %i.adr) #23
  br label %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit302.i"

"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit302.i": ; preds = %bb.es, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE9push_backERKS2_.exit.i, %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit232.i
  %.sroa.0498.2.i = phi ptr [ %.sroa.0498.0764.i, %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit232.i ], [ %.sroa.0498.1.i, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.0498.1.i, %bb.es ]
  %.sroa.8.2.i = phi ptr [ %.sroa.8.0765.i, %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit232.i ], [ %.sroa.8.1.i, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.8.1.i, %bb.es ]
  %.sroa.14.2.i = phi ptr [ %.sroa.14.0767.i, %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit232.i ], [ %.sroa.14.1.i, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.14.1.i, %bb.es ]
  %i.aiw = load ptr, ptr %i.ap, align 8, !tbaa !298 ; 2 uses
  %.not.i.i.i303.i = icmp eq ptr %i.aiw, null
  br i1 %.not.i.i.i303.i, label %_ZNSt5dequeIjSaIjEED2Ev.exit.i305.i, label %bb.et

bb.et:                                            ; preds = %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit302.i"
  %i.aix = load ptr, ptr %i.as, align 8, !tbaa !315 ; 2 uses
  %i.aiy = load ptr, ptr %i.aw, align 8, !tbaa !316 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %i.aja = icmp ult ptr %i.aix, %i.aiz
  br i1 %i.aja, label %.lr.ph.i.i.i.i306.i, label %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.i.i.i304.i

.lr.ph.i.i.i.i306.i:                              ; preds = %bb.et, %.lr.ph.i.i.i.i306.i
  %.06.i.i.i.i307.i = phi ptr [ %i.ajc, %.lr.ph.i.i.i.i306.i ], [ %i.aix, %bb.et ] ; 3 uses
  %i.ajb = load ptr, ptr %.06.i.i.i.i307.i, align 8, !tbaa !299
  call void @_ZdlPvm(ptr noundef %i.ajb, i64 noundef 512) #23
  %i.ajc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i307.i, i64 8
  %i.ajd = icmp ult ptr %.06.i.i.i.i307.i, %i.aiy
  br i1 %i.ajd, label %.lr.ph.i.i.i.i306.i, label %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.loopexit.i.i.i308.i, !llvm.loop !317

_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.loopexit.i.i.i308.i: ; preds = %.lr.ph.i.i.i.i306.i
  %.pre.i.i.i309.i = load ptr, ptr %i.ap, align 8, !tbaa !298
  br label %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.i.i.i304.i

_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.i.i.i304.i: ; preds = %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.loopexit.i.i.i308.i, %bb.et
  %i.aje = phi ptr [ %.pre.i.i.i309.i, %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.loopexit.i.i.i308.i ], [ %i.aiw, %bb.et ]
  %i.ajf = load i64, ptr %i.aq, align 8, !tbaa !294
  %i.ajg = shl i64 %i.ajf, 3
  call void @_ZdlPvm(ptr noundef %i.aje, i64 noundef %i.ajg) #23
  br label %_ZNSt5dequeIjSaIjEED2Ev.exit.i305.i

_ZNSt5dequeIjSaIjEED2Ev.exit.i305.i:              ; preds = %_ZNSt11_Deque_baseIjSaIjEE16_M_destroy_nodesEPPjS3_.exit.i.i.i304.i, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_1D2Ev.exit302.i"
  %i.ajh = load ptr, ptr %16, align 8, !tbaa !21  ; 2 uses
  %i.aji = icmp eq ptr %i.ajh, %i.al
  br i1 %i.aji, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt5dequeIjSaIjEED2Ev.exit.i305.i
  call void @free(ptr noundef %i.ajh) #20
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %_ZNSt5dequeIjSaIjEED2Ev.exit.i305.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  %i.ajj = ptrtoint ptr %.sroa.33.0.lcssa.i to i64
  %i.ajk = ptrtoint ptr %.sroa.10.0.lcssa.i to i64
  %i.ajl = sub i64 %i.ajj, %i.ajk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.10.0.lcssa.i, i64 noundef %i.ajl) #23
  br label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit.i

_ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit.i: ; preds = %bb.ev, %._ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit_crit_edge.i
  %indvars.iv.next821.pre-phi.i = phi i64 [ %.pre830.i, %._ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit_crit_edge.i ], [ %i.tk, %bb.ev ]
  %.sroa.0498.3.i = phi ptr [ %.sroa.0498.0764.i, %._ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit_crit_edge.i ], [ %.sroa.0498.2.i, %bb.ev ] ; 7 uses
  %.sroa.8.3.i = phi ptr [ %.sroa.8.0765.i, %._ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit_crit_edge.i ], [ %.sroa.8.2.i, %bb.ev ] ; 4 uses
  %.sroa.14.3.i = phi ptr [ %.sroa.14.0767.i, %._ZN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupD2Ev.exit_crit_edge.i ], [ %.sroa.14.2.i, %bb.ev ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond272 = icmp eq i64 %indvars.iv.i, %i.sd
  br i1 %exitcond272, label %.preheader.i, label %bb.bi, !llvm.loop !368

.lr.ph.i.i.i.preheader.i:                         ; preds = %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling11isShuffleOfEjj.exit.thread.i, %.lr.ph776.i
  %.0110.lcssa1015.i = phi i1 [ false, %.lr.ph776.i ], [ %.3113.i, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling11isShuffleOfEjj.exit.thread.i ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvPT_.exit.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.06.i.i.i.i = phi ptr [ %i.ajr, %_ZSt8_DestroyIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvPT_.exit.i.i.i.i ], [ %.sroa.0498.3.i, %.lr.ph.i.i.i.preheader.i ] ; 3 uses
  %i.ajm = getelementptr i8, ptr %.06.i.i.i.i, i64 16
  %.0.val.i.i.i.i = load ptr, ptr %i.ajm, align 8, !tbaa !356 ; 3 uses
  %.not.i.i.i.i.i.i.i.i312.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i312.i, label %_ZSt8_DestroyIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvPT_.exit.i.i.i.i, label %bb.ew

bb.ew:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ajn = getelementptr i8, ptr %.06.i.i.i.i, i64 32
  %.0.val4.i.i.i.i = load ptr, ptr %i.ajn, align 8
  %i.ajo = ptrtoint ptr %.0.val4.i.i.i.i to i64
  %i.ajp = ptrtoint ptr %.0.val.i.i.i.i to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp
  call void @_ZdlPvm(ptr noundef nonnull %.0.val.i.i.i.i, i64 noundef %i.ajq) #23
  br label %_ZSt8_DestroyIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvPT_.exit.i.i.i.i: ; preds = %bb.ew, %.lr.ph.i.i.i.i
  %i.ajr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i313.i = icmp eq ptr %i.ajr, %.sroa.8.3.i
  br i1 %.not.i.i.i313.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !369

_ZSt8_DestroyIPN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvPT_.exit.i.i.i.i, %.preheader.i
  %.0110.lcssa1005.i = phi i1 [ false, %.preheader.i ], [ %.0110.lcssa1015.i, %_ZSt8_DestroyIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvPT_.exit.i.i.i.i ] ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %.sroa.0498.3.i, null
  br i1 %.not.i.i2.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EED2Ev.exit.i, label %bb.ex

bb.ex:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvT_S4_.exit.i.i
  %i.ajs = ptrtoint ptr %.sroa.0498.3.i to i64
  %i.ajt = sub i64 %i.se, %i.ajs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0498.3.i, i64 noundef %i.ajt) #23
  br label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EED2Ev.exit.i: ; preds = %bb.ex, %_ZSt8_DestroyIPN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvT_S4_.exit.i.i, %.thread597.i
  %.0110.lcssa10051047.i = phi i1 [ %.0110.lcssa1005.i, %bb.ex ], [ %.0110.lcssa1005.i, %_ZSt8_DestroyIPN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupEEvT_S4_.exit.i.i ], [ false, %.thread597.i ] ; 2 uses
  %.not.i.i.i315.i = icmp eq ptr %.sroa.0521.0.lcssa.i, null
  br i1 %.not.i.i.i315.i, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit.i, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EED2Ev.exit.i
  %i.aju = sub i64 %.sroa.16.0.lcssa.i, %i.rs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0521.0.lcssa.i, i64 noundef %i.aju) #23
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit.i
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_123HexagonLoopRescheduling20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auo, i64 52
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !195
  %i.ave = load ptr, ptr %i.avb, align 8, !tbaa !377
  %i.avf = zext i32 %i.avd to i64
  %i.avg = sub nsw i64 0, %i.avf
  %i.avh = getelementptr inbounds [32 x i8], ptr %i.ave, i64 %i.avg
  %i.avi = call { ptr, ptr } @_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(360) %i.asp, ptr %i.ass, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.avh, i32 %i.auy) ; 2 uses
  %i.avj = extractvalue { ptr, ptr } %i.avi, 0    ; 2 uses
  %i.avk = extractvalue { ptr, ptr } %i.avi, 1    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.avl = getelementptr inbounds nuw i8, ptr %i.auo, i64 32
  %i.avm = load ptr, ptr %i.avl, align 8, !tbaa !271 ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %i.auo, i64 40
  %i.avo = load i24, ptr %i.avn, align 8          ; 2 uses
  %i.avp = zext i24 %i.avo to i64
  %.idx.i400.i = shl nuw nsw i64 %i.avp, 5
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avm, i64 %.idx.i400.i
  %.not104.i.i = icmp eq i24 %i.avo, 0
  br i1 %.not104.i.i, label %._crit_edge.i403.i, label %.lr.ph.i401.i

._crit_edge.i403.i:                               ; preds = %bb.hj, %.lr.ph109.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i32 %i.aup, ptr %11, align 4, !tbaa !400
  store i32 %i.auy, ptr %i.cl, align 4, !tbaa !402
  %i.avr = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJjEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(4) %i.cl), !noalias !429 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %.not99.i.i = icmp eq ptr %i.aun, %i.atl
  br i1 %.not99.i.i, label %._crit_edge110.i.i, label %.lr.ph109.i.i

.lr.ph.i401.i:                                    ; preds = %.lr.ph109.i.i, %bb.hj
  %.0105.i.i = phi ptr [ %i.ayx, %bb.hj ], [ %i.avm, %.lr.ph109.i.i ] ; 5 uses
  %i.avs = load i32, ptr %.0105.i.i, align 8      ; 3 uses
  %i.avt = and i32 %i.avs, 255
  %i.avu = icmp eq i32 %i.avt, 0
  br i1 %i.avu, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %.lr.ph.i401.i
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.avk, ptr noundef nonnull align 8 dereferenceable(1065) %i.avj, ptr noundef nonnull align 8 dereferenceable(32) %.0105.i.i) #20
  br label %bb.hj

bb.hd:                                            ; preds = %.lr.ph.i401.i
  %i.avv = and i32 %i.avs, 16777216
  %.not.i.i409.i = icmp eq i32 %i.avv, 0
  br i1 %.not.i.i409.i, label %bb.he, label %bb.hj

bb.he:                                            ; preds = %bb.hd
  %i.avw = getelementptr inbounds nuw i8, ptr %.0105.i.i, i64 4
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !265 ; 5 uses
  %i.avy = load ptr, ptr %7, align 8, !tbaa !428, !noalias !434 ; 3 uses
  %i.avz = load ptr, ptr %i.ce, align 8, !tbaa !439, !noalias !434 ; 3 uses
  %i.awa = load i32, ptr %i.cf, align 4, !tbaa !425, !noalias !434 ; 4 uses
  %i.awb = icmp eq i32 %i.awa, 0
  br i1 %i.awb, label %.loopexit.i.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.awc = add i32 %i.awa, -1                     ; 2 uses
  %i.awd = mul i32 %i.avx, 37
  %.024.i.i.i.i = and i32 %i.awc, %i.awd          ; 3 uses
  %i.awe = zext i32 %.024.i.i.i.i to i64          ; 2 uses
  %i.awf = getelementptr inbounds nuw [8 x i8], ptr %i.avy, i64 %i.awe ; 2 uses
  %i.awg = lshr i64 %i.awe, 5
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %i.avz, i64 %i.awg
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !254
  %i.awj = and i32 %.024.i.i.i.i, 31
  %i.awk = lshr i32 %i.awi, %i.awj
  %i.awl = trunc i32 %i.awk to i1
  br i1 %i.awl, label %.lr.ph.i.i.i412.i, label %.loopexit.i.i.i, !prof !440

bb.hg:                                            ; preds = %.lr.ph.i.i.i412.i
  %i.awm = add nuw i32 %.025.i.i.i.i, 1
  %.0.i.i.i413.i = and i32 %i.awm, %i.awc         ; 3 uses
  %i.awn = zext i32 %.0.i.i.i413.i to i64         ; 2 uses
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr %i.avy, i64 %i.awn ; 2 uses
  %i.awp = lshr i64 %i.awn, 5
  %i.awq = getelementptr inbounds nuw [4 x i8], ptr %i.avz, i64 %i.awp
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !254
  %i.aws = and i32 %.0.i.i.i413.i, 31
  %i.awt = lshr i32 %i.awr, %i.aws
  %i.awu = trunc i32 %i.awt to i1
  br i1 %i.awu, label %.lr.ph.i.i.i412.i, label %.loopexit.i.i.i, !prof !441, !llvm.loop !442

.lr.ph.i.i.i412.i:                                ; preds = %bb.hf, %bb.hg
  %i.awv = phi ptr [ %i.awo, %bb.hg ], [ %i.awf, %bb.hf ] ; 2 uses
  %.025.i.i.i.i = phi i32 [ %.0.i.i.i413.i, %bb.hg ], [ %.024.i.i.i.i, %bb.hf ]
  %i.aww = load i32, ptr %i.awv, align 4, !tbaa !254
  %i.awx = icmp eq i32 %i.avx, %i.aww
  br i1 %i.awx, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i.i, label %bb.hg, !prof !359

.loopexit.i.i.i:                                  ; preds = %bb.hg, %bb.hf, %bb.he
  %.lcssa30.sink.i.ph.i.i.i = phi ptr [ %i.awf, %bb.hf ], [ null, %bb.he ], [ %i.awo, %bb.hg ]
  %i.awy = load i32, ptr %i.ch, align 8, !tbaa !443
  %i.awz = shl i32 %i.awy, 2
  %i.axa = add i32 %i.awz, 4
  %i.axb = mul i32 %i.awa, 3
  %.not.i.i.i410.i = icmp ult i32 %i.axa, %i.axb
  br i1 %.not.i.i.i410.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i.i.i, label %bb.hh, !prof !359

bb.hh:                                            ; preds = %.loopexit.i.i.i
  %i.axc = shl i32 %i.awa, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %7, i32 noundef %i.axc)
  %i.axd = load ptr, ptr %7, align 8, !tbaa !428, !noalias !444 ; 5 uses
  %i.axe = load ptr, ptr %i.ce, align 8, !tbaa !439, !noalias !444 ; 5 uses
  %i.axf = load i32, ptr %i.cf, align 4, !tbaa !425, !noalias !444 ; 2 uses
  %i.axg = icmp ne i32 %i.axf, 0
  call void @llvm.assume(i1 %i.axg)
  %i.axh = add i32 %i.axf, -1                     ; 2 uses
  %i.axi = mul i32 %i.avx, 37
  %.024.i.i.i = and i32 %i.axh, %i.axi            ; 3 uses
  %i.axj = zext i32 %.024.i.i.i to i64            ; 2 uses
  %i.axk = getelementptr inbounds nuw [8 x i8], ptr %i.axd, i64 %i.axj ; 2 uses
  %i.axl = lshr i64 %i.axj, 5
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr %i.axe, i64 %i.axl
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !254
  %i.axo = and i32 %.024.i.i.i, 31
  %i.axp = lshr i32 %i.axn, %i.axo
  %i.axq = trunc i32 %i.axp to i1
  br i1 %i.axq, label %.lr.ph.i.i411.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i.i.i, !prof !440

bb.hi:                                            ; preds = %.lr.ph.i.i411.i
  %i.axr = add nuw i32 %.025.i.i.i, 1
  %.0.i52.i.i = and i32 %i.axr, %i.axh            ; 3 uses
  %i.axs = zext i32 %.0.i52.i.i to i64            ; 2 uses
  %i.axt = getelementptr inbounds nuw [8 x i8], ptr %i.axd, i64 %i.axs ; 2 uses
  %i.axu = lshr i64 %i.axs, 5
  %i.axv = getelementptr inbounds nuw [4 x i8], ptr %i.axe, i64 %i.axu
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !254
  %i.axx = and i32 %.0.i52.i.i, 31
  %i.axy = lshr i32 %i.axw, %i.axx
  %i.axz = trunc i32 %i.axy to i1
  br i1 %i.axz, label %.lr.ph.i.i411.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i.i.i, !prof !441, !llvm.loop !442

.lr.ph.i.i411.i:                                  ; preds = %bb.hh, %bb.hi
  %i.aya = phi ptr [ %i.axt, %bb.hi ], [ %i.axk, %bb.hh ] ; 2 uses
  %.025.i.i.i = phi i32 [ %.0.i52.i.i, %bb.hi ], [ %.024.i.i.i, %bb.hh ]
  %i.ayb = load i32, ptr %i.aya, align 4, !tbaa !254
  %i.ayc = icmp eq i32 %i.avx, %i.ayb
  br i1 %i.ayc, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i.i.i, label %bb.hi, !prof !359

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i.i.i: ; preds = %.lr.ph.i.i411.i, %bb.hi, %bb.hh, %.loopexit.i.i.i
  %i.ayd = phi ptr [ %i.avy, %.loopexit.i.i.i ], [ %i.axd, %bb.hh ], [ %i.axd, %bb.hi ], [ %i.axd, %.lr.ph.i.i411.i ]
  %i.aye = phi ptr [ %i.avz, %.loopexit.i.i.i ], [ %i.axe, %bb.hh ], [ %i.axe, %bb.hi ], [ %i.axe, %.lr.ph.i.i411.i ]
  %i.ayf = phi ptr [ %.lcssa30.sink.i.ph.i.i.i, %.loopexit.i.i.i ], [ %i.axk, %bb.hh ], [ %i.aya, %.lr.ph.i.i411.i ], [ %i.axt, %bb.hi ] ; 3 uses
  %i.ayg = ptrtoint ptr %i.ayf to i64
  %i.ayh = ptrtoint ptr %i.ayd to i64
  %i.ayi = sub i64 %i.ayg, %i.ayh
  %i.ayj = ashr exact i64 %i.ayi, 3               ; 2 uses
  %i.ayk = trunc i64 %i.ayj to i32
  %i.ayl = and i32 %i.ayk, 31
  %i.aym = shl nuw i32 1, %i.ayl
  %i.ayn = lshr i64 %i.ayj, 5
  %i.ayo = getelementptr inbounds nuw [4 x i8], ptr %i.aye, i64 %i.ayn ; 2 uses
  %i.ayp = load i32, ptr %i.ayo, align 4, !tbaa !254
  %i.ayq = or i32 %i.aym, %i.ayp
  store i32 %i.ayq, ptr %i.ayo, align 4, !tbaa !254
  %i.ayr = load i32, ptr %i.ch, align 8, !tbaa !443
  %i.ays = add i32 %i.ayr, 1
  store i32 %i.ays, ptr %i.ch, align 8, !tbaa !443
  store i32 %i.avx, ptr %i.ayf, align 4, !tbaa !254
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayf, i64 4
  store i32 0, ptr %i.ayt, align 4, !tbaa !254
  %.pre115.i.i = load i32, ptr %.0105.i.i, align 8
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i412.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.awv, i64 4
  %.pre.i414.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !254
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i.i.i
  %i.ayu = phi i32 [ %.pre115.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i.i.i ], [ %i.avs, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i.i ]
  %i.ayv = phi i32 [ 0, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E22findBucketForInsertionIjEEPS6_RKT_SA_.exit.i.i.i ], [ %.pre.i414.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_.exit.loopexit.i.i ]
  %i.ayw = and i32 %i.ayu, 1048320
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr null, ptr %i.ci, align 8, !tbaa !267, !alias.scope !449
  store i32 %i.ayv, ptr %i.cj, align 4, !tbaa !265, !alias.scope !449
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false), !alias.scope !449
  store i32 %i.ayw, ptr %2, align 8, !alias.scope !449
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %i.avk, ptr noundef nonnull align 8 dereferenceable(1065) %i.avj, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.hj

bb.hj:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjjNS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjjEEEEjjS3_S6_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS6_bEOT_DpOT0_.exit.i.i, %bb.hd, %bb.hc
  %i.ayx = getelementptr inbounds nuw i8, ptr %.0105.i.i, i64 32 ; 2 uses
  %.not.i402.i = icmp eq ptr %i.ayx, %i.avq
  br i1 %.not.i402.i, label %._crit_edge.i403.i, label %.lr.ph.i401.i

_ZN12_GLOBAL__N_123HexagonLoopRescheduling9moveGroupERNS0_10InstrGroupERN4llvm17MachineBasicBlockES5_NS3_26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEEjj.exit.i: ; preds = %bb.hb, %_ZN12_GLOBAL__N_118HexagonBitSimplify10replaceRegEN4llvm8RegisterES2_RNS1_19MachineRegisterInfoE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN12_GLOBAL__N_123HexagonLoopRescheduling9moveGroupERNS0_10InstrGroupERN4llvm17MachineBasicBlockES5_NS3_26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEEjj.exit.i, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling13isSameShuffleEjjjRj.exit.i, %bb.gq, %bb.gp, %.loopexit.i, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_0D2Ev.exit.i"
  %.2112.i = phi i1 [ %.0110775.i, %"_ZZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandEEN3$_0D2Ev.exit.i" ], [ %.0110775.i, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling13isSameShuffleEjjjRj.exit.i ], [ true, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling9moveGroupERNS0_10InstrGroupERN4llvm17MachineBasicBlockES5_NS3_26MachineInstrBundleIteratorINS3_12MachineInstrELb0EEEjj.exit.i ], [ %.0110775.i, %bb.gq ], [ %.0110775.i, %bb.gp ], [ %.0110775.i, %.loopexit.i ] ; 2 uses
  %.not.i.i.i.i.i415.i = icmp eq ptr %i.alp, null
  br i1 %.not.i.i.i.i.i415.i, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling11isShuffleOfEjj.exit.thread.i, label %bb.hk

bb.hk:                                            ; preds = %.critedge.i
  call void @_ZdlPvm(ptr noundef nonnull %i.alp, i64 noundef %i.alk) #23
  br label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling11isShuffleOfEjj.exit.thread.i

_ZNK12_GLOBAL__N_123HexagonLoopRescheduling11isShuffleOfEjj.exit.thread.i: ; preds = %bb.fb, %bb.hk, %.critedge.i, %_ZNK4llvm10BitTracker3hasEj.exit30.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i28.i336.i, %_ZNK4llvm10BitTracker3hasEj.exit.i326.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i325.i, %.lr.ph776.split.i
  %.3113.i = phi i1 [ %.2112.i, %bb.hk ], [ %.0110775.i, %_ZNK4llvm10BitTracker3hasEj.exit.i326.i ], [ %.0110775.i, %_ZNK4llvm10BitTracker3hasEj.exit30.i.i ], [ %.0110775.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i325.i ], [ %.0110775.i, %.lr.ph776.split.i ], [ %.0110775.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i28.i336.i ], [ %.2112.i, %.critedge.i ], [ %.0110775.i, %bb.fb ] ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %.sroa.0439.0774.i, i64 40 ; 2 uses
  %.not618.i = icmp eq ptr %i.ayy, %.sroa.8.3.i
  br i1 %.not618.i, label %.lr.ph.i.i.i.preheader.i, label %.lr.ph776.split.i, !llvm.loop !452

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit.i: ; preds = %bb.ey, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EED2Ev.exit.i, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling7isConstEj.exit.i
  %.0.i = phi i1 [ false, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling7isConstEj.exit.i ], [ %.0110.lcssa10051047.i, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling10InstrGroupESaIS2_EED2Ev.exit.i ], [ %.0110.lcssa10051047.i, %bb.ey ] ; 2 uses
  %.not.i.i.i417.i = icmp eq ptr %.sroa.0562.0.lcssa.ph.i, null
  br i1 %.not.i.i.i417.i, label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandE.exit, label %bb.hl

bb.hl:                                            ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit.i
  %i.ayz = ptrtoint ptr %.sroa.0562.0.lcssa.ph.i to i64
  %i.aza = sub i64 %i.jy, %i.ayz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0562.0.lcssa.ph.i, i64 noundef %i.aza) #23
  br label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandE.exit

_ZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandE.exit: ; preds = %bb.k, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit.i, %bb.hl
  %.01041.i = phi i1 [ %.0.i, %bb.hl ], [ %.0.i, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit.i ], [ false, %bb.k ]
  %i.azb = or i1 %.046218, %.01041.i              ; 2 uses
  %i.azc = getelementptr inbounds nuw i8, ptr %.sroa.083.0217, i64 24 ; 2 uses
  %.not121 = icmp eq ptr %i.azc, %.sroa.7.1
  br i1 %.not121, label %._crit_edge220, label %bb.k

bb.hm:                                            ; preds = %bb.a, %_ZN4llvm16HexagonEvaluatorD2Ev.exit
  %.0 = phi i1 [ %.046.lcssa398, %_ZN4llvm16HexagonEvaluatorD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK4llvm12FunctionPass12skipFunctionERKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #6

declare void @_ZN4llvm16HexagonEvaluatorC1ERKNS_19HexagonRegisterInfoERNS_19MachineRegisterInfoERKNS_16HexagonInstrInfoERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(316), ptr noundef nonnull align 8 dereferenceable(520), ptr noundef nonnull align 8 dereferenceable(440), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #6

declare void @_ZN4llvm10BitTrackerC1ERKNS0_16MachineEvaluatorERNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(313), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(1065)) unnamed_addr #6

declare void @_ZN4llvm10BitTracker3runEv(ptr noundef nonnull align 8 dereferenceable(313)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN4llvm10BitTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(313) dereferenceable(313)) unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 -2147483648, 1) i32 @_ZN12_GLOBAL__N_123HexagonLoopRescheduling9getDefRegEPKN4llvm12MachineInstrE(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"struct.(anonymous namespace)::RegisterSet", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !286
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !287
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, i8 0, i64 80, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  store i64 8, ptr %i.f, align 8, !tbaa !294
  %i.g = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #22 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !298
  %i.h = load i64, ptr %i.f, align 8, !tbaa !294
  %i.i = add i64 %i.h, -1
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j ; 3 uses
  %i.l = call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #22 ; 6 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !299
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  store ptr %i.k, ptr %i.n, align 8, !tbaa !300
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.l, ptr %i.o, align 8, !tbaa !301
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 512 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.p, ptr %i.q, align 8, !tbaa !302
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  store ptr %i.k, ptr %i.s, align 8, !tbaa !300
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.l, ptr %i.t, align 8, !tbaa !301
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  store ptr %i.p, ptr %i.u, align 8, !tbaa !302
  store ptr %i.l, ptr %i.m, align 8, !tbaa !303
  store ptr %i.l, ptr %i.r, align 8, !tbaa !304
  %i.v = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.v, align 8, !tbaa !271 ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 40
  %.val1 = load i24, ptr %i.w, align 8            ; 2 uses
  %i.x = zext i24 %.val1 to i64
  %.idx.i = shl nuw nsw i64 %i.x, 5
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i
  %.not4.i = icmp eq i24 %.val1, 0
  br i1 %.not4.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrDefsERKN4llvm12MachineInstrERNS_11RegisterSetE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.0115.i = phi ptr [ %i.af, %bb.d ], [ %.val, %bb.a ] ; 3 uses
  %i.z = load i32, ptr %.0115.i, align 8
  %i.aa = and i32 %i.z, 16777471
  %or.cond.i = icmp eq i32 %i.aa, 16777216
  br i1 %or.cond.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0115.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !265 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ae = call fastcc noundef nonnull align 8 dereferenceable(152) ptr @_ZN12_GLOBAL__N_111RegisterSet6insertEj(ptr noundef nonnull align 8 dereferenceable(152) %1, i32 noundef %i.ac) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.0115.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.af, %i.y
  br i1 %.not.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrDefsERKN4llvm12MachineInstrERNS_11RegisterSetE.exit, label %.lr.ph.i

_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrDefsERKN4llvm12MachineInstrERNS_11RegisterSetE.exit: ; preds = %bb.d, %bb.a
  %.val2 = load ptr, ptr %1, align 8, !tbaa !21   ; 7 uses
  %.val3 = load i32, ptr %i.b, align 8, !tbaa !174 ; 2 uses
  %i.ag = zext i32 %.val3 to i64
  %.idx.i.i = shl nuw nsw i64 %i.ag, 3            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val2, i64 %.idx.i.i
  %.not10.i.i = icmp eq i32 %.val3, 0
  br i1 %.not10.i.i, label %_ZNK12_GLOBAL__N_111RegisterSet10find_firstEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify12getInstrDefsERKN4llvm12MachineInstrERNS_11RegisterSetE.exit
  %i.ai = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.aj = lshr exact i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.al = shl i64 %n.vec, 3
  %i.am = getelementptr i8, ptr %.val2, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi22 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %i.an = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.val2, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !28
  %wide.load23 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !28
  %i.ap = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.aq = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load23)
  %i.ar = trunc nuw nsw <2 x i64> %i.ap to <2 x i32>
  %i.as = trunc nuw nsw <2 x i64> %i.aq to <2 x i32>
  %i.at = add <2 x i32> %vec.phi, %i.ar           ; 2 uses
  %i.au = add <2 x i32> %vec.phi22, %i.as         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !454

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.au, %i.at
  %i.aw = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNK12_GLOBAL__N_111RegisterSet5countEv.exit, label %.lr.ph.i.i.preheader26

.lr.ph.i.i.preheader26:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.012.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.aw, %middle.block ]
  %.0911.i.i.ph = phi ptr [ %.val2, %.lr.ph.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader26, %.lr.ph.i.i
  %.012.i.i = phi i32 [ %i.ba, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader26 ]
  %.0911.i.i = phi ptr [ %i.bb, %.lr.ph.i.i ], [ %.0911.i.i.ph, %.lr.ph.i.i.preheader26 ] ; 2 uses
  %i.ax = load i64, ptr %.0911.i.i, align 8, !tbaa !28
  %i.ay = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ax)
  %i.az = trunc nuw nsw i64 %i.ay to i32
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_114CopyGeneration9findMatchERKN4llvm10BitTracker11RegisterRefERS3_RKNS_11RegisterSetE:bb.a
  %i.io = zext i16 %i.in to i64
  %i.ip = getelementptr inbounds nuw [12 x i8], ptr %.val50, i64 %i.io ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !258 ; 2 uses
  %i.ir = icmp eq i32 %i.iq, 3
  br i1 %i.ir, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !354 ; 2 uses
  %i.iu = icmp ne i32 %i.it, 0
  %or.cond.i116 = and i1 %i.ij, %i.iu
  br i1 %or.cond.i116, label %bb.ai, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

bb.ah:                                            ; preds = %bb.af
  %.not.i.i.old.i111 = icmp eq i32 %i.ii, %i.iq
  br i1 %.not.i.i.old.i111, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i113, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

bb.ai:                                            ; preds = %bb.ag
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !354
  %i.ix = icmp eq i32 %i.iw, %i.it
  br i1 %i.ix, label %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i117, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i117: ; preds = %bb.ai
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.iz = load i16, ptr %i.iy, align 4, !tbaa !819
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.jb = load i16, ptr %i.ja, align 4, !tbaa !819
  %i.jc = icmp eq i16 %i.iz, %i.jb
  br i1 %i.jc, label %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i113, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i113: ; preds = %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i117, %bb.ah
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i110, 1 ; 2 uses
  %exitcond.not.i115 = icmp eq i64 %indvars.iv.next.i114, %wide.trip.count.i96
  br i1 %exitcond.not.i115, label %_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit106, label %.lr.ph.i109, !llvm.loop !821

_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit106: ; preds = %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i101, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i113, %bb.y
  %storemerge = phi i32 [ 2, %bb.y ], [ 1, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i113 ], [ 2, %_ZNK4llvm10BitTracker8BitValueneERKS1_.exit.i101 ]
  store i32 %storemerge, ptr %i.dv, align 4, !tbaa !828
  store i32 %.sroa.0148.0193, ptr %2, align 4, !tbaa !254
  %i.jd = load i32, ptr %1, align 4
  %i.je = icmp slt i32 %i.jd, 0
  br i1 %i.je, label %bb.aj, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

bb.aj:                                            ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit106
  %.val12.i121 = load ptr, ptr %i.hc, align 8
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %.val12.i121, i64 %i.hd
  %.0.copyload.i.i.i.i.i.i.i.i122 = load i64, ptr %i.jf, align 8
  %i.jg = and i64 %.0.copyload.i.i.i.i.i.i.i.i122, -5
  %i.jh = inttoptr i64 %i.jg to ptr
  %.val11.i = load ptr, ptr %i.hb, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.val11.i, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !163, !nonnull !19, !align !162 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 200
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = tail call noundef ptr %i.jm(ptr noundef nonnull align 8 dereferenceable(344) %i.jj) #20, !inline_history !809 ; 0 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jh, i64 20
  %i.jp = load i16, ptr %i.jo, align 4, !tbaa !810
  switch i16 %i.jp, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread [
    i16 15, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124
    i16 26, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124.fold.split
  ]

_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124.fold.split: ; preds = %bb.aj
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124

_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124: ; preds = %bb.aj, %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124.fold.split
  %.2.i3.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), %bb.aj ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 1536), %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124.fold.split ]
  %.val.i125 = load ptr, ptr %i.hb, align 8
  %i.jq = load i32, ptr %1, align 4, !tbaa !354   ; 2 uses
  %i.jr = icmp slt i32 %i.jq, 0
  br i1 %i.jr, label %bb.ak, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124
  %.val10.i128 = load ptr, ptr %i.hc, align 8
  %i.js = and i32 %i.jq, 2147483647
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %.val10.i128, i64 %i.jt
  %.0.copyload.i.i.i.i.i.i.i14.i129 = load i64, ptr %i.ju, align 8
  %i.jv = and i64 %.0.copyload.i.i.i.i.i.i.i14.i129, -5
  %i.jw = inttoptr i64 %i.jv to ptr               ; 2 uses
  %i.jx = load i32, ptr %i.ax, align 4, !tbaa !828
  %i.jy = icmp eq i32 %i.jx, 0
  br i1 %i.jy, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.jz = getelementptr inbounds nuw i8, ptr %.val.i125, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !163, !nonnull !19, !align !162 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !8
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 200
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = tail call noundef ptr %i.kd(ptr noundef nonnull align 8 dereferenceable(344) %i.ka) #20, !inline_history !809 ; 0 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  %i.kg = load i16, ptr %i.kf, align 4, !tbaa !810 ; 2 uses
  %switch.selectcmp.i15.i130 = icmp eq i16 %i.kg, 26
  %switch.select.i16.i131 = select i1 %switch.selectcmp.i15.i130, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 1536), ptr null
  %switch.selectcmp1.i17.i132 = icmp eq i16 %i.kg, 15
  %switch.select2.i18.i133 = select i1 %switch.selectcmp1.i17.i132, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), ptr %switch.select.i16.i131
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134

_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134: ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124, %bb.ak, %bb.al
  %.2.i13.i127 = phi ptr [ null, %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.thread.i124 ], [ %i.jw, %bb.ak ], [ %switch.select2.i18.i133, %bb.al ]
  %i.kh = icmp eq ptr %.2.i3.i, %.2.i13.i127
  %cond.fr = freeze i1 %i.kh
  br i1 %cond.fr, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %_ZNK4llvm10BitTracker3hasEj.exit79.thread

_ZNK4llvm10BitTracker3hasEj.exit79.thread:        ; preds = %bb.ae, %bb.ag, %bb.ah, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i117, %bb.ai, %bb.r, %bb.t, %bb.u, %_ZNK4llvm10BitTracker6BitRefeqERKS1_.exit.i.i.i, %bb.v, %bb.aj, %_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit106, %bb.n, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134, %bb.w, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit, %bb.m, %bb.x, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i77, %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit, %_ZNK4llvm10BitTracker3hasEj.exit79, %_ZNK12_GLOBAL__N_111RegisterSetixEj.exit
  %.val37 = load ptr, ptr %3, align 8             ; 2 uses
  %.val38 = load i32, ptr %i.cs, align 8, !tbaa !287 ; 2 uses
  %i.ki = and i32 %.sroa.0148.0193.in, 2147483647
  %i.kj = add nuw i32 %i.ki, 1                    ; 3 uses
  %i.kk = icmp eq i32 %i.kj, %.val38
  br i1 %i.kk, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %bb.am

bb.am:                                            ; preds = %_ZNK4llvm10BitTracker3hasEj.exit79.thread
  %i.kl = lshr i32 %i.kj, 6                       ; 4 uses
  %i.km = add i32 %.val38, -1                     ; 2 uses
  %i.kn = lshr i32 %i.km, 6                       ; 4 uses
  %.not42.i.i.i = icmp samesign ugt i32 %i.kl, %i.kn
  br i1 %.not42.i.i.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.am
  %i.ko = and i32 %i.kj, 63                       ; 2 uses
  %i.kp = sub nuw nsw i32 64, %i.ko
  %.not.i.i = icmp eq i32 %i.ko, 0
  %i.kq = zext nneg i32 %i.kp to i64
  %i.kr = lshr i64 -1, %i.kq
  %i.ks = xor i64 %i.kr, -1
  %i.kt = and i32 %i.km, 63
  %i.ku = xor i32 %i.kt, 63
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = lshr i64 -1, %i.kv                      ; 2 uses
  %i.kx = zext nneg i32 %i.kl to i64              ; 2 uses
  %i.ky = zext nneg i32 %i.kn to i64
  %i.kz = add nuw nsw i32 %i.kn, 1
  %wide.trip.count.i.i.i135 = zext nneg i32 %i.kz to i64 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %.val37, i64 %i.kx
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !28
  %i.lc = select i1 %.not.i.i, i64 -1, i64 %i.ks
  %i.ld = icmp eq i32 %i.kl, %i.kn
  %i.le = select i1 %i.ld, i64 %i.kw, i64 -1
  %spec.select44.peel.i.i.i = and i64 %i.le, %i.lc
  %.230.peel.i.i.i136 = and i64 %spec.select44.peel.i.i.i, %i.lb ; 2 uses
  %.not37.peel.i.i.i137 = icmp eq i64 %.230.peel.i.i.i136, 0
  br i1 %.not37.peel.i.i.i137, label %bb.an, label %_ZNK4llvm9BitVector9find_nextEj.exit.i

bb.an:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.peel.i.i.i = add nuw nsw i64 %i.kx, 1 ; 2 uses
  %exitcond.peel.not.i.i.i = icmp eq i64 %indvars.iv.next.peel.i.i.i, %wide.trip.count.i.i.i135
  br i1 %exitcond.peel.not.i.i.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %.peel.next.i.i.i140

.peel.next.i.i.i140:                              ; preds = %bb.an, %bb.ao
  %indvars.iv.i.i.i141 = phi i64 [ %indvars.iv.next.i.i.i145, %bb.ao ], [ %indvars.iv.next.peel.i.i.i, %bb.an ] ; 4 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.val37, i64 %indvars.iv.i.i.i141
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !28
  %i.lh = icmp eq i64 %indvars.iv.i.i.i141, %i.ky
  %i.li = select i1 %i.lh, i64 %i.kw, i64 -1
  %.230.i.i.i142 = and i64 %i.li, %i.lg           ; 2 uses
  %.not37.i.i.i143 = icmp eq i64 %.230.i.i.i142, 0
  br i1 %.not37.i.i.i143, label %bb.ao, label %.loopexit48.i.i.i

.loopexit48.i.i.i:                                ; preds = %.peel.next.i.i.i140
  %.pre.i.i.i144 = trunc nuw nsw i64 %indvars.iv.i.i.i141 to i32
  br label %_ZNK4llvm9BitVector9find_nextEj.exit.i

bb.ao:                                            ; preds = %.peel.next.i.i.i140
  %indvars.iv.next.i.i.i145 = add nuw nsw i64 %indvars.iv.i.i.i141, 1 ; 2 uses
  %exitcond.not.i.i.i146 = icmp eq i64 %indvars.iv.next.i.i.i145, %wide.trip.count.i.i.i135
  br i1 %exitcond.not.i.i.i146, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %.peel.next.i.i.i140, !llvm.loop !309

_ZNK4llvm9BitVector9find_nextEj.exit.i:           ; preds = %.loopexit48.i.i.i, %.lr.ph.i.i.i
  %.pre-phi.i.i.i = phi i32 [ %.pre.i.i.i144, %.loopexit48.i.i.i ], [ %i.kl, %.lr.ph.i.i.i ]
  %.230.lcssa.i.i.i = phi i64 [ %.230.i.i.i142, %.loopexit48.i.i.i ], [ %.230.peel.i.i.i136, %.lr.ph.i.i.i ]
  %i.lj = shl nuw i32 %.pre-phi.i.i.i, 6          ; 2 uses
  %i.lk = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.230.lcssa.i.i.i, i1 true)
  %i.ll = trunc nuw nsw i64 %i.lk to i32
  %i.lm = icmp slt i32 %i.lj, 0
  %i.ln = or disjoint i32 %i.lj, %i.ll
  br i1 %i.lm, label %_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit, label %_ZNK12_GLOBAL__N_111RegisterSet9find_nextEj.exit, !llvm.loop !898

_ZN12_GLOBAL__N_118HexagonBitSimplify13getSubregMaskERKN4llvm10BitTracker11RegisterRefERjS6_RNS1_19MachineRegisterInfoE.exit: ; preds = %bb.j, %_ZNK4llvm9BitVector9find_nextEj.exit.i, %bb.am, %_ZNK4llvm10BitTracker3hasEj.exit79.thread, %bb.an, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134, %bb.ao, %_ZNK4llvm9BitVector10find_firstEv.exit.i, %bb.g, %bb.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %bb.a, %bb.e, %_ZNK4llvm10BitTracker3hasEj.exit
  %.5 = phi i1 [ false, %bb.e ], [ false, %_ZNK4llvm10BitTracker3hasEj.exit ], [ false, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i ], [ false, %bb.a ], [ true, %_ZN12_GLOBAL__N_118HexagonBitSimplify7isEqualERKN4llvm10BitTracker12RegisterCellEtS5_tt.exit ], [ true, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit134 ], [ false, %_ZNK4llvm9BitVector10find_firstEv.exit.i ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.ao ], [ false, %_ZNK4llvm9BitVector9find_nextEj.exit.i ], [ false, %bb.am ], [ false, %_ZNK4llvm10BitTracker3hasEj.exit79.thread ], [ false, %bb.an ], [ false, %bb.j ]
  ret i1 %.5
}

declare void @_ZNK4llvm10BitTracker3getENS0_11RegisterRefE(ptr dead_on_unwind writable sret(%"struct.llvm::BitTracker::RegisterCell") align 8, ptr noundef nonnull align 8 dereferenceable(313), i64) local_unnamed_addr #6

declare noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316), ptr noundef nonnull align 8 dereferenceable(62), i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_115CopyPropagationD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_115CopyPropagation12processBlockERN4llvm17MachineBasicBlockERKNS_11RegisterSetE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(360) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::BitTracker::RegisterRef", align 4 ; 8 uses
  %4 = alloca %"struct.llvm::BitTracker::RegisterRef", align 4 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.f = load i32, ptr %i.e, align 4, !tbaa !280
  %i.g = and i32 %i.f, 4
  %.not45.i.i.i.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not45.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi ptr [ %i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ], [ %i.c, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i.i.i, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i.i.i, -8
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !280
  %i.l = and i32 %i.k, 4
  %.not4.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, !llvm.loop !282

_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i, %bb.a, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i = phi ptr [ %i.c, %bb.a ], [ %i.c, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i.i.i ], [ %i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.not44 = icmp eq ptr %.sroa.0.1.i.i.i.i.i.i.i, %i.a
  br i1 %.not44, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit, label %.lr.ph

.preheader:                                       ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit
  %i.m = ptrtoint ptr %.sroa.11.1 to i64
  %.not3751 = icmp eq ptr %.sroa.027.1, %.sroa.7.1
  br i1 %.not3751, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.4..4..4..4..4..sroa_idx88 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.4..4..4..4..4..sroa_idx89 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.4..4..4..4..4..sroa_idx87 = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.h

.lr.ph:                                           ; preds = %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit
  %.sroa.024.048 = phi ptr [ %.sroa.0.1.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ], [ %.sroa.0.1.i.i.i.i.i.i.i, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit ] ; 3 uses
  %.sroa.11.047 = phi ptr [ %.sroa.11.1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ], [ null, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit ] ; 3 uses
  %.sroa.7.046 = phi ptr [ %.sroa.7.1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ], [ null, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit ] ; 3 uses
  %.sroa.027.045 = phi ptr [ %.sroa.027.1, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit ], [ null, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit ] ; 5 uses
  %.not.i.i = icmp eq ptr %.sroa.7.046, %.sroa.11.047
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store ptr %.sroa.024.048, ptr %.sroa.7.046, align 8, !tbaa !311
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.p = ptrtoint ptr %.sroa.11.047 to i64
  %i.q = ptrtoint ptr %.sroa.027.045 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #21
  unreachable

_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #22 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %.sroa.024.048, ptr %i.aa, align 8, !tbaa !311
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.e, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %.sroa.027.045, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4llvm12MachineInstrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.027.045, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.027.045, i64 noundef %i.r) #23
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.sroa.027.1 = phi ptr [ %i.z, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.027.045, %bb.b ] ; 6 uses
  %.pn = phi ptr [ %i.aa, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.7.046, %bb.b ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %i.ac, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.11.047, %bb.b ] ; 2 uses
  %.sroa.7.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.024.048, align 8
  %i.ad = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i, -8
  %i.ae = inttoptr i64 %i.ad to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i14 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i14, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !280
  %i.ai = and i32 %i.ah, 4
  %.not45.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.ak, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ], [ %i.ae, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.aj = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  %i.am = load i32, ptr %i.al, align 4, !tbaa !280
  %i.an = and i32 %i.am, 4
  %.not4.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, !llvm.loop !282

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb1EEppEv.exit: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.ae, %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EE9push_backEOS2_.exit ], [ %i.ae, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.ak, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.1.i.i.i.i, %i.a
  br i1 %.not, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit, %.preheader
  %.012.lcssa = phi i1 [ false, %.preheader ], [ %.1, %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.027.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ao = ptrtoint ptr %.sroa.027.1 to i64
  %i.ap = sub i64 %i.m, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.027.1, i64 noundef %i.ap) #23
  br label %_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm12MachineInstrESaIS2_EED2Ev.exit: ; preds = %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit, %._crit_edge, %bb.g
  %.012.lcssa77 = phi i1 [ %.012.lcssa, %bb.g ], [ %.012.lcssa, %._crit_edge ], [ false, %_ZN4llvm7reverseIRNS_17MachineBasicBlockEEEDaOT_.exit ]
  ret i1 %.012.lcssa77

bb.h:                                             ; preds = %.lr.ph54, %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit
  %.01253 = phi i1 [ false, %.lr.ph54 ], [ %.1, %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit ] ; 2 uses
  %.sroa.019.052 = phi ptr [ %.sroa.027.1, %.lr.ph54 ], [ %i.gv, %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.019.052, align 8, !tbaa !311 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !195 ; 3 uses
  switch i32 %i.as, label %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit [
    i32 20, label %bb.i
    i32 19, label %bb.i
    i32 1140, label %bb.i
    i32 1141, label %bb.i
    i32 1050, label %bb.i
    i32 337, label %bb.i
    i32 975, label %bb.i
    i32 2920, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !271 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !265 ; 10 uses
  %i.ax = load i32, ptr %i.au, align 8
  switch i32 %i.as, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit [
    i32 20, label %bb.j
    i32 1050, label %bb.j
    i32 337, label %bb.j
    i32 19, label %bb.s
    i32 975, label %bb.v
    i32 2920, label %bb.v
    i32 1140, label %bb.w
    i32 1141, label %bb.w
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !265 ; 5 uses
  %i.bb = load i32, ptr %i.ay, align 8
  %i.bc = lshr i32 %i.bb, 8
  %i.bd = and i32 %i.bc, 4095                     ; 2 uses
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162 ; 3 uses
  %i.bf = icmp slt i32 %i.aw, 0
  %i.bg = icmp slt i32 %i.ba, 0
  %or.cond.i.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond.i.i, label %bb.k, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.bh, align 8
  %i.bi = and i32 %i.aw, 2147483647
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %.val12.i.i, i64 %i.bj
  %.0.copyload.i.i.i.i.i.i.i.i.i15 = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i15, -5
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = and i32 %i.ax, 1048320
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val11.i.i = load ptr, ptr %i.be, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !163, !nonnull !19, !align !162 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 200
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(344) %i.bq) #20, !inline_history !901 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 20
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !810 ; 2 uses
  %switch.selectcmp.i.i.i = icmp eq i16 %i.bw, 26
  %switch.select.i.i.i = select i1 %switch.selectcmp.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 1536), ptr null
  %switch.selectcmp1.i.i.i = icmp eq i16 %i.bw, 15
  br i1 %switch.selectcmp1.i.i.i, label %bb.m, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i

_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i: ; preds = %bb.l, %bb.k
  %.2.i.i.i = phi ptr [ %switch.select.i.i.i, %bb.l ], [ %i.bm, %bb.k ] ; 2 uses
  %.not.i.i16 = icmp eq ptr %.2.i.i.i, null
  br i1 %.not.i.i16, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i, %bb.l
  %.2.i3.i.i = phi ptr [ %.2.i.i.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), %bb.l ] ; 2 uses
  %.val10.i.i = load ptr, ptr %i.bh, align 8
  %i.bx = and i32 %i.ba, 2147483647
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %.val10.i.i, i64 %i.by
  %.0.copyload.i.i.i.i.i.i.i14.i.i = load i64, ptr %i.bz, align 8
  %i.ca = and i64 %.0.copyload.i.i.i.i.i.i.i14.i.i, -5
  %i.cb = inttoptr i64 %i.ca to ptr               ; 2 uses
  %i.cc = icmp eq i32 %i.bd, 0
  br i1 %i.cc, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.thread86.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.i

_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.i: ; preds = %bb.m
  %.val.i.i = load ptr, ptr %i.be, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !163, !nonnull !19, !align !162 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 200
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(344) %i.ce) #20, !inline_history !901 ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.ck = load i16, ptr %i.cj, align 4, !tbaa !810 ; 2 uses
  %switch.selectcmp.i15.i.i = icmp eq i16 %i.ck, 26
  %switch.select.i16.i.i = select i1 %switch.selectcmp.i15.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 1536), ptr null
  %switch.selectcmp1.i17.i.i = icmp eq i16 %i.ck, 15
  %switch.select2.i18.i.i = select i1 %switch.selectcmp1.i17.i.i, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm29HexagonMCRegisterClassStorageE, i64 192), ptr %switch.select.i16.i.i
  %i.cl = icmp eq ptr %.2.i3.i.i, %switch.select2.i18.i.i
  br i1 %i.cl, label %bb.n, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.thread86.i: ; preds = %bb.m
  %i.cm = icmp eq ptr %.2.i3.i.i, %i.cb
  br i1 %i.cm, label %.thread.i, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.i
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.co = getelementptr i8, ptr %i.cn, i64 48
  %.val52.i = load ptr, ptr %i.co, align 8
  %i.cp = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceRegWithSubEN4llvm8RegisterES2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 %i.ba, i32 noundef %i.bd, ptr %.val52.i)
  br label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

.thread.i:                                        ; preds = %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.thread86.i
  %i.cq = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.cr = getelementptr i8, ptr %i.cq, i64 48
  %.val.i = load ptr, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.bj
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.0.i.i.i.i = load ptr, ptr %i.ct, align 8, !tbaa !264 ; 4 uses
  %.not.i.i.i.i17 = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i17, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit, label %bb.o

bb.o:                                             ; preds = %.thread.i
  %i.cu = load i32, ptr %.0.i.i.i.i, align 8
  %i.cv = and i32 %i.cu, 16777216
  %.not4.i.i.i.i18 = icmp eq i32 %i.cv, 0
  br i1 %.not4.i.i.i.i18, label %.lr.ph.i.preheader.i.i.preheader, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.o, %bb.p
  %.pn.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i, %bb.o ]
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !265 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit, label %bb.p

bb.p:                                             ; preds = %.preheader.i.i.i.i
  %i.cw = load i32, ptr %storemerge.i.i.i.i.i, align 8
  %i.cx = and i32 %i.cw, 16777216
  %.not1.i.i.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.preheader, label %.preheader.i.i.i.i, !llvm.loop !266

.lr.ph.i.preheader.i.i.preheader:                 ; preds = %bb.p, %bb.o
  %storemerge.in.sroa.speculated.in12.i.i.ph = phi ptr [ %.0.i.i.i.i, %bb.o ], [ %storemerge.i.i.i.i.i, %bb.p ]
  br label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.i.preheader.i.i.preheader, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i
  %storemerge.in.sroa.speculated.in12.i.i = phi ptr [ %storemerge.i.i.i7.i.i, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i ], [ %storemerge.in.sroa.speculated.in12.i.i.ph, %.lr.ph.i.preheader.i.i.preheader ] ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.r, %.lr.ph.i.preheader.i.i
  %.pn.i.i.i5.i.i = phi ptr [ %storemerge.in.sroa.speculated.in12.i.i, %.lr.ph.i.preheader.i.i ], [ %storemerge.i.i.i7.i.i, %bb.r ]
  %storemerge.in.i.i.i6.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i5.i.i, i64 24
  %storemerge.i.i.i7.i.i = load ptr, ptr %storemerge.in.i.i.i6.i.i, align 8, !tbaa !265 ; 4 uses
  %.not.i.i.i8.i.i = icmp eq ptr %storemerge.i.i.i7.i.i, null
  br i1 %.not.i.i.i8.i.i, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.thread.i.i, label %bb.r

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.thread.i.i: ; preds = %bb.q
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %storemerge.in.sroa.speculated.in12.i.i, i32 %i.ba) #20
  br label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

bb.r:                                             ; preds = %bb.q
  %i.cy = load i32, ptr %storemerge.i.i.i7.i.i, align 8
  %i.cz = and i32 %i.cy, 16777216
  %.not1.i.i.i9.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not1.i.i.i9.i.i, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i, label %bb.q, !llvm.loop !266

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i: ; preds = %bb.r
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %storemerge.in.sroa.speculated.in12.i.i, i32 %i.ba) #20
  br label %.lr.ph.i.preheader.i.i, !llvm.loop !424

bb.s:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i32 0, ptr %3, align 4, !tbaa !254
  store i32 0, ptr %.4..4..4..4..4..sroa_idx88, align 4, !tbaa !828
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i32 0, ptr %4, align 4, !tbaa !254
  store i32 0, ptr %.4..4..4..4..4..sroa_idx, align 4, !tbaa !828
  %i.da = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162 ; 2 uses
  %.val54.i = load ptr, ptr %i.da, align 8, !tbaa !902
  %i.db = getelementptr i8, ptr %i.da, i64 48
  %.val55.i = load ptr, ptr %i.db, align 8, !tbaa !21
  %i.dc = getelementptr i8, ptr %.val54.i, i64 16
  %.val54.val.i = load ptr, ptr %i.dc, align 8, !tbaa !163 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !265
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !265
  %i.di = trunc i64 %i.dh to i32                  ; 2 uses
  %i.dj = and i32 %i.aw, 2147483647
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %.val55.i, i64 %i.dk
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.dl, align 8
  %i.dm = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.dn = inttoptr i64 %i.dm to ptr               ; 2 uses
  %i.do = load ptr, ptr %.val54.val.i, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 200
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = tail call noundef ptr %i.dq(ptr noundef nonnull align 8 dereferenceable(344) %.val54.val.i) #20, !inline_history !967 ; 2 uses
  %i.ds = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.dr, ptr noundef nonnull align 8 dereferenceable(62) %i.dn, i32 noundef 0) #20 ; 2 uses
  %i.dt = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.dr, ptr noundef nonnull align 8 dereferenceable(62) %i.dn, i32 noundef 1) #20 ; 2 uses
  %i.du = icmp eq i32 %i.ds, %i.df
  %i.dv = icmp eq i32 %i.dt, %i.di
  %or.cond.i57.i = and i1 %i.du, %i.dv
  br i1 %or.cond.i57.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = icmp eq i32 %i.dt, %i.df
  %i.dx = icmp eq i32 %i.ds, %i.di
  %or.cond25.i.i = and i1 %i.dx, %i.dw
  br i1 %or.cond25.i.i, label %bb.u, label %_ZN12_GLOBAL__N_118HexagonBitSimplify16parseRegSequenceERKN4llvm12MachineInstrERNS1_10BitTracker11RegisterRefES7_RKNS1_19MachineRegisterInfoE.exit.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink15.i.i = phi ptr [ %3, %bb.s ], [ %4, %bb.t ]
  %.sink.i.i = phi ptr [ %4, %bb.s ], [ %3, %bb.t ]
  %i.dy = load ptr, ptr %i.at, align 8, !tbaa !271 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 36
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !265
  %i.ec = load i32, ptr %i.dz, align 8
  %i.ed = lshr i32 %i.ec, 8
  %i.ee = and i32 %i.ed, 4095
  %.sroa.42.0.insert.ext.i.i = zext nneg i32 %i.ee to i64
  %.sroa.42.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.42.0.insert.ext.i.i, 32
  %.sroa.01.0.insert.ext.i.i = zext i32 %i.eb to i64
  %.sroa.01.0.insert.insert.i.i = or disjoint i64 %.sroa.42.0.insert.shift.i.i, %.sroa.01.0.insert.ext.i.i
  store i64 %.sroa.01.0.insert.insert.i.i, ptr %.sink15.i.i, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dy, i64 100
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !265
  %i.ei = load i32, ptr %i.ef, align 8
  %i.ej = lshr i32 %i.ei, 8
  %i.ek = and i32 %i.ej, 4095
  %.sroa.4.0.insert.ext.i.i = zext nneg i32 %i.ek to i64
  %.sroa.4.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.eh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %.sink.i.i, align 4
  %i.el = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 48
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !21
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.dk
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.eo, align 8
  %i.ep = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.eq = inttoptr i64 %i.ep to ptr               ; 2 uses
  %i.er = load ptr, ptr %i.o, align 8, !tbaa !968, !nonnull !19, !align !162
  %i.es = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.er, ptr noundef nonnull align 8 dereferenceable(62) %i.eq, i32 noundef 0) #20
  %i.et = load ptr, ptr %i.o, align 8, !tbaa !968, !nonnull !19, !align !162
  %i.eu = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.et, ptr noundef nonnull align 8 dereferenceable(62) %i.eq, i32 noundef 1) #20
  %.0..0..0..0..0..sroa.013.0.copyload.i = load i32, ptr %3, align 4, !tbaa !254
  %.4..4..4..4..4.68.i = load i32, ptr %.4..4..4..4..4..sroa_idx89, align 4, !tbaa !828
  %i.ev = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.ew = getelementptr i8, ptr %i.ev, i64 48
  %.val50.i = load ptr, ptr %i.ew, align 8
  %i.ex = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceSubWithSubEN4llvm8RegisterEjS2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 noundef %i.es, i32 %.0..0..0..0..0..sroa.013.0.copyload.i, i32 noundef %.4..4..4..4..4.68.i, ptr %.val50.i)
  %.0..0..0..0..0..sroa.011.0.copyload.i = load i32, ptr %4, align 4, !tbaa !254
  %.4..4..4..4..4..i = load i32, ptr %.4..4..4..4..4..sroa_idx87, align 4, !tbaa !828
  %i.ey = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.ez = getelementptr i8, ptr %i.ey, i64 48
  %.val48.i = load ptr, ptr %i.ez, align 8
  %i.fa = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceSubWithSubEN4llvm8RegisterEjS2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 noundef %i.eu, i32 %.0..0..0..0..0..sroa.011.0.copyload.i, i32 noundef %.4..4..4..4..4..i, ptr %.val48.i)
  %i.fb = or i1 %i.ex, %i.fa
  br label %_ZN12_GLOBAL__N_118HexagonBitSimplify16parseRegSequenceERKN4llvm12MachineInstrERNS1_10BitTracker11RegisterRefES7_RKNS1_19MachineRegisterInfoE.exit.i

_ZN12_GLOBAL__N_118HexagonBitSimplify16parseRegSequenceERKN4llvm12MachineInstrERNS1_10BitTracker11RegisterRefES7_RKNS1_19MachineRegisterInfoE.exit.i: ; preds = %bb.u, %bb.t
  %.2.i = phi i1 [ %i.fb, %bb.u ], [ false, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

bb.v:                                             ; preds = %bb.i, %bb.i
  %i.fc = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fe = and i32 %i.aw, 2147483647
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !21
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.ff
  %.0.copyload.i.i.i.i.i.i59.i = load i64, ptr %i.fh, align 8
  %i.fi = and i64 %.0.copyload.i.i.i.i.i.i59.i, -5
  %i.fj = inttoptr i64 %i.fi to ptr               ; 2 uses
  %i.fk = load ptr, ptr %i.o, align 8, !tbaa !968, !nonnull !19, !align !162
  %i.fl = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.fk, ptr noundef nonnull align 8 dereferenceable(62) %i.fj, i32 noundef 0) #20
  %i.fm = load ptr, ptr %i.o, align 8, !tbaa !968, !nonnull !19, !align !162
  %i.fn = tail call noundef i32 @_ZNK4llvm19HexagonRegisterInfo21getHexagonSubRegIndexERKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(316) %i.fm, ptr noundef nonnull align 8 dereferenceable(62) %i.fj, i32 noundef 1) #20
  %i.fo = load ptr, ptr %i.at, align 8, !tbaa !271 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 36
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !265
  %i.fs = load i32, ptr %i.fp, align 8
  %i.ft = lshr i32 %i.fs, 8
  %i.fu = and i32 %i.ft, 4095
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 68
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !265
  %i.fy = load i32, ptr %i.fv, align 8
  %i.fz = lshr i32 %i.fy, 8
  %i.ga = and i32 %i.fz, 4095
  %i.gb = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.gc = getelementptr i8, ptr %i.gb, i64 48
  %.val46.i = load ptr, ptr %i.gc, align 8
  %i.gd = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceSubWithSubEN4llvm8RegisterEjS2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 noundef %i.fl, i32 %i.fx, i32 noundef %i.ga, ptr %.val46.i)
  %i.ge = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.gf = getelementptr i8, ptr %i.ge, i64 48
  %.val44.i = load ptr, ptr %i.gf, align 8
  %i.gg = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceSubWithSubEN4llvm8RegisterEjS2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 noundef %i.fn, i32 %i.fr, i32 noundef %i.fu, ptr %.val44.i)
  %i.gh = or i1 %i.gd, %i.gg
  br label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

bb.w:                                             ; preds = %bb.i, %bb.i
  %i.gi = icmp eq i32 %i.as, 1140
  %i.gj = select i1 %i.gi, i32 2, i32 1           ; 2 uses
  %i.gk = zext nneg i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.au, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !265
  %i.go = load i32, ptr %i.gl, align 8
  %i.gp = lshr i32 %i.go, 8
  %i.gq = and i32 %i.gp, 4095
  %i.gr = load ptr, ptr %i.n, align 8, !tbaa !899, !nonnull !19, !align !162
  %i.gs = getelementptr i8, ptr %i.gr, i64 48
  %.val42.i = load ptr, ptr %i.gs, align 8
  %i.gt = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceSubWithSubEN4llvm8RegisterEjS2_jRNS1_19MachineRegisterInfoE(i32 %i.aw, i32 noundef %i.gj, i32 %i.gn, i32 noundef %i.gq, ptr %.val42.i)
  br label %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit

_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit: ; preds = %.preheader.i.i.i.i, %bb.i, %bb.j, %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.thread86.i, %bb.n, %.thread.i, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.thread.i.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify16parseRegSequenceERKN4llvm12MachineInstrERNS1_10BitTracker11RegisterRefES7_RKNS1_19MachineRegisterInfoE.exit.i, %bb.v, %bb.w
  %.3.i = phi i1 [ false, %bb.i ], [ %i.gt, %bb.w ], [ %.2.i, %_ZN12_GLOBAL__N_118HexagonBitSimplify16parseRegSequenceERKN4llvm12MachineInstrERNS1_10BitTracker11RegisterRefES7_RKNS1_19MachineRegisterInfoE.exit.i ], [ %i.gh, %bb.v ], [ false, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.i ], [ %i.cp, %bb.n ], [ false, %_ZN12_GLOBAL__N_118HexagonBitSimplify17isTransparentCopyERKN4llvm10BitTracker11RegisterRefES5_RNS1_19MachineRegisterInfoE.exit.thread86.i ], [ false, %_ZN12_GLOBAL__N_118HexagonBitSimplify17getFinalVRegClassERKN4llvm10BitTracker11RegisterRefERNS1_19MachineRegisterInfoE.exit.i.i ], [ true, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.thread.i.i ], [ false, %.thread.i ], [ false, %bb.j ], [ false, %.preheader.i.i.i.i ]
  %i.gu = or i1 %.01253, %.3.i
  br label %_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit

_ZN12_GLOBAL__N_115CopyPropagation9isCopyRegEjb.exit: ; preds = %bb.h, %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit
  %.1 = phi i1 [ %i.gu, %_ZN12_GLOBAL__N_115CopyPropagation16propagateRegCopyERN4llvm12MachineInstrE.exit ], [ %.01253, %bb.h ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.019.052, i64 8
  %.not37 = icmp eq ptr %.sroa.019.052, %.pn
  br i1 %.not37, label %._crit_edge, label %bb.h
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_118HexagonBitSimplify17replaceRegWithSubEN4llvm8RegisterES2_jRNS1_19MachineRegisterInfoE(i32 %0, i32 %1, i32 noundef range(i32 1, 0) %2, ptr nofree readonly captures(none) %.48.val) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  %i.b = icmp slt i32 %1, 0
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN12_GLOBAL__N_118HexagonBitSimplify10hasTiedUseEjRN4llvm19MachineRegisterInfoEj.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL15PreserveTiedOps, i64 120), align 8, !tbaa !969, !range !18, !noundef !19
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = and i32 %0, 2147483647
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  br i1 %i.d, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %.48.val, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.0.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !264 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.0.i.i.i.i, align 8       ; 2 uses
  %i.j = and i32 %i.i, 16777216
  %.not4.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not4.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.d, %bb.e
  %.pn.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i, %bb.d ]
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !265 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i.i
  %i.k = load i32, ptr %storemerge.i.i.i.i.i, align 8 ; 2 uses
  %i.l = and i32 %i.k, 16777216
  %.not1.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not1.i.i.i.i.i, label %_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE.exit.i, label %.preheader.i.i.i.i, !llvm.loop !266

_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE.exit.i: ; preds = %bb.e, %bb.d
  %.val1.i.i.i.i.i.i.i11.i = phi i32 [ %i.i, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.d ], [ %storemerge.i.i.i.i.i, %bb.e ]
  %i.m = lshr i32 %.val1.i.i.i.i.i.i.i11.i, 8
  %i.n = and i32 %i.m, 4095
  %.not.i.i.i.i.i.i.i.i12.i = icmp ne i32 %i.n, %2
  %i.o = and i32 %.val1.i.i.i.i.i.i.i11.i, 15728640
  %i.p = icmp ne i32 %i.o, 0
  %i.q = and i1 %i.p, %.not.i.i.i.i.i.i.i.i12.i
  br i1 %i.q, label %_ZN12_GLOBAL__N_118HexagonBitSimplify10hasTiedUseEjRN4llvm19MachineRegisterInfoEj.exit, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE.exit.i, %.preheader.i.i.i.i.i.i.i.backedge
  %.pn.i.i.i.i.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.backedge ], [ %.sroa.0.0.i.i.i, %_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE.exit.i ]
  %storemerge.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i.i.i.i.i, align 8, !tbaa !265 ; 3 uses
  %.not.i.i2.i.i.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i2.i.i.i.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  %i.r = load i32, ptr %storemerge.i.i.i.i.i.i.i.i.i, align 8 ; 3 uses
  %i.s = and i32 %i.r, 16777216
  %.not1.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not1.i.i.i.i.i.i.i.i.i, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.backedge

.preheader.i.i.i.i.i.i.i.backedge:                ; preds = %bb.f, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i.i.i.i.i
  br label %.preheader.i.i.i.i.i.i.i, !llvm.loop !830

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.t = lshr i32 %i.r, 8
  %i.u = and i32 %i.t, 4095
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.u, %2
  %i.v = and i32 %i.r, 15728640
  %i.w = icmp ne i32 %i.v, 0
  %i.x = and i1 %i.w, %.not.i.i.i.i.i.i.i.i.i
  br i1 %i.x, label %_ZN12_GLOBAL__N_118HexagonBitSimplify10hasTiedUseEjRN4llvm19MachineRegisterInfoEj.exit, label %.preheader.i.i.i.i.i.i.i.backedge

.loopexit:                                        ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.i.i.i, %bb.b, %bb.c
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.48.val, i64 %i.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.i.i = load ptr, ptr %i.z, align 8, !tbaa !264 ; 4 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify10hasTiedUseEjRN4llvm19MachineRegisterInfoEj.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.aa = load i32, ptr %.0.i.i, align 8
  %i.ab = and i32 %i.aa, 16777216
  %.not4.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not4.i.i, label %.lr.ph.i.preheader.lr.ph, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g, %bb.h
  %.pn.i.i.i = phi ptr [ %storemerge.i.i.i, %bb.h ], [ %.0.i.i, %bb.g ]
  %storemerge.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24
  %storemerge.i.i.i = load ptr, ptr %storemerge.in.i.i.i, align 8, !tbaa !265 ; 4 uses
  %.not.i.i.i = icmp eq ptr %storemerge.i.i.i, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_118HexagonBitSimplify10hasTiedUseEjRN4llvm19MachineRegisterInfoEj.exit, label %bb.h

bb.h:                                             ; preds = %.preheader.i.i
  %i.ac = load i32, ptr %storemerge.i.i.i, align 8
  %i.ad = and i32 %i.ac, 16777216
  %.not1.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not1.i.i.i, label %.lr.ph.i.preheader.lr.ph, label %.preheader.i.i, !llvm.loop !266

.lr.ph.i.preheader.lr.ph:                         ; preds = %bb.h, %bb.g
  %.sroa.0.0.i = phi ptr [ %.0.i.i, %bb.g ], [ %storemerge.i.i.i, %bb.h ]
  %i.ae = shl i32 %2, 8
  %i.af = and i32 %i.ae, 1048320
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i
  %storemerge.in.sroa.speculated.in19 = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.preheader.lr.ph ], [ %storemerge.i.i.i10, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.preheader
  %.pn.i.i.i8 = phi ptr [ %storemerge.in.sroa.speculated.in19, %.lr.ph.i.preheader ], [ %storemerge.i.i.i10, %bb.j ]
  %storemerge.in.i.i.i9 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i8, i64 24
  %storemerge.i.i.i10 = load ptr, ptr %storemerge.in.i.i.i9, align 8, !tbaa !265 ; 5 uses
  %.not.i.i.i11 = icmp eq ptr %storemerge.i.i.i10, null
  br i1 %.not.i.i.i11, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %storemerge.i.i.i10, align 8
  %i.ah = and i32 %i.ag, 16777216
  %.not1.i.i.i12 = icmp eq i32 %i.ah, 0
  br i1 %.not1.i.i.i12, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i, label %bb.i, !llvm.loop !266

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i: ; preds = %bb.j, %bb.i
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %storemerge.in.sroa.speculated.in19, i32 %1) #20
  %i.ai = load i32, ptr %storemerge.in.sroa.speculated.in19, align 8
  %i.aj = and i32 %i.ai, -1048321
  %i.ak = or disjoint i32 %i.aj, %i.af
  store i32 %i.ak, ptr %storemerge.in.sroa.speculated.in19, align 8
end_hunk_3
