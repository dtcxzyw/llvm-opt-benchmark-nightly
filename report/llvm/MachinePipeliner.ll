Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachinePipeliner?download=true
inline.NumInlined: 12134
inline.NumDeleted: 5204
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4llvm17SwingSchedulerDAG16applyInstrChangeEPNS_12MachineInstrERNS_10SMScheduleE:bb.a
  %i.gn = sub nsw i32 %i.gf, %i.gh
  %i.go = srem i32 %i.gn, %i.gj                   ; 2 uses
  %i.gp = icmp eq ptr %.19.i.i.i.i52, %i.dz
  br i1 %i.gp, label %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60, label %_ZNKSt3mapIPN4llvm5SUnitEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.i58

_ZNKSt3mapIPN4llvm5SUnitEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.i58: ; preds = %_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i57
  %i.gq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i52, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !651
  %i.gs = icmp ult ptr %i.ao, %i.gr
  br i1 %i.gs, label %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60, label %bb.q

bb.q:                                             ; preds = %_ZNKSt3mapIPN4llvm5SUnitEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.i58
  %i.gt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i52, i64 40
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !660
  %i.gv = sub nsw i32 %i.gu, %i.gh
  %i.gw = sdiv i32 %i.gv, %i.gj
  br label %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60

_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60: ; preds = %_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i57, %_ZNKSt3mapIPN4llvm5SUnitEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.i58, %bb.q
  %.0.i59 = phi i32 [ %i.gw, %bb.q ], [ -1, %_ZNKSt3mapIPN4llvm5SUnitEiSt4lessIS2_ESaISt4pairIKS2_iEEE4findERS6_.exit.i58 ], [ -1, %_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i57 ] ; 2 uses
  br label %.lr.ph.i.i.i.i62

