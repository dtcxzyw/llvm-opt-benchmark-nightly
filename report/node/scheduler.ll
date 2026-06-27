inline.NumInlined: 1950
inline.NumDeleted: 848
begin_hunk_0_@_ZN2v88internal8compiler9Scheduler18GetCommonDominatorEPNS1_10BasicBlockES4_:bb.a
  %i.dm = inttoptr i64 %i.dl to ptr               ; 8 uses
  %i.dn = add i64 %i.dl, 56
  store i64 %i.dn, ptr %i.dh, align 8
  %i.do = load ptr, ptr %0, align 8
  %i.dp = ptrtoint ptr %i.do to i64
  store i64 %i.dp, ptr %i.dm, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 3 uses
  store i32 0, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr null, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  store ptr %i.dq, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  store ptr %i.dq, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store i64 0, ptr %i.du, align 8
  %i.dv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN2v88internal7ZoneMapIiPNS1_8compiler10BasicBlockESt4lessIiEEES7_NS1_13ZoneAllocatorISt4pairIKiS9_EEEEixERSC_(ptr noundef nonnull align 8 dereferenceable(56) %i.co, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  store ptr %i.dm, ptr %i.dv, align 8
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt3mapIiPN2v88internal7ZoneMapIiPNS1_8compiler10BasicBlockESt4lessIiEEES7_NS1_13ZoneAllocatorISt4pairIKiS9_EEEE4findERSC_.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_ZN2v88internal4Zone3NewINS0_7ZoneMapIiPNS0_8compiler10BasicBlockESt4lessIiEEEJRPS1_EEEPT_DpOT0_.exit
  %.020 = phi ptr [ %i.dm, %_ZN2v88internal4Zone3NewINS0_7ZoneMapIiPNS0_8compiler10BasicBlockESt4lessIiEEEJRPS1_EEEPT_DpOT0_.exit ], [ %i.dx, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store i32 %i.cv, ptr %3, align 8
  store ptr %.11, ptr %i.cr, align 8
  %i.dy = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal8compiler10BasicBlockEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE16_M_insert_uniqueIS7_EES0_ISt17_Rb_tree_iteratorIS7_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %.020, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.dz = trunc nuw i64 %indvars.iv.next to i32
  %i.ea = icmp sgt i32 %.024.lcssa, %i.dz
  br i1 %i.ea, label %bb.x, label %._crit_edge115, !llvm.loop !51

.loopexit:                                        ; preds = %bb.j, %bb.f, %bb.o, %._crit_edge115, %bb.a
  %.2 = phi ptr [ %1, %bb.a ], [ %.6, %bb.o ], [ %.11134, %._crit_edge115 ], [ %.1, %bb.j ], [ %.1.1, %bb.f ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIiPN2v88internal7ZoneMapIiPNS1_8compiler10BasicBlockESt4lessIiEEES7_NS1_13ZoneAllocatorISt4pairIKiS9_EEEEixERSC_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp slt i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIiPN2v88internal7ZoneMapIiPNS1_8compiler10BasicBlockESt4lessIiEEES7_NS1_13ZoneAllocatorISt4pairIKiS9_EEEE11lower_boundERSC_.exit, label %bb.b, !llvm.loop !47

_ZNSt3mapIiPN2v88internal7ZoneMapIiPNS1_8compiler10BasicBlockESt4lessIiEEES7_NS1_13ZoneAllocatorISt4pairIKiS9_EEEE11lower_boundERSC_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiPN2v88internal7ZoneMapIiPNS1_8compiler10BasicBlockESt4lessIiEEES7_NS1_13ZoneAllocatorISt4pairIKiS9_EEEE11lower_boundERSC_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIiPN2v88internal7ZoneMapIiPNS1_8compiler10BasicBlockESt4lessIiEEES7_NS1_13ZoneAllocatorISt4pairIKiS9_EEEE11lower_boundERSC_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIiPN2v88internal7ZoneMapIiPNS1_8compiler10BasicBlockESt4lessIiEEES7_NS1_13ZoneAllocatorISt4pairIKiS9_EEEE11lower_boundERSC_.exit ], [ %i.c, %bb.a ]
  %i.l = load ptr, ptr %0, align 8                ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %i.q = sub i64 %i.n, %i.p
  %i.r = icmp ult i64 %i.q, 48
  br i1 %i.r, label %bb.d, label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEERSH_DpOT_.exit.i, !prof !6

bb.d:                                             ; preds = %.critedge
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 noundef 48) #15
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.o, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEERSH_DpOT_.exit.i

_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEERSH_DpOT_.exit.i: ; preds = %bb.d, %.critedge
  %i.s = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %bb.d ], [ %i.p, %.critedge ] ; 2 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 4 uses
  %i.u = add i64 %i.s, 48
  store i64 %i.u, ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  %i.w = load i32, ptr %1, align 4
  store i32 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr null, ptr %i.x, align 8
  %i.y = tail call { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISC_ERS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.v) ; 2 uses
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.y, 1       ; 4 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEERSH_DpOT_.exit.i
  %.not.i.i.i4 = icmp ne ptr %i.z, null
  %i.ab = icmp eq ptr %i.aa, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.ab
  br i1 %or.cond.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSK_E.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ad = load i32, ptr %i.v, align 8
  %i.ae = load i32, ptr %i.ac, align 4
  %i.af = icmp slt i32 %i.ad, %i.ae
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSK_E.exit.i

