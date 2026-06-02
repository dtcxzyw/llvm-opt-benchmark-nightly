inline.NumInlined: 4838
inline.NumDeleted: 2037
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_125GetSkeletonForPatternKindERKN6icu_7813UnicodeStringEiNS1_11PatternKindENS0_16JSDateTimeFormat13DateTimeStyleES8_b:bb.a
  %57 = alloca %"class.std::set.690", align 8     ; 6 uses
  %58 = alloca %"struct.std::less.697", align 1   ; 3 uses
  %59 = alloca %"class.std::allocator.699", align 1 ; 3 uses
  %60 = alloca %"class.std::set.690", align 8     ; 6 uses
  %61 = alloca %"struct.std::less.697", align 1   ; 3 uses
  %62 = alloca %"class.std::allocator.699", align 1 ; 3 uses
  %63 = alloca %"class.std::set.690", align 8     ; 6 uses
  %64 = alloca %"struct.std::less.697", align 1   ; 3 uses
  %65 = alloca %"class.std::allocator.699", align 1 ; 3 uses
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #22
  br label %bb.cm

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ne i32 %5, 0
  %i.i = or i32 %5, %4
  %or.cond.not = icmp eq i32 %i.i, 0
  br i1 %or.cond.not, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i32 %3, label %bb.i [
    i32 1, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store <4 x i16> <i16 69, i16 99, i16 71, i16 121>, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i16 77, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i16 76, ptr %i.k, align 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i16 100, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr nonnull %i.b, i64 7, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call fastcc void @_ZN2v88internal12_GLOBAL__N_125AdjustDateTimeStyleFormatERKN6icu_7813UnicodeStringERKSt3setIDsSt4lessIDsESaIDsEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(48) %8)
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.cm

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store <4 x i16> <i16 71, i16 121, i16 77, i16 76>, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr nonnull %i.c, i64 4, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
  call fastcc void @_ZN2v88internal12_GLOBAL__N_125AdjustDateTimeStyleFormatERKN6icu_7813UnicodeStringERKSt3setIDsSt4lessIDsESaIDsEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(48) %11)
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.cm

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i16 77, ptr %i.d, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 76, ptr %i.q, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i16 100, ptr %i.r, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr nonnull %i.d, i64 3, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 1 dereferenceable(1) %16)
  call fastcc void @_ZN2v88internal12_GLOBAL__N_125AdjustDateTimeStyleFormatERKN6icu_7813UnicodeStringERKSt3setIDsSt4lessIDsESaIDsEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(48) %14)
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.cm

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.u = icmp eq i32 %3, 3
  %or.cond3 = and i1 %i.u, %i.h
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.e, ptr noundef nonnull align 2 dereferenceable(22) @constinit.108, i64 22, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr nonnull %i.e, i64 11, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 1 dereferenceable(1) %19)
  call fastcc void @_ZN2v88internal12_GLOBAL__N_125AdjustDateTimeStyleFormatERKN6icu_7813UnicodeStringERKSt3setIDsSt4lessIDsESaIDsEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(48) %17)
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.cm

bb.k:                                             ; preds = %bb.i
  switch i32 %3, label %bb.n [
    i32 2, label %bb.l
    i32 6, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(36) %i.f, ptr noundef nonnull align 2 dereferenceable(36) @constinit.109, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr nonnull %i.f, i64 18, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 1 dereferenceable(1) %22)
  call fastcc void @_ZN2v88internal12_GLOBAL__N_125AdjustDateTimeStyleFormatERKN6icu_7813UnicodeStringERKSt3setIDsSt4lessIDsESaIDsEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(48) %20)
  %i.x = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.cm

bb.m:                                             ; preds = %bb.k
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) #22
  br label %bb.cm

bb.n:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.110) #23
  unreachable

bb.o:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !183
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 61 uses
  store i32 0, ptr %i.z, align 8, !alias.scope !186, !noalias !183
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 21 uses
  store ptr null, ptr %i.aa, align 8, !alias.scope !186, !noalias !183
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 19 uses
  store ptr %i.z, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.z, ptr %i.ac, align 8, !alias.scope !186, !noalias !183
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 39 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.ae = and i32 %2, 8
  %.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit70.i.i, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i.i: ; preds = %bb.o
  %i.af = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i16 69, ptr %i.ag, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext true, ptr noundef nonnull %i.af, ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.ah = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %.02022.i.i.i47.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183 ; 2 uses
  %.not23.i.i.i48.i.i = icmp eq ptr %.02022.i.i.i47.i.i, null
  br i1 %.not23.i.i.i48.i.i, label %._crit_edge.thread.i.i.i66.i.i, label %.lr.ph.i.i.i50.i.i

