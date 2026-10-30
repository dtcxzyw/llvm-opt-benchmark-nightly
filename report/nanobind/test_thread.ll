Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_thread?download=true
inline.NumInlined: 2074
inline.NumDeleted: 892
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_ENKUlPSE_NS_5typedINS_4dictEJS7_lEEEE_clESQ_ST_:bb.a
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

bb.b:                                             ; preds = %.noexc14, %.lr.ph
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN8nanobind6detail9cast_implILb1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_NS_6handleE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr %i.o) #27
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.q = invoke noundef i64 @_ZN8nanobind6detail9cast_implILb1ElEET0_NS_6handleE(ptr %i.p) #27
          to label %_ZN8nanobind4castIlNS_6handleEEET_RKNS_6detail3apiIT0_EEb.exit unwind label %bb.e

_ZN8nanobind4castIlNS_6handleEEET_RKNS_6detail3apiIT0_EEb.exit: ; preds = %.noexc
  store i64 %i.q, ptr %i.a, align 8, !tbaa !71
  %i.r = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE7emplaceIJS5_lEEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %_ZN8nanobind4castIlNS_6handleEEET_RKNS_6detail3apiIT0_EEb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.s = load ptr, ptr %5, align 8, !tbaa !141    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.m
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.m, align 8, !tbaa !14
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.w = load ptr, ptr %4, align 8, !tbaa !23
  %i.x = invoke i32 @PyDict_Next(ptr noundef %i.w, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #27
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = icmp eq i32 %i.x, 0
  %.pre23 = load i64, ptr %i.g, align 8
  %i.z = icmp eq i64 %.pre23, -1
  %or.cond28 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond28, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.e:                                             ; preds = %.noexc, %_ZN8nanobind4castIlNS_6handleEEET_RKNS_6detail3apiIT0_EEb.exit
  %i.ab = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ac = load ptr, ptr %5, align 8, !tbaa !141   ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.m
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.e
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !14
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.d
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.ab, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn9.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %lpad.loopexit.split-lp29, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %.4 = extractvalue { ptr, i32 } %.pn9.pn, 0
  %i.ah = call ptr @__cxa_begin_catch(ptr %.4) #26 ; 0 uses
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #25
  invoke void @__cxa_rethrow() #32
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ai

bb.h:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #29
  unreachable

bb.i:                                             ; preds = %.loopexit.split-lp
  unreachable
}

; Function Attrs: optsize
declare ptr @PyDict_New() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_4dictEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::handle", align 8  ; 4 uses
  %5 = alloca %"class.nanobind::dict", align 8    ; 4 uses
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.b = getelementptr i8, ptr %.val, i64 168
  %.val4 = load i64, ptr %i.b, align 8, !tbaa !152
  %i.c = and i64 %.val4, 536870912
  %i.d = icmp ne i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.e = load i32, ptr %1, align 8, !tbaa !14
  %i.f = add i32 %i.e, 1                          ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.f, ptr %1, align 8, !tbaa !14
  br label %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit

_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.h = load ptr, ptr %0, align 8, !tbaa !23
  store ptr %i.h, ptr %4, align 8, !tbaa !23
  store ptr %1, ptr %0, align 8, !tbaa !23
  store ptr null, ptr %5, align 8, !tbaa !23
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN8nanobind6objectC2ENS_6handleENS_6detail8borrow_tE.exit
  ret i1 %i.d
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE7emplaceIJS5_lEEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1) #27 ; 4 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #27
          to label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %bb.b
  %i.j = icmp slt i32 %i.g, 0
  br i1 %i.j, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %i.k = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJS5_lEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.018.0 = phi ptr [ %i.k, %.critedge ], [ %i.d, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.018.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: optsize
declare i32 @PyDict_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJS5_lEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJS5_lEEEPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #27 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #27
          to label %bb.b unwind label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E.exit.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #27
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit8 unwind label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) #25
  resume { ptr, i32 } %i.g

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E.exit.a: ; preds = %bb.b
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit8

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit8: ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E.exit.a
  %.sroa.014.018 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E.exit.a ], [ %i.f, %bb.c ]
  ret ptr %.sroa.014.018
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !132
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2) #27
          to label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #29
  unreachable

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %bb.c
  %i.k = icmp slt i32 %i.h, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !134
  br label %bb.u

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.b
  %i.m = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #27 ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.u

