Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/StatementGoto?download=true
inline.NumInlined: 1386
inline.NumDeleted: 675
begin_hunk_0_@_ZNSt3mapIPK9StatementbSt4lessIS2_ESaISt4pairIKS2_bEEEixEOS2_:bb.a
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.u = icmp ult ptr %i.r, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.v = phi i1 [ %i.u, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #17
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !95
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !95
  br label %_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #20
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #20
  br label %_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.f ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.aa
}

declare void @_ZN7FactMgr12set_fact_outEPK9StatementRKSt6vectorIPK4FactSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(392), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6EffectD1Ev(ptr noundef nonnull align 8 dead_on_return(74) dereferenceable(74)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13StatementGotoC2EP5BlockRK10ExpressionPK9StatementRKSt6vectorIPK8VariableSaISB_EE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::tuple", align 8        ; 4 uses
  %6 = alloca %"class.std::tuple.100", align 1    ; 3 uses
  %7 = alloca %"class.std::tuple", align 8        ; 4 uses
  %8 = alloca %"class.std::tuple.100", align 1    ; 3 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !51
  tail call void @_ZN9StatementC2E14eStatementTypeP5Block(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 8, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTV13StatementGoto, i64 16), ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.b, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %3, ptr %i.c, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.f, align 8, !tbaa !112
  store i8 0, ptr %i.e, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !114  ; 2 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !115    ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i, label %.noexc9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ugt i64 %i.m, 9223372036854775800
  br i1 %i.n, label %.noexc.i.i, label %_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i, !prof !47

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #18
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #19
          to label %.noexc9 unwind label %bb.j

.noexc9:                                          ; preds = %_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.p = phi ptr [ null, %bb.a ], [ %i.o, %_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.p, ptr %i.g, align 8, !tbaa !115
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !116
  %i.t = load ptr, ptr %4, align 8, !tbaa !117    ; 3 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !117
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.c, label %bb.d, !prof !101

bb.c:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.p, ptr align 8 %i.t, i64 %i.x, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc9
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !119
  store ptr %i.aa, ptr %i.p, align 8, !tbaa !119
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ab = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !114
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN13StatementGoto10stm_labelsB5cxx11E, i64 16), align 8, !tbaa !18 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i.i, label %select.unfold, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.ac, %bb.f ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN13StatementGoto10stm_labelsB5cxx11E, i64 8), %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51
  %i.af = icmp ult ptr %i.ae, %3                  ; 2 uses
  %.19.i.i.i = select i1 %i.af, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.af, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !157

_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN13StatementGoto10stm_labelsB5cxx11E, i64 8)
  br i1 %i.ag, label %select.unfold, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51
  %i.aj = icmp ult ptr %3, %i.ai
  br i1 %i.aj, label %select.unfold, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN13StatementGoto10stm_labelsB5cxx11E, i64 8), %bb.g ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.am = icmp ult ptr %i.al, %3                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.am, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.am, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i.i10 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i10, label %_ZNSt3mapIPK9StatementNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !157

_ZNSt3mapIPK9StatementNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.an = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN13StatementGoto10stm_labelsB5cxx11E, i64 8)
  br i1 %i.an, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIPK9StatementNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !121
  %i.aq = icmp ult ptr %3, %i.ap
  br i1 %i.aq, label %.critedge.i, label %bb.i

.critedge.i:                                      ; preds = %bb.h, %_ZNSt3mapIPK9StatementNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr %i.a, ptr %7, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ar = invoke ptr @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN13StatementGoto10stm_labelsB5cxx11E, ptr %.19.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc11 unwind label %bb.k

.noexc11:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.i

