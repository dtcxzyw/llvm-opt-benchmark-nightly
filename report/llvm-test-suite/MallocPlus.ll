inline.NumInlined: 879
inline.NumDeleted: 248
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN10MallocPlus10memory_addEPviPmmPKci:bb.a

.noexc.i.i:                                       ; preds = %bb.g
  %i.au = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.au, ptr %7, align 8, !tbaa !23
  %i.av = load i64, ptr %i.a, align 8, !tbaa !14
  store i64 %i.av, ptr %i.aq, align 8, !tbaa !25
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.g
  %i.aw = phi ptr [ %i.au, %.noexc.i.i ], [ %i.aq, %bb.g ] ; 2 uses
  switch i64 %i.as, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPKcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.ax = load i8, ptr %5, align 1, !tbaa !25
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !25
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPKcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull align 1 %5, i64 %i.as, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPKcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPKcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit: ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !26
  %i.ba = load ptr, ptr %7, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.b, ptr %i.bc, align 8, !tbaa !27
  %i.bd = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entrySt4lessIS5_ESaISt4pairIKS5_S7_EEE6insertISA_IS5_S7_EEENSt9enable_ifIXsr16is_constructibleISC_T_EE5valueESA_ISt17_Rb_tree_iteratorISC_EbEE4typeEOSI_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPKcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit
  %i.be = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.aq
  br i1 %i.bf, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.bg = load i64, ptr %i.aq, align 8, !tbaa !25
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #31
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret ptr %1