.lr.ph.i.i.i50.i.i:                               ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i.i, %.lr.ph.i.i.i50.i.i
  %.02024.i.i.i51.i.i = phi ptr [ %.020.i.i.i54.i.i, %.lr.ph.i.i.i50.i.i ], [ %.02022.i.i.i47.i.i, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i.i ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.02024.i.i.i51.i.i, i64 32
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !183 ; 2 uses
  %i.al = icmp ugt i16 %i.ak, 99                  ; 2 uses
  %.in.v.i.i.i52.i.i = select i1 %i.al, i64 16, i64 24
  %.in.i.i.i53.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i51.i.i, i64 %.in.v.i.i.i52.i.i
  %.020.i.i.i54.i.i = load ptr, ptr %.in.i.i.i53.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i55.i.i = icmp eq ptr %.020.i.i.i54.i.i, null
  br i1 %.not.i.i.i55.i.i, label %._crit_edge.i.i.i56.i.i, label %.lr.ph.i.i.i50.i.i, !llvm.loop !189

._crit_edge.i.i.i56.i.i:                          ; preds = %.lr.ph.i.i.i50.i.i
  br i1 %i.al, label %._crit_edge.thread.i.i.i66.i.i, label %bb.q

._crit_edge.thread.i.i.i66.i.i:                   ; preds = %._crit_edge.i.i.i56.i.i, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i.i
  %.019.lcssa29.i.i.i67.i.i = phi ptr [ %.02024.i.i.i51.i.i, %._crit_edge.i.i.i56.i.i ], [ %i.z, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i.i.i ] ; 4 uses
  %i.am = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.an = icmp eq ptr %.019.lcssa29.i.i.i67.i.i, %i.am
  br i1 %i.an, label %select.unfold.i.i63.i.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.thread.i.i.i66.i.i
  %i.ao = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i67.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i68.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.pre.i.i69.i.i = load i16, ptr %.phi.trans.insert.i.i68.i.i, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i.i.i56.i.i
  %i.ap = phi i16 [ %.pre.i.i69.i.i, %bb.p ], [ %i.ak, %._crit_edge.i.i.i56.i.i ]
  %.019.lcssa28.i.i.i57.i.i = phi ptr [ %.019.lcssa29.i.i.i67.i.i, %bb.p ], [ %.02024.i.i.i51.i.i, %._crit_edge.i.i.i56.i.i ]
  %i.aq = icmp ult i16 %i.ap, 99
  br i1 %i.aq, label %select.unfold.i.i63.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit70.i.i

select.unfold.i.i63.i.i:                          ; preds = %bb.q, %._crit_edge.thread.i.i.i66.i.i
  %.sroa.4.0.i.ph.i.i64.i.i = phi ptr [ %.019.lcssa29.i.i.i67.i.i, %._crit_edge.thread.i.i.i66.i.i ], [ %.019.lcssa28.i.i.i57.i.i, %bb.q ] ; 3 uses
  %i.ar = icmp eq ptr %.sroa.4.0.i.ph.i.i64.i.i, %i.z
  br i1 %i.ar, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i65.i.i, label %bb.r

bb.r:                                             ; preds = %select.unfold.i.i63.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i64.i.i, i64 32
  %i.at = load i16, ptr %i.as, align 2, !noalias !183
  %i.au = icmp ugt i16 %i.at, 99
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i65.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i65.i.i: ; preds = %bb.r, %select.unfold.i.i63.i.i
  %i.av = phi i1 [ %i.au, %bb.r ], [ true, %select.unfold.i.i63.i.i ]
  %i.aw = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store i16 99, ptr %i.ax, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %.sroa.4.0.i.ph.i.i64.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.ay = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit70.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit70.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i65.i.i, %bb.q, %bb.o
  %i.ba = trunc i32 %2 to i1
  br i1 %i.ba, label %bb.s, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit94.i.i

bb.s:                                             ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit70.i.i
  %.02022.i.i.i71.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183 ; 2 uses
  %.not23.i.i.i72.i.i = icmp eq ptr %.02022.i.i.i71.i.i, null
  br i1 %.not23.i.i.i72.i.i, label %._crit_edge.thread.i.i.i90.i.i, label %.lr.ph.i.i.i74.i.i

.lr.ph.i.i.i74.i.i:                               ; preds = %bb.s, %.lr.ph.i.i.i74.i.i
  %.02024.i.i.i75.i.i = phi ptr [ %.020.i.i.i78.i.i, %.lr.ph.i.i.i74.i.i ], [ %.02022.i.i.i71.i.i, %bb.s ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02024.i.i.i75.i.i, i64 32
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !183 ; 2 uses
  %i.bd = icmp ugt i16 %i.bc, 71                  ; 2 uses
  %.in.v.i.i.i76.i.i = select i1 %i.bd, i64 16, i64 24
  %.in.i.i.i77.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i75.i.i, i64 %.in.v.i.i.i76.i.i
  %.020.i.i.i78.i.i = load ptr, ptr %.in.i.i.i77.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i79.i.i = icmp eq ptr %.020.i.i.i78.i.i, null
  br i1 %.not.i.i.i79.i.i, label %._crit_edge.i.i.i80.i.i, label %.lr.ph.i.i.i74.i.i, !llvm.loop !189

._crit_edge.i.i.i80.i.i:                          ; preds = %.lr.ph.i.i.i74.i.i
  br i1 %i.bd, label %._crit_edge.thread.i.i.i90.i.i, label %bb.u

._crit_edge.thread.i.i.i90.i.i:                   ; preds = %._crit_edge.i.i.i80.i.i, %bb.s
  %.019.lcssa29.i.i.i91.i.i = phi ptr [ %.02024.i.i.i75.i.i, %._crit_edge.i.i.i80.i.i ], [ %i.z, %bb.s ] ; 4 uses
  %i.be = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.bf = icmp eq ptr %.019.lcssa29.i.i.i91.i.i, %i.be
  br i1 %i.bf, label %select.unfold.i.i87.i.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i.i.i90.i.i
  %i.bg = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i91.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i92.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.pre.i.i93.i.i = load i16, ptr %.phi.trans.insert.i.i92.i.i, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i80.i.i
  %i.bh = phi i16 [ %.pre.i.i93.i.i, %bb.t ], [ %i.bc, %._crit_edge.i.i.i80.i.i ]
  %.019.lcssa28.i.i.i81.i.i = phi ptr [ %.019.lcssa29.i.i.i91.i.i, %bb.t ], [ %.02024.i.i.i75.i.i, %._crit_edge.i.i.i80.i.i ]
  %i.bi = icmp ult i16 %i.bh, 71
  br i1 %i.bi, label %select.unfold.i.i87.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit94.i.i

select.unfold.i.i87.i.i:                          ; preds = %bb.u, %._crit_edge.thread.i.i.i90.i.i
  %.sroa.4.0.i.ph.i.i88.i.i = phi ptr [ %.019.lcssa29.i.i.i91.i.i, %._crit_edge.thread.i.i.i90.i.i ], [ %.019.lcssa28.i.i.i81.i.i, %bb.u ] ; 3 uses
  %i.bj = icmp eq ptr %.sroa.4.0.i.ph.i.i88.i.i, %i.z
  br i1 %i.bj, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i89.i.i, label %bb.v

bb.v:                                             ; preds = %select.unfold.i.i87.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i88.i.i, i64 32
  %i.bl = load i16, ptr %i.bk, align 2, !noalias !183
  %i.bm = icmp ugt i16 %i.bl, 71
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i89.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i89.i.i: ; preds = %bb.v, %select.unfold.i.i87.i.i
  %i.bn = phi i1 [ %i.bm, %bb.v ], [ true, %select.unfold.i.i87.i.i ]
  %i.bo = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store i16 71, ptr %i.bp, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bn, ptr noundef nonnull %i.bo, ptr noundef nonnull %.sroa.4.0.i.ph.i.i88.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.bq = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit94.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit94.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i89.i.i, %bb.u, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit70.i.i
  %i.bs = and i32 %2, 2
  %.not497.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not497.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit118.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit94.i.i
  %.02022.i.i.i95.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183 ; 2 uses
  %.not23.i.i.i96.i.i = icmp eq ptr %.02022.i.i.i95.i.i, null
  br i1 %.not23.i.i.i96.i.i, label %._crit_edge.thread.i.i.i114.i.i, label %.lr.ph.i.i.i98.i.i

.lr.ph.i.i.i98.i.i:                               ; preds = %bb.w, %.lr.ph.i.i.i98.i.i
  %.02024.i.i.i99.i.i = phi ptr [ %.020.i.i.i102.i.i, %.lr.ph.i.i.i98.i.i ], [ %.02022.i.i.i95.i.i, %bb.w ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02024.i.i.i99.i.i, i64 32
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !183 ; 2 uses
  %i.bv = icmp ugt i16 %i.bu, 121                 ; 2 uses
  %.in.v.i.i.i100.i.i = select i1 %i.bv, i64 16, i64 24
  %.in.i.i.i101.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i99.i.i, i64 %.in.v.i.i.i100.i.i
  %.020.i.i.i102.i.i = load ptr, ptr %.in.i.i.i101.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i103.i.i = icmp eq ptr %.020.i.i.i102.i.i, null
  br i1 %.not.i.i.i103.i.i, label %._crit_edge.i.i.i104.i.i, label %.lr.ph.i.i.i98.i.i, !llvm.loop !189

._crit_edge.i.i.i104.i.i:                         ; preds = %.lr.ph.i.i.i98.i.i
  br i1 %i.bv, label %._crit_edge.thread.i.i.i114.i.i, label %bb.y

._crit_edge.thread.i.i.i114.i.i:                  ; preds = %._crit_edge.i.i.i104.i.i, %bb.w
  %.019.lcssa29.i.i.i115.i.i = phi ptr [ %.02024.i.i.i99.i.i, %._crit_edge.i.i.i104.i.i ], [ %i.z, %bb.w ] ; 4 uses
  %i.bw = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.bx = icmp eq ptr %.019.lcssa29.i.i.i115.i.i, %i.bw
  br i1 %i.bx, label %select.unfold.i.i111.i.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread.i.i.i114.i.i
  %i.by = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i115.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i116.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %.pre.i.i117.i.i = load i16, ptr %.phi.trans.insert.i.i116.i.i, align 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i104.i.i
  %i.bz = phi i16 [ %.pre.i.i117.i.i, %bb.x ], [ %i.bu, %._crit_edge.i.i.i104.i.i ]
  %.019.lcssa28.i.i.i105.i.i = phi ptr [ %.019.lcssa29.i.i.i115.i.i, %bb.x ], [ %.02024.i.i.i99.i.i, %._crit_edge.i.i.i104.i.i ]
  %i.ca = icmp ult i16 %i.bz, 121
  br i1 %i.ca, label %select.unfold.i.i111.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit118.i.i

select.unfold.i.i111.i.i:                         ; preds = %bb.y, %._crit_edge.thread.i.i.i114.i.i
  %.sroa.4.0.i.ph.i.i112.i.i = phi ptr [ %.019.lcssa29.i.i.i115.i.i, %._crit_edge.thread.i.i.i114.i.i ], [ %.019.lcssa28.i.i.i105.i.i, %bb.y ] ; 3 uses
  %i.cb = icmp eq ptr %.sroa.4.0.i.ph.i.i112.i.i, %i.z
  br i1 %i.cb, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i113.i.i, label %bb.z

bb.z:                                             ; preds = %select.unfold.i.i111.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i112.i.i, i64 32
  %i.cd = load i16, ptr %i.cc, align 2, !noalias !183
  %i.ce = icmp ugt i16 %i.cd, 121
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i113.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i113.i.i: ; preds = %bb.z, %select.unfold.i.i111.i.i
  %i.cf = phi i1 [ %i.ce, %bb.z ], [ true, %select.unfold.i.i111.i.i ]
  %i.cg = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store i16 121, ptr %i.ch, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cf, ptr noundef nonnull %i.cg, ptr noundef nonnull %.sroa.4.0.i.ph.i.i112.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.ci = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit118.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit118.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i113.i.i, %bb.y, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit94.i.i
  %i.ck = and i32 %2, 4
  %.not498.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not498.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit166.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit118.i.i
  %.02022.i.i.i119.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183 ; 3 uses
  %.not23.i.i.i120.i.i = icmp eq ptr %.02022.i.i.i119.i.i, null
  br i1 %.not23.i.i.i120.i.i, label %._crit_edge.thread.i.i.i138.i.i, label %.lr.ph.i.i.i122.i.i

.lr.ph.i.i.i122.i.i:                              ; preds = %bb.aa, %.lr.ph.i.i.i122.i.i
  %.02024.i.i.i123.i.i = phi ptr [ %.020.i.i.i126.i.i, %.lr.ph.i.i.i122.i.i ], [ %.02022.i.i.i119.i.i, %bb.aa ] ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.02024.i.i.i123.i.i, i64 32
  %i.cm = load i16, ptr %i.cl, align 2, !noalias !183 ; 2 uses
  %i.cn = icmp ugt i16 %i.cm, 77                  ; 2 uses
  %.in.v.i.i.i124.i.i = select i1 %i.cn, i64 16, i64 24
  %.in.i.i.i125.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i123.i.i, i64 %.in.v.i.i.i124.i.i
  %.020.i.i.i126.i.i = load ptr, ptr %.in.i.i.i125.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i127.i.i = icmp eq ptr %.020.i.i.i126.i.i, null
  br i1 %.not.i.i.i127.i.i, label %._crit_edge.i.i.i128.i.i, label %.lr.ph.i.i.i122.i.i, !llvm.loop !189

._crit_edge.i.i.i128.i.i:                         ; preds = %.lr.ph.i.i.i122.i.i
  br i1 %i.cn, label %._crit_edge.thread.i.i.i138.i.i, label %bb.ac

._crit_edge.thread.i.i.i138.i.i:                  ; preds = %._crit_edge.i.i.i128.i.i, %bb.aa
  %.019.lcssa29.i.i.i139.i.i = phi ptr [ %.02024.i.i.i123.i.i, %._crit_edge.i.i.i128.i.i ], [ %i.z, %bb.aa ] ; 4 uses
  %i.co = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.cp = icmp eq ptr %.019.lcssa29.i.i.i139.i.i, %i.co
  br i1 %i.cp, label %select.unfold.i.i135.i.i, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.thread.i.i.i138.i.i
  %i.cq = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i139.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i140.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %.pre.i.i141.i.i = load i16, ptr %.phi.trans.insert.i.i140.i.i, align 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i.i.i128.i.i
  %i.cr = phi i16 [ %.pre.i.i141.i.i, %bb.ab ], [ %i.cm, %._crit_edge.i.i.i128.i.i ]
  %.019.lcssa28.i.i.i129.i.i = phi ptr [ %.019.lcssa29.i.i.i139.i.i, %bb.ab ], [ %.02024.i.i.i123.i.i, %._crit_edge.i.i.i128.i.i ]
  %i.cs = icmp ult i16 %i.cr, 77
  br i1 %i.cs, label %select.unfold.i.i135.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit142.i.i

select.unfold.i.i135.i.i:                         ; preds = %bb.ac, %._crit_edge.thread.i.i.i138.i.i
  %.sroa.4.0.i.ph.i.i136.i.i = phi ptr [ %.019.lcssa29.i.i.i139.i.i, %._crit_edge.thread.i.i.i138.i.i ], [ %.019.lcssa28.i.i.i129.i.i, %bb.ac ] ; 3 uses
  %i.ct = icmp eq ptr %.sroa.4.0.i.ph.i.i136.i.i, %i.z
  br i1 %i.ct, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i137.i.i, label %bb.ad

bb.ad:                                            ; preds = %select.unfold.i.i135.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i136.i.i, i64 32
  %i.cv = load i16, ptr %i.cu, align 2, !noalias !183
  %i.cw = icmp ugt i16 %i.cv, 77
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i137.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i137.i.i: ; preds = %bb.ad, %select.unfold.i.i135.i.i
  %i.cx = phi i1 [ %i.cw, %bb.ad ], [ true, %select.unfold.i.i135.i.i ]
  %i.cy = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  store i16 77, ptr %i.cz, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cx, ptr noundef nonnull %i.cy, ptr noundef nonnull %.sroa.4.0.i.ph.i.i136.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.da = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %.02022.i.i.i143.pre.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit142.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit142.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i137.i.i, %bb.ac
  %.02022.i.i.i143.i.i = phi ptr [ %.02022.i.i.i119.i.i, %bb.ac ], [ %.02022.i.i.i143.pre.i.i, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i137.i.i ] ; 2 uses
  %.not23.i.i.i144.i.i = icmp eq ptr %.02022.i.i.i143.i.i, null
  br i1 %.not23.i.i.i144.i.i, label %._crit_edge.thread.i.i.i162.i.i, label %.lr.ph.i.i.i146.i.i

.lr.ph.i.i.i146.i.i:                              ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit142.i.i, %.lr.ph.i.i.i146.i.i
  %.02024.i.i.i147.i.i = phi ptr [ %.020.i.i.i150.i.i, %.lr.ph.i.i.i146.i.i ], [ %.02022.i.i.i143.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit142.i.i ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.02024.i.i.i147.i.i, i64 32
  %i.dd = load i16, ptr %i.dc, align 2, !noalias !183 ; 2 uses
  %i.de = icmp ugt i16 %i.dd, 76                  ; 2 uses
  %.in.v.i.i.i148.i.i = select i1 %i.de, i64 16, i64 24
  %.in.i.i.i149.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i147.i.i, i64 %.in.v.i.i.i148.i.i
  %.020.i.i.i150.i.i = load ptr, ptr %.in.i.i.i149.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i151.i.i = icmp eq ptr %.020.i.i.i150.i.i, null
  br i1 %.not.i.i.i151.i.i, label %._crit_edge.i.i.i152.i.i, label %.lr.ph.i.i.i146.i.i, !llvm.loop !189

._crit_edge.i.i.i152.i.i:                         ; preds = %.lr.ph.i.i.i146.i.i
  br i1 %i.de, label %._crit_edge.thread.i.i.i162.i.i, label %bb.af

._crit_edge.thread.i.i.i162.i.i:                  ; preds = %._crit_edge.i.i.i152.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit142.i.i
  %.019.lcssa29.i.i.i163.i.i = phi ptr [ %.02024.i.i.i147.i.i, %._crit_edge.i.i.i152.i.i ], [ %i.z, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit142.i.i ] ; 4 uses
  %i.df = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.dg = icmp eq ptr %.019.lcssa29.i.i.i163.i.i, %i.df
  br i1 %i.dg, label %select.unfold.i.i159.i.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.thread.i.i.i162.i.i
  %i.dh = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i163.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i164.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %.pre.i.i165.i.i = load i16, ptr %.phi.trans.insert.i.i164.i.i, align 2
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i.i.i152.i.i
  %i.di = phi i16 [ %.pre.i.i165.i.i, %bb.ae ], [ %i.dd, %._crit_edge.i.i.i152.i.i ]
  %.019.lcssa28.i.i.i153.i.i = phi ptr [ %.019.lcssa29.i.i.i163.i.i, %bb.ae ], [ %.02024.i.i.i147.i.i, %._crit_edge.i.i.i152.i.i ]
  %i.dj = icmp ult i16 %i.di, 76
  br i1 %i.dj, label %select.unfold.i.i159.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit166.i.i

select.unfold.i.i159.i.i:                         ; preds = %bb.af, %._crit_edge.thread.i.i.i162.i.i
  %.sroa.4.0.i.ph.i.i160.i.i = phi ptr [ %.019.lcssa29.i.i.i163.i.i, %._crit_edge.thread.i.i.i162.i.i ], [ %.019.lcssa28.i.i.i153.i.i, %bb.af ] ; 3 uses
  %i.dk = icmp eq ptr %.sroa.4.0.i.ph.i.i160.i.i, %i.z
  br i1 %i.dk, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i161.i.i, label %bb.ag

bb.ag:                                            ; preds = %select.unfold.i.i159.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i160.i.i, i64 32
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !183
  %i.dn = icmp ugt i16 %i.dm, 76
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i161.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i161.i.i: ; preds = %bb.ag, %select.unfold.i.i159.i.i
  %i.do = phi i1 [ %i.dn, %bb.ag ], [ true, %select.unfold.i.i159.i.i ]
  %i.dp = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  store i16 76, ptr %i.dq, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.do, ptr noundef nonnull %i.dp, ptr noundef nonnull %.sroa.4.0.i.ph.i.i160.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.dr = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit166.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit166.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i161.i.i, %bb.af, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit118.i.i
  %i.dt = and i32 %2, 16
  %.not499.i.i = icmp eq i32 %i.dt, 0
  br i1 %.not499.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit190.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit166.i.i
  %.02022.i.i.i167.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183 ; 2 uses
  %.not23.i.i.i168.i.i = icmp eq ptr %.02022.i.i.i167.i.i, null
  br i1 %.not23.i.i.i168.i.i, label %._crit_edge.thread.i.i.i186.i.i, label %.lr.ph.i.i.i170.i.i

.lr.ph.i.i.i170.i.i:                              ; preds = %bb.ah, %.lr.ph.i.i.i170.i.i
  %.02024.i.i.i171.i.i = phi ptr [ %.020.i.i.i174.i.i, %.lr.ph.i.i.i170.i.i ], [ %.02022.i.i.i167.i.i, %bb.ah ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.02024.i.i.i171.i.i, i64 32
  %i.dv = load i16, ptr %i.du, align 2, !noalias !183 ; 2 uses
  %i.dw = icmp ugt i16 %i.dv, 100                 ; 2 uses
  %.in.v.i.i.i172.i.i = select i1 %i.dw, i64 16, i64 24
  %.in.i.i.i173.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i171.i.i, i64 %.in.v.i.i.i172.i.i
  %.020.i.i.i174.i.i = load ptr, ptr %.in.i.i.i173.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i175.i.i = icmp eq ptr %.020.i.i.i174.i.i, null
  br i1 %.not.i.i.i175.i.i, label %._crit_edge.i.i.i176.i.i, label %.lr.ph.i.i.i170.i.i, !llvm.loop !189

._crit_edge.i.i.i176.i.i:                         ; preds = %.lr.ph.i.i.i170.i.i
  br i1 %i.dw, label %._crit_edge.thread.i.i.i186.i.i, label %bb.aj

._crit_edge.thread.i.i.i186.i.i:                  ; preds = %._crit_edge.i.i.i176.i.i, %bb.ah
  %.019.lcssa29.i.i.i187.i.i = phi ptr [ %.02024.i.i.i171.i.i, %._crit_edge.i.i.i176.i.i ], [ %i.z, %bb.ah ] ; 4 uses
  %i.dx = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.dy = icmp eq ptr %.019.lcssa29.i.i.i187.i.i, %i.dx
  br i1 %i.dy, label %select.unfold.i.i183.i.i, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.thread.i.i.i186.i.i
  %i.dz = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i187.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i188.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %.pre.i.i189.i.i = load i16, ptr %.phi.trans.insert.i.i188.i.i, align 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i.i.i176.i.i
  %i.ea = phi i16 [ %.pre.i.i189.i.i, %bb.ai ], [ %i.dv, %._crit_edge.i.i.i176.i.i ]
  %.019.lcssa28.i.i.i177.i.i = phi ptr [ %.019.lcssa29.i.i.i187.i.i, %bb.ai ], [ %.02024.i.i.i171.i.i, %._crit_edge.i.i.i176.i.i ]
  %i.eb = icmp ult i16 %i.ea, 100
  br i1 %i.eb, label %select.unfold.i.i183.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit190.i.i

select.unfold.i.i183.i.i:                         ; preds = %bb.aj, %._crit_edge.thread.i.i.i186.i.i
  %.sroa.4.0.i.ph.i.i184.i.i = phi ptr [ %.019.lcssa29.i.i.i187.i.i, %._crit_edge.thread.i.i.i186.i.i ], [ %.019.lcssa28.i.i.i177.i.i, %bb.aj ] ; 3 uses
  %i.ec = icmp eq ptr %.sroa.4.0.i.ph.i.i184.i.i, %i.z
  br i1 %i.ec, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i185.i.i, label %bb.ak

bb.ak:                                            ; preds = %select.unfold.i.i183.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i184.i.i, i64 32
  %i.ee = load i16, ptr %i.ed, align 2, !noalias !183
  %i.ef = icmp ugt i16 %i.ee, 100
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i185.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i185.i.i: ; preds = %bb.ak, %select.unfold.i.i183.i.i
  %i.eg = phi i1 [ %i.ef, %bb.ak ], [ true, %select.unfold.i.i183.i.i ]
  %i.eh = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 32
  store i16 100, ptr %i.ei, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.eg, ptr noundef nonnull %i.eh, ptr noundef nonnull %.sroa.4.0.i.ph.i.i184.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.ej = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.ek = add i64 %i.ej, 1
  store i64 %i.ek, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit190.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit190.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i185.i.i, %bb.aj, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit166.i.i
  %i.el = and i32 %2, 32
  %.not500.i.i = icmp eq i32 %i.el, 0
  br i1 %.not500.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit238.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit190.i.i
  %.02022.i.i.i191.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183 ; 3 uses
  %.not23.i.i.i192.i.i = icmp eq ptr %.02022.i.i.i191.i.i, null
  br i1 %.not23.i.i.i192.i.i, label %._crit_edge.thread.i.i.i210.i.i, label %.lr.ph.i.i.i194.i.i

.lr.ph.i.i.i194.i.i:                              ; preds = %bb.al, %.lr.ph.i.i.i194.i.i
  %.02024.i.i.i195.i.i = phi ptr [ %.020.i.i.i198.i.i, %.lr.ph.i.i.i194.i.i ], [ %.02022.i.i.i191.i.i, %bb.al ] ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.02024.i.i.i195.i.i, i64 32
  %i.en = load i16, ptr %i.em, align 2, !noalias !183 ; 2 uses
  %i.eo = icmp ugt i16 %i.en, 66                  ; 2 uses
  %.in.v.i.i.i196.i.i = select i1 %i.eo, i64 16, i64 24
  %.in.i.i.i197.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i195.i.i, i64 %.in.v.i.i.i196.i.i
  %.020.i.i.i198.i.i = load ptr, ptr %.in.i.i.i197.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i199.i.i = icmp eq ptr %.020.i.i.i198.i.i, null
  br i1 %.not.i.i.i199.i.i, label %._crit_edge.i.i.i200.i.i, label %.lr.ph.i.i.i194.i.i, !llvm.loop !189

._crit_edge.i.i.i200.i.i:                         ; preds = %.lr.ph.i.i.i194.i.i
  br i1 %i.eo, label %._crit_edge.thread.i.i.i210.i.i, label %bb.an

._crit_edge.thread.i.i.i210.i.i:                  ; preds = %._crit_edge.i.i.i200.i.i, %bb.al
  %.019.lcssa29.i.i.i211.i.i = phi ptr [ %.02024.i.i.i195.i.i, %._crit_edge.i.i.i200.i.i ], [ %i.z, %bb.al ] ; 4 uses
  %i.ep = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.eq = icmp eq ptr %.019.lcssa29.i.i.i211.i.i, %i.ep
  br i1 %i.eq, label %select.unfold.i.i207.i.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge.thread.i.i.i210.i.i
  %i.er = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i211.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i212.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %.pre.i.i213.i.i = load i16, ptr %.phi.trans.insert.i.i212.i.i, align 2
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.i.i.i200.i.i
  %i.es = phi i16 [ %.pre.i.i213.i.i, %bb.am ], [ %i.en, %._crit_edge.i.i.i200.i.i ]
  %.019.lcssa28.i.i.i201.i.i = phi ptr [ %.019.lcssa29.i.i.i211.i.i, %bb.am ], [ %.02024.i.i.i195.i.i, %._crit_edge.i.i.i200.i.i ]
  %i.et = icmp ult i16 %i.es, 66
  br i1 %i.et, label %select.unfold.i.i207.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit214.i.i

select.unfold.i.i207.i.i:                         ; preds = %bb.an, %._crit_edge.thread.i.i.i210.i.i
  %.sroa.4.0.i.ph.i.i208.i.i = phi ptr [ %.019.lcssa29.i.i.i211.i.i, %._crit_edge.thread.i.i.i210.i.i ], [ %.019.lcssa28.i.i.i201.i.i, %bb.an ] ; 3 uses
  %i.eu = icmp eq ptr %.sroa.4.0.i.ph.i.i208.i.i, %i.z
  br i1 %i.eu, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i209.i.i, label %bb.ao

bb.ao:                                            ; preds = %select.unfold.i.i207.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i208.i.i, i64 32
  %i.ew = load i16, ptr %i.ev, align 2, !noalias !183
  %i.ex = icmp ugt i16 %i.ew, 66
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i209.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i209.i.i: ; preds = %bb.ao, %select.unfold.i.i207.i.i
  %i.ey = phi i1 [ %i.ex, %bb.ao ], [ true, %select.unfold.i.i207.i.i ]
  %i.ez = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  store i16 66, ptr %i.fa, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ey, ptr noundef nonnull %i.ez, ptr noundef nonnull %.sroa.4.0.i.ph.i.i208.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.fb = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.fc = add i64 %i.fb, 1
  store i64 %i.fc, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %.02022.i.i.i215.pre.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit214.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit214.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i209.i.i, %bb.an
  %.02022.i.i.i215.i.i = phi ptr [ %.02022.i.i.i191.i.i, %bb.an ], [ %.02022.i.i.i215.pre.i.i, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i209.i.i ] ; 2 uses
  %.not23.i.i.i216.i.i = icmp eq ptr %.02022.i.i.i215.i.i, null
  br i1 %.not23.i.i.i216.i.i, label %._crit_edge.thread.i.i.i234.i.i, label %.lr.ph.i.i.i218.i.i

.lr.ph.i.i.i218.i.i:                              ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit214.i.i, %.lr.ph.i.i.i218.i.i
  %.02024.i.i.i219.i.i = phi ptr [ %.020.i.i.i222.i.i, %.lr.ph.i.i.i218.i.i ], [ %.02022.i.i.i215.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit214.i.i ] ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.02024.i.i.i219.i.i, i64 32
  %i.fe = load i16, ptr %i.fd, align 2, !noalias !183 ; 2 uses
  %i.ff = icmp ugt i16 %i.fe, 98                  ; 2 uses
  %.in.v.i.i.i220.i.i = select i1 %i.ff, i64 16, i64 24
  %.in.i.i.i221.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i219.i.i, i64 %.in.v.i.i.i220.i.i
  %.020.i.i.i222.i.i = load ptr, ptr %.in.i.i.i221.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i223.i.i = icmp eq ptr %.020.i.i.i222.i.i, null
  br i1 %.not.i.i.i223.i.i, label %._crit_edge.i.i.i224.i.i, label %.lr.ph.i.i.i218.i.i, !llvm.loop !189

._crit_edge.i.i.i224.i.i:                         ; preds = %.lr.ph.i.i.i218.i.i
  br i1 %i.ff, label %._crit_edge.thread.i.i.i234.i.i, label %bb.aq

._crit_edge.thread.i.i.i234.i.i:                  ; preds = %._crit_edge.i.i.i224.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit214.i.i
  %.019.lcssa29.i.i.i235.i.i = phi ptr [ %.02024.i.i.i219.i.i, %._crit_edge.i.i.i224.i.i ], [ %i.z, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit214.i.i ] ; 4 uses
  %i.fg = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.fh = icmp eq ptr %.019.lcssa29.i.i.i235.i.i, %i.fg
  br i1 %i.fh, label %select.unfold.i.i231.i.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.thread.i.i.i234.i.i
  %i.fi = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i235.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i236.i.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  %.pre.i.i237.i.i = load i16, ptr %.phi.trans.insert.i.i236.i.i, align 2
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i.i.i224.i.i
  %i.fj = phi i16 [ %.pre.i.i237.i.i, %bb.ap ], [ %i.fe, %._crit_edge.i.i.i224.i.i ]
  %.019.lcssa28.i.i.i225.i.i = phi ptr [ %.019.lcssa29.i.i.i235.i.i, %bb.ap ], [ %.02024.i.i.i219.i.i, %._crit_edge.i.i.i224.i.i ]
  %i.fk = icmp ult i16 %i.fj, 98
  br i1 %i.fk, label %select.unfold.i.i231.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit238.i.i

select.unfold.i.i231.i.i:                         ; preds = %bb.aq, %._crit_edge.thread.i.i.i234.i.i
  %.sroa.4.0.i.ph.i.i232.i.i = phi ptr [ %.019.lcssa29.i.i.i235.i.i, %._crit_edge.thread.i.i.i234.i.i ], [ %.019.lcssa28.i.i.i225.i.i, %bb.aq ] ; 3 uses
  %i.fl = icmp eq ptr %.sroa.4.0.i.ph.i.i232.i.i, %i.z
  br i1 %i.fl, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i233.i.i, label %bb.ar

bb.ar:                                            ; preds = %select.unfold.i.i231.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i232.i.i, i64 32
  %i.fn = load i16, ptr %i.fm, align 2, !noalias !183
  %i.fo = icmp ugt i16 %i.fn, 98
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i233.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i233.i.i: ; preds = %bb.ar, %select.unfold.i.i231.i.i
  %i.fp = phi i1 [ %i.fo, %bb.ar ], [ true, %select.unfold.i.i231.i.i ]
  %i.fq = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 32
  store i16 98, ptr %i.fr, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fp, ptr noundef nonnull %i.fq, ptr noundef nonnull %.sroa.4.0.i.ph.i.i232.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.fs = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.ft = add i64 %i.fs, 1
  store i64 %i.ft, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit238.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit238.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i233.i.i, %bb.aq, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit190.i.i
  %i.fu = and i32 %2, 64
  %.not501.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not501.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit334.i.i, label %bb.as

bb.as:                                            ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit238.i.i
  %.02022.i.i.i239.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183 ; 3 uses
  %.not23.i.i.i240.i.i = icmp eq ptr %.02022.i.i.i239.i.i, null
  br i1 %.not23.i.i.i240.i.i, label %._crit_edge.thread.i.i.i258.i.i, label %.lr.ph.i.i.i242.i.i

.lr.ph.i.i.i242.i.i:                              ; preds = %bb.as, %.lr.ph.i.i.i242.i.i
  %.02024.i.i.i243.i.i = phi ptr [ %.020.i.i.i246.i.i, %.lr.ph.i.i.i242.i.i ], [ %.02022.i.i.i239.i.i, %bb.as ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.02024.i.i.i243.i.i, i64 32
  %i.fw = load i16, ptr %i.fv, align 2, !noalias !183 ; 2 uses
  %i.fx = icmp ugt i16 %i.fw, 72                  ; 2 uses
  %.in.v.i.i.i244.i.i = select i1 %i.fx, i64 16, i64 24
  %.in.i.i.i245.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i243.i.i, i64 %.in.v.i.i.i244.i.i
  %.020.i.i.i246.i.i = load ptr, ptr %.in.i.i.i245.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i247.i.i = icmp eq ptr %.020.i.i.i246.i.i, null
  br i1 %.not.i.i.i247.i.i, label %._crit_edge.i.i.i248.i.i, label %.lr.ph.i.i.i242.i.i, !llvm.loop !189

._crit_edge.i.i.i248.i.i:                         ; preds = %.lr.ph.i.i.i242.i.i
  br i1 %i.fx, label %._crit_edge.thread.i.i.i258.i.i, label %bb.au

._crit_edge.thread.i.i.i258.i.i:                  ; preds = %._crit_edge.i.i.i248.i.i, %bb.as
  %.019.lcssa29.i.i.i259.i.i = phi ptr [ %.02024.i.i.i243.i.i, %._crit_edge.i.i.i248.i.i ], [ %i.z, %bb.as ] ; 4 uses
  %i.fy = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.fz = icmp eq ptr %.019.lcssa29.i.i.i259.i.i, %i.fy
  br i1 %i.fz, label %select.unfold.i.i255.i.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge.thread.i.i.i258.i.i
  %i.ga = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i259.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i260.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  %.pre.i.i261.i.i = load i16, ptr %.phi.trans.insert.i.i260.i.i, align 2
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i.i248.i.i
  %i.gb = phi i16 [ %.pre.i.i261.i.i, %bb.at ], [ %i.fw, %._crit_edge.i.i.i248.i.i ]
  %.019.lcssa28.i.i.i249.i.i = phi ptr [ %.019.lcssa29.i.i.i259.i.i, %bb.at ], [ %.02024.i.i.i243.i.i, %._crit_edge.i.i.i248.i.i ]
  %i.gc = icmp ult i16 %i.gb, 72
  br i1 %i.gc, label %select.unfold.i.i255.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit262.i.i

select.unfold.i.i255.i.i:                         ; preds = %bb.au, %._crit_edge.thread.i.i.i258.i.i
  %.sroa.4.0.i.ph.i.i256.i.i = phi ptr [ %.019.lcssa29.i.i.i259.i.i, %._crit_edge.thread.i.i.i258.i.i ], [ %.019.lcssa28.i.i.i249.i.i, %bb.au ] ; 3 uses
  %i.gd = icmp eq ptr %.sroa.4.0.i.ph.i.i256.i.i, %i.z
  br i1 %i.gd, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i257.i.i, label %bb.av

bb.av:                                            ; preds = %select.unfold.i.i255.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i256.i.i, i64 32
  %i.gf = load i16, ptr %i.ge, align 2, !noalias !183
  %i.gg = icmp ugt i16 %i.gf, 72
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i257.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i257.i.i: ; preds = %bb.av, %select.unfold.i.i255.i.i
  %i.gh = phi i1 [ %i.gg, %bb.av ], [ true, %select.unfold.i.i255.i.i ]
  %i.gi = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  store i16 72, ptr %i.gj, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gh, ptr noundef nonnull %i.gi, ptr noundef nonnull %.sroa.4.0.i.ph.i.i256.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.gk = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %.02022.i.i.i263.pre.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit262.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit262.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i257.i.i, %bb.au
  %.02022.i.i.i263.i.i = phi ptr [ %.02022.i.i.i239.i.i, %bb.au ], [ %.02022.i.i.i263.pre.i.i, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i257.i.i ] ; 3 uses
  %.not23.i.i.i264.i.i = icmp eq ptr %.02022.i.i.i263.i.i, null
  br i1 %.not23.i.i.i264.i.i, label %._crit_edge.thread.i.i.i282.i.i, label %.lr.ph.i.i.i266.i.i

.lr.ph.i.i.i266.i.i:                              ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit262.i.i, %.lr.ph.i.i.i266.i.i
  %.02024.i.i.i267.i.i = phi ptr [ %.020.i.i.i270.i.i, %.lr.ph.i.i.i266.i.i ], [ %.02022.i.i.i263.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit262.i.i ] ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.02024.i.i.i267.i.i, i64 32
  %i.gn = load i16, ptr %i.gm, align 2, !noalias !183 ; 2 uses
  %i.go = icmp ugt i16 %i.gn, 104                 ; 2 uses
  %.in.v.i.i.i268.i.i = select i1 %i.go, i64 16, i64 24
  %.in.i.i.i269.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i267.i.i, i64 %.in.v.i.i.i268.i.i
  %.020.i.i.i270.i.i = load ptr, ptr %.in.i.i.i269.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i271.i.i = icmp eq ptr %.020.i.i.i270.i.i, null
  br i1 %.not.i.i.i271.i.i, label %._crit_edge.i.i.i272.i.i, label %.lr.ph.i.i.i266.i.i, !llvm.loop !189

._crit_edge.i.i.i272.i.i:                         ; preds = %.lr.ph.i.i.i266.i.i
  br i1 %i.go, label %._crit_edge.thread.i.i.i282.i.i, label %bb.ax

._crit_edge.thread.i.i.i282.i.i:                  ; preds = %._crit_edge.i.i.i272.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit262.i.i
  %.019.lcssa29.i.i.i283.i.i = phi ptr [ %.02024.i.i.i267.i.i, %._crit_edge.i.i.i272.i.i ], [ %i.z, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit262.i.i ] ; 4 uses
  %i.gp = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.gq = icmp eq ptr %.019.lcssa29.i.i.i283.i.i, %i.gp
  br i1 %i.gq, label %select.unfold.i.i279.i.i, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.thread.i.i.i282.i.i
  %i.gr = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i283.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i284.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %.pre.i.i285.i.i = load i16, ptr %.phi.trans.insert.i.i284.i.i, align 2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge.i.i.i272.i.i
  %i.gs = phi i16 [ %.pre.i.i285.i.i, %bb.aw ], [ %i.gn, %._crit_edge.i.i.i272.i.i ]
  %.019.lcssa28.i.i.i273.i.i = phi ptr [ %.019.lcssa29.i.i.i283.i.i, %bb.aw ], [ %.02024.i.i.i267.i.i, %._crit_edge.i.i.i272.i.i ]
  %i.gt = icmp ult i16 %i.gs, 104
  br i1 %i.gt, label %select.unfold.i.i279.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit286.i.i

select.unfold.i.i279.i.i:                         ; preds = %bb.ax, %._crit_edge.thread.i.i.i282.i.i
  %.sroa.4.0.i.ph.i.i280.i.i = phi ptr [ %.019.lcssa29.i.i.i283.i.i, %._crit_edge.thread.i.i.i282.i.i ], [ %.019.lcssa28.i.i.i273.i.i, %bb.ax ] ; 3 uses
  %i.gu = icmp eq ptr %.sroa.4.0.i.ph.i.i280.i.i, %i.z
  br i1 %i.gu, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i281.i.i, label %bb.ay

bb.ay:                                            ; preds = %select.unfold.i.i279.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i280.i.i, i64 32
  %i.gw = load i16, ptr %i.gv, align 2, !noalias !183
  %i.gx = icmp ugt i16 %i.gw, 104
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i281.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i281.i.i: ; preds = %bb.ay, %select.unfold.i.i279.i.i
  %i.gy = phi i1 [ %i.gx, %bb.ay ], [ true, %select.unfold.i.i279.i.i ]
  %i.gz = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store i16 104, ptr %i.ha, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gy, ptr noundef nonnull %i.gz, ptr noundef nonnull %.sroa.4.0.i.ph.i.i280.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.hb = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.hc = add i64 %i.hb, 1
  store i64 %i.hc, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %.02022.i.i.i287.pre.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit286.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit286.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i281.i.i, %bb.ax
  %.02022.i.i.i287.i.i = phi ptr [ %.02022.i.i.i263.i.i, %bb.ax ], [ %.02022.i.i.i287.pre.i.i, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i281.i.i ] ; 3 uses
  %.not23.i.i.i288.i.i = icmp eq ptr %.02022.i.i.i287.i.i, null
  br i1 %.not23.i.i.i288.i.i, label %._crit_edge.thread.i.i.i306.i.i, label %.lr.ph.i.i.i290.i.i

.lr.ph.i.i.i290.i.i:                              ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit286.i.i, %.lr.ph.i.i.i290.i.i
  %.02024.i.i.i291.i.i = phi ptr [ %.020.i.i.i294.i.i, %.lr.ph.i.i.i290.i.i ], [ %.02022.i.i.i287.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit286.i.i ] ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.02024.i.i.i291.i.i, i64 32
  %i.he = load i16, ptr %i.hd, align 2, !noalias !183 ; 2 uses
  %i.hf = icmp ugt i16 %i.he, 75                  ; 2 uses
  %.in.v.i.i.i292.i.i = select i1 %i.hf, i64 16, i64 24
  %.in.i.i.i293.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i291.i.i, i64 %.in.v.i.i.i292.i.i
  %.020.i.i.i294.i.i = load ptr, ptr %.in.i.i.i293.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i295.i.i = icmp eq ptr %.020.i.i.i294.i.i, null
  br i1 %.not.i.i.i295.i.i, label %._crit_edge.i.i.i296.i.i, label %.lr.ph.i.i.i290.i.i, !llvm.loop !189

._crit_edge.i.i.i296.i.i:                         ; preds = %.lr.ph.i.i.i290.i.i
  br i1 %i.hf, label %._crit_edge.thread.i.i.i306.i.i, label %bb.ba

._crit_edge.thread.i.i.i306.i.i:                  ; preds = %._crit_edge.i.i.i296.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit286.i.i
  %.019.lcssa29.i.i.i307.i.i = phi ptr [ %.02024.i.i.i291.i.i, %._crit_edge.i.i.i296.i.i ], [ %i.z, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit286.i.i ] ; 4 uses
  %i.hg = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.hh = icmp eq ptr %.019.lcssa29.i.i.i307.i.i, %i.hg
  br i1 %i.hh, label %select.unfold.i.i303.i.i, label %bb.az

bb.az:                                            ; preds = %._crit_edge.thread.i.i.i306.i.i
  %i.hi = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i307.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i308.i.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %.pre.i.i309.i.i = load i16, ptr %.phi.trans.insert.i.i308.i.i, align 2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %._crit_edge.i.i.i296.i.i
  %i.hj = phi i16 [ %.pre.i.i309.i.i, %bb.az ], [ %i.he, %._crit_edge.i.i.i296.i.i ]
  %.019.lcssa28.i.i.i297.i.i = phi ptr [ %.019.lcssa29.i.i.i307.i.i, %bb.az ], [ %.02024.i.i.i291.i.i, %._crit_edge.i.i.i296.i.i ]
  %i.hk = icmp ult i16 %i.hj, 75
  br i1 %i.hk, label %select.unfold.i.i303.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit310.i.i

select.unfold.i.i303.i.i:                         ; preds = %bb.ba, %._crit_edge.thread.i.i.i306.i.i
  %.sroa.4.0.i.ph.i.i304.i.i = phi ptr [ %.019.lcssa29.i.i.i307.i.i, %._crit_edge.thread.i.i.i306.i.i ], [ %.019.lcssa28.i.i.i297.i.i, %bb.ba ] ; 3 uses
  %i.hl = icmp eq ptr %.sroa.4.0.i.ph.i.i304.i.i, %i.z
  br i1 %i.hl, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i305.i.i, label %bb.bb

bb.bb:                                            ; preds = %select.unfold.i.i303.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i304.i.i, i64 32
  %i.hn = load i16, ptr %i.hm, align 2, !noalias !183
  %i.ho = icmp ugt i16 %i.hn, 75
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i305.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i305.i.i: ; preds = %bb.bb, %select.unfold.i.i303.i.i
  %i.hp = phi i1 [ %i.ho, %bb.bb ], [ true, %select.unfold.i.i303.i.i ]
  %i.hq = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  store i16 75, ptr %i.hr, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.hp, ptr noundef nonnull %i.hq, ptr noundef nonnull %.sroa.4.0.i.ph.i.i304.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.hs = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %.02022.i.i.i311.pre.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit310.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit310.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i305.i.i, %bb.ba
  %.02022.i.i.i311.i.i = phi ptr [ %.02022.i.i.i287.i.i, %bb.ba ], [ %.02022.i.i.i311.pre.i.i, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i305.i.i ] ; 2 uses
  %.not23.i.i.i312.i.i = icmp eq ptr %.02022.i.i.i311.i.i, null
  br i1 %.not23.i.i.i312.i.i, label %._crit_edge.thread.i.i.i330.i.i, label %.lr.ph.i.i.i314.i.i

.lr.ph.i.i.i314.i.i:                              ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit310.i.i, %.lr.ph.i.i.i314.i.i
  %.02024.i.i.i315.i.i = phi ptr [ %.020.i.i.i318.i.i, %.lr.ph.i.i.i314.i.i ], [ %.02022.i.i.i311.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit310.i.i ] ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.02024.i.i.i315.i.i, i64 32
  %i.hv = load i16, ptr %i.hu, align 2, !noalias !183 ; 2 uses
  %i.hw = icmp ugt i16 %i.hv, 107                 ; 2 uses
  %.in.v.i.i.i316.i.i = select i1 %i.hw, i64 16, i64 24
  %.in.i.i.i317.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i315.i.i, i64 %.in.v.i.i.i316.i.i
  %.020.i.i.i318.i.i = load ptr, ptr %.in.i.i.i317.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i319.i.i = icmp eq ptr %.020.i.i.i318.i.i, null
  br i1 %.not.i.i.i319.i.i, label %._crit_edge.i.i.i320.i.i, label %.lr.ph.i.i.i314.i.i, !llvm.loop !189

._crit_edge.i.i.i320.i.i:                         ; preds = %.lr.ph.i.i.i314.i.i
  br i1 %i.hw, label %._crit_edge.thread.i.i.i330.i.i, label %bb.bd

._crit_edge.thread.i.i.i330.i.i:                  ; preds = %._crit_edge.i.i.i320.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit310.i.i
  %.019.lcssa29.i.i.i331.i.i = phi ptr [ %.02024.i.i.i315.i.i, %._crit_edge.i.i.i320.i.i ], [ %i.z, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit310.i.i ] ; 4 uses
  %i.hx = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.hy = icmp eq ptr %.019.lcssa29.i.i.i331.i.i, %i.hx
  br i1 %i.hy, label %select.unfold.i.i327.i.i, label %bb.bc

bb.bc:                                            ; preds = %._crit_edge.thread.i.i.i330.i.i
  %i.hz = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i331.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i332.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %.pre.i.i333.i.i = load i16, ptr %.phi.trans.insert.i.i332.i.i, align 2
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %._crit_edge.i.i.i320.i.i
  %i.ia = phi i16 [ %.pre.i.i333.i.i, %bb.bc ], [ %i.hv, %._crit_edge.i.i.i320.i.i ]
  %.019.lcssa28.i.i.i321.i.i = phi ptr [ %.019.lcssa29.i.i.i331.i.i, %bb.bc ], [ %.02024.i.i.i315.i.i, %._crit_edge.i.i.i320.i.i ]
  %i.ib = icmp ult i16 %i.ia, 107
  br i1 %i.ib, label %select.unfold.i.i327.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit334.i.i

select.unfold.i.i327.i.i:                         ; preds = %bb.bd, %._crit_edge.thread.i.i.i330.i.i
  %.sroa.4.0.i.ph.i.i328.i.i = phi ptr [ %.019.lcssa29.i.i.i331.i.i, %._crit_edge.thread.i.i.i330.i.i ], [ %.019.lcssa28.i.i.i321.i.i, %bb.bd ] ; 3 uses
  %i.ic = icmp eq ptr %.sroa.4.0.i.ph.i.i328.i.i, %i.z
  br i1 %i.ic, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i329.i.i, label %bb.be

bb.be:                                            ; preds = %select.unfold.i.i327.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i328.i.i, i64 32
  %i.ie = load i16, ptr %i.id, align 2, !noalias !183
  %i.if = icmp ugt i16 %i.ie, 107
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i329.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i329.i.i: ; preds = %bb.be, %select.unfold.i.i327.i.i
  %i.ig = phi i1 [ %i.if, %bb.be ], [ true, %select.unfold.i.i327.i.i ]
  %i.ih = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  store i16 107, ptr %i.ii, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ig, ptr noundef nonnull %i.ih, ptr noundef nonnull %.sroa.4.0.i.ph.i.i328.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.ij = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.ik = add i64 %i.ij, 1
  store i64 %i.ik, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit334.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit334.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i329.i.i, %bb.bd, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit238.i.i
  %i.il = and i32 %2, 128
  %.not502.i.i = icmp eq i32 %i.il, 0
  br i1 %.not502.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit358.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit334.i.i
  %.02022.i.i.i335.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183 ; 2 uses
  %.not23.i.i.i336.i.i = icmp eq ptr %.02022.i.i.i335.i.i, null
  br i1 %.not23.i.i.i336.i.i, label %._crit_edge.thread.i.i.i354.i.i, label %.lr.ph.i.i.i338.i.i

.lr.ph.i.i.i338.i.i:                              ; preds = %bb.bf, %.lr.ph.i.i.i338.i.i
  %.02024.i.i.i339.i.i = phi ptr [ %.020.i.i.i342.i.i, %.lr.ph.i.i.i338.i.i ], [ %.02022.i.i.i335.i.i, %bb.bf ] ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.02024.i.i.i339.i.i, i64 32
  %i.in = load i16, ptr %i.im, align 2, !noalias !183 ; 2 uses
  %i.io = icmp ugt i16 %i.in, 109                 ; 2 uses
  %.in.v.i.i.i340.i.i = select i1 %i.io, i64 16, i64 24
  %.in.i.i.i341.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i339.i.i, i64 %.in.v.i.i.i340.i.i
  %.020.i.i.i342.i.i = load ptr, ptr %.in.i.i.i341.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i343.i.i = icmp eq ptr %.020.i.i.i342.i.i, null
  br i1 %.not.i.i.i343.i.i, label %._crit_edge.i.i.i344.i.i, label %.lr.ph.i.i.i338.i.i, !llvm.loop !189

._crit_edge.i.i.i344.i.i:                         ; preds = %.lr.ph.i.i.i338.i.i
  br i1 %i.io, label %._crit_edge.thread.i.i.i354.i.i, label %bb.bh

._crit_edge.thread.i.i.i354.i.i:                  ; preds = %._crit_edge.i.i.i344.i.i, %bb.bf
  %.019.lcssa29.i.i.i355.i.i = phi ptr [ %.02024.i.i.i339.i.i, %._crit_edge.i.i.i344.i.i ], [ %i.z, %bb.bf ] ; 4 uses
  %i.ip = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.iq = icmp eq ptr %.019.lcssa29.i.i.i355.i.i, %i.ip
  br i1 %i.iq, label %select.unfold.i.i351.i.i, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.thread.i.i.i354.i.i
  %i.ir = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i355.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i356.i.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %.pre.i.i357.i.i = load i16, ptr %.phi.trans.insert.i.i356.i.i, align 2
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %._crit_edge.i.i.i344.i.i
  %i.is = phi i16 [ %.pre.i.i357.i.i, %bb.bg ], [ %i.in, %._crit_edge.i.i.i344.i.i ]
  %.019.lcssa28.i.i.i345.i.i = phi ptr [ %.019.lcssa29.i.i.i355.i.i, %bb.bg ], [ %.02024.i.i.i339.i.i, %._crit_edge.i.i.i344.i.i ]
  %i.it = icmp ult i16 %i.is, 109
  br i1 %i.it, label %select.unfold.i.i351.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit358.i.i

select.unfold.i.i351.i.i:                         ; preds = %bb.bh, %._crit_edge.thread.i.i.i354.i.i
  %.sroa.4.0.i.ph.i.i352.i.i = phi ptr [ %.019.lcssa29.i.i.i355.i.i, %._crit_edge.thread.i.i.i354.i.i ], [ %.019.lcssa28.i.i.i345.i.i, %bb.bh ] ; 3 uses
  %i.iu = icmp eq ptr %.sroa.4.0.i.ph.i.i352.i.i, %i.z
  br i1 %i.iu, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i353.i.i, label %bb.bi

bb.bi:                                            ; preds = %select.unfold.i.i351.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i352.i.i, i64 32
  %i.iw = load i16, ptr %i.iv, align 2, !noalias !183
  %i.ix = icmp ugt i16 %i.iw, 109
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i353.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i353.i.i: ; preds = %bb.bi, %select.unfold.i.i351.i.i
  %i.iy = phi i1 [ %i.ix, %bb.bi ], [ true, %select.unfold.i.i351.i.i ]
  %i.iz = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  store i16 109, ptr %i.ja, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.iy, ptr noundef nonnull %i.iz, ptr noundef nonnull %.sroa.4.0.i.ph.i.i352.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.jb = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.jc = add i64 %i.jb, 1
  store i64 %i.jc, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit358.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit358.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i353.i.i, %bb.bh, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit334.i.i
  %i.jd = and i32 %2, 256
  %.not503.i.i = icmp eq i32 %i.jd, 0
  br i1 %.not503.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit382.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit358.i.i
  %.02022.i.i.i359.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183 ; 2 uses
  %.not23.i.i.i360.i.i = icmp eq ptr %.02022.i.i.i359.i.i, null
  br i1 %.not23.i.i.i360.i.i, label %._crit_edge.thread.i.i.i378.i.i, label %.lr.ph.i.i.i362.i.i

.lr.ph.i.i.i362.i.i:                              ; preds = %bb.bj, %.lr.ph.i.i.i362.i.i
  %.02024.i.i.i363.i.i = phi ptr [ %.020.i.i.i366.i.i, %.lr.ph.i.i.i362.i.i ], [ %.02022.i.i.i359.i.i, %bb.bj ] ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.02024.i.i.i363.i.i, i64 32
  %i.jf = load i16, ptr %i.je, align 2, !noalias !183 ; 2 uses
  %i.jg = icmp ugt i16 %i.jf, 115                 ; 2 uses
  %.in.v.i.i.i364.i.i = select i1 %i.jg, i64 16, i64 24
  %.in.i.i.i365.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i363.i.i, i64 %.in.v.i.i.i364.i.i
  %.020.i.i.i366.i.i = load ptr, ptr %.in.i.i.i365.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i367.i.i = icmp eq ptr %.020.i.i.i366.i.i, null
  br i1 %.not.i.i.i367.i.i, label %._crit_edge.i.i.i368.i.i, label %.lr.ph.i.i.i362.i.i, !llvm.loop !189

._crit_edge.i.i.i368.i.i:                         ; preds = %.lr.ph.i.i.i362.i.i
  br i1 %i.jg, label %._crit_edge.thread.i.i.i378.i.i, label %bb.bl

._crit_edge.thread.i.i.i378.i.i:                  ; preds = %._crit_edge.i.i.i368.i.i, %bb.bj
  %.019.lcssa29.i.i.i379.i.i = phi ptr [ %.02024.i.i.i363.i.i, %._crit_edge.i.i.i368.i.i ], [ %i.z, %bb.bj ] ; 4 uses
  %i.jh = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.ji = icmp eq ptr %.019.lcssa29.i.i.i379.i.i, %i.jh
  br i1 %i.ji, label %select.unfold.i.i375.i.i, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.thread.i.i.i378.i.i
  %i.jj = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i379.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i380.i.i = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %.pre.i.i381.i.i = load i16, ptr %.phi.trans.insert.i.i380.i.i, align 2
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %._crit_edge.i.i.i368.i.i
  %i.jk = phi i16 [ %.pre.i.i381.i.i, %bb.bk ], [ %i.jf, %._crit_edge.i.i.i368.i.i ]
  %.019.lcssa28.i.i.i369.i.i = phi ptr [ %.019.lcssa29.i.i.i379.i.i, %bb.bk ], [ %.02024.i.i.i363.i.i, %._crit_edge.i.i.i368.i.i ]
  %i.jl = icmp ult i16 %i.jk, 115
  br i1 %i.jl, label %select.unfold.i.i375.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit382.i.i

select.unfold.i.i375.i.i:                         ; preds = %bb.bl, %._crit_edge.thread.i.i.i378.i.i
  %.sroa.4.0.i.ph.i.i376.i.i = phi ptr [ %.019.lcssa29.i.i.i379.i.i, %._crit_edge.thread.i.i.i378.i.i ], [ %.019.lcssa28.i.i.i369.i.i, %bb.bl ] ; 3 uses
  %i.jm = icmp eq ptr %.sroa.4.0.i.ph.i.i376.i.i, %i.z
  br i1 %i.jm, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i377.i.i, label %bb.bm

bb.bm:                                            ; preds = %select.unfold.i.i375.i.i
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i376.i.i, i64 32
  %i.jo = load i16, ptr %i.jn, align 2, !noalias !183
  %i.jp = icmp ugt i16 %i.jo, 115
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i377.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i377.i.i: ; preds = %bb.bm, %select.unfold.i.i375.i.i
  %i.jq = phi i1 [ %i.jp, %bb.bm ], [ true, %select.unfold.i.i375.i.i ]
  %i.jr = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  store i16 115, ptr %i.js, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.jq, ptr noundef nonnull %i.jr, ptr noundef nonnull %.sroa.4.0.i.ph.i.i376.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.jt = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.ju = add i64 %i.jt, 1
  store i64 %i.ju, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit382.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit382.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i377.i.i, %bb.bl, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit358.i.i
  %i.jv = and i32 %2, 512
  %.not504.i.i = icmp eq i32 %i.jv, 0
  br i1 %.not504.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit454.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit382.i.i
  %.02022.i.i.i383.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183 ; 3 uses
  %.not23.i.i.i384.i.i = icmp eq ptr %.02022.i.i.i383.i.i, null
  br i1 %.not23.i.i.i384.i.i, label %._crit_edge.thread.i.i.i402.i.i, label %.lr.ph.i.i.i386.i.i

.lr.ph.i.i.i386.i.i:                              ; preds = %bb.bn, %.lr.ph.i.i.i386.i.i
  %.02024.i.i.i387.i.i = phi ptr [ %.020.i.i.i390.i.i, %.lr.ph.i.i.i386.i.i ], [ %.02022.i.i.i383.i.i, %bb.bn ] ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.02024.i.i.i387.i.i, i64 32
  %i.jx = load i16, ptr %i.jw, align 2, !noalias !183 ; 2 uses
  %i.jy = icmp ugt i16 %i.jx, 122                 ; 2 uses
  %.in.v.i.i.i388.i.i = select i1 %i.jy, i64 16, i64 24
  %.in.i.i.i389.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i387.i.i, i64 %.in.v.i.i.i388.i.i
  %.020.i.i.i390.i.i = load ptr, ptr %.in.i.i.i389.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i391.i.i = icmp eq ptr %.020.i.i.i390.i.i, null
  br i1 %.not.i.i.i391.i.i, label %._crit_edge.i.i.i392.i.i, label %.lr.ph.i.i.i386.i.i, !llvm.loop !189

._crit_edge.i.i.i392.i.i:                         ; preds = %.lr.ph.i.i.i386.i.i
  br i1 %i.jy, label %._crit_edge.thread.i.i.i402.i.i, label %bb.bp

._crit_edge.thread.i.i.i402.i.i:                  ; preds = %._crit_edge.i.i.i392.i.i, %bb.bn
  %.019.lcssa29.i.i.i403.i.i = phi ptr [ %.02024.i.i.i387.i.i, %._crit_edge.i.i.i392.i.i ], [ %i.z, %bb.bn ] ; 4 uses
  %i.jz = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.ka = icmp eq ptr %.019.lcssa29.i.i.i403.i.i, %i.jz
  br i1 %i.ka, label %select.unfold.i.i399.i.i, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.thread.i.i.i402.i.i
  %i.kb = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i403.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i404.i.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %.pre.i.i405.i.i = load i16, ptr %.phi.trans.insert.i.i404.i.i, align 2
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge.i.i.i392.i.i
  %i.kc = phi i16 [ %.pre.i.i405.i.i, %bb.bo ], [ %i.jx, %._crit_edge.i.i.i392.i.i ]
  %.019.lcssa28.i.i.i393.i.i = phi ptr [ %.019.lcssa29.i.i.i403.i.i, %bb.bo ], [ %.02024.i.i.i387.i.i, %._crit_edge.i.i.i392.i.i ]
  %i.kd = icmp ult i16 %i.kc, 122
  br i1 %i.kd, label %select.unfold.i.i399.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit406.i.i

select.unfold.i.i399.i.i:                         ; preds = %bb.bp, %._crit_edge.thread.i.i.i402.i.i
  %.sroa.4.0.i.ph.i.i400.i.i = phi ptr [ %.019.lcssa29.i.i.i403.i.i, %._crit_edge.thread.i.i.i402.i.i ], [ %.019.lcssa28.i.i.i393.i.i, %bb.bp ] ; 3 uses
  %i.ke = icmp eq ptr %.sroa.4.0.i.ph.i.i400.i.i, %i.z
  br i1 %i.ke, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i401.i.i, label %bb.bq

bb.bq:                                            ; preds = %select.unfold.i.i399.i.i
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i400.i.i, i64 32
  %i.kg = load i16, ptr %i.kf, align 2, !noalias !183
  %i.kh = icmp ugt i16 %i.kg, 122
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i401.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i401.i.i: ; preds = %bb.bq, %select.unfold.i.i399.i.i
  %i.ki = phi i1 [ %i.kh, %bb.bq ], [ true, %select.unfold.i.i399.i.i ]
  %i.kj = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 32
  store i16 122, ptr %i.kk, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ki, ptr noundef nonnull %i.kj, ptr noundef nonnull %.sroa.4.0.i.ph.i.i400.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.kl = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.km = add i64 %i.kl, 1
  store i64 %i.km, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %.02022.i.i.i407.pre.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit406.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit406.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i401.i.i, %bb.bp
  %.02022.i.i.i407.i.i = phi ptr [ %.02022.i.i.i383.i.i, %bb.bp ], [ %.02022.i.i.i407.pre.i.i, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i401.i.i ] ; 3 uses
  %.not23.i.i.i408.i.i = icmp eq ptr %.02022.i.i.i407.i.i, null
  br i1 %.not23.i.i.i408.i.i, label %._crit_edge.thread.i.i.i426.i.i, label %.lr.ph.i.i.i410.i.i

.lr.ph.i.i.i410.i.i:                              ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit406.i.i, %.lr.ph.i.i.i410.i.i
  %.02024.i.i.i411.i.i = phi ptr [ %.020.i.i.i414.i.i, %.lr.ph.i.i.i410.i.i ], [ %.02022.i.i.i407.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit406.i.i ] ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.02024.i.i.i411.i.i, i64 32
  %i.ko = load i16, ptr %i.kn, align 2, !noalias !183 ; 2 uses
  %i.kp = icmp ugt i16 %i.ko, 79                  ; 2 uses
  %.in.v.i.i.i412.i.i = select i1 %i.kp, i64 16, i64 24
  %.in.i.i.i413.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i411.i.i, i64 %.in.v.i.i.i412.i.i
  %.020.i.i.i414.i.i = load ptr, ptr %.in.i.i.i413.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i415.i.i = icmp eq ptr %.020.i.i.i414.i.i, null
  br i1 %.not.i.i.i415.i.i, label %._crit_edge.i.i.i416.i.i, label %.lr.ph.i.i.i410.i.i, !llvm.loop !189

._crit_edge.i.i.i416.i.i:                         ; preds = %.lr.ph.i.i.i410.i.i
  br i1 %i.kp, label %._crit_edge.thread.i.i.i426.i.i, label %bb.bs

._crit_edge.thread.i.i.i426.i.i:                  ; preds = %._crit_edge.i.i.i416.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit406.i.i
  %.019.lcssa29.i.i.i427.i.i = phi ptr [ %.02024.i.i.i411.i.i, %._crit_edge.i.i.i416.i.i ], [ %i.z, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit406.i.i ] ; 4 uses
  %i.kq = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.kr = icmp eq ptr %.019.lcssa29.i.i.i427.i.i, %i.kq
  br i1 %i.kr, label %select.unfold.i.i423.i.i, label %bb.br

bb.br:                                            ; preds = %._crit_edge.thread.i.i.i426.i.i
  %i.ks = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i427.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i428.i.i = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %.pre.i.i429.i.i = load i16, ptr %.phi.trans.insert.i.i428.i.i, align 2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %._crit_edge.i.i.i416.i.i
  %i.kt = phi i16 [ %.pre.i.i429.i.i, %bb.br ], [ %i.ko, %._crit_edge.i.i.i416.i.i ]
  %.019.lcssa28.i.i.i417.i.i = phi ptr [ %.019.lcssa29.i.i.i427.i.i, %bb.br ], [ %.02024.i.i.i411.i.i, %._crit_edge.i.i.i416.i.i ]
  %i.ku = icmp ult i16 %i.kt, 79
  br i1 %i.ku, label %select.unfold.i.i423.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit430.i.i

select.unfold.i.i423.i.i:                         ; preds = %bb.bs, %._crit_edge.thread.i.i.i426.i.i
  %.sroa.4.0.i.ph.i.i424.i.i = phi ptr [ %.019.lcssa29.i.i.i427.i.i, %._crit_edge.thread.i.i.i426.i.i ], [ %.019.lcssa28.i.i.i417.i.i, %bb.bs ] ; 3 uses
  %i.kv = icmp eq ptr %.sroa.4.0.i.ph.i.i424.i.i, %i.z
  br i1 %i.kv, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i425.i.i, label %bb.bt

bb.bt:                                            ; preds = %select.unfold.i.i423.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i424.i.i, i64 32
  %i.kx = load i16, ptr %i.kw, align 2, !noalias !183
  %i.ky = icmp ugt i16 %i.kx, 79
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i425.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i425.i.i: ; preds = %bb.bt, %select.unfold.i.i423.i.i
  %i.kz = phi i1 [ %i.ky, %bb.bt ], [ true, %select.unfold.i.i423.i.i ]
  %i.la = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  store i16 79, ptr %i.lb, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.kz, ptr noundef nonnull %i.la, ptr noundef nonnull %.sroa.4.0.i.ph.i.i424.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.lc = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.ld = add i64 %i.lc, 1
  store i64 %i.ld, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %.02022.i.i.i431.pre.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit430.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit430.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i425.i.i, %bb.bs
  %.02022.i.i.i431.i.i = phi ptr [ %.02022.i.i.i407.i.i, %bb.bs ], [ %.02022.i.i.i431.pre.i.i, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i425.i.i ] ; 2 uses
  %.not23.i.i.i432.i.i = icmp eq ptr %.02022.i.i.i431.i.i, null
  br i1 %.not23.i.i.i432.i.i, label %._crit_edge.thread.i.i.i450.i.i, label %.lr.ph.i.i.i434.i.i

.lr.ph.i.i.i434.i.i:                              ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit430.i.i, %.lr.ph.i.i.i434.i.i
  %.02024.i.i.i435.i.i = phi ptr [ %.020.i.i.i438.i.i, %.lr.ph.i.i.i434.i.i ], [ %.02022.i.i.i431.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit430.i.i ] ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.02024.i.i.i435.i.i, i64 32
  %i.lf = load i16, ptr %i.le, align 2, !noalias !183 ; 2 uses
  %i.lg = icmp ugt i16 %i.lf, 118                 ; 2 uses
  %.in.v.i.i.i436.i.i = select i1 %i.lg, i64 16, i64 24
  %.in.i.i.i437.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i435.i.i, i64 %.in.v.i.i.i436.i.i
  %.020.i.i.i438.i.i = load ptr, ptr %.in.i.i.i437.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i439.i.i = icmp eq ptr %.020.i.i.i438.i.i, null
  br i1 %.not.i.i.i439.i.i, label %._crit_edge.i.i.i440.i.i, label %.lr.ph.i.i.i434.i.i, !llvm.loop !189

._crit_edge.i.i.i440.i.i:                         ; preds = %.lr.ph.i.i.i434.i.i
  br i1 %i.lg, label %._crit_edge.thread.i.i.i450.i.i, label %bb.bv

._crit_edge.thread.i.i.i450.i.i:                  ; preds = %._crit_edge.i.i.i440.i.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit430.i.i
  %.019.lcssa29.i.i.i451.i.i = phi ptr [ %.02024.i.i.i435.i.i, %._crit_edge.i.i.i440.i.i ], [ %i.z, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit430.i.i ] ; 4 uses
  %i.lh = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.li = icmp eq ptr %.019.lcssa29.i.i.i451.i.i, %i.lh
  br i1 %i.li, label %select.unfold.i.i447.i.i, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge.thread.i.i.i450.i.i
  %i.lj = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i451.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i452.i.i = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %.pre.i.i453.i.i = load i16, ptr %.phi.trans.insert.i.i452.i.i, align 2
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %._crit_edge.i.i.i440.i.i
  %i.lk = phi i16 [ %.pre.i.i453.i.i, %bb.bu ], [ %i.lf, %._crit_edge.i.i.i440.i.i ]
  %.019.lcssa28.i.i.i441.i.i = phi ptr [ %.019.lcssa29.i.i.i451.i.i, %bb.bu ], [ %.02024.i.i.i435.i.i, %._crit_edge.i.i.i440.i.i ]
  %i.ll = icmp ult i16 %i.lk, 118
  br i1 %i.ll, label %select.unfold.i.i447.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit454.i.i

select.unfold.i.i447.i.i:                         ; preds = %bb.bv, %._crit_edge.thread.i.i.i450.i.i
  %.sroa.4.0.i.ph.i.i448.i.i = phi ptr [ %.019.lcssa29.i.i.i451.i.i, %._crit_edge.thread.i.i.i450.i.i ], [ %.019.lcssa28.i.i.i441.i.i, %bb.bv ] ; 3 uses
  %i.lm = icmp eq ptr %.sroa.4.0.i.ph.i.i448.i.i, %i.z
  br i1 %i.lm, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i449.i.i, label %bb.bw

bb.bw:                                            ; preds = %select.unfold.i.i447.i.i
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i448.i.i, i64 32
  %i.lo = load i16, ptr %i.ln, align 2, !noalias !183
  %i.lp = icmp ugt i16 %i.lo, 118
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i449.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i449.i.i: ; preds = %bb.bw, %select.unfold.i.i447.i.i
  %i.lq = phi i1 [ %i.lp, %bb.bw ], [ true, %select.unfold.i.i447.i.i ]
  %i.lr = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 32
  store i16 118, ptr %i.ls, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.lq, ptr noundef nonnull %i.lr, ptr noundef nonnull %.sroa.4.0.i.ph.i.i448.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.lt = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.lu = add i64 %i.lt, 1
  store i64 %i.lu, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit454.i.i

_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit454.i.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i449.i.i, %bb.bv, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit382.i.i
  %i.lv = and i32 %2, 1024
  %.not505.i.i = icmp eq i32 %i.lv, 0
  br i1 %.not505.i.i, label %_ZN2v88internal12_GLOBAL__N_121ExplicitComponentsSetEi.exit.i, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit454.i.i
  %.02022.i.i.i455.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !186, !noalias !183 ; 2 uses
  %.not23.i.i.i456.i.i = icmp eq ptr %.02022.i.i.i455.i.i, null
  br i1 %.not23.i.i.i456.i.i, label %._crit_edge.thread.i.i.i474.i.i, label %.lr.ph.i.i.i458.i.i

.lr.ph.i.i.i458.i.i:                              ; preds = %bb.bx, %.lr.ph.i.i.i458.i.i
  %.02024.i.i.i459.i.i = phi ptr [ %.020.i.i.i462.i.i, %.lr.ph.i.i.i458.i.i ], [ %.02022.i.i.i455.i.i, %bb.bx ] ; 4 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.02024.i.i.i459.i.i, i64 32
  %i.lx = load i16, ptr %i.lw, align 2, !noalias !183 ; 2 uses
  %i.ly = icmp ugt i16 %i.lx, 83                  ; 2 uses
  %.in.v.i.i.i460.i.i = select i1 %i.ly, i64 16, i64 24
  %.in.i.i.i461.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i459.i.i, i64 %.in.v.i.i.i460.i.i
  %.020.i.i.i462.i.i = load ptr, ptr %.in.i.i.i461.i.i, align 8, !noalias !183 ; 2 uses
  %.not.i.i.i463.i.i = icmp eq ptr %.020.i.i.i462.i.i, null
  br i1 %.not.i.i.i463.i.i, label %._crit_edge.i.i.i464.i.i, label %.lr.ph.i.i.i458.i.i, !llvm.loop !189

._crit_edge.i.i.i464.i.i:                         ; preds = %.lr.ph.i.i.i458.i.i
  br i1 %i.ly, label %._crit_edge.thread.i.i.i474.i.i, label %bb.bz

._crit_edge.thread.i.i.i474.i.i:                  ; preds = %._crit_edge.i.i.i464.i.i, %bb.bx
  %.019.lcssa29.i.i.i475.i.i = phi ptr [ %.02024.i.i.i459.i.i, %._crit_edge.i.i.i464.i.i ], [ %i.z, %bb.bx ] ; 4 uses
  %i.lz = load ptr, ptr %i.ab, align 8, !alias.scope !186, !noalias !183
  %i.ma = icmp eq ptr %.019.lcssa29.i.i.i475.i.i, %i.lz
  br i1 %i.ma, label %select.unfold.i.i471.i.i, label %bb.by

bb.by:                                            ; preds = %._crit_edge.thread.i.i.i474.i.i
  %i.mb = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i475.i.i) #25, !noalias !183
  %.phi.trans.insert.i.i476.i.i = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %.pre.i.i477.i.i = load i16, ptr %.phi.trans.insert.i.i476.i.i, align 2
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge.i.i.i464.i.i
  %i.mc = phi i16 [ %.pre.i.i477.i.i, %bb.by ], [ %i.lx, %._crit_edge.i.i.i464.i.i ]
  %.019.lcssa28.i.i.i465.i.i = phi ptr [ %.019.lcssa29.i.i.i475.i.i, %bb.by ], [ %.02024.i.i.i459.i.i, %._crit_edge.i.i.i464.i.i ]
  %i.md = icmp ult i16 %i.mc, 83
  br i1 %i.md, label %select.unfold.i.i471.i.i, label %_ZN2v88internal12_GLOBAL__N_121ExplicitComponentsSetEi.exit.i

select.unfold.i.i471.i.i:                         ; preds = %bb.bz, %._crit_edge.thread.i.i.i474.i.i
  %.sroa.4.0.i.ph.i.i472.i.i = phi ptr [ %.019.lcssa29.i.i.i475.i.i, %._crit_edge.thread.i.i.i474.i.i ], [ %.019.lcssa28.i.i.i465.i.i, %bb.bz ] ; 3 uses
  %i.me = icmp eq ptr %.sroa.4.0.i.ph.i.i472.i.i, %i.z
  br i1 %i.me, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i473.i.i, label %bb.ca

bb.ca:                                            ; preds = %select.unfold.i.i471.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i472.i.i, i64 32
  %i.mg = load i16, ptr %i.mf, align 2, !noalias !183
  %i.mh = icmp ugt i16 %i.mg, 83
  br label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i473.i.i

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i473.i.i: ; preds = %bb.ca, %select.unfold.i.i471.i.i
  %i.mi = phi i1 [ %i.mh, %bb.ca ], [ true, %select.unfold.i.i471.i.i ]
  %i.mj = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24, !noalias !183 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  store i16 83, ptr %i.mk, align 2, !noalias !183
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.mi, ptr noundef nonnull %i.mj, ptr noundef nonnull %.sroa.4.0.i.ph.i.i472.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z) #22, !noalias !183
  %i.ml = load i64, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  %i.mm = add i64 %i.ml, 1
  store i64 %i.mm, ptr %i.ad, align 8, !alias.scope !186, !noalias !183
  br label %_ZN2v88internal12_GLOBAL__N_121ExplicitComponentsSetEi.exit.i

_ZN2v88internal12_GLOBAL__N_121ExplicitComponentsSetEi.exit.i: ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE10_M_insert_IDsNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIDsEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i473.i.i, %bb.bz, %_ZNSt3setIDsSt4lessIDsESaIDsEE6insertEODs.exit454.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %23, align 8, !alias.scope !183
  %i.mn = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i16 2, ptr %i.mn, align 8, !alias.scope !183
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.mq = load i16, ptr %i.mo, align 8, !noalias !183 ; 3 uses
  %i.mr = icmp slt i16 %i.mq, 0
  %i.ms = ashr i16 %i.mq, 5
  %i.mt = sext i16 %i.ms to i32
  %i.mu = load i32, ptr %i.mp, align 4, !noalias !183 ; 2 uses
  %i.mv = select i1 %i.mr, i32 %i.mu, i32 %i.mt
  %i.mw = icmp sgt i32 %i.mv, 0
  br i1 %i.mw, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i, label %_ZN2v88internal12_GLOBAL__N_116OrigionalOptionsERKN6icu_7813UnicodeStringEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i: ; preds = %_ZN2v88internal12_GLOBAL__N_121ExplicitComponentsSetEi.exit.i
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.thread.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i
  %i.mz = phi i32 [ %i.mu, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %i.no, %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.thread.i ] ; 3 uses
  %i.na = phi i16 [ %i.mq, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %i.np, %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.thread.i ] ; 4 uses
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.thread.i ] ; 2 uses
  %i.nb = and i16 %i.na, 2
  %.not.i.i.i.i = icmp eq i16 %i.nb, 0
  %i.nc = load ptr, ptr %i.my, align 8, !noalias !183
  %i.nd = select i1 %.not.i.i.i.i, ptr %i.nc, ptr %i.mx
  %i.ne = getelementptr inbounds nuw [2 x i8], ptr %i.nd, i64 %indvars.iv.i
  %i.nf = load i16, ptr %i.ne, align 2            ; 3 uses
  %i.ng = load ptr, ptr %i.aa, align 8, !noalias !183 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ng, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ng, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ] ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ni = load i16, ptr %i.nh, align 2
  %i.nj = icmp ult i16 %i.ni, %i.nf               ; 3 uses
  %.19.i.i.i.i = select i1 %i.nj, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.nj, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i6.i, label %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE14_M_lower_boundEPSt13_Rb_tree_nodeIDsEPSt18_Rb_tree_node_baseRKDs.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !190

_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE14_M_lower_boundEPSt13_Rb_tree_nodeIDsEPSt18_Rb_tree_node_baseRKDs.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.nk = icmp eq ptr %.19.i.i.i.i, %i.z
  br i1 %i.nk, label %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.thread.i, label %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.i

_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.i:  ; preds = %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE14_M_lower_boundEPSt13_Rb_tree_nodeIDsEPSt18_Rb_tree_node_baseRKDs.exit.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.nj, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.nl = load i16, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 2
  %i.nm = icmp ult i16 %i.nf, %i.nl
  br i1 %i.nm, label %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.thread.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !183
  store i16 %i.nf, ptr %i.a, align 2, !noalias !183
  %i.nn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !183
  %.pre.i = load i16, ptr %i.mo, align 8, !noalias !183
  %.pre84.i = load i32, ptr %i.mp, align 4, !noalias !183
  br label %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.thread.i

_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.thread.i: ; preds = %bb.cb, %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.i, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE14_M_lower_boundEPSt13_Rb_tree_nodeIDsEPSt18_Rb_tree_node_baseRKDs.exit.i.i.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.no = phi i32 [ %i.mz, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE14_M_lower_boundEPSt13_Rb_tree_nodeIDsEPSt18_Rb_tree_node_baseRKDs.exit.i.i.i ], [ %i.mz, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ %.pre84.i, %bb.cb ], [ %i.mz, %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.i ] ; 2 uses
  %i.np = phi i16 [ %i.na, %_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE14_M_lower_boundEPSt13_Rb_tree_nodeIDsEPSt18_Rb_tree_node_baseRKDs.exit.i.i.i ], [ %i.na, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i ], [ %.pre.i, %bb.cb ], [ %i.na, %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.nq = icmp slt i16 %i.np, 0
  %i.nr = ashr i16 %i.np, 5
  %i.ns = sext i16 %i.nr to i32
  %i.nt = select i1 %i.nq, i32 %i.no, i32 %i.ns
  %i.nu = sext i32 %i.nt to i64
  %i.nv = icmp slt i64 %indvars.iv.next.i, %i.nu
  br i1 %i.nv, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZN2v88internal12_GLOBAL__N_116OrigionalOptionsERKN6icu_7813UnicodeStringEi.exit, !llvm.loop !191

_ZN2v88internal12_GLOBAL__N_116OrigionalOptionsERKN6icu_7813UnicodeStringEi.exit: ; preds = %_ZNSt3setIDsSt4lessIDsESaIDsEE4findERKDs.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_121ExplicitComponentsSetEi.exit.i
  %i.nw = load ptr, ptr %i.aa, align 8, !noalias !183
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.nw)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !183
  switch i32 %3, label %bb.ck [
    i32 1, label %bb.cc
    i32 4, label %bb.cd
    i32 5, label %bb.ce
    i32 3, label %bb.cf
    i32 2, label %bb.cg
    i32 6, label %bb.ch
  ]

bb.cc:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116OrigionalOptionsERKN6icu_7813UnicodeStringEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr nonnull @_ZGRZN2v88internal12_GLOBAL__N_125GetSkeletonForPatternKindERKN6icu_7813UnicodeStringEiNS1_11PatternKindENS0_16JSDateTimeFormat13DateTimeStyleES8_bE13kRequiredDate_, i64 7, ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull align 1 dereferenceable(1) %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr nonnull @_ZGRZN2v88internal12_GLOBAL__N_125GetSkeletonForPatternKindERKN6icu_7813UnicodeStringEiNS1_11PatternKindENS0_16JSDateTimeFormat13DateTimeStyleES8_bE13kDefaultsDate_, i64 3, ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull align 1 dereferenceable(1) %29)
  call fastcc void @_ZN2v88internal12_GLOBAL__N_117GetDateTimeFormatERKN6icu_7813UnicodeStringERKSt3setIDsSt4lessIDsESaIDsEESC_NS1_7InheritENS1_5EraOpENS1_11HourCycleOpEb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull align 8 dereferenceable(48) %27, i32 noundef 1, i32 noundef 0, i32 noundef 1, i1 noundef zeroext false)
  %i.nx = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ny = load ptr, ptr %i.nx, align 8
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef %i.ny)
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.nz = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.oa)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.cl