bb.i:                                             ; preds = %.noexc11, %bb.h
  %.sroa.06.0.i = phi ptr [ %i.ar, %.noexc11 ], [ %.19.i.i.i.i, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  br label %.invoke

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIPK8VariableE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit

bb.k:                                             ; preds = %.invoke, %.critedge.i24, %.critedge.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

select.unfold:                                    ; preds = %bb.g, %bb.f, %_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_Z6gensymB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %select.unfold
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !122 ; 6 uses
  %i.aw = load ptr, ptr %9, align 8, !tbaa !122   ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.l
  %10 = icmp eq ptr %i.av, %i.e
  br i1 %10, label %.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !112 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  switch i64 %i.ba, label %bb.o [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.bc = load i8, ptr %i.aw, align 1, !tbaa !113
  store i8 %i.bc, ptr %i.av, align 1, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.aw, i64 %i.ba, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.bd = load i64, ptr %i.az, align 8, !tbaa !112 ; 2 uses
  store i64 %i.bd, ptr %i.f, align 8, !tbaa !112
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 0, ptr %i.bf, align 1, !tbaa !113
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !122
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  store ptr %i.aw, ptr %i.d, align 8, !tbaa !122
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !tbaa !113
  store <2 x i64> %i.bh, ptr %i.f, align 8, !tbaa !113
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bi = load i64, ptr %i.e, align 8, !tbaa !113
  store ptr %i.aw, ptr %i.d, align 8, !tbaa !122
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = load <2 x i64>, ptr %i.bj, align 8, !tbaa !113
  store <2 x i64> %i.bk, ptr %i.f, align 8, !tbaa !113
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.av, ptr %9, align 8, !tbaa !122
  store i64 %i.bi, ptr %i.ax, align 8, !tbaa !113
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ax, ptr %9, align 8, !tbaa !122
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.p, %bb.q
  %i.bl = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.av, %bb.p ], [ %i.ax, %bb.q ]
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bm, align 8, !tbaa !112
  store i8 0, ptr %i.bl, align 1, !tbaa !113
  %i.bn = load ptr, ptr %9, align 8, !tbaa !122   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !113
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.bs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN13StatementGoto10stm_labelsB5cxx11E, i64 16), align 8, !tbaa !18 ; 2 uses
  %.not10.i.i.i.i13 = icmp eq ptr %i.bs, null
  br i1 %.not10.i.i.i.i13, label %.critedge.i24, label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i.i.i14
  %.012.i.i.i.i15 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i14 ], [ %.1.i.i.i.i20, %bb.r ] ; 3 uses
  %.0811.i.i.i.i16 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN13StatementGoto10stm_labelsB5cxx11E, i64 8), %.lr.ph.i.i.i.i14 ], [ %.19.i.i.i.i17, %bb.r ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i15, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !51
  %i.bw = icmp ult ptr %i.bv, %i.bt               ; 2 uses
  %.19.i.i.i.i17 = select i1 %i.bw, ptr %.0811.i.i.i.i16, ptr %.012.i.i.i.i15 ; 5 uses
  %.1.in.v.i.i.i.i18 = select i1 %i.bw, i64 24, i64 16
  %.1.in.i.i.i.i19 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i15, i64 %.1.in.v.i.i.i.i18
  %.1.i.i.i.i20 = load ptr, ptr %.1.in.i.i.i.i19, align 8, !tbaa !61 ; 2 uses
  %.not.i.i.i.i21 = icmp eq ptr %.1.i.i.i.i20, null
  br i1 %.not.i.i.i.i21, label %_ZNSt3mapIPK9StatementNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i22, label %bb.r, !llvm.loop !157

_ZNSt3mapIPK9StatementNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i22: ; preds = %bb.r
  %i.bx = icmp eq ptr %.19.i.i.i.i17, getelementptr inbounds nuw (i8, ptr @_ZN13StatementGoto10stm_labelsB5cxx11E, i64 8)
  br i1 %i.bx, label %.critedge.i24, label %bb.s

bb.s:                                             ; preds = %_ZNSt3mapIPK9StatementNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i22
  %i.by = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i17, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !121
  %i.ca = icmp ult ptr %i.bt, %i.bz
  br i1 %i.ca, label %.critedge.i24, label %bb.t

.critedge.i24:                                    ; preds = %bb.s, %_ZNSt3mapIPK9StatementNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.08.lcssa.i.i.i11.i25 = phi ptr [ %.19.i.i.i.i17, %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_ZN13StatementGoto10stm_labelsB5cxx11E, i64 8), %_ZNSt3mapIPK9StatementNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i22 ], [ getelementptr inbounds nuw (i8, ptr @_ZN13StatementGoto10stm_labelsB5cxx11E, i64 8), %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr %i.a, ptr %5, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.cb = invoke ptr @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN13StatementGoto10stm_labelsB5cxx11E, ptr %.08.lcssa.i.i.i11.i25, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc26 unwind label %bb.k

.noexc26:                                         ; preds = %.critedge.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.t

bb.t:                                             ; preds = %.noexc26, %bb.s
  %.sroa.06.0.i23 = phi ptr [ %i.cb, %.noexc26 ], [ %.19.i.i.i.i17, %bb.s ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i23, i64 40
  br label %.invoke

.invoke:                                          ; preds = %bb.i, %bb.t
  %i.cd = phi ptr [ %i.cc, %bb.t ], [ %i.d, %bb.i ]
  %i.ce = phi ptr [ %i.d, %bb.t ], [ %i.as, %bb.i ]
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.k

bb.u:                                             ; preds = %select.unfold
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  br label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %.invoke
  ret void

bb.v:                                             ; preds = %bb.u, %bb.k
  %.pn = phi { ptr, i32 } [ %i.au, %bb.k ], [ %i.cf, %bb.u ] ; 2 uses
  %i.cg = load ptr, ptr %i.g, align 8, !tbaa !115 ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = load ptr, ptr %i.s, align 8, !tbaa !116
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = sub i64 %i.ci, %i.cj
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.ck) #20
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit:        ; preds = %bb.w, %bb.v, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.at, %bb.j ], [ %.pn, %bb.v ], [ %.pn, %bb.w ]
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !122 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.e
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit
  %i.cn = load i64, ptr %i.e, align 8, !tbaa !113
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.co) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @_ZN9StatementD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #17
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN9StatementC2E14eStatementTypeP5Block(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef) unnamed_addr #4

declare void @_Z6gensymB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN9StatementD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13StatementGotoC2ERKS_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  tail call void @_ZN9StatementC2E14eStatementTypeP5Block(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.b, ptr noundef %i.d)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTV13StatementGoto, i64 16), ptr %0, align 8, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !tbaa !159
  store <2 x ptr> %i.g, ptr %i.e, align 8, !tbaa !159
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  store ptr %i.j, ptr %i.h, align 8, !tbaa !111
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !122  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !112  ; 8 uses
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.p = add nuw i64 %i.m, 1                      ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !47

.noexc6.i:                                        ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #18
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #19
          to label %.noexc11 unwind label %bb.l   ; 2 uses

.noexc11:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store ptr %i.r, ptr %i.h, align 8, !tbaa !122
  store i64 %i.m, ptr %i.j, align 8, !tbaa !113
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc11, %bb.a
end_hunk_0