bb.k:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryEC2IRPKcRS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.aq
  br i1 %i.bk, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14: ; preds = %bb.k
  %i.bl = load i64, ptr %i.aq, align 8, !tbaa !25
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #31
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit16

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP24malloc_plus_memory_entryED2Ev.exit16: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10MallocPlus14memory_reorderEPdPi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef captures(address, ret: address, provenance) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp ult ptr %i.f, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.h, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp ult ptr %1, %i.j
  br i1 %i.k, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 4 uses
  %i.n = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16
  %i.w = mul i64 %i.v, %i.t
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #28 ; 8 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @free(ptr noundef %1) #29
  store ptr %i.x, ptr %i.m, align 8, !tbaa !19
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %._crit_edge ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %._crit_edge ]
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = icmp ult ptr %i.aa, %i.x                ; 2 uses
  %.19.i.i.i.i = select i1 %i.ab, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ab, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ac = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.ac, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = icmp ult ptr %i.x, %i.ae
  br i1 %i.af, label %.critedge.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %._crit_edge
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.d, %._crit_edge ]
  %i.ag = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.m, ptr %i.ai, align 8, !tbaa !41
  %i.aj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge.i
  %i.ak = extractvalue { ptr, ptr } %i.aj, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = extractvalue { ptr, ptr } %i.aj, 0
  %.not.i.i.i12 = icmp ne ptr %i.al, null
  %i.am = icmp eq ptr %i.ak, %i.d
  %or.cond.i.i.i = select i1 %.not.i.i.i12, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = icmp ult ptr %i.an, %i.ap
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.ar = phi i1 [ %i.aq, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ar, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  %i.as = load i64, ptr %i.o, align 8, !tbaa !42
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.o, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 48) #31
  resume { ptr, i32 } %i.au

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.av = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.av
  store double %i.ba, ptr %i.bb, align 8, !tbaa !57
  %indvars.iv.next = add i64 %i.av, 1             ; 2 uses
  %3 = and i64 %indvars.iv.next, 4294967295
  %i.bc = icmp ugt i64 %i.t, %3
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !59

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %bb.c, %.thread.i, %bb.g, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %.026 = phi ptr [ %1, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ %1, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit ], [ %1, %bb.a ], [ %i.x, %bb.g ], [ %i.x, %.thread.i ], [ %i.x, %bb.c ]
  ret ptr %.026
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10MallocPlus14memory_reorderEPfPi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef captures(address, ret: address, provenance) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp ult ptr %i.f, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.h, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp ult ptr %1, %i.j
  br i1 %i.k, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 4 uses
  %i.n = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16
  %i.w = mul i64 %i.v, %i.t
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #28 ; 8 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @free(ptr noundef %1) #29
  store ptr %i.x, ptr %i.m, align 8, !tbaa !19
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %._crit_edge ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %._crit_edge ]
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = icmp ult ptr %i.aa, %i.x                ; 2 uses
  %.19.i.i.i.i = select i1 %i.ab, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ab, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ac = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.ac, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = icmp ult ptr %i.x, %i.ae
  br i1 %i.af, label %.critedge.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %._crit_edge
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.d, %._crit_edge ]
  %i.ag = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.m, ptr %i.ai, align 8, !tbaa !41
  %i.aj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge.i
  %i.ak = extractvalue { ptr, ptr } %i.aj, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = extractvalue { ptr, ptr } %i.aj, 0
  %.not.i.i.i12 = icmp ne ptr %i.al, null
  %i.am = icmp eq ptr %i.ak, %i.d
  %or.cond.i.i.i = select i1 %.not.i.i.i12, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = icmp ult ptr %i.an, %i.ap
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.ar = phi i1 [ %i.aq, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ar, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  %i.as = load i64, ptr %i.o, align 8, !tbaa !42
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.o, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 48) #31
  resume { ptr, i32 } %i.au

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.av = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !60
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.av
  store float %i.ba, ptr %i.bb, align 4, !tbaa !60
  %indvars.iv.next = add i64 %i.av, 1             ; 2 uses
  %3 = and i64 %indvars.iv.next, 4294967295
  %i.bc = icmp ugt i64 %i.t, %3
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !62

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %bb.c, %.thread.i, %bb.g, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %.026 = phi ptr [ %1, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ %1, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit ], [ %1, %bb.a ], [ %i.x, %bb.g ], [ %i.x, %.thread.i ], [ %i.x, %bb.c ]
  ret ptr %.026
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10MallocPlus14memory_reorderEPiS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef captures(address, ret: address, provenance) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp ult ptr %i.f, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.h, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp ult ptr %1, %i.j
  br i1 %i.k, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 4 uses
  %i.n = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16
  %i.w = mul i64 %i.v, %i.t
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #28 ; 8 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @free(ptr noundef %1) #29
  store ptr %i.x, ptr %i.m, align 8, !tbaa !19
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %._crit_edge ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %._crit_edge ]
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = icmp ult ptr %i.aa, %i.x                ; 2 uses
  %.19.i.i.i.i = select i1 %i.ab, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ab, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ac = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.ac, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = icmp ult ptr %i.x, %i.ae
  br i1 %i.af, label %.critedge.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %._crit_edge
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.d, %._crit_edge ]
  %i.ag = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.m, ptr %i.ai, align 8, !tbaa !41
  %i.aj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge.i
  %i.ak = extractvalue { ptr, ptr } %i.aj, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = extractvalue { ptr, ptr } %i.aj, 0
  %.not.i.i.i12 = icmp ne ptr %i.al, null
  %i.am = icmp eq ptr %i.ak, %i.d
  %or.cond.i.i.i = select i1 %.not.i.i.i12, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = icmp ult ptr %i.an, %i.ap
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.ar = phi i1 [ %i.aq, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ar, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  %i.as = load i64, ptr %i.o, align 8, !tbaa !42
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.o, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 48) #31
  resume { ptr, i32 } %i.au

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.av = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.av
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !4
  %indvars.iv.next = add i64 %i.av, 1             ; 2 uses
  %3 = and i64 %indvars.iv.next, 4294967295
  %i.bc = icmp ugt i64 %i.t, %3
  br i1 %i.bc, label %.lr.ph, label %._crit_edge, !llvm.loop !63

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %bb.c, %.thread.i, %bb.g, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %.026 = phi ptr [ %1, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ %1, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit ], [ %1, %bb.a ], [ %i.x, %bb.g ], [ %i.x, %.thread.i ], [ %i.x, %bb.c ]
  ret ptr %.026
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10MallocPlus25memory_reorder_indexarrayEPiS0_S0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef captures(address, ret: address, provenance) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp ult ptr %i.f, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.h, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit: ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = icmp ult ptr %1, %i.j
  br i1 %i.k, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 4 uses
  %i.n = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16
  %i.w = mul i64 %i.v, %i.t
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #28 ; 8 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @free(ptr noundef %1) #29
  store ptr %i.x, ptr %i.m, align 8, !tbaa !19
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %._crit_edge ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %._crit_edge ]
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = icmp ult ptr %i.aa, %i.x                ; 2 uses
  %.19.i.i.i.i = select i1 %i.ab, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.ab, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ac = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.ac, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = icmp ult ptr %i.x, %i.ae
  br i1 %i.af, label %.critedge.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %._crit_edge
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.d, %._crit_edge ]
  %i.ag = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store ptr %i.m, ptr %i.ai, align 8, !tbaa !41
  %i.aj = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.d unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.d:                                             ; preds = %.critedge.i
  %i.ak = extractvalue { ptr, ptr } %i.aj, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = extractvalue { ptr, ptr } %i.aj, 0
  %.not.i.i.i13 = icmp ne ptr %i.al, null
  %i.am = icmp eq ptr %i.ak, %i.d
  %or.cond.i.i.i = select i1 %.not.i.i.i13, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30
  %i.aq = icmp ult ptr %i.an, %i.ap
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.ar = phi i1 [ %i.aq, %bb.f ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ar, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.d) #29
  %i.as = load i64, ptr %i.o, align 8, !tbaa !42
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.o, align 8, !tbaa !42
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 48) #31
  resume { ptr, i32 } %i.au

