Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegisterCoalescer?download=true
inline.NumInlined: 5517
inline.NumDeleted: 2347
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_117RegisterCoalescer16reMaterializeDefERKN4llvm13CoalescerPairEPNS1_12MachineInstrERb:bb.a
  br label %bb.bo

bb.bo:                                            ; preds = %.critedge713, %._crit_edge661
  %i.sf = load ptr, ptr %i.m, align 8, !tbaa !277
  %i.sg = call i64 @_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(424) %i.sf, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.copyload.i346)
  %i.sh = load ptr, ptr %i.jt, align 8, !tbaa !287 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 56
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !579, !noalias !1114 ; 2 uses
  %.not620662 = icmp eq ptr %i.sj, null
  br i1 %.not620662, label %.thread602, label %.lr.ph666

.lr.ph666:                                        ; preds = %bb.bo
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !580, !noalias !1114
  %i.sm = load ptr, ptr %i.mv, align 8, !tbaa !87
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !88
  %i.sp = zext i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw [24 x i8], ptr %i.sl, i64 %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !582, !noalias !1114 ; 2 uses
  %i.st = lshr i32 %i.ss, 12
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw [2 x i8], ptr %i.sj, i64 %i.su
  %i.sw = and i32 %i.ss, 4095
  %i.sx = and i64 %i.sg, -8
  %i.sy = or disjoint i64 %i.sx, 4
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph666, %_ZN4llvm17MCRegUnitIteratorppEv.exit386
  %.sroa.5458.0664 = phi ptr [ %i.sv, %.lr.ph666 ], [ %i.th, %_ZN4llvm17MCRegUnitIteratorppEv.exit386 ] ; 2 uses
  %.sroa.9460.0663 = phi i32 [ %i.sw, %.lr.ph666 ], [ %i.tk, %_ZN4llvm17MCRegUnitIteratorppEv.exit386 ] ; 2 uses
  %i.sz = load ptr, ptr %i.m, align 8, !tbaa !277 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 408
  %i.tb = zext i32 %.sroa.9460.0663 to i64
  %i.tc = load ptr, ptr %i.ta, align 8, !tbaa !53
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %i.tb
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !585 ; 2 uses
  %.not335 = icmp eq ptr %i.te, null
  br i1 %.not335, label %_ZN4llvm17MCRegUnitIteratorppEv.exit386, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sz, i64 56
  %i.tg = call noundef ptr @_ZN4llvm9LiveRange13createDeadDefENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr noundef nonnull align 8 dereferenceable(104) %i.te, i64 %i.sy, ptr noundef nonnull align 8 dereferenceable(80) %i.tf) #22 ; 0 uses
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit386

_ZN4llvm17MCRegUnitIteratorppEv.exit386:          ; preds = %bb.bq, %bb.bp
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.5458.0664, i64 2
  %i.ti = load i16, ptr %.sroa.5458.0664, align 2, !tbaa !583 ; 2 uses
  %i.tj = sext i16 %i.ti to i32
  %i.tk = add i32 %.sroa.9460.0663, %i.tj
  %.not.i.i385 = icmp eq i16 %i.ti, 0
  br i1 %.not.i.i385, label %.thread602, label %bb.bp

.thread602:                                       ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit386, %bb.ax, %_ZNK4llvm19MachineRegisterInfo25shouldTrackSubRegLivenessENS_8RegisterE.exit, %bb.bo, %bb.bc, %._crit_edge686, %bb.ay, %.thread603, %.critedge712, %bb.bj
  %i.tl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i346, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !87
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !88
  call void @_ZN4llvm12MachineInstr23setRegisterDefReadUndefENS_8RegisterEb(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.copyload.i346, i32 %i.to, i1 noundef zeroext true) #22
  %i.tp = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.tq = load i32, ptr %i.li, align 8, !tbaa !280 ; 2 uses
  %i.tr = zext i32 %i.tq to i64
  %.idx715 = shl nuw nsw i64 %i.tr, 5
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tp, i64 %.idx715
  %.not339688 = icmp eq i32 %i.tq, 0
  br i1 %.not339688, label %._crit_edge691, label %.lr.ph690

._crit_edge691:                                   ; preds = %.lr.ph690, %.thread602
  %i.tt = load ptr, ptr %i.m, align 8, !tbaa !277
  %i.tu = call i64 @_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(424) %i.tt, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.copyload.i346)
  %i.tv = load ptr, ptr %12, align 8, !tbaa !53, !noalias !1115 ; 2 uses
  %i.tw = load i32, ptr %i.mc, align 8, !tbaa !280, !noalias !1115 ; 2 uses
  %i.tx = zext i32 %i.tw to i64
  %.idx716 = shl nuw nsw i64 %i.tx, 3
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tv, i64 %.idx716
  %.not630698 = icmp eq i32 %i.tw, 0
  br i1 %.not630698, label %._crit_edge702, label %.lr.ph701

