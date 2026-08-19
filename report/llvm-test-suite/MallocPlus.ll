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
  %indvars.iv = phi i64 [ %4, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.028 = phi i32 [ %3, %.lr.ph ], [ 0, %bb.b ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !57
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store double %i.az, ptr %i.ba, align 8, !tbaa !57
  %3 = add i32 %.028, 1                           ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.bb = icmp ugt i64 %i.t, %4
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !59

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
  %indvars.iv = phi i64 [ %4, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.028 = phi i32 [ %3, %.lr.ph ], [ 0, %bb.b ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ax
  %i.az = load float, ptr %i.ay, align 4, !tbaa !60
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store float %i.az, ptr %i.ba, align 4, !tbaa !60
  %3 = add i32 %.028, 1                           ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.bb = icmp ugt i64 %i.t, %4
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !62

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
  %indvars.iv = phi i64 [ %4, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.028 = phi i32 [ %3, %.lr.ph ], [ 0, %bb.b ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !4
  %3 = add i32 %.028, 1                           ; 2 uses
  %4 = zext i32 %3 to i64                         ; 2 uses
  %i.bb = icmp ugt i64 %i.t, %4
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !63

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
  %indvars.iv = phi i64 [ %5, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.029 = phi i32 [ %4, %.lr.ph ], [ 0, %bb.b ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !4
  %4 = add i32 %.029, 1                           ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.be = icmp ugt i64 %i.t, %5
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !64

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
  %.sroa.0188.0236 = phi ptr [ %.0.i.i.i.i.i.i, %.lr.ph237 ], [ %i.hc, %bb.an ] ; 2 uses
  %.sroa.21.0235 = phi ptr [ null, %.lr.ph237 ], [ %.sroa.21.2, %bb.an ] ; 17 uses
  %.sroa.13.0234 = phi ptr [ null, %.lr.ph237 ], [ %.sroa.13.2, %bb.an ] ; 10 uses
  %.sroa.0175.0233 = phi ptr [ null, %.lr.ph237 ], [ %.sroa.0175.2, %bb.an ] ; 20 uses
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
  %i.am = ptrtoint ptr %.sroa.0175.0233 to i64    ; 2 uses
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = ashr exact i64 %i.an, 2                 ; 6 uses
  %i.ap = icmp ult i64 %i.ao, %i.ak
  br i1 %i.ap, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.aq = sub nuw i64 %i.ak, %i.ao                ; 6 uses
  %i.ar = ptrtoint ptr %.sroa.21.0235 to i64      ; 2 uses
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
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bf, ptr align 4 %.sroa.0175.0233, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.m, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i
  %.not.i35.i = icmp eq ptr %.sroa.0175.0233, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.bl = sub i64 %i.ar, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0233, i64 noundef %i.bl) #31
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.aq
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bd
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !8
  %.pre280 = load i64, ptr %.pre, align 8, !tbaa !14
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.j, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i
  %i.bo = phi i64 [ %i.ak, %bb.j ], [ %i.ak, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %.pre280, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 7 uses
  %.sroa.0175.4 = phi ptr [ %.sroa.0175.0233, %bb.j ], [ %.sroa.0175.0233, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bf, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 8 uses
  %.sroa.13.3 = phi ptr [ %i.ax, %bb.j ], [ %i.ba, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bm, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 3 uses
  %.sroa.21.4 = phi ptr [ %.sroa.21.0235, %bb.j ], [ %.sroa.21.0235, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i ], [ %i.bn, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 3 uses
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
  %lcmp.mod386 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod386)
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
  %.sroa.0175.1 = phi ptr [ %.sroa.0175.0233, %bb.h ], [ %.sroa.0175.4, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %.sroa.0175.4, %.lr.ph.epil ], [ %.sroa.0175.4, %.loopexit.loopexit.unr-lcssa ] ; 7 uses
  %.sroa.13.1 = phi ptr [ %.sroa.13.0234, %bb.h ], [ %.sroa.13.3, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %.sroa.13.3, %.lr.ph.epil ], [ %.sroa.13.3, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.21.1 = phi ptr [ %.sroa.21.0235, %bb.h ], [ %.sroa.21.4, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %.sroa.21.4, %.lr.ph.epil ], [ %.sroa.21.4, %.loopexit.loopexit.unr-lcssa ] ; 6 uses
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
  %indvars.iv269 = phi i64 [ %5, %.lr.ph223 ], [ 0, %.loopexit ] ; 2 uses
  %.070222 = phi i32 [ %4, %.lr.ph223 ], [ 0, %.loopexit ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv269
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !4
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0175.1, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv269
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !4
  %4 = add i32 %.070222, 1                        ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.di = icmp ugt i64 %i.cs, %5
  br i1 %i.di, label %.lr.ph223, label %._crit_edge, !llvm.loop !68

bb.o:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.ct) #29
  store ptr %i.cx, ptr %i.s, align 8, !tbaa !19
  %i.dj = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.dj, %bb.o ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %bb.o ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !30
  %i.dm = icmp ult ptr %i.dl, %i.cx               ; 2 uses
  %.19.i.i.i.i = select i1 %i.dm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.dm, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.dn = icmp eq ptr %.19.i.i.i.i, %i.p
  br i1 %i.dn, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !39
  %i.dq = icmp ult ptr %i.cx, %i.dp
  br i1 %i.dq, label %.critedge.i, label %bb.an

.critedge.i:                                      ; preds = %bb.p, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i, %bb.o
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.p ], [ %.19.i.i.i.i, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i ], [ %i.p, %bb.o ]
  %i.dr = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32
          to label %.noexc127 unwind label %bb.v  ; 5 uses

.noexc127:                                        ; preds = %.critedge.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32 ; 3 uses
  store ptr %i.cx, ptr %i.ds, align 8, !tbaa !39
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 40
  store ptr %i.s, ptr %i.dt, align 8, !tbaa !41
  %i.du = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ds)
          to label %bb.q unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.q:                                             ; preds = %.noexc127
  %i.dv = extractvalue { ptr, ptr } %i.du, 1      ; 4 uses
  %.not.i125 = icmp eq ptr %i.dv, null
  br i1 %.not.i125, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = extractvalue { ptr, ptr } %i.du, 0
  %.not.i.i.i126 = icmp ne ptr %i.dw, null
  %i.dx = icmp eq ptr %i.dv, %i.p
  %or.cond.i.i.i = select i1 %.not.i.i.i126, i1 true, i1 %i.dx
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dy = load ptr, ptr %i.ds, align 8, !tbaa !30
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !30
  %i.eb = icmp ult ptr %i.dy, %i.ea
  br label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r
  %i.ec = phi i1 [ %i.eb, %bb.s ], [ true, %bb.r ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ec, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #29
  %i.ed = load i64, ptr %i.q, align 8, !tbaa !42
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.q, align 8, !tbaa !42
  br label %bb.an

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.noexc127
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 48) #31
  br label %.body

bb.t:                                             ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef 48) #31
  br label %bb.an

bb.u:                                             ; preds = %._crit_edge
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %.critedge.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %bb.g
  %i.ei = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !16 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 8
  %i.el = load ptr, ptr %i.s, align 8, !tbaa !19  ; 5 uses
  %.not241 = icmp eq i64 %i.ak, 0                 ; 2 uses
  br i1 %i.ek, label %bb.x, label %bb.ae

bb.x:                                             ; preds = %bb.w
  %i.em = shl i64 %i.ak, 3
  %i.en = call noalias ptr @malloc(i64 noundef %i.em) #28 ; 5 uses
  br i1 %.not241, label %._crit_edge231, label %.lr.ph230

._crit_edge231:                                   ; preds = %.lr.ph230, %bb.x
  call void @free(ptr noundef %i.el) #29
  store ptr %i.en, ptr %i.s, align 8, !tbaa !19
  %i.eo = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i82 = icmp eq ptr %i.eo, null
  br i1 %.not10.i.i.i.i82, label %.critedge.i96, label %.lr.ph.i.i.i.i83

.lr.ph.i.i.i.i83:                                 ; preds = %._crit_edge231, %.lr.ph.i.i.i.i83
  %.012.i.i.i.i84 = phi ptr [ %.1.i.i.i.i89, %.lr.ph.i.i.i.i83 ], [ %i.eo, %._crit_edge231 ] ; 3 uses
  %.0811.i.i.i.i85 = phi ptr [ %.19.i.i.i.i86, %.lr.ph.i.i.i.i83 ], [ %i.p, %._crit_edge231 ]
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i84, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !30
  %i.er = icmp ult ptr %i.eq, %i.en               ; 2 uses
  %.19.i.i.i.i86 = select i1 %i.er, ptr %.0811.i.i.i.i85, ptr %.012.i.i.i.i84 ; 5 uses
  %.1.in.v.i.i.i.i87 = select i1 %i.er, i64 24, i64 16
  %.1.in.i.i.i.i88 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i84, i64 %.1.in.v.i.i.i.i87
  %.1.i.i.i.i89 = load ptr, ptr %.1.in.i.i.i.i88, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i90 = icmp eq ptr %.1.i.i.i.i89, null
  br i1 %.not.i.i.i.i90, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i91, label %.lr.ph.i.i.i.i83, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i91: ; preds = %.lr.ph.i.i.i.i83
  %i.es = icmp eq ptr %.19.i.i.i.i86, %i.p
  br i1 %i.es, label %.critedge.i96, label %bb.y

bb.y:                                             ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i91
  %i.et = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i86, i64 32
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !39
  %i.ev = icmp ult ptr %i.en, %i.eu
  br i1 %i.ev, label %.critedge.i96, label %bb.an

.critedge.i96:                                    ; preds = %bb.y, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i91, %._crit_edge231
  %.08.lcssa.i.i.i14.i97 = phi ptr [ %.19.i.i.i.i86, %bb.y ], [ %.19.i.i.i.i86, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i91 ], [ %i.p, %._crit_edge231 ]
  %i.ew = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32
          to label %.noexc134 unwind label %bb.ad ; 5 uses

.noexc134:                                        ; preds = %.critedge.i96
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 3 uses
  store ptr %i.en, ptr %i.ex, align 8, !tbaa !39
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store ptr %i.s, ptr %i.ey, align 8, !tbaa !41
  %i.ez = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i97, ptr noundef nonnull align 8 dereferenceable(8) %i.ex)
          to label %bb.z unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128 ; 2 uses

bb.z:                                             ; preds = %.noexc134
  %i.fa = extractvalue { ptr, ptr } %i.ez, 1      ; 4 uses
  %.not.i129 = icmp eq ptr %i.fa, null
  br i1 %.not.i129, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = extractvalue { ptr, ptr } %i.ez, 0
  %.not.i.i.i130 = icmp ne ptr %i.fb, null
  %i.fc = icmp eq ptr %i.fa, %i.p
  %or.cond.i.i.i131 = select i1 %.not.i.i.i130, i1 true, i1 %i.fc
  br i1 %or.cond.i.i.i131, label %.thread.i132, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !30
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !30
  %i.fg = icmp ult ptr %i.fd, %i.ff
  br label %.thread.i132

.thread.i132:                                     ; preds = %bb.ab, %bb.aa
  %i.fh = phi i1 [ %i.fg, %bb.ab ], [ true, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fh, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.fa, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #29
  %i.fi = load i64, ptr %i.q, align 8, !tbaa !42
  %i.fj = add i64 %i.fi, 1
  store i64 %i.fj, ptr %i.q, align 8, !tbaa !42
  br label %bb.an

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128: ; preds = %.noexc134
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef 48) #31
  br label %.body

bb.ac:                                            ; preds = %bb.z
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef 48) #31
  br label %bb.an

.lr.ph230:                                        ; preds = %bb.x, %.lr.ph230
  %indvars.iv276 = phi i64 [ %7, %.lr.ph230 ], [ 0, %bb.x ] ; 2 uses
  %.069228 = phi i32 [ %6, %.lr.ph230 ], [ 0, %bb.x ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv276
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !57
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv276
  store double %i.fp, ptr %i.fq, align 8, !tbaa !57
  %6 = add i32 %.069228, 1                        ; 2 uses
  %7 = zext i32 %6 to i64                         ; 2 uses
  %i.fr = icmp ugt i64 %i.ak, %7
  br i1 %i.fr, label %.lr.ph230, label %._crit_edge231, !llvm.loop !69

bb.ad:                                            ; preds = %.critedge.i96
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.w
  %i.ft = mul i64 %i.ak, %i.ej
  %i.fu = call noalias ptr @malloc(i64 noundef %i.ft) #28 ; 6 uses
  br i1 %.not241, label %._crit_edge227, label %.lr.ph226

._crit_edge227:                                   ; preds = %.lr.ph226, %bb.ae
  %i.fv = invoke noundef ptr @_ZN10MallocPlus14memory_replaceEPvS0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.el, ptr noundef %i.fu)
          to label %bb.af unwind label %bb.al     ; 0 uses

.lr.ph226:                                        ; preds = %bb.ae, %.lr.ph226
  %indvars.iv272 = phi i64 [ %9, %.lr.ph226 ], [ 0, %bb.ae ] ; 2 uses
  %.063224 = phi i32 [ %8, %.lr.ph226 ], [ 0, %bb.ae ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv272
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !4
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.fy
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !60
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv272
  store float %i.ga, ptr %i.gb, align 4, !tbaa !60
  %8 = add i32 %.063224, 1                        ; 2 uses
  %9 = zext i32 %8 to i64                         ; 2 uses
  %i.gc = icmp ugt i64 %i.ak, %9
  br i1 %i.gc, label %.lr.ph226, label %._crit_edge227, !llvm.loop !70

bb.af:                                            ; preds = %._crit_edge227
  call void @free(ptr noundef %i.el) #29
  store ptr %i.fu, ptr %i.s, align 8, !tbaa !19
  %i.gd = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %.not10.i.i.i.i100 = icmp eq ptr %i.gd, null
  br i1 %.not10.i.i.i.i100, label %.critedge.i114, label %.lr.ph.i.i.i.i101

.lr.ph.i.i.i.i101:                                ; preds = %bb.af, %.lr.ph.i.i.i.i101
  %.012.i.i.i.i102 = phi ptr [ %.1.i.i.i.i107, %.lr.ph.i.i.i.i101 ], [ %i.gd, %bb.af ] ; 3 uses
  %.0811.i.i.i.i103 = phi ptr [ %.19.i.i.i.i104, %.lr.ph.i.i.i.i101 ], [ %i.p, %bb.af ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i102, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !30
  %i.gg = icmp ult ptr %i.gf, %i.fu               ; 2 uses
  %.19.i.i.i.i104 = select i1 %i.gg, ptr %.0811.i.i.i.i103, ptr %.012.i.i.i.i102 ; 5 uses
  %.1.in.v.i.i.i.i105 = select i1 %i.gg, i64 24, i64 16
  %.1.in.i.i.i.i106 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i102, i64 %.1.in.v.i.i.i.i105
  %.1.i.i.i.i107 = load ptr, ptr %.1.in.i.i.i.i106, align 8, !tbaa !36 ; 2 uses
  %.not.i.i.i.i108 = icmp eq ptr %.1.i.i.i.i107, null
  br i1 %.not.i.i.i.i108, label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i109, label %.lr.ph.i.i.i.i101, !llvm.loop !37

_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i109: ; preds = %.lr.ph.i.i.i.i101
  %i.gh = icmp eq ptr %.19.i.i.i.i104, %i.p
  br i1 %i.gh, label %.critedge.i114, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i109
  %i.gi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i104, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !39
  %i.gk = icmp ult ptr %i.fu, %i.gj
  br i1 %i.gk, label %.critedge.i114, label %bb.an

.critedge.i114:                                   ; preds = %bb.ag, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i109, %bb.af
  %.08.lcssa.i.i.i14.i115 = phi ptr [ %.19.i.i.i.i104, %bb.ag ], [ %.19.i.i.i.i104, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEE11lower_boundERS6_.exit.i109 ], [ %i.p, %bb.af ]
  %i.gl = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32
          to label %.noexc144 unwind label %bb.am ; 5 uses

.noexc144:                                        ; preds = %.critedge.i114
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 3 uses
  store ptr %i.fu, ptr %i.gm, align 8, !tbaa !39
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  store ptr %i.s, ptr %i.gn, align 8, !tbaa !41
  %i.go = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr %.08.lcssa.i.i.i14.i115, ptr noundef nonnull align 8 dereferenceable(8) %i.gm)
          to label %bb.ah unwind label %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ; 2 uses

bb.ah:                                            ; preds = %.noexc144
  %i.gp = extractvalue { ptr, ptr } %i.go, 1      ; 4 uses
  %.not.i139 = icmp eq ptr %i.gp, null
  br i1 %.not.i139, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gq = extractvalue { ptr, ptr } %i.go, 0
  %.not.i.i.i140 = icmp ne ptr %i.gq, null
  %i.gr = icmp eq ptr %i.gp, %i.p
  %or.cond.i.i.i141 = select i1 %.not.i.i.i140, i1 true, i1 %i.gr
  br i1 %or.cond.i.i.i141, label %.thread.i142, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !30
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !30
  %i.gv = icmp ult ptr %i.gs, %i.gu
  br label %.thread.i142

.thread.i142:                                     ; preds = %bb.aj, %bb.ai
  %i.gw = phi i1 [ %i.gv, %bb.aj ], [ true, %bb.ai ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gw, ptr noundef nonnull %i.gl, ptr noundef nonnull %i.gp, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #29
  %i.gx = load i64, ptr %i.q, align 8, !tbaa !42
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.q, align 8, !tbaa !42
  br label %bb.an

_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138: ; preds = %.noexc144
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 48) #31
  br label %.body

bb.ak:                                            ; preds = %bb.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef 48) #31
  br label %bb.an

bb.al:                                            ; preds = %._crit_edge227
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %.critedge.i114
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %.thread.i142, %bb.ak, %bb.ag, %.thread.i132, %bb.ac, %bb.y, %.thread.i, %bb.t, %bb.p
  %.sroa.0175.2 = phi ptr [ %.sroa.0175.1, %.thread.i ], [ %.sroa.0175.0233, %.thread.i132 ], [ %.sroa.0175.1, %bb.p ], [ %.sroa.0175.1, %bb.t ], [ %.sroa.0175.0233, %bb.y ], [ %.sroa.0175.0233, %bb.ac ], [ %.sroa.0175.0233, %bb.ag ], [ %.sroa.0175.0233, %bb.ak ], [ %.sroa.0175.0233, %.thread.i142 ] ; 4 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.1, %.thread.i ], [ %.sroa.13.0234, %.thread.i132 ], [ %.sroa.13.1, %bb.p ], [ %.sroa.13.1, %bb.t ], [ %.sroa.13.0234, %bb.y ], [ %.sroa.13.0234, %bb.ac ], [ %.sroa.13.0234, %bb.ag ], [ %.sroa.13.0234, %bb.ak ], [ %.sroa.13.0234, %.thread.i142 ]
  %.sroa.21.2 = phi ptr [ %.sroa.21.1, %.thread.i ], [ %.sroa.21.0235, %.thread.i132 ], [ %.sroa.21.1, %bb.p ], [ %.sroa.21.1, %bb.t ], [ %.sroa.21.0235, %bb.y ], [ %.sroa.21.0235, %bb.ac ], [ %.sroa.21.0235, %bb.ag ], [ %.sroa.21.0235, %bb.ak ], [ %.sroa.21.0235, %.thread.i142 ] ; 2 uses
  %i.hc = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0188.0236) #34 ; 2 uses
  %.not191 = icmp eq ptr %i.hc, %i.b
  br i1 %.not191, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %bb.d, !llvm.loop !71

.body:                                            ; preds = %.loopexit192, %.loopexit.split-lp, %bb.v, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i, %bb.u, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128, %bb.ad, %bb.am, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138, %bb.al
  %.sroa.0175.3 = phi ptr [ %.sroa.0175.1, %bb.u ], [ %.sroa.0175.0233, %bb.ad ], [ %.sroa.0175.0233, %bb.al ], [ %.sroa.0175.1, %bb.v ], [ %.sroa.0175.1, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %.sroa.0175.0233, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128 ], [ %.sroa.0175.0233, %bb.am ], [ %.sroa.0175.0233, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ], [ %.sroa.0175.0233, %.loopexit192 ], [ %.sroa.0175.0233, %.loopexit.split-lp ] ; 3 uses
  %.sroa.21.3 = phi ptr [ %.sroa.21.1, %bb.u ], [ %.sroa.21.0235, %bb.ad ], [ %.sroa.21.0235, %bb.al ], [ %.sroa.21.1, %bb.v ], [ %.sroa.21.1, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %.sroa.21.0235, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128 ], [ %.sroa.21.0235, %bb.am ], [ %.sroa.21.0235, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ], [ %.sroa.21.0235, %.loopexit192 ], [ %.sroa.21.0235, %.loopexit.split-lp ]
  %.pn76.pn = phi { ptr, i32 } [ %i.eg, %bb.u ], [ %i.fs, %bb.ad ], [ %i.ha, %bb.al ], [ %i.eh, %bb.v ], [ %i.ef, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i ], [ %i.fk, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i128 ], [ %i.hb, %bb.am ], [ %i.gz, %_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE10_Auto_nodeD2Ev.exit.i138 ], [ %lpad.loopexit, %.loopexit192 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i118 = icmp eq ptr %.sroa.0175.3, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %.body
  %i.hd = ptrtoint ptr %.sroa.21.3 to i64
  %i.he = ptrtoint ptr %.sroa.0175.3 to i64
  %i.hf = sub i64 %i.hd, %i.he
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.3, i64 noundef %i.hf) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.body, %bb.ao
  call void @_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn76.pn

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.an
  %.not.i.i.i121 = icmp eq ptr %.sroa.0175.2, null
  br i1 %.not.i.i.i121, label %_ZNSt6vectorIiSaIiEED2Ev.exit122, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.hg = ptrtoint ptr %.sroa.21.2 to i64
  %i.hh = ptrtoint ptr %.sroa.0175.2 to i64
  %i.hi = sub i64 %i.hg, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.2, i64 noundef %i.hi) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit122

_ZNSt6vectorIiSaIiEED2Ev.exit122:                 ; preds = %bb.a, %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEEC2ERKS9_.exit, %_ZNSt6vectorIiSaIiEE5clearEv.exit, %bb.ap
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !31
  invoke void @_ZNSt8_Rb_treeIPvSt4pairIKS0_P24malloc_plus_memory_entryESt10_Select1stIS5_ESt4lessIS0_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.hj)
          to label %_ZNSt3mapIPvP24malloc_plus_memory_entrySt4lessIS0_ESaISt4pairIKS0_S2_EEED2Ev.exit unwind label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit122
  %i.hk = landingpad { ptr, i32 }
          catch ptr null
  %i.hl = extractvalue { ptr, i32 } %i.hk, 0
  call void @__clang_call_terminate(ptr %i.hl) #35
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