bb.g:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 48) #31
  br label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.av = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.b ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.av
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !4
  %indvars.iv.next = add i64 %i.av, 1             ; 2 uses
  %4 = and i64 %indvars.iv.next, 4294967295
  %i.bf = icmp ugt i64 %i.t, %4
  br i1 %i.bf, label %.lr.ph, label %._crit_edge, !llvm.loop !64

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit.thread: ; preds = %bb.c, %.thread.i, %bb.g, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit
  %.027 = phi ptr [ %1, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ %1, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE4findERS6_.exit ], [ %1, %bb.a ], [ %i.x, %bb.g ], [ %i.x, %.thread.i ], [ %i.x, %bb.c ]
  ret ptr %.027
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10MallocPlus18memory_reorder_allEPi(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<void *, std::pair<void *const, malloc_plus_memory_entry *>, std::_Select1st<std::pair<void *const, malloc_plus_memory_entry *>>, std::less<void *>>::_Alloc_node", align 8 ; 4 uses
  %3 = alloca %"class.std::map.1", align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit122, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store ptr %3, ptr %2, align 8, !tbaa !49
  %i.i = call noundef ptr @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE7_M_copyILb0ENSB_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2) ; 3 uses
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %.noexc.i.i, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ %i.k, %.noexc.i.i ], [ %i.i, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i, !llvm.loop !52

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.i, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53   ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit, label %bb.c, !llvm.loop !54

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit: ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.e, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load i64, ptr %i.n, align 8, !tbaa !42
  store i64 %i.o, ptr %i.f, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  store ptr %i.i, ptr %i.c, align 8, !tbaa !36
  %.not191232 = icmp eq ptr %.0.i.i.i.i.i.i, %i.b
  br i1 %.not191232, label %_ZNSt6vectorIiSaIiEED2Ev.exit122, label %.lr.ph237

.lr.ph237:                                        ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 21 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph237, %bb.an
  %.sroa.0188.0236 = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph237 ], [ %i.hf, %bb.an ] ; 2 uses
  %.sroa.0175.0235 = phi ptr [ null, %.lr.ph237 ], [ %.sroa.0175.2, %bb.an ] ; 20 uses
  %.sroa.13.0234 = phi ptr [ null, %.lr.ph237 ], [ %.sroa.13.2, %bb.an ] ; 10 uses
  %.sroa.21.0233 = phi ptr [ null, %.lr.ph237 ], [ %.sroa.21.2, %bb.an ] ; 17 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0188.0236, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !41   ; 13 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i.i, label %bb.g, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !30   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  %i.x = icmp ult ptr %i.w, %i.u                  ; 2 uses
  %.19.i.i.i = select i1 %i.x, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.x, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %bb.e, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %bb.e
  %i.y = icmp eq ptr %.19.i.i.i, %i.p
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = icmp ult ptr %i.u, %i.aa
  %spec.select.i.i = select i1 %i.ab, ptr %i.p, ptr %.19.i.i.i
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.f
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.d ], [ %i.p, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ], [ %spec.select.i.i, %bb.f ]
  %i.ac = call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.0.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #29
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 48) #31
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !42
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17
  %i.ah = and i32 %i.ag, 256
  %.not = icmp eq i32 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !14 ; 10 uses
  br i1 %.not, label %bb.w, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = ptrtoint ptr %.sroa.13.0234 to i64      ; 2 uses
  %i.am = ptrtoint ptr %.sroa.0175.0235 to i64    ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = ashr exact i64 %i.an, 2                 ; 6 uses
  %i.ap = icmp ult i64 %i.ao, %i.ak
  br i1 %i.ap, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.aq = sub nuw i64 %i.ak, %i.ao                ; 6 uses
  %i.ar = ptrtoint ptr %.sroa.21.0233 to i64      ; 2 uses
  %i.as = sub i64 %i.ar, %i.al
  %i.at = ashr exact i64 %i.as, 2                 ; 2 uses
  %i.au = icmp ult i64 %i.ao, 2305843009213693952
  call void @llvm.assume(i1 %i.au)
  %i.av = xor i64 %i.ao, 2305843009213693951      ; 2 uses
  %i.aw = icmp ule i64 %i.at, %i.av
  call void @llvm.assume(i1 %i.aw)
  %.not28.i = icmp ult i64 %i.at, %i.aq
  br i1 %.not28.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %.sroa.13.0234, align 4, !tbaa !4
  %i.ax = getelementptr i8, ptr %.sroa.13.0234, i64 4 ; 3 uses
  %i.ay = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i: ; preds = %bb.j
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ay, 2    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %.idx.i.i.i.i.i.i, i1 false), !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.k:                                             ; preds = %bb.i
  %i.bb = icmp ult i64 %i.av, %i.aq
  br i1 %i.bb, label %bb.l, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #30
          to label %.noexc123 unwind label %.loopexit.split-lp