.lr.ph701:                                        ; preds = %._crit_edge691
  %i.tz = and i64 %i.tu, -8
  %i.ua = or disjoint i64 %i.tz, 4
  br label %bb.br

.lr.ph690:                                        ; preds = %.thread602, %.lr.ph690
  %.0298689 = phi ptr [ %i.ub, %.lr.ph690 ], [ %i.tp, %.thread602 ] ; 2 uses
  call void @_ZN4llvm12MachineInstr10addOperandERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.copyload.i346, ptr noundef nonnull align 8 dereferenceable(32) %.0298689) #22
  %i.ub = getelementptr inbounds nuw i8, ptr %.0298689, i64 32 ; 2 uses
  %.not339 = icmp eq ptr %i.ub, %i.ts
  br i1 %.not339, label %._crit_edge691, label %.lr.ph690

._crit_edge702:                                   ; preds = %._crit_edge697, %._crit_edge691
  %i.uc = load ptr, ptr %i.jf, align 8, !tbaa !285
  %.sroa.020.0.copyload = load i32, ptr %6, align 4, !tbaa !212 ; 2 uses
  %i.ud = call noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo15use_nodbg_emptyENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.uc, i32 %.sroa.020.0.copyload)
  br i1 %i.ud, label %bb.bt, label %.loopexit

bb.br:                                            ; preds = %.lr.ph701, %._crit_edge697
  %.sroa.0444.0699 = phi ptr [ %i.tv, %.lr.ph701 ], [ %i.ut, %._crit_edge697 ] ; 2 uses
  %i.ue = load ptr, ptr %i.jt, align 8, !tbaa !287 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 56
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !579, !noalias !1116 ; 2 uses
  %.not633692 = icmp eq ptr %i.ug, null
  br i1 %.not633692, label %._crit_edge697, label %.lr.ph696.preheader

.lr.ph696.preheader:                              ; preds = %bb.br
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !580, !noalias !1116
  %i.uj = getelementptr inbounds nuw i8, ptr %.sroa.0444.0699, i64 4
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !212
  %i.ul = zext i32 %i.uk to i64
  %i.um = getelementptr inbounds nuw [24 x i8], ptr %i.ui, i64 %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !582, !noalias !1116 ; 2 uses
  %i.up = lshr i32 %i.uo, 12
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw [2 x i8], ptr %i.ug, i64 %i.uq
  %i.us = and i32 %i.uo, 4095
  br label %.lr.ph696

._crit_edge697:                                   ; preds = %_ZN4llvm17MCRegUnitIteratorppEv.exit399, %bb.br
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.0444.0699, i64 8 ; 2 uses
  %.not630 = icmp eq ptr %i.ut, %i.ty
  br i1 %.not630, label %._crit_edge702, label %bb.br

.lr.ph696:                                        ; preds = %.lr.ph696.preheader, %_ZN4llvm17MCRegUnitIteratorppEv.exit399
  %.sroa.5433.0694 = phi ptr [ %i.vc, %_ZN4llvm17MCRegUnitIteratorppEv.exit399 ], [ %i.ur, %.lr.ph696.preheader ] ; 2 uses
  %.sroa.9.0693 = phi i32 [ %i.vf, %_ZN4llvm17MCRegUnitIteratorppEv.exit399 ], [ %i.us, %.lr.ph696.preheader ] ; 2 uses
  %i.uu = load ptr, ptr %i.m, align 8, !tbaa !277 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 408
  %i.uw = zext i32 %.sroa.9.0693 to i64
  %i.ux = load ptr, ptr %i.uv, align 8, !tbaa !53
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.uw
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !585 ; 2 uses
  %.not341 = icmp eq ptr %i.uz, null
  br i1 %.not341, label %_ZN4llvm17MCRegUnitIteratorppEv.exit399, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph696
  %i.va = getelementptr inbounds nuw i8, ptr %i.uu, i64 56
  %i.vb = call noundef ptr @_ZN4llvm9LiveRange13createDeadDefENS_9SlotIndexERNS_20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE(ptr noundef nonnull align 8 dereferenceable(104) %i.uz, i64 %i.ua, ptr noundef nonnull align 8 dereferenceable(80) %i.va) #22 ; 0 uses
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit399