bb.g:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.p) #27
          to label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit10 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #29
  unreachable

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit10: ; preds = %bb.g
  %i.t = icmp slt i32 %i.q, 0
  br i1 %i.t, label %bb.i, label %bb.n

bb.i:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !134  ; 3 uses
  %i.w = icmp eq ptr %i.v, %1
  br i1 %i.w, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %2) #27
          to label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit11 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #29
  unreachable

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit11: ; preds = %bb.j
  %i.ac = icmp slt i32 %i.z, 0
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !136
  %i.af = icmp eq ptr %i.ae, null                 ; 2 uses
  %spec.select = select i1 %i.af, ptr null, ptr %1
  %spec.select35 = select i1 %i.af, ptr %i.x, ptr %1
  br label %bb.u

bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit11
  %i.ag = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #27 ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1
  br label %bb.u

bb.n:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit10
  %i.aj = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2) #27
          to label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit12 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #29
  unreachable

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit12: ; preds = %bb.n
  %i.am = icmp slt i32 %i.aj, 0
  br i1 %i.am, label %bb.p, label %bb.u

bb.p:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !134 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %1
  br i1 %i.ap, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #27
          to label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #29
  unreachable

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %bb.q
  %i.av = icmp slt i32 %i.as, 0
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !136
  %i.ay = icmp eq ptr %i.ax, null                 ; 2 uses
  %spec.select36 = select i1 %i.ay, ptr null, ptr %i.aq
  %spec.select37 = select i1 %i.ay, ptr %1, ptr %i.aq
  br label %bb.u

bb.t:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13
  %i.az = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) #27 ; 2 uses
  %i.ba = extractvalue { ptr, ptr } %i.az, 0
  %i.bb = extractvalue { ptr, ptr } %i.az, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.l, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit12, %bb.t, %bb.p, %bb.m, %bb.i, %bb.f, %bb.e
  %.sroa.034.2 = phi ptr [ %i.n, %bb.f ], [ null, %bb.e ], [ %spec.select, %bb.l ], [ %spec.select36, %bb.s ], [ %i.ah, %bb.m ], [ %i.v, %bb.i ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit12 ], [ %i.ba, %bb.t ], [ null, %bb.p ]
  %.sroa.12.2 = phi ptr [ %i.o, %bb.f ], [ %i.l, %bb.e ], [ %spec.select35, %bb.l ], [ %spec.select37, %bb.s ], [ %i.ai, %bb.m ], [ %i.v, %bb.i ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit12 ], [ %i.bb, %bb.t ], [ %i.ao, %bb.p ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.034.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_create_nodeIJS5_lEEEPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !139
  %i.d = load ptr, ptr %1, align 8, !tbaa !141    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !142  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJS5_lEEEvPSt13_Rb_tree_nodeIS8_EDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !141
  %i.k = load i64, ptr %i.e, align 8, !tbaa !14
  store i64 %i.k, ptr %i.c, align 8, !tbaa !14
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !142
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJS5_lEEEvPSt13_Rb_tree_nodeIS8_EDpOT_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJS5_lEEEvPSt13_Rb_tree_nodeIS8_EDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.l, ptr %i.n, align 8, !tbaa !142
  store ptr %i.e, ptr %1, align 8, !tbaa !141
  store i64 0, ptr %i.m, align 8, !tbaa !142
  store i8 0, ptr %i.e, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = load i64, ptr %2, align 8, !tbaa !71
  store i64 %i.p, ptr %i.o, align 8, !tbaa !144
  ret ptr %i.a
}

; Function Attrs: mustprogress optsize uwtable
end_hunk_0
begin_hunk_1_@_ZZN8nanobind6detail9cast_implILb1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET0_NS_6handleEEN12raii_cleanupD2Ev:bb.a
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge.i:                                    ; preds = %_ZL9Py_DECREFP7_object.exit.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !121
  %.not.i = icmp eq i32 %i.e, 5
  br i1 %.not.i, label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit, label %bb.e