.noexc123:                                        ; preds = %bb.l
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.k
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.aq)
  %i.bc = add nuw nsw i64 %.sroa.speculated.i.i, %i.ao
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bc, i64 2305843009213693951) ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 2
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #32
          to label %.noexc124 unwind label %.loopexit192 ; 4 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.an ; 3 uses
  store i32 0, ptr %i.bg, align 4, !tbaa !4
  %i.bh = add nsw i64 %i.aq, -1                   ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc124
  %i.bj = getelementptr i8, ptr %i.bg, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.bh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.bj, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !4
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc124
  %i.bk = icmp sgt i64 %i.an, 0
  br i1 %i.bk, label %bb.m, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.m:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr align 4 %.sroa.0175.0235, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.m, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0175.0235, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.bl = sub i64 %i.ar, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0235, i64 noundef %i.bl) #31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aq
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bd
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !8
  %.pre269 = load i64, ptr %.pre, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.j, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i
  %i.bo = phi i64 [ %i.ak, %bb.j ], [ %i.ak, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %.pre269, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 7 uses
  %.sroa.21.4 = phi ptr [ %.sroa.21.0233, %bb.j ], [ %.sroa.21.0233, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bn, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 3 uses
  %.sroa.13.3 = phi ptr [ %i.ax, %bb.j ], [ %i.ba, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 3 uses
  %.sroa.0175.4 = phi ptr [ %.sroa.0175.0235, %bb.j ], [ %.sroa.0175.0235, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bf, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 8 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %wide.trip.count = and i64 %i.bo, 2147483647
  %i.br = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %i.bo, 3                    ; 3 uses
  %i.bs = icmp ult i64 %i.br, 3
  br i1 %i.bs, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bo, 2147483644
  br label %.lr.ph

.loopexit192:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0175.4, i64 %i.bv
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0175.4, i64 %i.ca
  %i.cc = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !4
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.1
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0175.4, i64 %i.cf
  %i.ch = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !4
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.2
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0175.4, i64 %i.ck
  %i.cm = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !65

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod375 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod375)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0175.4, i64 %i.cp
  %i.cr = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !66

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %bb.h
  %i.cs = phi i64 [ %i.ak, %bb.h ], [ %i.bo, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.bo, %.lr.ph.epil ], [ %i.bo, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.0233, %bb.h ], [ %.sroa.21.4, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %.sroa.21.4, %.lr.ph.epil ], [ %.sroa.21.4, %.loopexit.loopexit.unr-lcssa ] ; 6 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0234, %bb.h ], [ %.sroa.13.3, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %.sroa.13.3, %.lr.ph.epil ], [ %.sroa.13.3, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.0175.1 = phi ptr [ %.sroa.0175.0235, %bb.h ], [ %.sroa.0175.4, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %.sroa.0175.4, %.lr.ph.epil ], [ %.sroa.0175.4, %.loopexit.loopexit.unr-lcssa ] ; 7 uses
  %i.ct = load ptr, ptr %i.s, align 8, !tbaa !19  ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !16
  %i.cw = mul i64 %i.cv, %i.cs
  %i.cx = call noalias ptr @malloc(i64 noundef %i.cw) #28 ; 6 uses
  %.not239 = icmp eq i64 %i.cs, 0
  br i1 %.not239, label %._crit_edge, label %.lr.ph223

._crit_edge:                                      ; preds = %.lr.ph223, %.loopexit
  %i.cy = invoke noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.ct, ptr noundef %i.cx)
          to label %bb.o unwind label %bb.u       ; 0 uses

.lr.ph223:                                        ; preds = %.loopexit, %.lr.ph223
  %i.cz = phi i64 [ %indvars.iv.next270, %.lr.ph223 ], [ 0, %.loopexit ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0175.1, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cz
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !4
  %indvars.iv.next270 = add i64 %i.cz, 1          ; 2 uses
  %4 = and i64 %indvars.iv.next270, 4294967295
  %i.dj = icmp ugt i64 %i.cs, %4
  br i1 %i.dj, label %.lr.ph223, label %._crit_edge, !llvm.loop !68

bb.o:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ct) #29
  store ptr %i.cx, ptr %i.s, align 8, !tbaa !19
  %i.dk = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dk, %bb.o ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.o ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !30
  %i.dn = icmp ult ptr %i.dm, %i.cx               ; 2 uses
  %.19.i.i.i.i = select i1 %i.dn, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.dn, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.do = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.do, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !39
  %i.dr = icmp ult ptr %i.cx, %i.dq
  br i1 %i.dr, label %.critedge.i, label %bb.an

.critedge.i:                                      ; preds = %bb.p, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %bb.o
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.p ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.p, %bb.o ]
  %i.ds = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32
          to label %.noexc127 unwind label %bb.v  ; 5 uses

.noexc127:                                        ; preds = %.critedge.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32 ; 3 uses
  store ptr %i.cx, ptr %i.dt, align 8, !tbaa !39
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  store ptr %i.s, ptr %i.du, align 8, !tbaa !41
  %i.dv = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.dt)
          to label %bb.q unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.q:                                             ; preds = %.noexc127
  %i.dw = extractvalue { ptr, ptr } %i.dv, 1      ; 4 uses
  %.not.i125 = icmp eq ptr %i.dw, null
  br i1 %.not.i125, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = extractvalue { ptr, ptr } %i.dv, 0
  %.not.i.i.i126 = icmp ne ptr %i.dx, null
  %i.dy = icmp eq ptr %i.dw, %i.p
  %or.cond.i.i.i = select i1 %.not.i.i.i126, i1 true, i1 %i.dy
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !30
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !30
  %i.ec = icmp ult ptr %i.dz, %i.eb
  br label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r
  %i.ed = phi i1 [ %i.ec, %bb.s ], [ true, %bb.r ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ed, ptr noundef nonnull %i.ds, ptr noundef nonnull %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #29
  %i.ee = load i64, ptr %i.q, align 8, !tbaa !42
  %i.ef = add i64 %i.ee, 1
  store i64 %i.ef, ptr %i.q, align 8, !tbaa !42
  br label %bb.an

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc127
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 48) #31
  br label %.body