_ZN4llvm17MCRegUnitIteratorppEv.exit399:          ; preds = %bb.bs, %.lr.ph696
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.5433.0694, i64 2
  %i.vd = load i16, ptr %.sroa.5433.0694, align 2, !tbaa !583 ; 2 uses
  %i.ve = sext i16 %i.vd to i32
  %i.vf = add i32 %.sroa.9.0693, %i.ve
  %.not.i.i398 = icmp eq i16 %i.vd, 0
  br i1 %.not.i.i398, label %._crit_edge697, label %.lr.ph696

bb.bt:                                            ; preds = %._crit_edge702
  %i.vg = load ptr, ptr %i.jf, align 8, !tbaa !285
  %i.vh = call { ptr, ptr } @_ZNK4llvm19MachineRegisterInfo12use_operandsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.vg, i32 %.sroa.020.0.copyload) ; 2 uses
  %i.vi = extractvalue { ptr, ptr } %i.vh, 0      ; 2 uses
  %i.vj = extractvalue { ptr, ptr } %i.vh, 1      ; 2 uses
  %.not631703 = icmp eq ptr %i.vi, %i.vj
  br i1 %.not631703, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.bt
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i346, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.bz
  %.sroa.0423.0704 = phi ptr [ %i.vi, %.preheader.lr.ph ], [ %storemerge.i.i.i.i, %bb.bz ] ; 4 uses
  br label %bb.bu

bb.bu:                                            ; preds = %.preheader, %bb.bv
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.bv ], [ %.sroa.0423.0704, %.preheader ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !88 ; 5 uses
  %.not.i.i.i.i404 = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i404, label %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEEEdeEv.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.vl = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.vm = and i32 %i.vl, 16777216
  %.not1.i.i.i.i = icmp eq i32 %i.vm, 0
  br i1 %.not1.i.i.i.i, label %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEEEdeEv.exit, label %bb.bu, !llvm.loop !25

_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEEEdeEv.exit: ; preds = %bb.bu, %bb.bv
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.0423.0704, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !528 ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 52
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !86
  %.off.i = add i32 %i.vq, -14
  %switch.i = icmp ult i32 %.off.i, 5
  br i1 %switch.i, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEEEdeEv.exit
  br i1 %i.ie, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.vr = load ptr, ptr %i.jt, align 8, !tbaa !287
  call void @_ZN4llvm14MachineOperand12substPhysRegENS_10MCRegisterERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0423.0704, i32 %storemerge325584, ptr noundef nonnull align 8 dereferenceable(316) %i.vr) #22
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.by:                                            ; preds = %bb.bw
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0423.0704, i32 %storemerge325584) #22
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %bb.bx, %bb.by
  %i.vs = load ptr, ptr %i.vk, align 8, !tbaa !394
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vo, i64 24
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !529
  call void @_ZN4llvm17MachineBasicBlock6spliceENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEEPS0_S3_(ptr noundef nonnull align 8 dereferenceable(360) %i.jl, ptr %i.vs, ptr noundef %i.vu, ptr nonnull %i.vo)
  br label %bb.bz

bb.bz:                                            ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZN4llvm23early_inc_iterator_implINS_19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEEEdeEv.exit
  %.not631 = icmp eq ptr %storemerge.i.i.i.i, %i.vj
  br i1 %.not631, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.bz, %bb.bt, %._crit_edge702
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.vw = call noundef i32 @_ZNK4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5countERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.vv, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not340 = icmp eq i32 %i.vw, 0
  br i1 %.not340, label %bb.ca, label %bb.cf

bb.ca:                                            ; preds = %.loopexit
  %i.vx = load ptr, ptr %i.jf, align 8, !tbaa !285
  %.sroa.0.0.copyload = load i32, ptr %6, align 4, !tbaa !212
  %i.vy = call { ptr, ptr } @_ZNK4llvm19MachineRegisterInfo18use_nodbg_operandsENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.vx, i32 %.sroa.0.0.copyload) ; 2 uses
  %i.vz = extractvalue { ptr, ptr } %i.vy, 0      ; 2 uses
  %i.wa = extractvalue { ptr, ptr } %i.vy, 1      ; 2 uses
  %.not632705 = icmp eq ptr %i.vz, %i.wa
  br i1 %.not632705, label %._crit_edge710, label %.lr.ph709

._crit_edge710:                                   ; preds = %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit, %bb.ca
  %.0289.lcssa = phi i32 [ 0, %bb.ca ], [ %spec.select, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit ]
  %i.wb = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL24LateRematUpdateThreshold, i64 120), align 8, !tbaa !620
  %i.wc = icmp ult i32 %.0289.lcssa, %i.wb
  br i1 %i.wc, label %bb.cc, label %bb.ce