bb.b:                                             ; preds = %_ZL9Py_DECREFP7_object.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 1, %.lr.ph.i ], [ %i.m, %_ZL9Py_DECREFP7_object.exit.i ] ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = and i64 %i.i, 2147483648
  %.not3.i = icmp eq i64 %i.j, 0
  br i1 %.not3.i, label %bb.c, label %_ZL9Py_DECREFP7_object.exit.i

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i64 %i.i, -1                     ; 2 uses
  store i64 %i.k, ptr %i.h, align 8, !tbaa !14
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %_ZL9Py_DECREFP7_object.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_Py_Dealloc(ptr noundef nonnull %i.h) #27
          to label %_ZL9Py_DECREFP7_object.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL9Py_DECREFP7_object.exit.i:                    ; preds = %bb.d, %bb.c, %bb.b
  %i.m = add nuw nsw i64 %.04.i, 1                ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !120
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.b, label %._crit_edge.i, !llvm.loop !0

bb.e:                                             ; preds = %._crit_edge.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !118
  invoke void @PyMem_Free(ptr noundef %i.r) #27
          to label %_ZN8nanobind6detail12cleanup_list7releaseEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %lpad.loopexit.split-lp2, 0
  tail call void @__clang_call_terminate(ptr %i.s) #29
  unreachable

_ZN8nanobind6detail12cleanup_list7releaseEv.exit: ; preds = %._crit_edge.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZZN8nanobind22implicitly_convertibleINS_4dictESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEEEEvvENUlP11_typeobjectP7_objectPNS_6detail12cleanup_listEE_8__invokeESH_SJ_SM_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.nanobind::detail::type_caster.542", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr null, ptr %3, align 8
  %i.a = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINS_4dictEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %1, i32 noundef 1, ptr noundef %2) #25
  %i.b = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_RKlE_vJSS_ST_SV_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS12_jPNS0_12cleanup_listEE_8__invokeES1G_S1H_jS1J_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.558", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !139
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !142
  store i8 0, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !11
  %i.f = and i32 %2, -2
  %i.g = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.h = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.g, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE, ptr noundef %i.e, i32 noundef %i.f, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d) #25
  br i1 %i.h, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_RKlE_vJSS_ST_SV_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = and i32 %2, -35                          ; 2 uses
  %i.l = call noundef zeroext i1 @_ZN8nanobind6detail11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE11from_pythonENS_6handleEjPNS0_12cleanup_listE(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr %i.j, i32 noundef %i.k, ptr noundef %3) #25
  br i1 %i.l, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_RKlE_vJSS_ST_SV_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.o = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.p = call noundef zeroext i1 @_ZN8nanobind6detail8load_i64EPNS0_12nb_internalsEP7_objectjPl(ptr noundef %i.o, ptr noundef %i.n, i32 noundef %i.k, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.p, label %bb.d, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_RKlE_vJSS_ST_SV_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !147
  %i.r = load i64, ptr %4, align 8, !tbaa !71
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #27
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 %i.r, ptr %i.s, align 8, !tbaa !71
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_RKlE_vJSS_ST_SV_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !141  ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.b
  br i1 %i.v, label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENS2_IliEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.w = load i64, ptr %i.b, align 8, !tbaa !14
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #30
  br label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENS2_IliEEEED2Ev.exit

_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENS2_IliEEEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %i.t

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_RKlE_vJSS_ST_SV_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.e
  %.015.i = phi ptr [ @_Py_NoneStruct, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !141  ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.b
  br i1 %i.z, label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENS2_IliEEEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3: ; preds = %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_RKlE_vJSS_ST_SV_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !14
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #30
  br label %_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENS2_IliEEEED2Ev.exit5

_ZN8nanobind6detail5tupleIJNS0_11type_casterINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiEENS2_IliEEEED2Ev.exit5: ; preds = %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RSD_RKlE_vJSS_ST_SV_EJLm0ELm1ELm2EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS12_jPNS0_12cleanup_listEE_clES1G_S1H_jS1J_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.015.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.561", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.564", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1) #27 ; 4 uses
  %i.e = icmp eq ptr %i.d, %i.c
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = invoke noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.f) #27
          to label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #29
  unreachable

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %bb.b
  %i.j = icmp slt i32 %i.g, 0
  br i1 %i.j, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %1, ptr %2, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.k = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %i.d, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.06.0 = phi ptr [ %i.k, %.critedge ], [ %i.d, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 64
  ret ptr %i.l
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28 ; 5 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #27
          to label %bb.b unwind label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E.exit.a, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSG_PSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #27
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit9 unwind label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) #25
  resume { ptr, i32 } %i.g

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E.exit.a: ; preds = %bb.b
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.a) #25
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit9: ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E.exit.a
  %.sroa.015.019 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_node9_M_insertES6_IPSt18_Rb_tree_node_baseSH_E.exit.a ], [ %i.f, %bb.c ]
  ret ptr %.sroa.015.019
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_lESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %3, align 8, !tbaa !163
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.d, ptr %i.a, align 8, !tbaa !139
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !141  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef %i.e, ptr noundef %i.h) #27
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = tail call ptr @__cxa_begin_catch(ptr %i.j) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #30
  invoke void @__cxa_rethrow() #32
          to label %bb.g unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 0, ptr %i.m, align 8, !tbaa !144
  ret void

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #29
  unreachable