bb.t:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 48) #31
  br label %bb.an

bb.u:                                             ; preds = %._crit_edge
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %.critedge.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.g
  %i.ej = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !16 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 8
  %i.em = load ptr, ptr %i.s, align 8, !tbaa !19  ; 5 uses
  %.not241 = icmp eq i64 %i.ak, 0                 ; 2 uses
  br i1 %i.el, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.en = shl i64 %i.ak, 3
  %i.eo = call noalias ptr @malloc(i64 noundef %i.en) #28 ; 5 uses
  br i1 %.not241, label %._crit_edge231, label %.lr.ph230

._crit_edge231:                                   ; preds = %.lr.ph230, %bb.x
  call void @free(ptr noundef %i.em) #29
  store ptr %i.eo, ptr %i.s, align 8, !tbaa !19
  %i.ep = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i82 = icmp eq ptr %i.ep, null
  br i1 %.not10.i.i.i.i82, label %.critedge.i96, label %.lr.ph.i.i.i.i83

.lr.ph.i.i.i.i83:                                 ; preds = %._crit_edge231, %.lr.ph.i.i.i.i83
  %.012.i.i.i.i84 = phi ptr [ %.1.i.i.i.i89, %.lr.ph.i.i.i.i83 ], [ %i.ep, %._crit_edge231 ] ; 3 uses
  %.0811.i.i.i.i85 = phi ptr [ %.19.i.i.i.i86, %.lr.ph.i.i.i.i83 ], [ %i.p, %._crit_edge231 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i84, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !30
  %i.es = icmp ult ptr %i.er, %i.eo               ; 2 uses
  %.19.i.i.i.i86 = select i1 %i.es, ptr %.0811.i.i.i.i85, ptr %.012.i.i.i.i84 ; 5 uses
  %.1.in.v.i.i.i.i87 = select i1 %i.es, i64 24, i64 16
  %.1.in.i.i.i.i88 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i84, i64 %.1.in.v.i.i.i.i87
  %.1.i.i.i.i89 = load ptr, ptr %.1.in.i.i.i.i88, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i90 = icmp eq ptr %.1.i.i.i.i89, null
  br i1 %.not.i.i.i.i90, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i91, label %.lr.ph.i.i.i.i83, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i91: ; preds = %.lr.ph.i.i.i.i83
  %i.et = icmp eq ptr %.19.i.i.i.i86, %i.p
  br i1 %i.et, label %.critedge.i96, label %bb.y

bb.y:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i91
  %i.eu = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i86, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !39
  %i.ew = icmp ult ptr %i.eo, %i.ev
  br i1 %i.ew, label %.critedge.i96, label %bb.an

.critedge.i96:                                    ; preds = %bb.y, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i91, %._crit_edge231
  %.08.lcssa.i.i.i14.i97 = phi ptr [ %.19.i.i.i.i86, %bb.y ], [ %.19.i.i.i.i86, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i91 ], [ %i.p, %._crit_edge231 ]
  %i.ex = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32
          to label %.noexc134 unwind label %bb.ad ; 5 uses

.noexc134:                                        ; preds = %.critedge.i96
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 3 uses
  store ptr %i.eo, ptr %i.ey, align 8, !tbaa !39
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store ptr %i.s, ptr %i.ez, align 8, !tbaa !41
  %i.fa = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i97, ptr noundef nonnull align 8 dereferenceable(8) %i.ey)
          to label %bb.z unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128 ; 2 uses