bb.cd:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116OrigionalOptionsERKN6icu_7813UnicodeStringEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr nonnull @_ZGRZN2v88internal12_GLOBAL__N_125GetSkeletonForPatternKindERKN6icu_7813UnicodeStringEiNS1_11PatternKindENS0_16JSDateTimeFormat13DateTimeStyleES8_bE18kRequiredYearMonth_, i64 4, ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull align 1 dereferenceable(1) %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr nonnull @_ZGRZN2v88internal12_GLOBAL__N_125GetSkeletonForPatternKindERKN6icu_7813UnicodeStringEiNS1_11PatternKindENS0_16JSDateTimeFormat13DateTimeStyleES8_bE18kDefaultsYearMonth_, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %34, ptr noundef nonnull align 1 dereferenceable(1) %35)
  call fastcc void @_ZN2v88internal12_GLOBAL__N_117GetDateTimeFormatERKN6icu_7813UnicodeStringERKSt3setIDsSt4lessIDsESaIDsEESC_NS1_7InheritENS1_5EraOpENS1_11HourCycleOpEb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull align 8 dereferenceable(48) %33, i32 noundef 1, i32 noundef 0, i32 noundef 1, i1 noundef zeroext false)
  %i.ob = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef %i.oc)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.od = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.oe = load ptr, ptr %i.od, align 8
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %i.oe)
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  br label %bb.cl