.lr.ph709:                                        ; preds = %bb.ca, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit
  %.0289707 = phi i32 [ %spec.select, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit ], [ 0, %bb.ca ]
  %.sroa.0415.0706 = phi ptr [ %storemerge.i.i, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit ], [ %i.vz, %bb.ca ] ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.0415.0706, i64 8
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !528
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 52
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !86 ; 2 uses
  %i.wh = icmp eq i32 %i.wg, 20
  %i.wi = icmp eq i32 %i.wg, 12
  %spec.select.i407 = or i1 %i.wh, %i.wi
  %i.wj = zext i1 %spec.select.i407 to i32
  %spec.select = add i32 %.0289707, %i.wj         ; 2 uses
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.cb, %.lr.ph709
  %.pn.i.i = phi ptr [ %.sroa.0415.0706, %.lr.ph709 ], [ %storemerge.i.i, %bb.cb ]
  %storemerge.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24
  %storemerge.i.i = load ptr, ptr %storemerge.in.i.i, align 8, !tbaa !88 ; 5 uses
  %.not.i.i408 = icmp eq ptr %storemerge.i.i, null
  br i1 %.not.i.i408, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit, label %bb.cb

bb.cb:                                            ; preds = %.critedge2.i.i
  %i.wk = load i32, ptr %storemerge.i.i, align 8
  %i.wl = and i32 %i.wk, -2130706432
  %or.cond.not.i.i = icmp eq i32 %i.wl, 0
  br i1 %or.cond.not.i.i, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit, label %.critedge2.i.i, !llvm.loop !22

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb1ELb1ELb0EEppEv.exit: ; preds = %.critedge2.i.i, %bb.cb
  %.not632 = icmp eq ptr %storemerge.i.i, %i.wa
  br i1 %.not632, label %._crit_edge710, label %.lr.ph709

bb.cc:                                            ; preds = %._crit_edge710
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_117RegisterCoalescer12shrinkToUsesEPN4llvm12LiveIntervalEPNS1_15SmallVectorImplIPNS1_12MachineInstrEEE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef %.0.i, ptr noundef nonnull %i.wm)
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !280
  %.not.i409 = icmp eq i32 %i.wo, 0
  br i1 %.not.i409, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN4llvm13LiveRangeEdit17eliminateDeadDefsERNS_15SmallVectorImplIPNS_12MachineInstrEEENS_8ArrayRefINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(136) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.wm, ptr null, i64 0) #22
  br label %bb.cf

bb.ce:                                            ; preds = %._crit_edge710
  %i.wp = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.vv, ptr noundef nonnull align 4 dereferenceable(4) %6), !noalias !1117 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc, %.loopexit
  %i.wq = load ptr, ptr %12, align 8, !tbaa !53   ; 2 uses
  %i.wr = icmp eq ptr %i.wq, %i.mb
  br i1 %i.wr, label %_ZN4llvm11SmallVectorISt4pairIjNS_8RegisterEELj4EED2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @free(ptr noundef %i.wq) #22
  br label %_ZN4llvm11SmallVectorISt4pairIjNS_8RegisterEELj4EED2Ev.exit

_ZN4llvm11SmallVectorISt4pairIjNS_8RegisterEELj4EED2Ev.exit: ; preds = %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.ws = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.wt = icmp eq ptr %i.ws, %i.lh
  br i1 %i.wt, label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIjNS_8RegisterEELj4EED2Ev.exit
  call void @free(ptr noundef %i.ws) #22
  br label %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt4pairIjNS_8RegisterEELj4EED2Ev.exit, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @_ZN4llvm13LiveRangeEditD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.wu = load ptr, ptr %8, align 8, !tbaa !53    ; 2 uses
  %i.wv = icmp eq ptr %i.wu, %i.jn
  br i1 %i.wv, label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit, label %bb.ci

bb.ci:                                            ; preds = %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit
  call void @free(ptr noundef %i.wu) #22
  br label %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit

_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_14MachineOperandELj4EED2Ev.exit, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread: ; preds = %_ZN4llvm12is_containedINS_14iterator_rangeINS_17MCRegUnitIteratorEEENS_9MCRegUnitEEEbOT_RKT0_.exit.thread, %bb.q, %bb.y, %bb.z, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit, %bb.o, %bb.p, %_ZNK4llvm15TargetInstrInfo18isReMaterializableERKNS_12MachineInstrE.exit.thread
  %.10 = phi i1 [ false, %_ZNK4llvm15TargetInstrInfo18isReMaterializableERKNS_12MachineInstrE.exit.thread ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.y ], [ true, %_ZN4llvm11SmallVectorINS_8RegisterELj8EED2Ev.exit ], [ false, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit ], [ false, %bb.z ], [ false, %_ZN4llvm12is_containedINS_14iterator_rangeINS_17MCRegUnitIteratorEEENS_9MCRegUnitEEEbOT_RKT0_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread

_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread: ; preds = %._crit_edge.i, %bb.g, %bb.n, %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread772, %_ZNK4llvm15TargetInstrInfo18isReMaterializableERKNS_12MachineInstrE.exit, %bb.l, %bb.i, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread, %bb.k, %bb.a
  %.13 = phi i1 [ false, %bb.a ], [ false, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit ], [ false, %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread772 ], [ false, %bb.n ], [ false, %bb.k ], [ %.10, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit.thread ], [ false, %bb.l ], [ false, %bb.i ], [ false, %_ZNK4llvm15TargetInstrInfo18isReMaterializableERKNS_12MachineInstrE.exit ], [ false, %_ZNK4llvm13LiveIntervals19getInstructionIndexERKNS_12MachineInstrE.exit ], [ false, %bb.g ], [ false, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_117RegisterCoalescer20adjustCopiesBackFromERKN4llvm13CoalescerPairEPNS1_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(896) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 4 uses
  %4 = alloca %"struct.llvm::LiveRange::Segment", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !277  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !67, !range !49, !noundef !50
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i150 = load i32, ptr %i.g, align 4
  %.sroa.0107.0 = select i1 %i.e, i32 %.sroa.0.0.copyload.i, i32 %.sroa.0.0.copyload.i150 ; 2 uses
  %i.h = and i32 %.sroa.0107.0, 2147483647        ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !280  ; 4 uses
  %i.k = icmp ugt i32 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  br i1 %i.k, label %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i, label %bb.b

_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i: ; preds = %bb.a
  %i.m = zext nneg i32 %i.h to i64                ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !409  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i, label %_ZN4llvm13LiveIntervals11getIntervalENS_8RegisterE.exit

bb.b:                                             ; preds = %bb.a
  %i.q = add nuw i32 %i.h, 1
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %i.s = zext nneg i32 %i.j to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !410
  %i.v = sub nuw nsw i64 %i.r, %i.s               ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.x = load i32, ptr %i.w, align 4, !tbaa !281
  %.not.i.i.i.i.i.not.i.i.i.i = icmp ult i32 %i.h, %i.x
  br i1 %.not.i.i.i.i.i.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i, label %bb.c, !prof !216

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(25) %i.l, ptr noundef nonnull %i.t, i64 noundef %i.r, i64 noundef 8) #22
  %.pre.i.i.i.i.i.i.i = load i32, ptr %i.i, align 8, !tbaa !280 ; 2 uses
  %.pre.i.i.i.i.i.i = zext i32 %.pre.i.i.i.i.i.i.i to i64
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i.i = phi i64 [ %i.s, %bb.b ], [ %.pre.i.i.i.i.i.i, %bb.c ]
  %i.y = phi i32 [ %i.j, %bb.b ], [ %.pre.i.i.i.i.i.i.i, %bb.c ]
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.pre-phi.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.v, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aa, %_ZN4llvm23SmallVectorTemplateBaseIPNS_12LiveIntervalELb1EE28reserveForParamAndGetAddressERS2_m.exit.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %i.u, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !409
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !11

_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ad = trunc nuw i64 %i.v to i32
  %i.ae = add i32 %i.y, %i.ad
  store i32 %i.ae, ptr %i.i, align 8, !tbaa !280
  %.pre.i = zext nneg i32 %i.h to i64
  br label %_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i

_ZN4llvm13LiveIntervals31createAndComputeVirtRegIntervalENS_8RegisterE.exit.i: ; preds = %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i ], [ %i.m, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ]
  %i.af = phi ptr [ %i.z, %_ZN4llvm10IndexedMapIPNS_12LiveIntervalENS_20VirtReg2IndexFunctorEE6resizeEm.exit.i.i.i.i ], [ %i.n, %_ZNK4llvm13LiveIntervals11hasIntervalENS_8RegisterE.exit.i ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.pre-phi.i
end_hunk_0
begin_hunk_1_@_ZN4llvm11SlotIndexes24insertMachineInstrInMapsERNS_12MachineInstrEb:bb.a
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i: ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !395
  %i.q = and i32 %i.p, 8
  %.not34.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not34.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !394  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !395
  %i.v = and i32 %i.u, 8
  %.not3.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not3.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, !llvm.loop !10

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i, %.split.i
  %.sroa.0.1.i.i.i.i = phi ptr [ %.sroa.010.0.i, %.split.i ], [ %.sroa.010.0.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i ], [ %i.s, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !394  ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %.split16.us.i, label %bb.c

.split16.us.i:                                    ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !379
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = zext i32 %i.aa to i64
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ac
  br label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

bb.c:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEppEv.exit.i
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !212, !noalias !1425
  %i.ap = and i32 %i.ak, 31
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !214

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.as = phi i64 [ %i.ay, %bb.d ], [ %i.al, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ax, %bb.d ], [ %i.ak, %bb.c ]
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !402, !noalias !1425
  %i.av = icmp eq ptr %i.x, %i.au
  br i1 %i.av, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, label %bb.d, !prof !216

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = add nuw i32 %.017.i.i.i.i, 1
  %i.ax = and i32 %i.aw, %i.k                     ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !212, !noalias !1425
  %i.bc = and i32 %i.ax, 31
  %i.bd = lshr i32 %i.bb, %i.bc
  %i.be = trunc i32 %i.bd to i1
  br i1 %i.be, label %.lr.ph.i.i.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, !prof !217

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i: ; preds = %bb.d, %.lr.ph.i.i.i.i, %bb.c
  %.lcssa.sink.i.i.i = phi ptr [ %i.m, %bb.c ], [ %i.at, %.lr.ph.i.i.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %.not.i = icmp eq ptr %.lcssa.sink.i.i.i, %i.m
  br i1 %.not.i, label %.split.i, label %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i, %.split16.us.i
  %.pn.i = phi ptr [ %i.ae, %.split16.us.i ], [ %.lcssa.sink.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i ]
  %.sroa.0.2.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.sroa.0.2.i = load i64, ptr %.sroa.0.2.in.i, align 8, !tbaa !88
  %i.bf = and i64 %.sroa.0.2.i, -8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !575
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

bb.e:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !394
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bp = load i32, ptr %i.bo, align 4
  %.fr18.i = freeze i32 %i.bp                     ; 3 uses
  %i.bq = icmp eq i32 %.fr18.i, 0
  %i.br = add i32 %.fr18.i, -1                    ; 2 uses
  %i.bs = zext i32 %.fr18.i to i64
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bs ; 3 uses
  br i1 %i.bq, label %.split16.us.i30, label %.split.i17

.split.i17:                                       ; preds = %bb.e, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21
  %.sroa.010.0.i18 = phi ptr [ %.sroa.0.1.i.i.i.i20, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21 ], [ %1, %bb.e ] ; 2 uses
  %i.bu = icmp eq ptr %.sroa.010.0.i18, %i.bj
  br i1 %i.bu, label %.split16.us.i30, label %bb.f

.split16.us.i30:                                  ; preds = %.split.i17, %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !379
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = zext i32 %i.bw to i64
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !53
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %i.by
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit

bb.f:                                             ; preds = %.split.i17
  %.0.copyload.i.i.i.i.i.i.i.i.i.i19 = load i64, ptr %.sroa.010.0.i18, align 8
  %i.cb = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i19, -8
  %i.cc = inttoptr i64 %i.cb to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i = load i64, ptr %i.cc, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i, 4
  %.not.i5.i.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i5.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28: ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 44
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !395
  %i.cg = and i32 %i.cf, 4
  %.not45.i.i.i.i = icmp eq i32 %i.cg, 0
  br i1 %.not45.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29 ], [ %i.cc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28 ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i, align 8
  %i.ch = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i, -8
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !395
  %i.cl = and i32 %i.ck, 4
  %.not4.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29, !llvm.loop !27

_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28, %bb.f
  %.sroa.0.1.i.i.i.i20 = phi ptr [ %i.cc, %bb.f ], [ %i.cc, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.preheader.i.i.i.i28 ], [ %i.ci, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb1EE5isEndEv.exit.i.i.i.i29 ] ; 3 uses
  %i.cm = ptrtoint ptr %.sroa.0.1.i.i.i.i20 to i64
  %i.cn = mul i64 %i.cm, -4658895280553007687     ; 2 uses
  %i.co = lshr i64 %i.cn, 31
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = and i32 %i.br, %i.cq                    ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 2 uses
  %i.ct = lshr i64 %i.cs, 5
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !212, !noalias !1426
  %i.cw = and i32 %i.cr, 31
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i1
  br i1 %i.cy, label %.lr.ph.i.i.i.i26, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, !prof !214

.lr.ph.i.i.i.i26:                                 ; preds = %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i, %bb.g
  %i.cz = phi i64 [ %i.df, %bb.g ], [ %i.cs, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ]
  %.017.i.i.i.i27 = phi i32 [ %i.de, %bb.g ], [ %i.cr, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ]
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.cz ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !402, !noalias !1426
  %i.dc = icmp eq ptr %.sroa.0.1.i.i.i.i20, %i.db
  br i1 %i.dc, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, label %bb.g, !prof !216

bb.g:                                             ; preds = %.lr.ph.i.i.i.i26
  %i.dd = add nuw i32 %.017.i.i.i.i27, 1
  %i.de = and i32 %i.dd, %i.br                    ; 3 uses
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = lshr i64 %i.df, 5
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !212, !noalias !1426
  %i.dj = and i32 %i.de, 31
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = trunc i32 %i.dk to i1
  br i1 %i.dl, label %.lr.ph.i.i.i.i26, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21, !prof !217

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21: ; preds = %bb.g, %.lr.ph.i.i.i.i26, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i
  %.lcssa.sink.i.i.i22 = phi ptr [ %i.bt, %_ZN4llvm26MachineInstrBundleIteratorIKNS_12MachineInstrELb0EEmmEv.exit.i ], [ %i.da, %.lr.ph.i.i.i.i26 ], [ %i.bt, %bb.g ] ; 2 uses
  %.not.i23 = icmp eq ptr %.lcssa.sink.i.i.i22, %i.bt
  br i1 %.not.i23, label %.split.i17, label %.thread.i

.thread.i:                                        ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4findES4_.exit.i21
  %i.dm = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i22, i64 8
  br label %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit

_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit: ; preds = %.split16.us.i30, %.thread.i
  %.sroa.0.2.in.i24 = phi ptr [ %i.ca, %.split16.us.i30 ], [ %i.dm, %.thread.i ]
  %.sroa.0.2.i25 = load i64, ptr %.sroa.0.2.in.i24, align 8, !tbaa !88
  %i.dn = and i64 %.sroa.0.2.i25, -8
  %i.do = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !393
  br label %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit

_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit, %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit
  %.sroa.038.0 = phi ptr [ %i.dq, %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit ], [ %i.bg, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit ] ; 4 uses
  %.sroa.039.0 = phi ptr [ %i.do, %_ZNK4llvm11SlotIndexes14getIndexBeforeERKNS_12MachineInstrE.exit ], [ %i.bh, %_ZNK4llvm11SlotIndexes13getIndexAfterERKNS_12MachineInstrE.exit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 24
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !519
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.039.0, i64 24
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !519 ; 2 uses
  %i.dv = sub i32 %i.ds, %i.du
  %i.dw = lshr i32 %i.dv, 1
  %i.dx = and i32 %i.dw, 2147483644               ; 2 uses
  %i.dy = add i32 %i.dx, %i.du
  %i.dz = load ptr, ptr %0, align 8, !tbaa !640   ; 2 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = add i64 %i.ea, 32                       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !641
  %i.ee = icmp ult i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.h, label %bb.i, !prof !216

bb.h:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.ef = inttoptr i64 %i.eb to ptr
  store ptr %i.ef, ptr %0, align 8, !tbaa !640
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit

bb.i:                                             ; preds = %_ZSt9__advanceIN4llvm14ilist_iteratorINS0_12ilist_detail12node_optionsINS0_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.eg = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(416) %0, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit

_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi ptr [ %i.dz, %bb.h ], [ %i.eg, %bb.i ] ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.0.i.i.i, i8 0, i64 16, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store ptr %1, ptr %i.eh, align 8, !tbaa !594
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store i32 %i.dy, ptr %i.ei, align 8, !tbaa !519
  %i.ej = load ptr, ptr %.sroa.038.0, align 8, !tbaa !575 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store ptr %.sroa.038.0, ptr %i.ek, align 8, !tbaa !393
  store ptr %i.ej, ptr %.0.i.i.i, align 8, !tbaa !575
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %.0.i.i.i, ptr %i.el, align 8, !tbaa !393
  store ptr %.0.i.i.i, ptr %.sroa.038.0, align 8, !tbaa !575
  %i.em = icmp eq i32 %i.dx, 0
  br i1 %i.em, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit
  tail call void @_ZN4llvm11SlotIndexes15renumberIndexesENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr nonnull %.0.i.i.i) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4llvm11SlotIndexes11createEntryEPNS_12MachineInstrEj.exit
  %i.en = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %1, ptr %3, align 8, !tbaa !657
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !88
  %i.eq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_12MachineInstrENS_9SlotIndexENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.eo, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ep), !noalias !1427 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %i.en
}

declare void @_ZN4llvm11SlotIndexes15renumberIndexesENS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_14IndexListEntryELb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(416), ptr) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_8RegisterELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !280
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 4) #22
  %i.f = load ptr, ptr %0, align 8, !tbaa !53
  %i.g = load i32, ptr %i.a, align 8, !tbaa !280
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  store i32 %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !280
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !280
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_117RegisterCoalescer12addUndefFlagERKN4llvm12LiveIntervalENS1_9SlotIndexERNS1_14MachineOperandEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %3, i32 noundef %4) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !287
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !565
  %i.e = zext i32 %4 to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !59
  %i.g = load i32, ptr %3, align 8                ; 2 uses
  %i.h = shl i32 %i.g, 7
  %sext = ashr i32 %i.h, 31
  %i.i = sext i32 %sext to i64
  %spec.select = xor i64 %.sroa.0.0.copyload.i, %i.i
  %.sroa.024.0.in45 = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.024.046 = load ptr, ptr %.sroa.024.0.in45, align 8, !tbaa !574 ; 2 uses
  %.not47 = icmp eq ptr %.sroa.024.046, null
  %.pre50 = and i64 %2, -8                        ; 3 uses
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = inttoptr i64 %.pre50 to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = trunc i64 %2 to i32
  %i.m = lshr i32 %i.l, 1
  %i.n = and i32 %i.m, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread35
  %.sroa.024.048 = phi ptr [ %.sroa.024.046, %.lr.ph ], [ %.sroa.024.0, %.thread35 ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.024.048, i64 112
  %i.p = load i64, ptr %i.o, align 8, !tbaa !566
  %i.q = and i64 %i.p, %spec.select
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.thread35, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = tail call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.024.048, i64 %2) #22 ; 2 uses
  %i.t = load ptr, ptr %.sroa.024.048, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.024.048, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !280
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w
  %.not.i = icmp eq ptr %i.s, %i.x
  br i1 %.not.i, label %.thread35, label %_ZNK4llvm9LiveRange6liveAtENS_9SlotIndexE.exit