bb.g:                                             ; preds = %bb.b
  unreachable
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RKSG_E_vJSS_SU_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS14_jPNS0_12cleanup_listEE_8__invokeES1I_S1J_jS1L_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.570", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !11
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RKSG_E_vJSS_SU_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS14_jPNS0_12cleanup_listEE_clES1I_S1J_jS1L_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = and i32 %2, -43
  %i.i = or disjoint i32 %i.h, 8
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.j, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RKSG_E_vJSS_SU_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS14_jPNS0_12cleanup_listEE_clES1I_S1J_jS1L_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.m = load ptr, ptr %4, align 8, !tbaa !147    ; 3 uses
  %i.n = icmp eq ptr %i.m, %i.l
  br i1 %i.n, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RKSG_E_vJSS_SU_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS14_jPNS0_12cleanup_listEE_clES1I_S1J_jS1L_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !130  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.not12.i = icmp eq ptr %i.p, %i.q
  br i1 %.not12.i, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RKSG_E_vJSS_SU_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS14_jPNS0_12cleanup_listEE_clES1I_S1J_jS1L_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.p, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 64
  %i.t = load i64, ptr %i.s, align 8, !tbaa !71
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.r) #27
  store i64 %i.t, ptr %i.u, align 8, !tbaa !71
  %i.v = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.09.013.i) #33 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.q
  br i1 %.not.i, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RKSG_E_vJSS_SU_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS14_jPNS0_12cleanup_listEE_clES1I_S1J_jS1L_.exit, label %.lr.ph.i

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRSG_RKSG_E_vJSS_SU_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_9lock_selfENS_5arg_tILj1ELb1EEEA41_cEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS14_jPNS0_12cleanup_listEE_clES1I_S1J_jS1L_.exit: ; preds = %.lr.ph.i, %bb.d, %bb.c, %bb.a, %bb.b
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ], [ @_Py_NoneStruct, %bb.c ], [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK8nanobind6detail3op_ILNS0_5op_idE25ELNS0_7op_typeE0ENS0_6self_tES4_E7executeINS_6class_ISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessISE_ESaISt4pairIKSE_lEEEJEEEJNS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEvRT_DpRKT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
_ZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_.exit:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %5 = alloca %"struct.nanobind::detail::func_data_init.54", align 8 ; 14 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE, ptr %i.a, align 16, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 16, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @_ZN8nanobind6detail7op_implILNS0_5op_idE25ELNS0_7op_typeE0ESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessISA_ESaISt4pairIKSA_lEEESH_SH_E7executeERKSH_SK_, ptr %5, align 8, !tbaa !165
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSY_jPNS0_12cleanup_listEE_8__invokeES1C_S1D_jS1F_, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descrB5cxx11, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.a, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 60
  store <2 x i16> splat (i16 2), ptr %i.h, align 4, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i32 0, ptr %i.l, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 4683, ptr %i.d, align 8, !tbaa !35
  %i.n = load ptr, ptr %2, align 8, !tbaa !67
  store ptr %i.n, ptr %i.m, align 8, !tbaa !34
  %i.o = load <2 x ptr>, ptr %4, align 8, !tbaa !64
  store <2 x ptr> %i.o, ptr %i.i, align 8, !tbaa !64
  store ptr null, ptr %i.j, align 8, !tbaa !65
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.q = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.p, ptr noundef nonnull %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail7op_implILNS0_5op_idE25ELNS0_7op_typeE0ESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessISA_ESaISt4pairIKSA_lEEESH_SH_E7executeERKSH_SK_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !132
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEbRKSt3mapIT_T0_T1_T2_ESJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !130
  %i.k = tail call noundef zeroext i1 @_ZNSt7__equalILb0EE5equalISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESC_EEbT_SD_T0_(ptr %i.g, ptr nonnull %i.h, ptr %i.j) #27
  br label %_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEbRKSt3mapIT_T0_T1_T2_ESJ_.exit

_ZSteqINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEbRKSt3mapIT_T0_T1_T2_ESJ_.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSY_jPNS0_12cleanup_listEE_8__invokeES1C_S1D_jS1F_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.570", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !11
  %i.c = and i32 %2, -2
  %i.d = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.e = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.d, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE, ptr noundef %i.b, i32 noundef %i.c, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #25
  br i1 %i.e, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSY_jPNS0_12cleanup_listEE_clES1C_S1D_jS1F_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = and i32 %2, -43
  %i.i = or disjoint i32 %i.h, 8
  %i.j = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.k = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.j, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE, ptr noundef %i.g, i32 noundef %i.i, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.k, label %bb.c, label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSY_jPNS0_12cleanup_listEE_clES1C_S1D_jS1F_.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !165
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.n = load ptr, ptr %4, align 8, !tbaa !147
  %i.o = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.n) #27, !inline_history !362
  %spec.select.i = select i1 %i.o, ptr @_Py_TrueStruct, ptr @_Py_FalseStruct
  br label %_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSY_jPNS0_12cleanup_listEE_clES1C_S1D_jS1F_.exit