_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSK_E.exit.i: ; preds = %bb.f, %bb.e
  %i.ag = phi i1 [ %i.af, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ag, ptr noundef nonnull %i.t, ptr noundef nonnull %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #15
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISC_ESt23_Rb_tree_const_iteratorISC_EDpOT_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSK_E.exit.i, %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEERSH_DpOT_.exit.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.t, %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE10_Auto_node9_M_insertES0_IPSt18_Rb_tree_node_baseSK_E.exit.i ], [ %i.z, %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal7ZoneMapIiPNS3_8compiler10BasicBlockESt4lessIiEEEESt10_Select1stISC_ES9_NS3_13ZoneAllocatorISC_EEE10_Auto_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS1_EESN_IJEEEEERSH_DpOT_.exit.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ak
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler9Scheduler28PropagateImmediateDominatorsEPNS1_10BasicBlockE(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.not46 = icmp eq ptr %0, null
  br i1 %.not46, label %._crit_edge50, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.a, %bb.i
  %.03447 = phi ptr [ %i.ap, %bb.i ], [ %0, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.03447, i64 136
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.03447, i64 144
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 8, !range !10, !noundef !11 ; 2 uses
  %.03539 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.not3640 = icmp eq ptr %.03539, %i.d
  br i1 %.not3640, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph49, %bb.g
  %.03544 = phi ptr [ %.035, %bb.g ], [ %.03539, %.lr.ph49 ] ; 3 uses
  %.043 = phi ptr [ %.1, %bb.g ], [ null, %.lr.ph49 ] ; 3 uses
  %.03042 = phi i8 [ %.131, %bb.g ], [ %i.g, %.lr.ph49 ] ; 2 uses
  %.03241 = phi ptr [ %.2, %bb.g ], [ %i.e, %.lr.ph49 ] ; 4 uses
  %i.h = load ptr, ptr %.03544, align 8           ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp samesign ugt i32 %i.j, 3
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, %.043
  br i1 %i.q, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, %.043
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.u = tail call noundef ptr @_ZN2v88internal8compiler10BasicBlock18GetCommonDominatorEPS2_S3_(ptr noundef %.03241, ptr noundef nonnull %i.h) #15
  %.pre = load ptr, ptr %.03544, align 8          ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre51 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.v = phi ptr [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %.pre51, %bb.e ]
  %i.w = phi ptr [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %.pre, %bb.e ]
  %.133 = phi ptr [ %.03241, %bb.c ], [ %.03241, %bb.d ], [ %i.u, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i8, ptr %i.x, align 8, !range !10, !noundef !11
  %i.z = trunc nuw i8 %i.y to i1
  %1 = select i1 %i.z, i8 %.03042, i8 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.2 = phi ptr [ %.03241, %.lr.ph ], [ %.133, %bb.f ] ; 2 uses
  %.131 = phi i8 [ %.03042, %.lr.ph ], [ %1, %bb.f ] ; 2 uses
  %.1 = phi ptr [ %.043, %.lr.ph ], [ %i.v, %bb.f ]
  %.035 = getelementptr inbounds nuw i8, ptr %.03544, i64 8 ; 2 uses
  %.not36 = icmp eq ptr %.035, %i.d
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.g, %.lr.ph49
  %.032.lcssa = phi ptr [ %i.e, %.lr.ph49 ], [ %.2, %bb.g ] ; 3 uses
  %.030.lcssa = phi i8 [ %i.g, %.lr.ph49 ], [ %.131, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.03447, i64 16
  store ptr %.032.lcssa, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.032.lcssa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = add nsw i32 %i.ac, 1                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.03447, i64 12
  store i32 %i.ad, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.03447, i64 8 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !range !10, !noundef !11
  %i.ah = or i8 %i.ag, %.030.lcssa
  store i8 %i.ah, ptr %i.af, align 8
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 513), align 1, !range !10, !noundef !11
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %.03447, i64 160
  %.sroa.0.0.copyload.i = load i64, ptr %i.ak, align 8
  %i.al = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.am = getelementptr inbounds nuw i8, ptr %.032.lcssa, i64 160
  %.sroa.0.0.copyload.i37 = load i64, ptr %i.am, align 8
  %i.an = trunc i64 %.sroa.0.0.copyload.i37 to i32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.6, i32 noundef %i.al, i32 noundef %i.an, i32 noundef %i.ad) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %.03447, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %._crit_edge50, label %.lr.ph49, !llvm.loop !53

._crit_edge50:                                    ; preds = %bb.i, %bb.a
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler10BasicBlock18GetCommonDominatorEPS2_S3_(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler9Scheduler21GenerateDominatorTreeEPNS1_8ScheduleE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.c, align 4
  %i.d = load ptr, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @_ZN2v88internal8compiler9Scheduler28PropagateImmediateDominatorsEPNS1_10BasicBlockE(ptr noundef %i.f)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler24ScheduleEarlyNodeVisitor3RunEPNS0_10ZoneVectorIPNS1_4NodeEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.c, %i.e
  br i1 %.not9, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %._crit_edge, label %.lr.ph11

.lr.ph11:                                         ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit
  %.010 = phi ptr [ %i.c, %.lr.ph ], [ %i.x, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.r = load ptr, ptr %.010, align 8             ; 2 uses
  store ptr %i.r, ptr %i.a, align 8
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8
  %.not.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.r, ptr %i.s, align 8
  %i.v = load ptr, ptr %i.f, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.w, ptr %i.f, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_push_back_auxIJRKS4_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit

_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE4pushERKS4_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.x = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.x, %i.e
  br i1 %.not, label %.preheader, label %bb.b

bb.e:                                             ; preds = %.lr.ph11, %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 248
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZN2v88internal11TickCounter26TickAndMaybeEnterSafepointEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load atomic i8, ptr %i.af monotonic, align 1 ; 2 uses
  %i.ah = trunc i8 %i.ag to i1
  %i.ai = and i8 %i.ag, 6
  %i.aj = icmp eq i8 %i.ai, 0
  %.not1.i.i = or i1 %i.aj, %i.ah
  br i1 %.not1.i.i, label %_ZN2v88internal11TickCounter26TickAndMaybeEnterSafepointEv.exit, label %bb.g, !prof !5

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal9LocalHeap17SafepointSlowPathEv(ptr noundef nonnull align 8 dereferenceable(1944) %i.ae) #15
  br label %_ZN2v88internal11TickCounter26TickAndMaybeEnterSafepointEv.exit

_ZN2v88internal11TickCounter26TickAndMaybeEnterSafepointEv.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ak = load ptr, ptr %i.j, align 8, !noalias !54
  %i.al = load ptr, ptr %i.ak, align 8
  call void @_ZN2v88internal8compiler24ScheduleEarlyNodeVisitor9VisitNodeEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %i.al)
  %i.am = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.an = load ptr, ptr %i.n, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %.not.i.i8 = icmp eq ptr %i.am, %i.ao
  br i1 %.not.i.i8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal11TickCounter26TickAndMaybeEnterSafepointEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit

bb.i:                                             ; preds = %_ZN2v88internal11TickCounter26TickAndMaybeEnterSafepointEv.exit
  %i.aq = load ptr, ptr %i.o, align 8             ; 3 uses
  %i.ar = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.at, 64
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 64, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.p, align 8
  store ptr %i.av, ptr %i.aq, align 8
  store ptr %i.aq, ptr %i.p, align 8
  br label %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i

_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i: ; preds = %bb.k, %bb.j
  %i.aw = load ptr, ptr %i.q, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.ax, ptr %i.q, align 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 3 uses
  store ptr %i.ay, ptr %i.o, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 512
  store ptr %i.az, ptr %i.n, align 8
  br label %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit

_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit: ; preds = %bb.h, %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i
  %storemerge.i.i = phi ptr [ %i.ap, %bb.h ], [ %i.ay, %_ZNSt5dequeIPN2v88internal8compiler4NodeENS1_22RecyclingZoneAllocatorIS4_EEE16_M_pop_front_auxEv.exit.i.i ] ; 2 uses
  store ptr %storemerge.i.i, ptr %i.j, align 8
  %i.ba = load ptr, ptr %i.i, align 8
  %i.bb = icmp eq ptr %i.ba, %storemerge.i.i
  br i1 %i.bb, label %._crit_edge, label %bb.e, !llvm.loop !57

._crit_edge:                                      ; preds = %_ZNSt5queueIPN2v88internal8compiler4NodeENS1_9ZoneDequeIS4_EEE3popEv.exit, %.preheader
  ret void
}

declare noundef ptr @_ZN2v88internal8compiler8Schedule12GetBlockByIdENS1_10BasicBlock2IdE(ptr noundef nonnull align 8 dereferenceable(120), i64) local_unnamed_addr #4
end_hunk_0