bb.z:                                             ; preds = %.noexc134
  %i.fb = extractvalue { ptr, ptr } %i.fa, 1      ; 4 uses
  %.not.i129 = icmp eq ptr %i.fb, null
  br i1 %.not.i129, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = extractvalue { ptr, ptr } %i.fa, 0
  %.not.i.i.i130 = icmp ne ptr %i.fc, null
  %i.fd = icmp eq ptr %i.fb, %i.p
  %or.cond.i.i.i131 = select i1 %.not.i.i.i130, i1 true, i1 %i.fd
  br i1 %or.cond.i.i.i131, label %.thread.i132, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fe = load ptr, ptr %i.ey, align 8, !tbaa !30
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !30
  %i.fh = icmp ult ptr %i.fe, %i.fg
  br label %.thread.i132

.thread.i132:                                     ; preds = %bb.ab, %bb.aa
  %i.fi = phi i1 [ %i.fh, %bb.ab ], [ true, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fi, ptr noundef nonnull %i.ex, ptr noundef nonnull %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #29
  %i.fj = load i64, ptr %i.q, align 8, !tbaa !42
  %i.fk = add i64 %i.fj, 1
  store i64 %i.fk, ptr %i.q, align 8, !tbaa !42
  br label %bb.an

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128: ; preds = %.noexc134
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 48) #31
  br label %.body

bb.ac:                                            ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %i.ex, i64 noundef 48) #31
  br label %bb.an

.lr.ph230:                                        ; preds = %bb.x, %.lr.ph230
  %i.fm = phi i64 [ %indvars.iv.next277, %.lr.ph230 ], [ 0, %bb.x ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !57
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.fm
  store double %i.fr, ptr %i.fs, align 8, !tbaa !57
  %indvars.iv.next277 = add i64 %i.fm, 1          ; 2 uses
  %5 = and i64 %indvars.iv.next277, 4294967295
  %i.ft = icmp ugt i64 %i.ak, %5
  br i1 %i.ft, label %.lr.ph230, label %._crit_edge231, !llvm.loop !69

bb.ad:                                            ; preds = %.critedge.i96
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.w
  %i.fv = mul i64 %i.ak, %i.ek
  %i.fw = call noalias ptr @malloc(i64 noundef %i.fv) #28 ; 6 uses
  br i1 %.not241, label %._crit_edge227, label %.lr.ph226

._crit_edge227:                                   ; preds = %.lr.ph226, %bb.ae
  %i.fx = invoke noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.em, ptr noundef %i.fw)
          to label %bb.af unwind label %bb.al     ; 0 uses

.lr.ph226:                                        ; preds = %bb.ae, %.lr.ph226
  %i.fy = phi i64 [ %indvars.iv.next273, %.lr.ph226 ], [ 0, %bb.ae ] ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.gb
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !60
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.fy
  store float %i.gd, ptr %i.ge, align 4, !tbaa !60
  %indvars.iv.next273 = add i64 %i.fy, 1          ; 2 uses
  %6 = and i64 %indvars.iv.next273, 4294967295
  %i.gf = icmp ugt i64 %i.ak, %6
  br i1 %i.gf, label %.lr.ph226, label %._crit_edge227, !llvm.loop !70

bb.af:                                            ; preds = %._crit_edge227
  call void @free(ptr noundef %i.em) #29
  store ptr %i.fw, ptr %i.s, align 8, !tbaa !19
  %i.gg = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i100 = icmp eq ptr %i.gg, null
  br i1 %.not10.i.i.i.i100, label %.critedge.i114, label %.lr.ph.i.i.i.i101