.lr.ph.i.i.i.i62:                                 ; preds = %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60, %.lr.ph.i.i.i.i62
  %.012.i.i.i.i63 = phi ptr [ %.1.i.i.i.i68, %.lr.ph.i.i.i.i62 ], [ %i.dy, %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60 ] ; 3 uses
  %.0811.i.i.i.i64 = phi ptr [ %.19.i.i.i.i65, %.lr.ph.i.i.i.i62 ], [ %i.dz, %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !651
  %i.gz = icmp ult ptr %i.gy, %i.ao               ; 2 uses
  %.19.i.i.i.i65 = select i1 %i.gz, ptr %.0811.i.i.i.i64, ptr %.012.i.i.i.i63 ; 4 uses
  %.1.in.v.i.i.i.i66 = select i1 %i.gz, i64 24, i64 16
  %.1.in.i.i.i.i67 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 %.1.in.v.i.i.i.i66
  %.1.i.i.i.i68 = load ptr, ptr %.1.in.i.i.i.i67, align 8, !tbaa !658 ; 2 uses
  %.not.i.i.i.i69 = icmp eq ptr %.1.i.i.i.i68, null
  br i1 %.not.i.i.i.i69, label %_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i70, label %.lr.ph.i.i.i.i62, !llvm.loop !11

_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i70: ; preds = %.lr.ph.i.i.i.i62
  %i.ha = icmp eq ptr %.19.i.i.i.i65, %i.dz
  br i1 %i.ha, label %_ZNK4llvm10SMSchedule14cycleScheduledEPNS_5SUnitE.exit74, label %bb.r

bb.r:                                             ; preds = %_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i70
  %i.hb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 32
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !651
  %i.hd = icmp ult ptr %i.ao, %i.hc
  %spec.select.i.i.i71 = select i1 %i.hd, ptr %i.dz, ptr %.19.i.i.i.i65
  br label %_ZNK4llvm10SMSchedule14cycleScheduledEPNS_5SUnitE.exit74

_ZNK4llvm10SMSchedule14cycleScheduledEPNS_5SUnitE.exit74: ; preds = %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60.thread, %_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i70, %bb.r
  %.0.i5982 = phi i32 [ -1, %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60.thread ], [ %.0.i59, %_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i70 ], [ %.0.i59, %bb.r ] ; 2 uses
  %i.he = phi i32 [ %i.fu, %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60.thread ], [ %i.gh, %_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i70 ], [ %i.gh, %bb.r ]
  %i.hf = phi i32 [ %i.fw, %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60.thread ], [ %i.gj, %_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i70 ], [ %i.gj, %bb.r ]
  %i.hg = phi i32 [ 0, %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60.thread ], [ %i.go, %_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i70 ], [ %i.go, %bb.r ]
  %.sroa.0.0.i.i.i73 = phi ptr [ %i.dz, %_ZNK4llvm10SMSchedule14stageScheduledEPNS_5SUnitE.exit60.thread ], [ %i.dz, %_ZNKSt8_Rb_treeIPN4llvm5SUnitESt4pairIKS2_iESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRS4_.exit.i.i.i70 ], [ %spec.select.i.i.i71, %bb.r ]
  %i.hh = icmp slt i32 %.0.i5982, %.0.i
  br i1 %i.hh, label %bb.s, label %.sink.split

bb.s:                                             ; preds = %_ZNK4llvm10SMSchedule14cycleScheduledEPNS_5SUnitE.exit74
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i73, i64 40
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !660
  %i.hk = sub nsw i32 %i.hj, %i.he
  %i.hl = srem i32 %i.hk, %i.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !662, !nonnull !78, !align !205
  %i.ho = call noundef ptr @_ZN4llvm15MachineFunction17CloneMachineInstrEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(1065) %i.hn, ptr noundef nonnull %1) #29 ; 4 uses
  store ptr %i.ho, ptr %i.d, align 8, !tbaa !561
  %i.hp = sub nsw i32 %.0.i, %.0.i5982            ; 2 uses
  %i.hq = icmp slt i32 %i.hg, %i.hl
  br i1 %i.hq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.hr = load i32, ptr %i.b, align 4, !tbaa !358
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !417
  %i.hu = zext i32 %i.hr to i64
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %i.ht, i64 %i.hu
  call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.hv, i32 %.sroa.014.0.copyload) #29
  %spec.select = add nsw i32 %i.hp, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0 = phi i32 [ %i.hp, %bb.s ], [ %spec.select, %bb.t ]
  %i.hw = load i32, ptr %i.c, align 4, !tbaa !358
  %i.hx = load ptr, ptr %i.ci, align 8, !tbaa !417
  %i.hy = zext i32 %i.hw to i64                   ; 2 uses
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %i.hx, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !379
  %i.ic = sext i32 %.0 to i64
  %i.id = mul nsw i64 %.sroa.415.0.copyload, %i.ic
  %i.ie = add nsw i64 %i.ib, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !417
  %i.ih = getelementptr inbounds nuw [32 x i8], ptr %i.ig, i64 %i.hy
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store i64 %i.ie, ptr %i.ii, align 8, !tbaa !379
  store ptr %i.ho, ptr %i.ao, align 8, !tbaa !379
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ao, i64 258 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 2
  %i.il = or i8 %i.ik, 8
  store i8 %i.il, ptr %i.ij, align 2
  %i.im = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrEPNS_5SUnitENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.im, 0
  %i.in = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store ptr %i.ao, ptr %i.in, align 8, !tbaa !651
  %i.io = load ptr, ptr %i.d, align 8, !tbaa !561
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 4072
  %i.iq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12MachineInstrES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ip, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i75 = extractvalue { ptr, i8 } %i.iq, 0
  %i.ir = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i75, i64 8
  store ptr %i.io, ptr %i.ir, align 8, !tbaa !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  br label %.sink.split

