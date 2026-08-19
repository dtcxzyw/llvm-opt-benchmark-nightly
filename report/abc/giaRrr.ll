inline.NumInlined: 27717
inline.NumDeleted: 6992
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN3rrr11PartitionerINS_10AndNetworkEE5PrintIJPKcNS_2NSEiS5_S5_iEEEviDpT_:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 67
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.z) #26
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !204
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef signext i8 %i.ag(ptr noundef nonnull align 8 dereferenceable(570) %i.z, i8 noundef signext 10) #26, !inline_history !226
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.ad, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i) #26
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #26 ; 0 uses
  br label %bb.h

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.010 = phi i32 [ %i.al, %.lr.ph ], [ 0, %bb.b ]
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.60, i64 noundef 1) #26 ; 0 uses
  %i.al = add nuw nsw i32 %.010, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.al, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2111

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr11PartitionerINS_10AndNetworkEE5GetIoERKSt3setIiSt4lessIiESaIiEERS7_SA_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.anon.497, align 8            ; 5 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %5 = alloca %class.anon.498, align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  tail call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.d, ptr %i.f, align 8, !tbaa !94
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92
  tail call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr null, ptr %i.h, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.j, ptr %i.l, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store i64 0, ptr %i.m, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !93   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not15 = icmp eq ptr %i.o, %i.p
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %.sroa.011.016 = phi ptr [ %i.o, %.lr.ph ], [ %i.ap, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 32
  %i.t = load i32, ptr %i.s, align 4, !tbaa !32   ; 6 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %1, ptr %4, align 8, !tbaa !2106
  store ptr %2, ptr %i.q, align 8, !tbaa !2106
  call void @_ZNK3rrr10AndNetwork12ForEachFaninIZNS_11PartitionerIS0_E5GetIoERKSt3setIiSt4lessIiESaIiEERS8_SB_EUliE_EEviRKT_(ptr noundef nonnull align 8 dereferenceable(264) %i.u, i32 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1, !tbaa !154
  %i.v = load ptr, ptr %0, align 8, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %1, ptr %5, align 8, !tbaa !2106
  store ptr %i.a, ptr %i.r, align 8, !tbaa !165
  call void @_ZNK3rrr10AndNetwork13ForEachFanoutIZNS_11PartitionerIS0_E5GetIoERKSt3setIiSt4lessIiESaIiEERS8_SB_EUliE0_EEvibRKT_(ptr noundef nonnull align 8 dereferenceable(264) %i.v, i32 noundef %i.t, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.w = load i8, ptr %i.a, align 1, !tbaa !154, !range !157, !noundef !158
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

bb.c:                                             ; preds = %bb.b
  %.02022.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !97 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.c ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32   ; 2 uses
  %i.aa = icmp slt i32 %i.t, %i.z                 ; 2 uses
  %.in.v.i.i.i = select i1 %i.aa, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !171

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.aa, label %._crit_edge.thread.i.i.i, label %bb.e

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.c
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.j, %bb.c ] ; 4 uses
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !93
  %i.ac = icmp eq ptr %.019.lcssa29.i.i.i, %i.ab
  br i1 %i.ac, label %select.unfold.i.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.ad = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %i.ae = phi i32 [ %.pre.i.i, %bb.d ], [ %i.z, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.d ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.af = icmp slt i32 %i.ae, %i.t
  br i1 %i.af, label %select.unfold.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

select.unfold.i.i:                                ; preds = %bb.e, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.e ] ; 3 uses
  %i.ag = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.j
  br i1 %i.ag, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !32
  %i.aj = icmp slt i32 %i.t, %i.ai
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.f, %select.unfold.i.i
  %i.ak = phi i1 [ %i.aj, %bb.f ], [ true, %select.unfold.i.i ]
  %i.al = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i32 %i.t, ptr %i.am, align 4, !tbaa !32
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ak, ptr noundef nonnull %i.al, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #26
  %i.an = load i64, ptr %i.m, align 8, !tbaa !105
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.m, align 8, !tbaa !105
  br label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit:      ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ap = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.011.016) #30 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.p
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3rrr10AndNetwork11IsReachableITtTpTyESt3setJiSt4lessIiESaIiEETtTpTyESt6vectorJiS5_EEEbRKT_IJDpT0_EERKT1_IJDpT2_EE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.t, label %.lr.ph.us.i.peel.begin

.lr.ph.us.i.peel.begin:                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 1, ptr %i.h, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.i, align 4, !tbaa !53 ; 3 uses
  %.promoted.i = load ptr, ptr %i.l, align 8      ; 2 uses
  %i.m = icmp ne i32 %.promoted8.i, -1
  %umin.peel = zext i1 %i.m to i32
  %i.n = xor i32 %.promoted8.i, %umin.peel
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.c, label %.lr.ph.us.i.split

bb.c:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.p = icmp eq ptr %.promoted.i, %i.k
  br i1 %i.p, label %.lr.ph.us.i.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.l, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.c, %bb.d, %.lr.ph.us.i.peel.begin
  %.lcssa711.us.i.lcssa119 = phi i32 [ %.promoted8.i, %.lr.ph.us.i.peel.begin ], [ 0, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.lcssa118 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.k, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %i.q = add nuw i32 %.lcssa711.us.i.lcssa119, 1  ; 3 uses
  %i.r = add i32 %.lcssa711.us.i.lcssa119, 2
  store i32 %i.r, ptr %i.i, align 4, !tbaa !53
  %i.s = load i32, ptr %0, align 8, !tbaa !88
  %i.t = sext i32 %i.s to i64                     ; 4 uses
  %i.u = ptrtoint ptr %.lcssa118 to i64
  %i.v = ptrtoint ptr %i.k to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2                   ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.t
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.us.i.split
  %i.z = sub nuw nsw i64 %i.t, %i.x
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.z)
  %.pre.i = load i32, ptr %i.i, align 4, !tbaa !53
  %i.aa = add i32 %.pre.i, -1
  %.pre121.pre123.pre = load ptr, ptr %i.j, align 8, !tbaa !51
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.f:                                             ; preds = %.lr.ph.us.i.split
  %i.ab = icmp ugt i64 %i.x, %i.t
  br i1 %i.ab, label %bb.g, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.t ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa118, %i.ac
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.pre121.pre = phi ptr [ %.pre121.pre123.pre, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.k, %bb.h ] ; 7 uses
  %i.ad = phi i32 [ %i.aa, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %bb.g ], [ %i.q, %bb.h ] ; 4 uses
  %i.ae = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %.not8798 = icmp eq ptr %i.ae, %i.af
  br i1 %.not8798, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !93 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not88100 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not88100, label %._crit_edge..critedge45_crit_edge, label %.lr.ph103

._crit_edge..critedge45_crit_edge:                ; preds = %._crit_edge
  %.pre122 = load i32, ptr %i.i, align 4, !tbaa !53
  br label %.critedge45

.lr.ph:                                           ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit, %.lr.ph
  %.sroa.073.099 = phi ptr [ %i.am, %.lr.ph ], [ %i.ae, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.073.099, align 4, !tbaa !32
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre121.pre, i64 %i.ak
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.073.099, i64 4 ; 2 uses
  %.not87 = icmp eq ptr %i.am, %i.af
  br i1 %.not87, label %._crit_edge, label %.lr.ph

.lr.ph103:                                        ; preds = %._crit_edge, %bb.i
  %.sroa.069.0101 = phi ptr [ %i.at, %bb.i ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.069.0101, i64 32
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.pre121.pre, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %.not = icmp eq i32 %i.ar, %i.ad
  br i1 %.not, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %.lr.ph103
  %i.as = load i32, ptr %i.i, align 4, !tbaa !53  ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !32
  %i.at = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.069.0101) #30 ; 2 uses
  %.not88 = icmp eq ptr %i.at, %i.ai
  br i1 %.not88, label %.critedge45, label %.lr.ph103

.critedge45:                                      ; preds = %bb.i, %._crit_edge..critedge45_crit_edge
  %i.au = phi i32 [ %.pre122, %._crit_edge..critedge45_crit_edge ], [ %i.as, %bb.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.critedge45
  %.sroa.061.0.in = phi ptr [ %i.av, %.critedge45 ], [ %.sroa.061.0, %bb.j ]
  %.sroa.061.0 = load ptr, ptr %.sroa.061.0.in, align 8, !tbaa !42 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.061.0, i64 16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre121.pre, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %.not42 = icmp ne i32 %i.ba, %i.au
  %i.bb = icmp ne ptr %.sroa.061.0, %i.av
  %or.cond = and i1 %i.bb, %.not42
  br i1 %or.cond, label %bb.j, label %.critedge.preheader, !llvm.loop !2112

.critedge.preheader:                              ; preds = %bb.j
  %.not89108 = icmp eq ptr %.sroa.061.0, %i.av
  br i1 %.not89108, label %.critedge._crit_edge, label %.lr.ph110

.lr.ph110:                                        ; preds = %.critedge.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph110, %.thread78
  %.sroa.061.1109 = phi ptr [ %.sroa.061.0, %.lr.ph110 ], [ %i.bw, %.thread78 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.061.1109, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.pre121.pre, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !32 ; 2 uses
  %i.bi = load i32, ptr %i.i, align 4, !tbaa !53  ; 3 uses
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %.thread78, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.bf ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !30 ; 2 uses
  %.not91104 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not91104, label %.thread78, label %.lr.ph107

bb.m:                                             ; preds = %.lr.ph107
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.053.0105, i64 4 ; 2 uses
  %.not91 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not91, label %.thread78, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.l, %bb.m
  %.sroa.053.0105 = phi ptr [ %i.bp, %bb.m ], [ %i.bm, %bb.l ] ; 2 uses
  %i.bq = load i32, ptr %.sroa.053.0105, align 4, !tbaa !32
  %i.br = ashr i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.pre121.pre, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %.not43 = icmp eq i32 %i.bu, %i.bi
  br i1 %.not43, label %bb.n, label %bb.m

bb.n:                                             ; preds = %.lr.ph107
  %i.bv = icmp eq i32 %i.bh, %i.ad
  br i1 %i.bv, label %.sink.split, label %.thread81

.thread81:                                        ; preds = %bb.n
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !32
  br label %.thread78

.thread78:                                        ; preds = %bb.m, %bb.l, %.thread81, %bb.k
  %i.bw = load ptr, ptr %.sroa.061.1109, align 8, !tbaa !42 ; 2 uses
  %.not89 = icmp eq ptr %i.bw, %i.av
  br i1 %.not89, label %.critedge._crit_edge, label %bb.k, !llvm.loop !2113

.critedge._crit_edge:                             ; preds = %.thread78, %.critedge.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !30 ; 2 uses
  %.not90111 = icmp eq ptr %i.by, %i.ca
  br i1 %.not90111, label %.sink.split, label %.lr.ph114

.lr.ph114:                                        ; preds = %.critedge._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph114, %bb.s
  %.sroa.049.0112 = phi ptr [ %i.by, %.lr.ph114 ], [ %i.cs, %bb.s ] ; 2 uses
  %i.cc = load i32, ptr %.sroa.049.0112, align 4, !tbaa !32
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.pre121.pre, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !32 ; 2 uses
  %i.cg = load i32, ptr %i.i, align 4, !tbaa !53  ; 3 uses
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !39
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cd
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !32
  %i.cm = ashr i32 %i.cl, 1
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.pre121.pre, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !32
  %i.cq = icmp eq i32 %i.cp, %i.cg
  br i1 %i.cq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cr = icmp eq i32 %i.cf, %i.ad
  br i1 %i.cr, label %.sink.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.049.0112, i64 4 ; 2 uses
  %.not90 = icmp eq ptr %i.cs, %i.ca
  br i1 %.not90, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %.lr.ph103, %bb.n, %bb.s, %bb.q, %.critedge._crit_edge
  %.13.ph = phi i1 [ true, %bb.n ], [ false, %.critedge._crit_edge ], [ true, %bb.q ], [ false, %bb.s ], [ true, %.lr.ph103 ]
  store i8 0, ptr %i.h, align 8, !tbaa !121
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.13 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.13.ph, %.sink.split ]
  ret i1 %.13
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3rrr10AndNetwork11IsReachableITtTpTyESt6vectorJiSaIiEETtTpTyESt3setJiSt4lessIiES3_EEEbRKT_IJDpT0_EERKT1_IJDpT2_EE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = icmp eq ptr %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  %or.cond = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.s, label %.lr.ph.us.i.peel.begin

.lr.ph.us.i.peel.begin:                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 1, ptr %i.h, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.i, align 4, !tbaa !53 ; 3 uses
  %.promoted.i = load ptr, ptr %i.l, align 8      ; 2 uses
  %i.m = icmp ne i32 %.promoted8.i, -1
  %umin.peel = zext i1 %i.m to i32
  %i.n = xor i32 %.promoted8.i, %umin.peel
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.b, label %.lr.ph.us.i.split

bb.b:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.p = icmp eq ptr %.promoted.i, %i.k
  br i1 %i.p, label %.lr.ph.us.i.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.k, ptr %i.l, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.b, %bb.c, %.lr.ph.us.i.peel.begin
  %.lcssa711.us.i.lcssa122 = phi i32 [ %.promoted8.i, %.lr.ph.us.i.peel.begin ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.lcssa121 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %i.q = add nuw i32 %.lcssa711.us.i.lcssa122, 1  ; 3 uses
  %i.r = add i32 %.lcssa711.us.i.lcssa122, 2
  store i32 %i.r, ptr %i.i, align 4, !tbaa !53
  %i.s = load i32, ptr %0, align 8, !tbaa !88
  %i.t = sext i32 %i.s to i64                     ; 4 uses
  %i.u = ptrtoint ptr %.lcssa121 to i64
  %i.v = ptrtoint ptr %i.k to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2                   ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.t
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.z = sub nuw nsw i64 %i.t, %i.x
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.z)
  %.pre.i = load i32, ptr %i.i, align 4, !tbaa !53
  %i.aa = add i32 %.pre.i, -1
  %.pre124.pre126.pre = load ptr, ptr %i.j, align 8, !tbaa !51
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.e:                                             ; preds = %.lr.ph.us.i.split
  %i.ab = icmp ugt i64 %i.x, %i.t
  br i1 %i.ab, label %bb.f, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.t ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa121, %i.ac
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.pre124.pre = phi ptr [ %.pre124.pre126.pre, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %bb.f ], [ %i.k, %bb.g ] ; 7 uses
  %i.ad = phi i32 [ %i.aa, %bb.d ], [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %bb.g ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !93 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not90101 = icmp eq ptr %i.af, %i.ag
  br i1 %.not90101, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %i.ah = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %.not91103 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not91103, label %._crit_edge..critedge45_crit_edge, label %.lr.ph106

._crit_edge..critedge45_crit_edge:                ; preds = %._crit_edge
  %.pre125 = load i32, ptr %i.i, align 4, !tbaa !53
  br label %.critedge45

.lr.ph:                                           ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit, %.lr.ph
  %.sroa.073.0102 = phi ptr [ %i.an, %.lr.ph ], [ %i.af, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.073.0102, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.al
  store i32 %i.ad, ptr %i.am, align 4, !tbaa !32
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.073.0102) #30 ; 2 uses
  %.not90 = icmp eq ptr %i.an, %i.ag
  br i1 %.not90, label %._crit_edge, label %.lr.ph

.lr.ph106:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.069.0104 = phi ptr [ %i.at, %bb.h ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.ao = load i32, ptr %.sroa.069.0104, align 4, !tbaa !32
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !32
  %.not = icmp eq i32 %i.ar, %i.ad
  br i1 %.not, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %.lr.ph106
  %i.as = load i32, ptr %i.i, align 4, !tbaa !53  ; 2 uses
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.069.0104, i64 4 ; 2 uses
  %.not91 = icmp eq ptr %i.at, %i.ai
  br i1 %.not91, label %.critedge45, label %.lr.ph106

.critedge45:                                      ; preds = %bb.h, %._crit_edge..critedge45_crit_edge
  %i.au = phi i32 [ %.pre125, %._crit_edge..critedge45_crit_edge ], [ %i.as, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge45
  %.sroa.061.0.in = phi ptr [ %i.av, %.critedge45 ], [ %.sroa.061.0, %bb.i ]
  %.sroa.061.0 = load ptr, ptr %.sroa.061.0.in, align 8, !tbaa !42 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.061.0, i64 16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %.not42 = icmp ne i32 %i.ba, %i.au
  %i.bb = icmp ne ptr %.sroa.061.0, %i.av
  %or.cond89 = and i1 %i.bb, %.not42
  br i1 %or.cond89, label %bb.i, label %.critedge.preheader, !llvm.loop !2114

.critedge.preheader:                              ; preds = %bb.i
  %.not92111 = icmp eq ptr %.sroa.061.0, %i.av
  br i1 %.not92111, label %.critedge._crit_edge, label %.lr.ph113

.lr.ph113:                                        ; preds = %.critedge.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph113, %.thread78
  %.sroa.061.1112 = phi ptr [ %.sroa.061.0, %.lr.ph113 ], [ %i.bw, %.thread78 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.061.1112, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !32 ; 2 uses
  %i.bi = load i32, ptr %i.i, align 4, !tbaa !53  ; 3 uses
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %.thread78, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.bf ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !30 ; 2 uses
  %.not94107 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not94107, label %.thread78, label %.lr.ph110

bb.l:                                             ; preds = %.lr.ph110
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.053.0108, i64 4 ; 2 uses
  %.not94 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not94, label %.thread78, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.k, %bb.l
  %.sroa.053.0108 = phi ptr [ %i.bp, %bb.l ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bq = load i32, ptr %.sroa.053.0108, align 4, !tbaa !32
  %i.br = ashr i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %.not43 = icmp eq i32 %i.bu, %i.bi
  br i1 %.not43, label %bb.m, label %bb.l

bb.m:                                             ; preds = %.lr.ph110
  %i.bv = icmp eq i32 %i.bh, %i.ad
  br i1 %i.bv, label %.sink.split, label %.thread81

.thread81:                                        ; preds = %bb.m
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !32
  br label %.thread78

.thread78:                                        ; preds = %bb.l, %bb.k, %.thread81, %bb.j
  %i.bw = load ptr, ptr %.sroa.061.1112, align 8, !tbaa !42 ; 2 uses
  %.not92 = icmp eq ptr %i.bw, %i.av
  br i1 %.not92, label %.critedge._crit_edge, label %bb.j, !llvm.loop !2115

.critedge._crit_edge:                             ; preds = %.thread78, %.critedge.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !30 ; 2 uses
  %.not93114 = icmp eq ptr %i.by, %i.ca
  br i1 %.not93114, label %.sink.split, label %.lr.ph117

.lr.ph117:                                        ; preds = %.critedge._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph117, %bb.r
  %.sroa.049.0115 = phi ptr [ %i.by, %.lr.ph117 ], [ %i.cs, %bb.r ] ; 2 uses
  %i.cc = load i32, ptr %.sroa.049.0115, align 4, !tbaa !32
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !32 ; 2 uses
  %i.cg = load i32, ptr %i.i, align 4, !tbaa !53  ; 3 uses
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !39
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cd
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !32
  %i.cm = ashr i32 %i.cl, 1
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !32
  %i.cq = icmp eq i32 %i.cp, %i.cg
  br i1 %i.cq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp eq i32 %i.cf, %i.ad
  br i1 %i.cr, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !32
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.049.0115, i64 4 ; 2 uses
  %.not93 = icmp eq ptr %i.cs, %i.ca
  br i1 %.not93, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %.lr.ph106, %bb.m, %bb.r, %bb.p, %.critedge._crit_edge
end_hunk_0
begin_hunk_1_@_ZNK3rrr10AndNetwork13ForEachFanoutIZNS_20LevelBasePartitionerIS0_E10ExtractIOIEiEUliE1_EEvibRKT_:bb.a
bb.j:                                             ; preds = %select.unfold.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %i.bn = icmp slt i32 %i.z, %i.bm
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.j, %select.unfold.i.i.i
  %i.bo = phi i1 [ %i.bn, %bb.j ], [ true, %select.unfold.i.i.i ]
  %i.bp = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store i32 %i.z, ptr %i.bq, align 4, !tbaa !32
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bo, ptr noundef nonnull %i.bp, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ba) #26
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !105
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !105
  br label %_ZZN3rrr20LevelBasePartitionerINS_10AndNetworkEE10ExtractIOIEiENKUliE1_clEi.exit

_ZZN3rrr20LevelBasePartitionerINS_10AndNetworkEE10ExtractIOIEiENKUliE1_clEi.exit: ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.i, %bb.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i
  %i.bu = add nsw i32 %.01988, -1
  br label %_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread

_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread:    ; preds = %bb.g, %bb.f, %_ZZN3rrr20LevelBasePartitionerINS_10AndNetworkEE10ExtractIOIEiENKUliE1_clEi.exit
  %.1 = phi i32 [ %i.bu, %_ZZN3rrr20LevelBasePartitionerINS_10AndNetworkEE10ExtractIOIEiENKUliE1_clEi.exit ], [ %.01988, %bb.f ], [ %.01988, %bb.g ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.070.187, align 8, !tbaa !42
  %.not79 = icmp eq i32 %.1, 0
  br i1 %.not79, label %.critedge23, label %bb.e, !llvm.loop !4158

.critedge:                                        ; preds = %bb.e
  br i1 %2, label %bb.k, label %.critedge23

bb.k:                                             ; preds = %.critedge
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !30 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %.not8189 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not8189, label %.critedge23, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.p
  %.291 = phi i32 [ %.4, %bb.p ], [ %.01988, %bb.k ] ; 2 uses
  %.sroa.066.090 = phi ptr [ %i.dq, %bb.p ], [ %i.bx, %bb.k ] ; 2 uses
  %i.ca = load i32, ptr %.sroa.066.090, align 4, !tbaa !32 ; 7 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !32
  %i.cg = ashr i32 %i.cf, 1
  %i.ch = icmp eq i32 %i.cg, %1
  br i1 %i.ch, label %bb.l, label %bb.p

bb.l:                                             ; preds = %.lr.ph
  %i.ci = load ptr, ptr %3, align 8, !tbaa !4155, !nonnull !158, !align !301 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !92 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %.not10.i.i.i.i35 = icmp eq ptr %i.ck, null
  br i1 %.not10.i.i.i.i35, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread.i47, label %.lr.ph.i.i.i.i36

.lr.ph.i.i.i.i36:                                 ; preds = %bb.l, %.lr.ph.i.i.i.i36
  %.012.i.i.i.i37 = phi ptr [ %.1.i.i.i.i42, %.lr.ph.i.i.i.i36 ], [ %i.ck, %bb.l ] ; 3 uses
  %.0811.i.i.i.i38 = phi ptr [ %.19.i.i.i.i39, %.lr.ph.i.i.i.i36 ], [ %i.cl, %bb.l ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i37, i64 32
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !32
  %i.co = icmp slt i32 %i.cn, %i.ca               ; 2 uses
  %.19.i.i.i.i39 = select i1 %i.co, ptr %.0811.i.i.i.i38, ptr %.012.i.i.i.i37 ; 3 uses
  %.1.in.v.i.i.i.i40 = select i1 %i.co, i64 24, i64 16
  %.1.in.i.i.i.i41 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i37, i64 %.1.in.v.i.i.i.i40
  %.1.i.i.i.i42 = load ptr, ptr %.1.in.i.i.i.i41, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i43 = icmp eq ptr %.1.i.i.i.i42, null
  br i1 %.not.i.i.i.i43, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i44, label %.lr.ph.i.i.i.i36, !llvm.loop !153

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i44: ; preds = %.lr.ph.i.i.i.i36
  %i.cp = icmp eq ptr %.19.i.i.i.i39, %i.cl
  br i1 %i.cp, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread.i47, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.i45

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.i45:  ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i44
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i39, i64 32
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !32
  %.not6.i46 = icmp slt i32 %i.ca, %i.cr
  br i1 %.not6.i46, label %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread.i47, label %_ZZN3rrr20LevelBasePartitionerINS_10AndNetworkEE10ExtractIOIEiENKUliE1_clEi.exit65

_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread.i47: ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.i45, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i44, %bb.l
  %i.cs = load ptr, ptr %i.x, align 8, !tbaa !4157, !nonnull !158, !align !301 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %.02022.i.i.i.i48 = load ptr, ptr %i.ct, align 8, !tbaa !97 ; 2 uses
  %.not23.i.i.i.i49 = icmp eq ptr %.02022.i.i.i.i48, null
  br i1 %.not23.i.i.i.i49, label %._crit_edge.thread.i.i.i.i61, label %.lr.ph.i.i.i1.i50

.lr.ph.i.i.i1.i50:                                ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread.i47, %.lr.ph.i.i.i1.i50
  %.02024.i.i.i.i51 = phi ptr [ %.020.i.i.i.i54, %.lr.ph.i.i.i1.i50 ], [ %.02022.i.i.i.i48, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread.i47 ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i51, i64 32
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !32 ; 2 uses
  %i.cx = icmp slt i32 %i.ca, %i.cw               ; 2 uses
  %.in.v.i.i.i.i52 = select i1 %i.cx, i64 16, i64 24
  %.in.i.i.i.i53 = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i51, i64 %.in.v.i.i.i.i52
  %.020.i.i.i.i54 = load ptr, ptr %.in.i.i.i.i53, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i2.i55 = icmp eq ptr %.020.i.i.i.i54, null
  br i1 %.not.i.i.i2.i55, label %._crit_edge.i.i.i.i56, label %.lr.ph.i.i.i1.i50, !llvm.loop !171

._crit_edge.i.i.i.i56:                            ; preds = %.lr.ph.i.i.i1.i50
  br i1 %i.cx, label %._crit_edge.thread.i.i.i.i61, label %bb.n

._crit_edge.thread.i.i.i.i61:                     ; preds = %._crit_edge.i.i.i.i56, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread.i47
  %.019.lcssa29.i.i.i.i62 = phi ptr [ %.02024.i.i.i.i51, %._crit_edge.i.i.i.i56 ], [ %i.cu, %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.thread.i47 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !93
  %i.da = icmp eq ptr %.019.lcssa29.i.i.i.i62, %i.cz
  br i1 %i.da, label %select.unfold.i.i.i58, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i.i.i.i61
  %i.db = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i62) #30
  %.phi.trans.insert.i.i.i63 = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %.pre.i.i.i64 = load i32, ptr %.phi.trans.insert.i.i.i63, align 4, !tbaa !32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i56
  %i.dc = phi i32 [ %.pre.i.i.i64, %bb.m ], [ %i.cw, %._crit_edge.i.i.i.i56 ]
  %.019.lcssa28.i.i.i.i57 = phi ptr [ %.019.lcssa29.i.i.i.i62, %bb.m ], [ %.02024.i.i.i.i51, %._crit_edge.i.i.i.i56 ]
  %i.dd = icmp slt i32 %i.dc, %i.ca
  br i1 %i.dd, label %select.unfold.i.i.i58, label %_ZZN3rrr20LevelBasePartitionerINS_10AndNetworkEE10ExtractIOIEiENKUliE1_clEi.exit65

select.unfold.i.i.i58:                            ; preds = %bb.n, %._crit_edge.thread.i.i.i.i61
  %.sroa.4.0.i.ph.i.i.i59 = phi ptr [ %.019.lcssa29.i.i.i.i62, %._crit_edge.thread.i.i.i.i61 ], [ %.019.lcssa28.i.i.i.i57, %bb.n ] ; 3 uses
  %i.de = icmp eq ptr %.sroa.4.0.i.ph.i.i.i59, %i.cu
  br i1 %i.de, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i60, label %bb.o

bb.o:                                             ; preds = %select.unfold.i.i.i58
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i59, i64 32
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !32
  %i.dh = icmp slt i32 %i.ca, %i.dg
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i60

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i60: ; preds = %bb.o, %select.unfold.i.i.i58
  %i.di = phi i1 [ %i.dh, %bb.o ], [ true, %select.unfold.i.i.i58 ]
  %i.dj = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i32 %i.ca, ptr %i.dk, align 4, !tbaa !32
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.di, ptr noundef nonnull %i.dj, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i59, ptr noundef nonnull align 8 dereferenceable(32) %i.cu) #26
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cs, i64 40 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !105
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !105
  br label %_ZZN3rrr20LevelBasePartitionerINS_10AndNetworkEE10ExtractIOIEiENKUliE1_clEi.exit65

_ZZN3rrr20LevelBasePartitionerINS_10AndNetworkEE10ExtractIOIEiENKUliE1_clEi.exit65: ; preds = %_ZNKSt3setIiSt4lessIiESaIiEE5countERKi.exit.i45, %bb.n, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_M_insert_IRKiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i60
  %i.do = add nsw i32 %.291, -1                   ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %.critedge23, label %bb.p

bb.p:                                             ; preds = %_ZZN3rrr20LevelBasePartitionerINS_10AndNetworkEE10ExtractIOIEiENKUliE1_clEi.exit65, %.lr.ph
  %.4 = phi i32 [ %.291, %.lr.ph ], [ %i.do, %_ZZN3rrr20LevelBasePartitionerINS_10AndNetworkEE10ExtractIOIEiENKUliE1_clEi.exit65 ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.066.090, i64 4 ; 2 uses
  %.not81 = icmp eq ptr %i.dq, %i.bz
  br i1 %.not81, label %.critedge23, label %.lr.ph

.critedge23:                                      ; preds = %_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread, %bb.p, %_ZZN3rrr20LevelBasePartitionerINS_10AndNetworkEE10ExtractIOIEiENKUliE1_clEi.exit65, %bb.k, %.critedge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3rrr10AndNetwork11IsReachableITtTpTyESt3setJiSt4lessIiESaIiEETtTpTyES2_JiS4_S5_EEEbRKT_IJDpT0_EERKT1_IJDpT2_EE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !105
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.s, label %.lr.ph.us.i.peel.begin

.lr.ph.us.i.peel.begin:                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 1, ptr %i.g, align 8, !tbaa !121
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.h, align 4, !tbaa !53 ; 3 uses
  %.promoted.i = load ptr, ptr %i.k, align 8      ; 2 uses
  %i.l = icmp ne i32 %.promoted8.i, -1
  %umin.peel = zext i1 %i.l to i32
  %i.m = xor i32 %.promoted8.i, %umin.peel
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.b, label %.lr.ph.us.i.split

bb.b:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.o = icmp eq ptr %.promoted.i, %i.j
  br i1 %i.o, label %.lr.ph.us.i.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.k, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.b, %bb.c, %.lr.ph.us.i.peel.begin
  %.lcssa711.us.i.lcssa122 = phi i32 [ %.promoted8.i, %.lr.ph.us.i.peel.begin ], [ 0, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.lcssa121 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.j, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.p = add nuw i32 %.lcssa711.us.i.lcssa122, 1  ; 3 uses
  %i.q = add i32 %.lcssa711.us.i.lcssa122, 2
  store i32 %i.q, ptr %i.h, align 4, !tbaa !53
  %i.r = load i32, ptr %0, align 8, !tbaa !88
  %i.s = sext i32 %i.r to i64                     ; 4 uses
  %i.t = ptrtoint ptr %.lcssa121 to i64
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2                   ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.s
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.y = sub nuw nsw i64 %i.s, %i.w
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.y)
  %.pre.i = load i32, ptr %i.h, align 4, !tbaa !53
  %i.z = add i32 %.pre.i, -1
  %.pre124.pre126.pre = load ptr, ptr %i.i, align 8, !tbaa !51
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.e:                                             ; preds = %.lr.ph.us.i.split
  %i.aa = icmp ugt i64 %i.w, %i.s
  br i1 %i.aa, label %bb.f, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.s ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa121, %i.ab
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.k, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.pre124.pre = phi ptr [ %.pre124.pre126.pre, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ] ; 7 uses
  %i.ac = phi i32 [ %i.z, %bb.d ], [ %i.p, %bb.e ], [ %i.p, %bb.f ], [ %i.p, %bb.g ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !93 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not90101 = icmp eq ptr %i.ae, %i.af
  br i1 %.not90101, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !93 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not91103 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not91103, label %._crit_edge..critedge45_crit_edge, label %.lr.ph106

._crit_edge..critedge45_crit_edge:                ; preds = %._crit_edge
  %.pre125 = load i32, ptr %i.h, align 4, !tbaa !53
  br label %.critedge45

.lr.ph:                                           ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit, %.lr.ph
  %.sroa.073.0102 = phi ptr [ %i.an, %.lr.ph ], [ %i.ae, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.073.0102, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.al
  store i32 %i.ac, ptr %i.am, align 4, !tbaa !32
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.073.0102) #30 ; 2 uses
  %.not90 = icmp eq ptr %i.an, %i.af
  br i1 %.not90, label %._crit_edge, label %.lr.ph

.lr.ph106:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.069.0104 = phi ptr [ %i.au, %bb.h ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.069.0104, i64 32
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !32
  %.not = icmp eq i32 %i.as, %i.ac
  br i1 %.not, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %.lr.ph106
  %i.at = load i32, ptr %i.h, align 4, !tbaa !53  ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !32
  %i.au = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.069.0104) #30 ; 2 uses
  %.not91 = icmp eq ptr %i.au, %i.ai
  br i1 %.not91, label %.critedge45, label %.lr.ph106

.critedge45:                                      ; preds = %bb.h, %._crit_edge..critedge45_crit_edge
  %i.av = phi i32 [ %.pre125, %._crit_edge..critedge45_crit_edge ], [ %i.at, %bb.h ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge45
  %.sroa.061.0.in = phi ptr [ %i.aw, %.critedge45 ], [ %.sroa.061.0, %bb.i ]
  %.sroa.061.0 = load ptr, ptr %.sroa.061.0.in, align 8, !tbaa !42 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.061.0, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !32
  %.not42 = icmp ne i32 %i.bb, %i.av
  %i.bc = icmp ne ptr %.sroa.061.0, %i.aw
  %or.cond89 = and i1 %i.bc, %.not42
  br i1 %or.cond89, label %bb.i, label %.critedge.preheader, !llvm.loop !4159

.critedge.preheader:                              ; preds = %bb.i
  %.not92111 = icmp eq ptr %.sroa.061.0, %i.aw
  br i1 %.not92111, label %.critedge._crit_edge, label %.lr.ph113

.lr.ph113:                                        ; preds = %.critedge.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph113, %.thread78
  %.sroa.061.1112 = phi ptr [ %.sroa.061.0, %.lr.ph113 ], [ %i.bx, %.thread78 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.061.1112, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32 ; 2 uses
  %i.bj = load i32, ptr %i.h, align 4, !tbaa !53  ; 3 uses
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.thread78, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bg ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !30 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !30 ; 2 uses
  %.not94107 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not94107, label %.thread78, label %.lr.ph110

bb.l:                                             ; preds = %.lr.ph110
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.053.0108, i64 4 ; 2 uses
  %.not94 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not94, label %.thread78, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.k, %bb.l
  %.sroa.053.0108 = phi ptr [ %i.bq, %bb.l ], [ %i.bn, %bb.k ] ; 2 uses
  %i.br = load i32, ptr %.sroa.053.0108, align 4, !tbaa !32
  %i.bs = ashr i32 %i.br, 1
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !32
  %.not43 = icmp eq i32 %i.bv, %i.bj
  br i1 %.not43, label %bb.m, label %bb.l

bb.m:                                             ; preds = %.lr.ph110
  %i.bw = icmp eq i32 %i.bi, %i.ac
  br i1 %i.bw, label %.sink.split, label %.thread81

.thread81:                                        ; preds = %bb.m
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !32
  br label %.thread78

.thread78:                                        ; preds = %bb.l, %bb.k, %.thread81, %bb.j
  %i.bx = load ptr, ptr %.sroa.061.1112, align 8, !tbaa !42 ; 2 uses
  %.not92 = icmp eq ptr %i.bx, %i.aw
  br i1 %.not92, label %.critedge._crit_edge, label %bb.j, !llvm.loop !4160

.critedge._crit_edge:                             ; preds = %.thread78, %.critedge.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30 ; 2 uses
  %.not93114 = icmp eq ptr %i.bz, %i.cb
  br i1 %.not93114, label %.sink.split, label %.lr.ph117

.lr.ph117:                                        ; preds = %.critedge._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph117, %bb.r
  %.sroa.049.0115 = phi ptr [ %i.bz, %.lr.ph117 ], [ %i.ct, %bb.r ] ; 2 uses
  %i.cd = load i32, ptr %.sroa.049.0115, align 4, !tbaa !32
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !32 ; 2 uses
  %i.ch = load i32, ptr %i.h, align 4, !tbaa !53  ; 3 uses
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.ce
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.cn = ashr i32 %i.cm, 1
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !32
  %i.cr = icmp eq i32 %i.cq, %i.ch
  br i1 %i.cr, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cs = icmp eq i32 %i.cg, %i.ac
  br i1 %i.cs, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !32
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.049.0115, i64 4 ; 2 uses
  %.not93 = icmp eq ptr %i.ct, %i.cb
  br i1 %.not93, label %.sink.split, label %bb.n
end_hunk_1