_ZNK4llvm9LiveRange6liveAtENS_9SlotIndexE.exit:   ; preds = %bb.c
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.s, align 8 ; 2 uses
  %i.y = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !519
  %i.ac = trunc i64 %.0.copyload.i.i.i.i.i.i.i to i32
  %i.ad = lshr i32 %i.ac, 1
  %i.ae = and i32 %i.ad, 3
  %i.af = or i32 %i.ae, %i.ab
  %i.ag = load i32, ptr %i.k, align 8, !tbaa !519
  %i.ah = or i32 %i.ag, %i.n
  %i.ai = icmp ule i32 %i.af, %i.ah
  %cond.fr = freeze i1 %i.ai
  br i1 %cond.fr, label %.thread43, label %.thread35

.thread35:                                        ; preds = %bb.c, %bb.b, %_ZNK4llvm9LiveRange6liveAtENS_9SlotIndexE.exit
  %.sroa.024.0.in = getelementptr inbounds nuw i8, ptr %.sroa.024.048, i64 104
  %.sroa.024.0 = load ptr, ptr %.sroa.024.0.in, align 8, !tbaa !574 ; 2 uses
  %.not = icmp eq ptr %.sroa.024.0, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b

._crit_edge.loopexit:                             ; preds = %.thread35
  %.pre = load i32, ptr %3, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %i.aj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.g, %bb.a ]
  %i.ak = or i32 %i.aj, 268435456
  store i32 %i.ak, ptr %3, align 8
  %i.al = tail call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 %.pre50) #22, !noalias !1430 ; 6 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !53, !noalias !1430
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !280, !noalias !1430
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.ap ; 2 uses
  %i.ar = icmp eq ptr %i.al, %i.aq
  br i1 %i.ar, label %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %.0.copyload.i.i.i.i.i.i.i19 = load i64, ptr %i.al, align 8, !noalias !1430 ; 2 uses
  %i.as = and i64 %.0.copyload.i.i.i.i.i.i.i19, -8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !519, !noalias !1430 ; 3 uses
  %i.aw = trunc i64 %.0.copyload.i.i.i.i.i.i.i19 to i32
  %i.ax = lshr i32 %i.aw, 1
  %i.ay = and i32 %i.ax, 3
  %i.az = or i32 %i.ay, %i.av
  %i.ba = inttoptr i64 %.pre50 to ptr
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !519, !noalias !1430 ; 2 uses
  %.not.i20 = icmp ugt i32 %i.az, %i.bc
  br i1 %.not.i20, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !88, !noalias !1430
  %i.bf = xor i64 %i.be, %2
  %i.bg = icmp ult i64 %i.bf, 8
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, %i.aq
  br i1 %i.bi, label %_ZNK4llvm9LiveRange5QueryENS_9SlotIndexE.exit.thread, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.f
  %.sroa.01.0.copyload.pre.pre.i = load i64, ptr %i.bh, align 8, !tbaa !88, !noalias !1430
  %.pre46.i = and i64 %.sroa.01.0.copyload.pre.pre.i, -8
  %.pre.i = inttoptr i64 %.pre46.i to ptr
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %.pre49 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !519, !noalias !1430
end_hunk_1