.sink.split:                                      ; preds = %bb.g, %bb.u, %_ZNK4llvm10SMSchedule14cycleScheduledEPNS_5SUnitE.exit74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_5SUnitESt4pairINS_8RegisterElENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findEPKS2_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN4llvm17SwingSchedulerDAG13findDefInLoopENS_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4800) %0, i32 %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallPtrSet.775", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %2, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 8, ptr %i.b, align 8, !tbaa !841
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !842
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 1, ptr %i.d, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !735, !nonnull !78, !align !205
  %i.g = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.f, i32 %1) #29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 928
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %.0 = phi ptr [ %i.g, %bb.a ], [ %.1, %.loopexit ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !425
  switch i32 %i.j, label %.critedge26 [
    i32 74, label %bb.c
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.k = load i8, ptr %i.d, align 8, !tbaa !76, !range !77, !noalias !2824, !noundef !78
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %2, align 8, !tbaa !79, !noalias !2824 ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !842, !noalias !2824 ; 4 uses
  %i.o = zext i32 %i.n to i64
  %.idx.i.i = shl nuw nsw i64 %i.o, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.n, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.r, %.critedge.i.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %.023.i.i, align 8, !tbaa !83, !noalias !2824
  %.not15.i.i = icmp eq ptr %i.q, %.0
  br i1 %.not15.i.i, label %.critedge26, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.d
  %i.s = load i32, ptr %i.b, align 8, !tbaa !841, !noalias !2824
  %i.t = icmp ult i32 %i.n, %i.s
  br i1 %i.t, label %.critedge, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

.critedge:                                        ; preds = %._crit_edge.i.i
  %i.u = add nuw i32 %i.n, 1
  store i32 %i.u, ptr %i.c, align 4, !tbaa !842, !noalias !2824
  store ptr %.0, ptr %i.p, align 8, !tbaa !83, !noalias !2824
  br label %bb.e

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.c
  %i.v = call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull %.0) #29, !noalias !2824
  %i.w = extractvalue { ptr, i8 } %i.v, 1
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %.critedge26

bb.e:                                             ; preds = %.critedge, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.z = load i24, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp ugt i24 %i.z, 1
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !417 ; 2 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !777
  %i.ae = zext i24 %i.z to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !379
  %i.ai = icmp eq ptr %i.ah, %i.ad
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !735, !nonnull !78, !align !205
  %3 = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !379
  %i.am = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.aj, i32 %i.al) #29
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.an, label %bb.f, label %.loopexit, !llvm.loop !2822

.loopexit:                                        ; preds = %bb.h, %bb.e, %bb.g
  %.1 = phi ptr [ %i.am, %bb.g ], [ %.0, %bb.e ], [ %.0, %bb.h ]
  br label %bb.b, !llvm.loop !2823