_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSY_jPNS0_12cleanup_listEE_clES1C_S1D_jS1F_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %spec.select.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.b ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt7__equalILb0EE5equalISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESC_EEbT_SD_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %0, %1
  br i1 %.not6, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.08 = phi ptr [ %i.r, %bb.c ], [ %2, %bb.a ] ; 4 uses
  %.sroa.03.07 = phi ptr [ %i.q, %bb.c ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !142  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !142
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.a, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.a: ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !141
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.j, ptr %i.i, i64 %i.d)
  %i.k = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.k, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.a, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.thread

_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.a: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.a
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.03.07, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !144
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !144
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.thread

bb.c:                                             ; preds = %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.a
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07) #33 ; 2 uses
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0.08) #33
  %.not = icmp eq ptr %i.q, %1
  br i1 %.not, label %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.thread, label %.lr.ph, !llvm.loop !363

_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.thread: ; preds = %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.a, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.a, %.lr.ph, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %.lr.ph ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.a ], [ true, %bb.c ], [ false, %_ZSteqIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEbRKSt4pairIT_T0_ESC_.exit.a ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZNK8nanobind6detail3op_ILNS0_5op_idE26ELNS0_7op_typeE0ENS0_6self_tES4_E7executeINS_6class_ISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessISE_ESaISt4pairIKSE_lEEEJEEEJNS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEvRT_DpRKT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat align 2 {
_ZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_.exit:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %5 = alloca %"struct.nanobind::detail::func_data_init.54", align 8 ; 14 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE, ptr %i.a, align 16, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 16, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @_ZN8nanobind6detail7op_implILNS0_5op_idE26ELNS0_7op_typeE0ESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessISA_ESaISt4pairIKSA_lEEESH_SH_E7executeERKSH_SK_, ptr %5, align 8, !tbaa !165
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSY_jPNS0_12cleanup_listEE_8__invokeES1C_S1D_jS1F_, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @_ZZN8nanobind6detail11func_createILb0ELb1ERPFbRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS8_ESaISt4pairIKS8_lEEESH_EbJSH_SH_EJLm0ELm1EEJNS_5scopeENS_4nameENS_9is_methodENS_11is_operatorENS_9rv_policy10policy_tagILNSP_5valueE0EEENS_3sigENS_9lock_selfENS_5arg_tILj1ELb1EEEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_E5descrB5cxx11, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.a, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 60
  store <2 x i16> splat (i16 2), ptr %i.h, align 4, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i32 0, ptr %i.l, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 4683, ptr %i.d, align 8, !tbaa !35
  %i.n = load ptr, ptr %2, align 8, !tbaa !67
  store ptr %i.n, ptr %i.m, align 8, !tbaa !34
  %i.o = load <2 x ptr>, ptr %4, align 8, !tbaa !64
  store <2 x ptr> %i.o, ptr %i.i, align 8, !tbaa !64
  store ptr null, ptr %i.j, align 8, !tbaa !65
  %i.p = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.q = call noundef ptr @_ZN8nanobind6detail11nb_func_newEPNS0_12nb_internalsEPKNS0_19func_data_init_baseE(ptr noundef %i.p, ptr noundef nonnull %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8nanobind6detail7op_implILNS0_5op_idE26ELNS0_7op_typeE0ESt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessISA_ESaISt4pairIKSA_lEEESH_SH_E7executeERKSH_SK_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !132
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZStneINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEbRKSt3mapIT_T0_T1_T2_ESJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !130
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !130
  %i.k = tail call noundef zeroext i1 @_ZNSt7__equalILb0EE5equalISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESC_EEbT_SD_T0_(ptr %i.g, ptr nonnull %i.h, ptr %i.j) #27
  %i.l = xor i1 %i.k, true
  br label %_ZStneINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEbRKSt3mapIT_T0_T1_T2_ESJ_.exit

_ZStneINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEEbRKSt3mapIT_T0_T1_T2_ESJ_.exit: ; preds = %bb.a, %bb.b
  %i.m = phi i1 [ true, %bb.a ], [ %i.l, %bb.b ]
  ret i1 %i.m
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_copyIZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E8ItemViewEEvPvPKv(ptr noundef %0, ptr noundef %1) #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  store i64 %i.a, ptr %0, align 8
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i.i.i.i, label %_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN8ItemViewC2ERKSQ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = add i32 %i.c, 1                          ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN8ItemViewC2ERKSQ_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %i.b, align 8, !tbaa !14
  br label %_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN8ItemViewC2ERKSQ_.exit

_ZZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EN8ItemViewC2ERKSQ_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail9wrap_moveIZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E8ItemViewEEvPvST_(ptr noundef %0, ptr noundef %1) #0 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail13wrap_destructIZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E8ItemViewEEvPv(ptr noundef %0) #0 comdat {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPSZ_jPNS0_12cleanup_listEE_8__invokeES1D_S1E_jS1G_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.579", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E8ItemView, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSZ_jPNS0_12cleanup_listEE_clES1D_S1E_jS1G_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !168
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8
  %i.f = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %.sroa.0.0.copyload.i.i) #25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !132
  %i.i = invoke ptr @PyLong_FromUnsignedLong(i64 noundef %i.h) #27
          to label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSZ_jPNS0_12cleanup_listEE_clES1D_S1E_jS1G_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #29
  unreachable

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE_mJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPSZ_jPNS0_12cleanup_listEE_clES1D_S1E_jS1G_.exit: ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: inlinehint mustprogress optsize uwtable
define linkonce_odr hidden noundef ptr @_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE0_NS_5typedINS_8iteratorEJRSE_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENUlPvPS13_jPNS0_12cleanup_listEE_8__invokeES1H_S1I_jS1K_(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.nanobind::detail::tuple.579", align 8 ; 4 uses
  %5 = alloca %"class.nanobind::typed.588", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !11
  %i.b = and i32 %2, -2
  %i.c = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13
  %i.d = call noundef zeroext i1 @_ZN8nanobind6detail11nb_type_getEPNS0_12nb_internalsEPKSt9type_infoP7_objectjPNS0_12cleanup_listEPPv(ptr noundef %i.c, ptr noundef nonnull @_ZTIZN8nanobind8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS7_ESaISt4pairIKS7_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_E8ItemView, ptr noundef %i.a, i32 noundef %i.b, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br i1 %i.d, label %bb.b, label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE0_NS_5typedINS_8iteratorEJRSE_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.e = load ptr, ptr %4, align 8, !tbaa !168
  %i.f = load ptr, ptr @_ZN8nanobind6detail9internalsE, align 8, !tbaa !13, !noalias !366
  %i.g = call noundef ptr @_ZN8nanobind6detail14nb_type_lookupEPNS0_12nb_internalsEPKSt9type_info(ptr noundef %i.f, ptr noundef nonnull @_ZTISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS5_ESaISt4pairIKS5_lEEE) #25, !noalias !366
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !366
  call void @_ZN8nanobind6detail20make_cursor_iteratorINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEEDaNS_6handleEPKcSM_(ptr dead_on_unwind nonnull writable sret(%"class.nanobind::typed.588") align 8 %5, ptr %i.g, ptr noundef nonnull @.str.87, ptr %.sroa.0.0.copyload.i) #27
  %i.h = load ptr, ptr %5, align 8, !tbaa !23     ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.h, align 8, !tbaa !14
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.j, ptr %i.h, align 8, !tbaa !14
  %.sroa.01.0.copyload.pre.i.i = load ptr, ptr %5, align 8
  br label %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit

_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.01.0.copyload.i.i = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ], [ %.sroa.01.0.copyload.pre.i.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #25 ; 0 uses
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKR8nanobind6handle7dec_refEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE0_NS_5typedINS_8iteratorEJRSE_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit

_ZZN8nanobind6detail11func_createILb0ELb1EZNS_8bind_mapISt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElSt4lessIS9_ESaISt4pairIKS9_lEEELNS_9rv_policy5valueE1EJEEENS_6class_IT_JEEENS_6handleEPKcDpOT1_EUlRZNS2_ISG_LSI_1EJEEESL_SM_SO_SR_E8ItemViewE0_NS_5typedINS_8iteratorEJRSE_EEEJST_EJLm0EEJNS_5scopeENS_4nameENS_9is_methodEEEEP7_objectOT1_PFT2_DpT3_ESt16integer_sequenceImJXspT4_EEEDpRKT5_ENKUlPvPS13_jPNS0_12cleanup_listEE_clES1H_S1I_jS1K_.exit: ; preds = %bb.a, %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit
  %.0.i = phi ptr [ %.sroa.01.0.copyload.i.i, %_ZN8nanobind6detail11type_casterINS_5typedINS_8iteratorEJRSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEEiE8from_cppERKSE_NS_9rv_policyEPNS0_12cleanup_listE.exit ], [ inttoptr (i64 1 to ptr), %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret ptr %.0.i
}

; Function Attrs: mustprogress optsize uwtable
define linkonce_odr hidden void @_ZN8nanobind6detail20make_cursor_iteratorINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISA_lSt4lessISA_ESaISC_EEEEDaNS_6handleEPKcSM_(ptr dead_on_unwind noalias writable sret(%"class.nanobind::typed.588") align 8 %0, ptr %1, ptr noundef %2, ptr %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nanobind::object", align 8  ; 7 uses
  %5 = alloca %"struct.nanobind::detail::cursor_iterator_state.589", align 8 ; 12 uses
  tail call void @_ZN8nanobind6detail22register_step_iteratorINS0_21cursor_iterator_stateINS0_15iterator_accessISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEEEELNS_9rv_policy5valueE1ESt3mapISB_lSt4lessISB_ESaISD_EEEELSH_1EEEvNS_6handleEPKc(ptr %1, ptr noundef %2) #27
  %i.a = tail call noundef ptr @_ZN8nanobind6detail11nb_inst_ptrEP7_object(ptr noundef %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !132
end_hunk_1