bb.ce:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116OrigionalOptionsERKN6icu_7813UnicodeStringEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr nonnull @_ZGRZN2v88internal12_GLOBAL__N_125GetSkeletonForPatternKindERKN6icu_7813UnicodeStringEiNS1_11PatternKindENS0_16JSDateTimeFormat13DateTimeStyleES8_bE17kRequiredMonthDay_, i64 3, ptr noundef nonnull align 1 dereferenceable(1) %37, ptr noundef nonnull align 1 dereferenceable(1) %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %39, ptr nonnull @_ZGRZN2v88internal12_GLOBAL__N_125GetSkeletonForPatternKindERKN6icu_7813UnicodeStringEiNS1_11PatternKindENS0_16JSDateTimeFormat13DateTimeStyleES8_bE17kDefaultsMonthDay_, i64 2, ptr noundef nonnull align 1 dereferenceable(1) %40, ptr noundef nonnull align 1 dereferenceable(1) %41)
  call fastcc void @_ZN2v88internal12_GLOBAL__N_117GetDateTimeFormatERKN6icu_7813UnicodeStringERKSt3setIDsSt4lessIDsESaIDsEESC_NS1_7InheritENS1_5EraOpENS1_11HourCycleOpEb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %23, ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef nonnull align 8 dereferenceable(48) %39, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false)
  %i.of = getelementptr inbounds nuw i8, ptr %39, i64 16
  %i.og = load ptr, ptr %i.of, align 8
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %39, ptr noundef %i.og)
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  %i.oh = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8
  call void @_ZNSt8_Rb_treeIDsDsSt9_IdentityIDsESt4lessIDsESaIDsEE8_M_eraseEPSt13_Rb_tree_nodeIDsE(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef %i.oi)
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %bb.cl

bb.cf:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_116OrigionalOptionsERKN6icu_7813UnicodeStringEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  call void @_ZNSt3setIDsSt4lessIDsESaIDsEEC2ESt16initializer_listIDsERKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(48) %42, ptr nonnull @constinit.108, i64 11, ptr noundef nonnull align 1 dereferenceable(1) %43, ptr noundef nonnull align 1 dereferenceable(1) %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #22
end_hunk_0