.critedge26:                                      ; preds = %bb.b, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %.lr.ph.i.i
  %i.ao = load i8, ptr %i.d, align 8, !tbaa !76, !range !77, !noundef !78
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.critedge26
  %i.aq = load ptr, ptr %2, align 8, !tbaa !79
  call void @free(ptr noundef %i.aq) #29
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %.critedge26, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm17SwingSchedulerDAG21mayOverlapInLaterIterEPKNS_12MachineInstrES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4800) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.llvm::Register", align 4    ; 4 uses
  %4 = alloca %"class.llvm::Register", align 4    ; 3 uses
  %5 = alloca %"class.llvm::Register", align 4    ; 4 uses
  %6 = alloca %"class.llvm::Register", align 4    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.i = call noundef zeroext i1 @_ZNK4llvm17SwingSchedulerDAG12computeDeltaERKNS_12MachineInstrERi(ptr noundef nonnull align 8 dereferenceable(4800) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br i1 %i.i, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef zeroext i1 @_ZNK4llvm17SwingSchedulerDAG12computeDeltaERKNS_12MachineInstrERi(ptr noundef nonnull align 8 dereferenceable(4800) %0, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.j, label %bb.c, label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.a, align 4, !tbaa !358  ; 4 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !358
  %.not = icmp eq i32 %i.k, %i.l
  br i1 %.not, label %bb.d, label %bb.aa

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !662, !nonnull !78, !align !205
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !216, !nonnull !78, !align !205 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(344) %i.p) #29 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !696
  %i.w = call noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo23getMemOperandWithOffsetERKNS_12MachineInstrERPKNS_14MachineOperandERlRbPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.g, ptr noundef %i.t) #29
  br i1 %i.w, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !696
  %i.y = call noundef zeroext i1 @_ZNK4llvm15TargetInstrInfo23getMemOperandWithOffsetERKNS_12MachineInstrERPKNS_14MachineOperandERlRbPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(112) %i.x, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef %i.t) #29
  br i1 %i.y, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.z = load i8, ptr %i.g, align 1, !tbaa !835, !range !77, !noundef !78
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = load i8, ptr %i.h, align 1, !range !77
  %i.ac = trunc nuw i8 %i.ab to i1
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !736
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.af = call noundef zeroext i1 @_ZNK4llvm14MachineOperand13isIdenticalToERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae) #29
  br i1 %i.af, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !736 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 255
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !736 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = and i32 %i.al, 255
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !379 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !379
  %i.as = icmp slt i32 %i.ap, 0
  %i.at = icmp slt i32 %i.ar, 0
  %or.cond67 = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond67, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !735, !nonnull !78, !align !205
  %i.aw = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.av, i32 %i.ap) #29 ; 3 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !735, !nonnull !78, !align !205
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !379
  %i.bb = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ax, i32 %i.ba) #29 ; 3 uses
  %i.bc = icmp ne ptr %i.aw, null
  %i.bd = icmp ne ptr %i.bb, null
  %or.cond5 = and i1 %i.bc, %i.bd
  br i1 %or.cond5, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 52
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !425
  switch i32 %i.bf, label %.critedge [
    i32 74, label %bb.m
    i32 0, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 52
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !425
  switch i32 %i.bh, label %.critedge [
    i32 74, label %bb.n
    i32 0, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !777
  call fastcc void @_ZL10getPhiRegsRN4llvm12MachineInstrEPNS_17MachineBasicBlockERNS_8RegisterES5_(ptr noundef nonnull align 8 dereferenceable(80) %i.aw, ptr noundef %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !777
  call fastcc void @_ZL10getPhiRegsRN4llvm12MachineInstrEPNS_17MachineBasicBlockERNS_8RegisterES5_(ptr noundef nonnull align 8 dereferenceable(80) %i.bb, ptr noundef %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !735, !nonnull !78, !align !205
  %.sroa.014.0.copyload = load i32, ptr %3, align 4, !tbaa !358
  %i.bm = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.bl, i32 %.sroa.014.0.copyload) #29
  %i.bn = load ptr, ptr %i.au, align 8, !tbaa !735, !nonnull !78, !align !205
  %.sroa.013.0.copyload = load i32, ptr %5, align 4, !tbaa !358
  %i.bo = call noundef ptr @_ZNK4llvm19MachineRegisterInfo10getVRegDefENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.bn, i32 %.sroa.013.0.copyload) #29
  %i.bp = call noundef zeroext i1 @_ZNK4llvm12MachineInstr13isIdenticalToERKS0_NS0_11MICheckTypeE(ptr noundef nonnull align 8 dereferenceable(80) %i.bm, ptr noundef nonnull align 8 dereferenceable(80) %i.bo, i32 noundef 0) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br i1 %i.bp, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n, %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !379 ; 4 uses
  %i.bs = icmp ugt i64 %i.br, 7
  call void @llvm.assume(i1 %i.bs)
  %i.bt = and i64 %i.br, 7
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = inttoptr i64 %i.br to ptr               ; 2 uses
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !379
  br label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit

bb.q:                                             ; preds = %bb.o
  %i.bw = and i64 %i.br, -8
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.pre = load ptr, ptr %i.by, align 8, !tbaa !975
  br label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit

_ZNK4llvm12MachineInstr17memoperands_beginEv.exit: ; preds = %bb.p, %bb.q
  %i.bz = phi ptr [ %i.bv, %bb.p ], [ %.pre, %bb.q ]
  %i.ca = call i64 @_ZNK4llvm17MachineMemOperand7getSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bz) ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !379 ; 4 uses
end_hunk_0