.lr.ph.i.i.i.i101:                                ; preds = %bb.af, %.lr.ph.i.i.i.i101
  %.012.i.i.i.i102 = phi ptr [ %.1.i.i.i.i107, %.lr.ph.i.i.i.i101 ], [ %i.gg, %bb.af ] ; 3 uses
  %.0811.i.i.i.i103 = phi ptr [ %.19.i.i.i.i104, %.lr.ph.i.i.i.i101 ], [ %i.p, %bb.af ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i102, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !30
  %i.gj = icmp ult ptr %i.gi, %i.fw               ; 2 uses
  %.19.i.i.i.i104 = select i1 %i.gj, ptr %.0811.i.i.i.i103, ptr %.012.i.i.i.i102 ; 5 uses
  %.1.in.v.i.i.i.i105 = select i1 %i.gj, i64 24, i64 16
  %.1.in.i.i.i.i106 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i102, i64 %.1.in.v.i.i.i.i105
  %.1.i.i.i.i107 = load ptr, ptr %.1.in.i.i.i.i106, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i108 = icmp eq ptr %.1.i.i.i.i107, null
  br i1 %.not.i.i.i.i108, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i109, label %.lr.ph.i.i.i.i101, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i109: ; preds = %.lr.ph.i.i.i.i101
  %i.gk = icmp eq ptr %.19.i.i.i.i104, %i.p
  br i1 %i.gk, label %.critedge.i114, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i109
  %i.gl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i104, i64 32
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !39
  %i.gn = icmp ult ptr %i.fw, %i.gm
  br i1 %i.gn, label %.critedge.i114, label %bb.an

.critedge.i114:                                   ; preds = %bb.ag, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i109, %bb.af
  %.08.lcssa.i.i.i14.i115 = phi ptr [ %.19.i.i.i.i104, %bb.ag ], [ %.19.i.i.i.i104, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i109 ], [ %i.p, %bb.af ]
  %i.go = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32
          to label %.noexc144 unwind label %bb.am ; 5 uses

.noexc144:                                        ; preds = %.critedge.i114
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32 ; 3 uses
  store ptr %i.fw, ptr %i.gp, align 8, !tbaa !39
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 40
  store ptr %i.s, ptr %i.gq, align 8, !tbaa !41
  %i.gr = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i115, ptr noundef nonnull align 8 dereferenceable(8) %i.gp)
          to label %bb.ah unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ; 2 uses

bb.ah:                                            ; preds = %.noexc144
  %i.gs = extractvalue { ptr, ptr } %i.gr, 1      ; 4 uses
  %.not.i139 = icmp eq ptr %i.gs, null
  br i1 %.not.i139, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gt = extractvalue { ptr, ptr } %i.gr, 0
  %.not.i.i.i140 = icmp ne ptr %i.gt, null
  %i.gu = icmp eq ptr %i.gs, %i.p
  %or.cond.i.i.i141 = select i1 %.not.i.i.i140, i1 true, i1 %i.gu
  br i1 %or.cond.i.i.i141, label %.thread.i142, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !30
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !30
  %i.gy = icmp ult ptr %i.gv, %i.gx
  br label %.thread.i142

.thread.i142:                                     ; preds = %bb.aj, %bb.ai
  %i.gz = phi i1 [ %i.gy, %bb.aj ], [ true, %bb.ai ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gz, ptr noundef nonnull %i.go, ptr noundef nonnull %i.gs, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #29
  %i.ha = load i64, ptr %i.q, align 8, !tbaa !42
  %i.hb = add i64 %i.ha, 1
  store i64 %i.hb, ptr %i.q, align 8, !tbaa !42
  br label %bb.an

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138: ; preds = %.noexc144
  %i.hc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef 48) #31
  br label %.body

bb.ak:                                            ; preds = %bb.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef 48) #31
  br label %bb.an

bb.al:                                            ; preds = %._crit_edge227
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %.critedge.i114
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %.thread.i142, %bb.ak, %bb.ag, %.thread.i132, %bb.ac, %bb.y, %.thread.i, %bb.t, %bb.p
  %.sroa.21.2 = phi ptr [ %.sroa.21.1, %.thread.i ], [ %.sroa.21.0233, %.thread.i132 ], [ %.sroa.21.1, %bb.p ], [ %.sroa.21.1, %bb.t ], [ %.sroa.21.0233, %bb.y ], [ %.sroa.21.0233, %bb.ac ], [ %.sroa.21.0233, %bb.ag ], [ %.sroa.21.0233, %bb.ak ], [ %.sroa.21.0233, %.thread.i142 ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.1, %.thread.i ], [ %.sroa.13.0234, %.thread.i132 ], [ %.sroa.13.1, %bb.p ], [ %.sroa.13.1, %bb.t ], [ %.sroa.13.0234, %bb.y ], [ %.sroa.13.0234, %bb.ac ], [ %.sroa.13.0234, %bb.ag ], [ %.sroa.13.0234, %bb.ak ], [ %.sroa.13.0234, %.thread.i142 ]
  %.sroa.0175.2 = phi ptr [ %.sroa.0175.1, %.thread.i ], [ %.sroa.0175.0235, %.thread.i132 ], [ %.sroa.0175.1, %bb.p ], [ %.sroa.0175.1, %bb.t ], [ %.sroa.0175.0235, %bb.y ], [ %.sroa.0175.0235, %bb.ac ], [ %.sroa.0175.0235, %bb.ag ], [ %.sroa.0175.0235, %bb.ak ], [ %.sroa.0175.0235, %.thread.i142 ] ; 4 uses
  %i.hf = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0188.0236) #34 ; 2 uses
  %.not191 = icmp eq ptr %i.hf, %i.b
  br i1 %.not191, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.d, !llvm.loop !71

.body:                                            ; preds = %.loopexit192, %.loopexit.split-lp, %bb.v, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i, %bb.u, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128, %bb.ad, %bb.am, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138, %bb.al
  %.sroa.21.3 = phi ptr [ %.sroa.21.1, %bb.u ], [ %.sroa.21.0233, %bb.ad ], [ %.sroa.21.0233, %bb.al ], [ %.sroa.21.1, %bb.v ], [ %.sroa.21.1, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %.sroa.21.0233, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128 ], [ %.sroa.21.0233, %bb.am ], [ %.sroa.21.0233, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ], [ %.sroa.21.0233, %.loopexit192 ], [ %.sroa.21.0233, %.loopexit.split-lp ]
  %.sroa.0175.3 = phi ptr [ %.sroa.0175.1, %bb.u ], [ %.sroa.0175.0235, %bb.ad ], [ %.sroa.0175.0235, %bb.al ], [ %.sroa.0175.1, %bb.v ], [ %.sroa.0175.1, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %.sroa.0175.0235, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128 ], [ %.sroa.0175.0235, %bb.am ], [ %.sroa.0175.0235, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ], [ %.sroa.0175.0235, %.loopexit192 ], [ %.sroa.0175.0235, %.loopexit.split-lp ] ; 3 uses
  %.pn76.pn = phi { ptr, i32 } [ %i.eh, %bb.u ], [ %i.fu, %bb.ad ], [ %i.hd, %bb.al ], [ %i.ei, %bb.v ], [ %i.eg, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %i.fl, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128 ], [ %i.he, %bb.am ], [ %i.hc, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ], [ %lpad.loopexit, %.loopexit192 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i118 = icmp eq ptr %.sroa.0175.3, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %.body
  %i.hg = ptrtoint ptr %.sroa.21.3 to i64
  %i.hh = ptrtoint ptr %.sroa.0175.3 to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.3, i64 noundef %i.hi) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.body, %bb.ao
  call void @_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn76.pn

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.an
  %.not.i.i.i121 = icmp eq ptr %.sroa.0175.2, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIiSaIiEED2Ev.exit122, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.hj = ptrtoint ptr %.sroa.21.2 to i64
  %i.hk = ptrtoint ptr %.sroa.0175.2 to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.2, i64 noundef %i.hl) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit122

_ZNSt6vectorIiSaIiEED2Ev.exit122:                 ; preds = %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.ap
  %i.hm = load ptr, ptr %i.c, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.hm)
          to label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit122
  %i.hn = landingpad { ptr, i32 }
          catch ptr null
  %i.ho = extractvalue { ptr, i32 } %i.hn, 0
  call void @__clang_call_terminate(ptr %i.ho) #35
  unreachable

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit122
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readnone captures(address) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"struct.std::pair.24", align 8     ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 16 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.f, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp ult ptr %i.h, %1                    ; 2 uses
  %.19.i.i.i = select i1 %i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.i, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !37

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.j, label %.lr.ph.i.i.i33, label %bb.b

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30
  %i.m = icmp ult ptr %1, %i.l
  %spec.select.i.i = select i1 %i.m, ptr %i.f, ptr %.19.i.i.i
  br label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i, %bb.b
  %.sroa.0.0.i.i.ph = phi ptr [ %spec.select.i.i, %bb.b ], [ %i.f, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS2_.exit.i.i ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i33
  %.012.i.i.i34 = phi ptr [ %i.e, %.lr.ph.i.i.i33 ], [ %.1.i.i.i39, %bb.c ] ; 3 uses
  %.0811.i.i.i35 = phi ptr [ %i.f, %.lr.ph.i.i.i33 ], [ %.19.i.i.i36, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = icmp ult ptr %i.o, %2                    ; 2 uses
  %.19.i.i.i36 = select i1 %i.p, ptr %.0811.i.i.i35, ptr %.012.i.i.i34 ; 4 uses
  %.1.in.v.i.i.i37 = select i1 %i.p, i64 24, i64 16
  %.1.in.i.i.i38 = getelementptr inbounds nuw i8, ptr %.012.i.i.i34, i64 %.1.in.v.i.i.i37
  %.1.i.i.i39 = load ptr, ptr %.1.in.i.i.i38, align 8, !tbaa !36 ; 2 uses
end_hunk_0
