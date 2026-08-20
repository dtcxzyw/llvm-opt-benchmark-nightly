inline.NumInlined: 1657
inline.NumDeleted: 767
begin_hunk_0_@_ZNSt8ios_baseD2Ev
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIRKS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8, !tbaa !362 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !25
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 1099511627775              ; 2 uses
  %i.j = icmp samesign ult i64 %i.e, %i.i         ; 2 uses
  %.in.v.i = select i1 %i.j, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !362 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !408

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.j, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127
  %i.m = icmp eq ptr %.019.lcssa29.i, %i.l
  br i1 %i.m, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #25 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.pre18 = load i64, ptr %.pre, align 8
  %.pre19 = load ptr, ptr %1, align 8, !tbaa !25
  %.pre20 = load i64, ptr %.pre19, align 8
  %.pre21 = and i64 %.pre18, 1099511627775
  %.pre22 = and i64 %.pre20, 1099511627775
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i
  %.pre-phi23 = phi i64 [ %.pre22, %bb.c ], [ %i.e, %._crit_edge.i ]
  %.pre-phi = phi i64 [ %.pre21, %bb.c ], [ %i.i, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.n, %bb.c ], [ %.02024.i, %._crit_edge.i ]
  %i.o = icmp samesign ult i64 %.pre-phi, %.pre-phi23
  br i1 %i.o, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %bb.d, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.d ] ; 3 uses
  %i.p = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.p, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.r = load ptr, ptr %1, align 8, !tbaa !25
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 1099511627775
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !25
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 1099511627775
  %i.x = icmp samesign ult i64 %i.t, %i.w
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %select.unfold, %bb.e
  %i.y = phi i1 [ %i.x, %bb.e ], [ true, %select.unfold ]
  %i.z = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 3 uses
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE17_M_construct_nodeIJRKS3_EEEvPSt13_Rb_tree_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !129
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !129
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %.sroa.010.0 = phi ptr [ %i.z, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE17_M_construct_nodeIJRKS3_EEEvPSt13_Rb_tree_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %2, align 8, !tbaa !25     ; 5 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !25
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 40
  %i.k = and i64 %i.c, -1152920405095219201
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %i.b, align 8
  br label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN4cvc58internal12NodeTemplateILb1EEEEEE9constructIS4_JRKS4_EEEvRS6_PT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.f, 1048574
  br i1 %i.m, label %bb.d, label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN4cvc58internal12NodeTemplateILb1EEEEEE9constructIS4_JRKS4_EEEvRS6_PT_DpOT0_.exit, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN4cvc58internal12NodeTemplateILb1EEEEEE9constructIS4_JRKS4_EEEvRS6_PT_DpOT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #20 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 40) #22
  invoke void @__cxa_rethrow() #23
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN4cvc58internal12NodeTemplateILb1EEEEEE9constructIS4_JRKS4_EEEvRS6_PT_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret void

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.r

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #21
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE15_M_range_insertISt23_Rb_tree_const_iteratorIS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not84 = icmp eq ptr %2, %3
  br i1 %.not84, label %_ZSt4copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SE_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi i64 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ] ; 4 uses
  %.sroa.02.05.i = phi ptr [ %i.a, %.lr.ph.i ], [ %2, %bb.a ]
  %i.a = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i) #25 ; 2 uses
  %i.b = add nuw nsw i64 %.06.i, 1                ; 5 uses
  %.not.i = icmp eq ptr %i.a, %3
  br i1 %.not.i, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !409

_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit: ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 11 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %.not.not = icmp ugt i64 %i.j, %.06.i
  br i1 %.not.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.h, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 4 uses
  %i.n = icmp ugt i64 %i.m, %i.b
  br i1 %i.n, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.o = xor i64 %.06.i, -1
  %i.p = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.o ; 3 uses
  %i.q = tail call noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN4cvc58internal12NodeTemplateILb1EEEES5_ET0_T_S8_S7_(ptr nonnull %i.p, ptr %i.f, ptr noundef %i.f) ; 0 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.b
  store ptr %i.s, ptr %i.e, align 8, !tbaa !24
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.t, %i.k
  %i.v = ashr exact i64 %i.u, 3                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i.i.i51.preheader

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.av, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.y, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i ], [ %i.f, %bb.c ]
  %.078.i.i.i.i.i = phi ptr [ %i.x, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i ], [ %i.p, %bb.c ]
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !25   ; 4 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !25
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i, label %bb.d, !prof !28

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ac = and i64 %i.ab, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i, label %bb.e, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.ad = add i64 %i.ab, 1152920405095219200
  %i.ae = and i64 %i.ad, 1152920405095219200      ; 2 uses
  %i.af = and i64 %i.ab, -1152920405095219201
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.z, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.f, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !25  ; 5 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !25
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.ak = lshr i64 %i.aj, 40
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = and i32 %i.al, 1048575                  ; 3 uses
  %i.an = icmp samesign ult i32 %i.am, 1048574
  br i1 %i.an, label %bb.g, label %bb.h, !prof !43

bb.g:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i
  %i.ao = add nuw nsw i32 %i.am, 1
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 40
  %i.ar = and i64 %i.aj, -1152920405095219201
  %i.as = or i64 %i.aq, %i.ar
  store i64 %i.as, ptr %i.ai, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i

bb.h:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i
  %i.at = icmp eq i32 %i.am, 1048574
  br i1 %i.at, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i, !prof !28

bb.i:                                             ; preds = %bb.h
  %i.au = or i64 %i.aj, 1152920405095219200
  store i64 %i.au, ptr %i.ai, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph.i.i.i.i.i
  %i.av = add nsw i64 %.010.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i.i.i51.preheader, !llvm.loop !403

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i, %bb.c
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55
  %.08.i.i.i.i.i = phi ptr [ %i.bu, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55 ], [ %1, %.lr.ph.i.i.i.i.i51.preheader ] ; 3 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.bv, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55 ], [ %2, %.lr.ph.i.i.i.i.i51.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %.08.i.i.i.i.i, align 8, !tbaa !25 ; 4 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !25
  %.not.i.i.i.i.i.i52 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i.i.i52, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55, label %bb.j, !prof !28

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i51
  %i.ba = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.bb = and i64 %i.ba, 1152920405095219200
  %.not.i.i.i.i.i.i.i53 = icmp eq i64 %i.bb, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i53, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i54, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j
  %i.bc = add i64 %i.ba, 1152920405095219200
  %i.bd = and i64 %i.bc, 1152920405095219200      ; 2 uses
  %i.be = and i64 %i.ba, -1152920405095219201
  %i.bf = or disjoint i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ay, align 8
  %i.bg = icmp eq i64 %i.bd, 0
  br i1 %i.bg, label %bb.l, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i54, !prof !28

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i54

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i54: ; preds = %bb.l, %bb.k, %bb.j
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !25 ; 5 uses
  store ptr %i.bh, ptr %.08.i.i.i.i.i, align 8, !tbaa !25
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = lshr i64 %i.bi, 40
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 1048575                  ; 3 uses
  %i.bm = icmp samesign ult i32 %i.bl, 1048574
  br i1 %i.bm, label %bb.m, label %bb.n, !prof !43

bb.m:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i54
  %i.bn = add nuw nsw i32 %i.bl, 1
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 40
  %i.bq = and i64 %i.bi, -1152920405095219201
  %i.br = or i64 %i.bp, %i.bq
  store i64 %i.br, ptr %i.bh, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55

bb.n:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i54
  %i.bs = icmp eq i32 %i.bl, 1048574
  br i1 %i.bs, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55, !prof !28

bb.o:                                             ; preds = %bb.n
  %i.bt = or i64 %i.bi, 1152920405095219200
  store i64 %i.bt, ptr %i.bh, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bh)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55: ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph.i.i.i.i.i51
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.bv = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i) #25 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, %3
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i51, !llvm.loop !410

bb.p:                                             ; preds = %bb.b
  %i.bw = icmp sgt i64 %i.m, 0
  br i1 %i.bw, label %.lr.ph.i56, label %.preheader.i.a

.preheader.i.a:                                   ; preds = %bb.p
  %.not9.i = icmp eq ptr %i.f, %1
  tail call void @llvm.assume(i1 %.not9.i)
  br label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit

.lr.ph.i56:                                       ; preds = %bb.p, %.lr.ph.i56
  %.110.i = phi i64 [ %i.by, %.lr.ph.i56 ], [ %i.m, %bb.p ]
  %i.bx = phi ptr [ %i.bz, %.lr.ph.i56 ], [ %2, %bb.p ]
  %i.by = add nsw i64 %.110.i, -1                 ; 2 uses
  %i.bz = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.bx) #25 ; 2 uses
  %.not.i57 = icmp eq i64 %i.by, 0
  br i1 %.not.i57, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i56, !llvm.loop !411

_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph.i56, %.preheader.i.a
  %.sroa.0.0 = phi ptr [ %2, %.preheader.i.a ], [ %i.bz, %.lr.ph.i56 ] ; 3 uses
  %i.ca = tail call noundef ptr @_ZSt16__do_uninit_copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_ET0_T_S8_S7_(ptr %.sroa.0.0, ptr %3, ptr noundef %i.f) ; 0 uses
  %i.cb = sub nuw i64 %i.b, %i.m
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !24
  %i.ce = tail call noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN4cvc58internal12NodeTemplateILb1EEEES5_ET0_T_S8_S7_(ptr %1, ptr %i.f, ptr noundef %i.cd) ; 0 uses
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.l
  store ptr %i.cg, ptr %i.e, align 8, !tbaa !24
  %.not6.i.i.i.i.i58 = icmp eq ptr %2, %.sroa.0.0
  br i1 %.not6.i.i.i.i.i58, label %_ZSt4copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65
  %.08.i.i.i.i.i60 = phi ptr [ %i.de, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65 ], [ %1, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 3 uses
  %.sroa.03.07.i.i.i.i.i61 = phi ptr [ %i.df, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65 ], [ %2, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i61, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %.08.i.i.i.i.i60, align 8, !tbaa !25 ; 4 uses
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !25
  %.not.i.i.i.i.i.i62 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i.i.i.i.i.i62, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65, label %bb.q, !prof !28

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i59
  %i.ck = load i64, ptr %i.ci, align 8            ; 3 uses
  %i.cl = and i64 %i.ck, 1152920405095219200
  %.not.i.i.i.i.i.i.i63 = icmp eq i64 %i.cl, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i63, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i64, label %bb.r, !prof !28

bb.r:                                             ; preds = %bb.q
  %i.cm = add i64 %i.ck, 1152920405095219200
  %i.cn = and i64 %i.cm, 1152920405095219200      ; 2 uses
  %i.co = and i64 %i.ck, -1152920405095219201
  %i.cp = or disjoint i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.ci, align 8
  %i.cq = icmp eq i64 %i.cn, 0
  br i1 %i.cq, label %bb.s, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i64, !prof !28

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ci)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i64

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i64: ; preds = %bb.s, %bb.r, %bb.q
  %i.cr = load ptr, ptr %i.ch, align 8, !tbaa !25 ; 5 uses
  store ptr %i.cr, ptr %.08.i.i.i.i.i60, align 8, !tbaa !25
  %i.cs = load i64, ptr %i.cr, align 8            ; 3 uses
  %i.ct = lshr i64 %i.cs, 40
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = and i32 %i.cu, 1048575                  ; 3 uses
  %i.cw = icmp samesign ult i32 %i.cv, 1048574
  br i1 %i.cw, label %bb.t, label %bb.u, !prof !43

bb.t:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i64
  %i.cx = add nuw nsw i32 %i.cv, 1
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 40
  %i.da = and i64 %i.cs, -1152920405095219201
  %i.db = or i64 %i.cz, %i.da
  store i64 %i.db, ptr %i.cr, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65

bb.u:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i64
  %i.dc = icmp eq i32 %i.cv, 1048574
  br i1 %i.dc, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65, !prof !28

bb.v:                                             ; preds = %bb.u
  %i.dd = or i64 %i.cs, 1152920405095219200
  store i64 %i.dd, ptr %i.cr, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cr)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65: ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph.i.i.i.i.i59
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i60, i64 8
  %i.df = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i61) #25 ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq ptr %i.df, %.sroa.0.0
  br i1 %.not.i.i.i.i.i66, label %_ZSt4copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !410

bb.w:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit
  %i.dg = load ptr, ptr %0, align 8, !tbaa !21    ; 6 uses
  %i.dh = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.di = sub i64 %i.h, %i.dh
  %i.dj = ashr exact i64 %i.di, 3                 ; 4 uses
  %i.dk = sub nsw i64 1152921504606846975, %i.dj
  %.not = icmp ugt i64 %i.dk, %.06.i
  br i1 %.not, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 %i.b)
  %i.dl = add nsw i64 %.sroa.speculated.i, %i.dj  ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.dj
  %i.dn = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 1152921504606846975)
  %i.do = select i1 %i.dm, i64 1152921504606846975, i64 %i.dn ; 4 uses
  %.not.i69 = icmp eq i64 %i.do, 0
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.dp = shl nuw nsw i64 %i.do, 3
  %i.dq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #24
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.y
  %i.dr = phi ptr [ %i.dq, %bb.y ], [ null, %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.ds = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef %i.dg, ptr noundef %1, ptr noundef %i.dr)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit unwind label %bb.ad ; 2 uses

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit
  %i.dt = invoke noundef ptr @_ZSt16__do_uninit_copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_ET0_T_S8_S7_(ptr %2, ptr %3, ptr noundef %i.ds)
          to label %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_S4_ET0_T_S8_S7_RSaIT1_E.exit unwind label %bb.ad ; 2 uses

_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_S4_ET0_T_S8_S7_RSaIT1_E.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.du = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_(ptr noundef %1, ptr noundef %i.f, ptr noundef %i.dt)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit70 unwind label %bb.ad

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit70: ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_S4_ET0_T_S8_S7_RSaIT1_E.exit
  %.not4.i.i = icmp eq ptr %i.dg, %i.f
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit70, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ef, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i ], [ %i.dg, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit70 ] ; 2 uses
  %i.dv = load ptr, ptr %.05.i.i, align 8, !tbaa !25 ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8            ; 3 uses
  %i.dx = and i64 %i.dw, 1152920405095219200
  %.not.i.i.i.i.i71 = icmp eq i64 %i.dx, 1152920405095219200
  br i1 %.not.i.i.i.i.i71, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, label %bb.z, !prof !28

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.dy = add i64 %i.dw, 1152920405095219200
  %i.dz = and i64 %i.dy, 1152920405095219200      ; 2 uses
  %i.ea = and i64 %i.dw, -1152920405095219201
  %i.eb = or disjoint i64 %i.dz, %i.ea
  store i64 %i.eb, ptr %i.dv, align 8
  %i.ec = icmp eq i64 %i.dz, 0
  br i1 %i.ec, label %bb.aa, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, !prof !28

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  tail call void @__clang_call_terminate(ptr %i.ee) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i: ; preds = %bb.aa, %bb.z, %.lr.ph.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ef, %i.f
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !29

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit70
  %.not.i72 = icmp eq ptr %i.dg, null
  br i1 %.not.i72, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.dh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.ei) #22
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, %bb.ac
  store ptr %i.dr, ptr %0, align 8, !tbaa !21
  store ptr %i.du, ptr %i.e, align 8, !tbaa !24
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.do
  store ptr %i.ej, ptr %i.c, align 8, !tbaa !31
  br label %_ZSt4copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SE_SD_.exit

bb.ad:                                            ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_S4_ET0_T_S8_S7_RSaIT1_E.exit, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit
  %.0 = phi ptr [ %i.dt, %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_S4_ET0_T_S8_S7_RSaIT1_E.exit ], [ %i.ds, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.dr, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit ]
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  %i.em = tail call ptr @__cxa_begin_catch(ptr %i.el) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %i.dr, ptr noundef %.0)
          to label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit unwind label %bb.af

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit: ; preds = %bb.ad
  %.not.i73 = icmp eq ptr %i.dr, null
  br i1 %.not.i73, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit74, label %bb.ae

bb.ae:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit
  %i.en = shl nuw nsw i64 %i.do, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.en) #22
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit74

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit74: ; preds = %bb.ae, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit
  invoke void @__cxa_rethrow() #23
          to label %bb.ai unwind label %bb.af

bb.af:                                            ; preds = %bb.ad, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit74
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  resume { ptr, i32 } %i.eo

_ZSt4copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SE_SD_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void

bb.ah:                                            ; preds = %bb.af
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  tail call void @__clang_call_terminate(ptr %i.eq) #21
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit74
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_ET0_T_S8_S7_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit
  %.014 = phi ptr [ %i.p, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 3 uses
  %.sroa.08.013 = phi ptr [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !25
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 40
  %i.k = and i64 %i.c, -1152920405095219201
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %i.b, align 8
  br label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.m = icmp eq i32 %i.f, 1048574
  br i1 %i.m, label %bb.d, label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit unwind label %bb.e

_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.08.013) #25 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !412

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #21
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !353  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !118    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
  unreachable

_ZNKSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !48
  store <2 x ptr> %i.t, ptr %i.q, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i32, ptr %i.u, align 4, !tbaa !49
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !49
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = atomicrmw volatile add ptr %i.u, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit

_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit: ; preds = %_ZNKSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !416)
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !48, !alias.scope !416, !noalias !413
  store ptr null, ptr %i.z, align 8, !tbaa !45, !alias.scope !416, !noalias !413
  store <2 x ptr> %i.aa, ptr %.012.i.i.i, align 8, !tbaa !48, !alias.scope !413, !noalias !416
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !115, !alias.scope !416, !noalias !413
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !390

_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt10shared_ptrIN4cvc58internal9ProofNodeEEC2ERKS3_.exit ], [ %i.ac, %.lr.ph.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ah, %.lr.ph.i.i.i18 ], [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 2 uses
  %.0911.i.i.i20 = phi ptr [ %i.ag, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8
  %i.af = load <2 x ptr>, ptr %.0911.i.i.i20, align 8, !tbaa !48, !alias.scope !421, !noalias !418
  store ptr null, ptr %i.ae, align 8, !tbaa !45, !alias.scope !421, !noalias !418
  store <2 x ptr> %i.af, ptr %.012.i.i.i19, align 8, !tbaa !48, !alias.scope !418, !noalias !421
  store ptr null, ptr %.0911.i.i.i20, align 8, !tbaa !115, !alias.scope !421, !noalias !418
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 16 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !390

_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ad, %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.ah, %.lr.ph.i.i.i18 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !384
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #22
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !118
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !353
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !384
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !423
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !350
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !355
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #20 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !423
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !350
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !348    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !111  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !105
  store ptr %i.w, ptr %3, align 8, !tbaa !105
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !111
  store ptr %3, ptr %i.x, align 8, !tbaa !105
  br label %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !394
  store ptr %i.z, ptr %3, align 8, !tbaa !105
  store ptr %3, ptr %i.y, align 8, !tbaa !394
  %i.aa = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !350
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !356
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !111
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !111
  br label %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !355
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !355
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !424
  br label %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN4cvc58internal9ProofNodeEbELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN4cvc58internal9ProofNodeEbELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN4cvc58internal9ProofNodeEbELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN4cvc58internal9ProofNodeEbELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !394
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !105 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !356
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !394
  store ptr %i.p, ptr %.02530, align 8, !tbaa !105
  store ptr %.02530, ptr %i.g, align 8, !tbaa !394
  store ptr %i.g, ptr %i.n, align 8, !tbaa !111
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !105
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !111
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !105
  store ptr %i.s, ptr %.02530, align 8, !tbaa !105
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !111
  store ptr %.02530, ptr %i.t, align 8, !tbaa !105
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !425

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !348    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !350
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #22
  br label %_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !350
  store ptr %.0.i, ptr %0, align 8, !tbaa !348
  ret void
}

declare noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN4cvc58internal4expr9NodeValue8iteratorINS1_12NodeTemplateILb1EEEEEPS6_ET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit
  %.0819 = phi ptr [ %i.aj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %2, %bb.a ] ; 3 uses
  %.sroa.010.018 = phi ptr [ %i.ai, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ], [ %0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.a = load ptr, ptr %.sroa.010.018, align 8, !tbaa !381, !noalias !426 ; 13 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !25, !alias.scope !426
  %i.b = load i64, ptr %i.a, align 8, !noalias !426 ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8, !noalias !426
  br label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8, !noalias !426
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit unwind label %bb.k

_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit: ; preds = %bb.c, %bb.b, %bb.d
  store ptr %i.a, ptr %.0819, align 8, !tbaa !25
  %i.n = load i64, ptr %i.a, align 8              ; 4 uses
  %i.o = lshr i64 %i.n, 40
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = and i32 %i.p, 1048575                    ; 3 uses
  %i.r = icmp samesign ult i32 %i.q, 1048574
  br i1 %i.r, label %bb.e, label %bb.f, !prof !43

bb.e:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.s = add nuw nsw i32 %i.q, 1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 40
  %i.v = and i64 %i.n, -1152920405095219201
  %i.w = or i64 %i.u, %i.v                        ; 2 uses
  store i64 %i.w, ptr %i.a, align 8
  br label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit

bb.f:                                             ; preds = %_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv.exit
  %i.x = icmp eq i32 %i.q, 1048574
  br i1 %i.x, label %bb.g, label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit, !prof !28

bb.g:                                             ; preds = %bb.f
  %i.y = or i64 %i.n, 1152920405095219200
  store i64 %i.y, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %._ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit_crit_edge unwind label %bb.l

._ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit_crit_edge: ; preds = %bb.g
  %.pre = load i64, ptr %i.a, align 8
  br label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit

_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit: ; preds = %._ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit_crit_edge, %bb.f, %bb.e
  %i.z = phi i64 [ %.pre, %._ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit_crit_edge ], [ %i.n, %bb.f ], [ %i.w, %bb.e ] ; 3 uses
  %i.aa = and i64 %i.z, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.aa, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.h, !prof !28

bb.h:                                             ; preds = %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit
  %i.ab = add i64 %i.z, 1152920405095219200
  %i.ac = and i64 %i.ab, 1152920405095219200      ; 2 uses
  %i.ad = and i64 %i.z, -1152920405095219201
  %i.ae = or disjoint i64 %i.ac, %i.ad
  store i64 %i.ae, ptr %i.a, align 8
  %i.af = icmp eq i64 %i.ac, 0
  br i1 %i.af, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !28

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.010.018, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !429

bb.k:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.l:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.al, %bb.l ], [ %i.ak, %bb.k ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.am = call ptr @__cxa_begin_catch(ptr %.0) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %2, ptr noundef %.0819)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_rethrow() #23
          to label %bb.r unwind label %bb.o

._crit_edge:                                      ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, %bb.a
  %.08.lcssa = phi ptr [ %2, %bb.a ], [ %i.aj, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit ]
  ret ptr %.08.lcssa

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.an

bb.q:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #21
  unreachable

bb.r:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, cvc5::internal::InstantiationList>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, cvc5::internal::InstantiationList>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %0, ptr %5, align 8, !tbaa !430
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24 ; 6 uses
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESI_IJEEEEEvPSt13_Rb_tree_nodeIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !432
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 1099511627775
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 1099511627775
  %i.p = icmp samesign ult i64 %i.l, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !129
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !129
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.b
  tail call void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.c) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #22
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.f
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !129
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !362  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627775
  %i.k = load ptr, ptr %2, align 8, !tbaa !25
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 1099511627775
  %i.n = icmp samesign ult i64 %i.j, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.o, align 8, !tbaa !362 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = load ptr, ptr %2, align 8, !tbaa !25
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1099511627775              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 1099511627775              ; 2 uses
  %i.w = icmp samesign ult i64 %i.r, %i.v         ; 2 uses
  %.in.v.i = select i1 %i.w, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !362 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !435

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.w, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127
  %i.z = icmp eq ptr %.019.lcssa29.i, %i.y
  br i1 %i.z, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #25 ; 2 uses
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.pre83 = load ptr, ptr %.phi.trans.insert82, align 8, !tbaa !25
  %.pre84 = load i64, ptr %.pre83, align 8
  %.pre85 = load ptr, ptr %2, align 8, !tbaa !25
  %.pre86 = load i64, ptr %.pre85, align 8
  %.pre87 = and i64 %.pre84, 1099511627775
  %.pre88 = and i64 %.pre86, 1099511627775
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.pre-phi89 = phi i64 [ %.pre88, %bb.f ], [ %i.r, %._crit_edge.i ]
  %.pre-phi = phi i64 [ %.pre87, %bb.f ], [ %i.v, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.aa, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.ab = icmp samesign ult i64 %.pre-phi, %.pre-phi89 ; 2 uses
  %spec.select.i = select i1 %i.ab, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.ab, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit

bb.h:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %2, align 8, !tbaa !25
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, 1099511627775            ; 8 uses
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, 1099511627775            ; 2 uses
  %i.aj = icmp samesign ult i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !362 ; 4 uses
  %i.am = icmp eq ptr %i.al, %1
  br i1 %i.am, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #25 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 1099511627775
  %i.as = icmp samesign ult i64 %i.ar, %i.af
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !398
  %i.av = icmp eq ptr %i.au, null                 ; 2 uses
  %spec.select = select i1 %i.av, ptr null, ptr %1
  %spec.select71 = select i1 %i.av, ptr %i.an, ptr %1
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.aw, align 8, !tbaa !362 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 1099511627775            ; 2 uses
  %i.bb = icmp samesign ult i64 %i.af, %i.ba      ; 2 uses
  %.in.v.i14 = select i1 %i.bb, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !362 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !435

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.bb, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.bc = icmp eq ptr %.019.lcssa29.i28, %i.al
  br i1 %i.bc, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.bd = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #25 ; 2 uses
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.pre80 = load ptr, ptr %.phi.trans.insert79, align 8, !tbaa !25
  %.pre81 = load i64, ptr %.pre80, align 8
  %.pre90 = and i64 %.pre81, 1099511627775
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %.pre-phi91 = phi i64 [ %.pre90, %bb.m ], [ %i.ba, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.bd, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.be = icmp samesign ult i64 %.pre-phi91, %i.af ; 2 uses
  %spec.select.i21 = select i1 %i.be, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.be, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit

bb.o:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i64 %i.ai, %i.af
  br i1 %i.bf, label %bb.p, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !362 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %1
  br i1 %i.bi, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #25 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !25
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, 1099511627775
  %i.bo = icmp samesign ult i64 %i.af, %i.bn
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !398
  %i.br = icmp eq ptr %i.bq, null                 ; 2 uses
  %spec.select72 = select i1 %i.br, ptr null, ptr %i.bj
  %spec.select73 = select i1 %i.br, ptr %1, ptr %i.bj
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit

bb.s:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bs, align 8, !tbaa !362 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !25
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = and i64 %i.bv, 1099511627775            ; 2 uses
  %i.bx = icmp samesign ult i64 %i.af, %i.bw      ; 2 uses
  %.in.v.i34 = select i1 %i.bx, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !362 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !435

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bx, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.ca = icmp eq ptr %.019.lcssa29.i48, %i.bz
  br i1 %i.ca, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.cb = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #25 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.pre78 = load i64, ptr %.pre, align 8
  %.pre92 = and i64 %.pre78, 1099511627775
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %.pre-phi93 = phi i64 [ %.pre92, %bb.t ], [ %i.bw, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.cb, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.cc = icmp samesign ult i64 %.pre-phi93, %i.af ; 2 uses
  %spec.select.i41 = select i1 %i.cc, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.cc, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE24_M_get_insert_unique_posERS5_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.al, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.bh, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.al, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !432  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.c) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESI_IJEEEEEvPSt13_Rb_tree_nodeIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %3, align 8, !tbaa !54
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !25
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i64 %i.e, 40
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 1048575                    ; 3 uses
  %i.i = icmp samesign ult i32 %i.h, 1048574
  br i1 %i.i, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.h, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 40
  %i.m = and i64 %i.e, -1152920405095219201
  %i.n = or i64 %i.l, %i.m
  store i64 %i.n, ptr %i.d, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.h, 1048574
  br i1 %i.o, label %bb.d, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.p = or i64 %i.e, 1152920405095219200
  store i64 %i.p, ptr %i.d, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i unwind label %bb.h

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  %i.r = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.j, !prof !380

bb.e:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i
  %i.t = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  %.not.i.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.g unwind label %.body.i.i  ; 3 uses

bb.g:                                             ; preds = %bb.f
  store i64 1152920405095219200, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store ptr %i.u, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !381
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  br label %bb.j

.body.i.i:                                        ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #20
  tail call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %i.a) #20
  br label %.body

bb.h:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.body.i.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.w, %.body.i.i ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %i.y) #20 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #22
  invoke void @__cxa_rethrow() #23
          to label %bb.m unwind label %bb.i

bb.i:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e, %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i.i
  %i.ab = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !381
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  ret void

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.aa

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #21
  unreachable

bb.m:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEENS1_17InstantiationListEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !436  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !367  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  tail call void @_ZN4cvc58internal16InstantiationVecD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.05.i.i.i.i) #20
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !437

_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !436
  br label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.g = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4cvc58internal16InstantiationVecESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !370
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #22
  br label %_ZNSt6vectorIN4cvc58internal16InstantiationVecESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN4cvc58internal16InstantiationVecESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = and i64 %i.n, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.o, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal17InstantiationListD2Ev.exit, label %bb.c, !prof !28

bb.c:                                             ; preds = %_ZNSt6vectorIN4cvc58internal16InstantiationVecESaIS2_EED2Ev.exit.i
  %i.p = add i64 %i.n, 1152920405095219200
  %i.q = and i64 %i.p, 1152920405095219200        ; 2 uses
  %i.r = and i64 %i.n, -1152920405095219201
  %i.s = or disjoint i64 %i.q, %i.r
  store i64 %i.s, ptr %i.m, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %bb.d, label %_ZN4cvc58internal17InstantiationListD2Ev.exit, !prof !28

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_ZN4cvc58internal17InstantiationListD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #21
  unreachable

_ZN4cvc58internal17InstantiationListD2Ev.exit:    ; preds = %_ZNSt6vectorIN4cvc58internal16InstantiationVecESaIS2_EED2Ev.exit.i, %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = and i64 %i.x, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.y, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %_ZN4cvc58internal17InstantiationListD2Ev.exit
  %i.z = add i64 %i.x, 1152920405095219200
  %i.aa = and i64 %i.z, 1152920405095219200       ; 2 uses
  %i.ab = and i64 %i.x, -1152920405095219201
  %i.ac = or disjoint i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = icmp eq i64 %i.aa, 0
  br i1 %i.ad, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !28

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZN4cvc58internal17InstantiationListD2Ev.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal16InstantiationVecESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !367  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !436    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4cvc58internal16InstantiationVecESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
  unreachable

_ZNKSt6vectorIN4cvc58internal16InstantiationVecESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = load <2 x ptr>, ptr %2, align 8, !tbaa !54
  store <2 x ptr> %i.r, ptr %i.q, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  store ptr %i.u, ptr %i.s, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !371
  store i32 %i.x, ptr %i.v, align 8, !tbaa !371
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 5 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !25
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = lshr i64 %i.ab, 40
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1048575                  ; 3 uses
  %i.af = icmp samesign ult i32 %i.ae, 1048574
  br i1 %i.af, label %bb.c, label %bb.d, !prof !43

bb.c:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal16InstantiationVecESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ag = add nuw nsw i32 %i.ae, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 40
  %i.aj = and i64 %i.ab, -1152920405095219201
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.aa, align 8
  br label %_ZNSt16allocator_traitsISaIN4cvc58internal16InstantiationVecEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit

bb.d:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal16InstantiationVecESaIS2_EE12_M_check_lenEmPKc.exit
  %i.al = icmp eq i32 %i.ae, 1048574
  br i1 %i.al, label %bb.e, label %_ZNSt16allocator_traitsISaIN4cvc58internal16InstantiationVecEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.am = or i64 %i.ab, 1152920405095219200
  store i64 %i.am, ptr %i.aa, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_ZNSt16allocator_traitsISaIN4cvc58internal16InstantiationVecEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit unwind label %.thread

.thread:                                          ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(40) %i.q) #20
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  %i.ap = tail call ptr @__cxa_begin_catch(ptr %i.ao) #20 ; 0 uses
  br label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit

_ZNSt16allocator_traitsISaIN4cvc58internal16InstantiationVecEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %bb.e, %bb.d, %bb.c
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN4cvc58internal16InstantiationVecEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit, %_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN4cvc58internal16InstantiationVecEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN4cvc58internal16InstantiationVecEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN4cvc58internal16InstantiationVecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 40 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !438

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #20 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.f ] ; 2 uses
  tail call void @_ZN4cvc58internal16InstantiationVecD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.05.i.i.i.i.i.i.i) #20
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !437

_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  invoke void @__cxa_rethrow() #23
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit.i.i.i.i.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit.thread unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #21
  unreachable

bb.i:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN4cvc58internal16InstantiationVecEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN4cvc58internal16InstantiationVecEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.ar, %_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 40 ; 3 uses
  %.not14.i.i.i.i.i31 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i31, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit45, label %.lr.ph.i.i.i.i.i32

.lr.ph.i.i.i.i.i32:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40
  %.016.i.i.i.i.i33.idx = phi i64 [ %.016.i.i.i.i.i33.add, %_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40 ], [ 40, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i34 = phi ptr [ %i.az, %_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i33.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i33.idx ; 2 uses
  invoke void @_ZN4cvc58internal16InstantiationVecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %.016.i.i.i.i.i33.ptr, ptr noundef nonnull align 8 dereferenceable(40) %.01215.i.i.i.i.i34)
          to label %_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40 unwind label %bb.j

_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i.i32
  %i.az = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i34, i64 40 ; 2 uses
  %.016.i.i.i.i.i33.add = add nuw nsw i64 %.016.i.i.i.i.i33.idx, 40 ; 2 uses
  %.not.i.i.i.i.i41 = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i.i.i.i41, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit45.loopexit, label %.lr.ph.i.i.i.i.i32, !llvm.loop !438

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i32
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %i.bb) #20 ; 0 uses
  %.not4.i.i.i.i.i.i.i35 = icmp eq i64 %.016.i.i.i.i.i33.idx, 40
  br i1 %.not4.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i.i36:                           ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i36
  %.05.i.i.i.i.i.i.i37 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i36 ], [ %.ptr, %bb.j ] ; 2 uses
  tail call void @_ZN4cvc58internal16InstantiationVecD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.05.i.i.i.i.i.i.i37) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i37, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i38 = icmp eq ptr %i.bd, %.016.i.i.i.i.i33.ptr
  br i1 %.not.i.i.i.i.i.i.i38, label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit.i.i.i.i.i39, label %.lr.ph.i.i.i.i.i.i.i36, !llvm.loop !437

_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit.i.i.i.i.i39: ; preds = %.lr.ph.i.i.i.i.i.i.i36, %bb.j
  invoke void @__cxa_rethrow() #23
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit.i.i.i.i.i39
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #21
  unreachable

bb.m:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit.i.i.i.i.i39
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit45.loopexit: ; preds = %_ZSt10_ConstructIN4cvc58internal16InstantiationVecEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i40
  %.ptr62.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i33.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit45

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit45: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit45.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i42 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %.ptr62.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit45.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit45, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit45 ] ; 2 uses
  tail call void @_ZN4cvc58internal16InstantiationVecD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.05.i.i) #20
  %i.bh = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bh, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !437

_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal16InstantiationVecES3_SaIS2_EET0_T_S6_S5_RT1_.exit45
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i46 = icmp eq ptr %i.c, null
  br i1 %.not.i46, label %_ZNSt12_Vector_baseIN4cvc58internal16InstantiationVecESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !370
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bl) #22
  br label %_ZNSt12_Vector_baseIN4cvc58internal16InstantiationVecESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4cvc58internal16InstantiationVecESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecEEvT_S4_.exit, %bb.n
  store ptr %i.p, ptr %0, align 8, !tbaa !436
  store ptr %.0.lcssa.i.i.i.i.i42, ptr %i.a, align 8, !tbaa !367
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !370
  ret void

_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.g
  %i.bn = extractvalue { ptr, i32 } %i.aw, 0
  %i.bo = tail call ptr @__cxa_begin_catch(ptr %i.bn) #20 ; 0 uses
  tail call void @_ZN4cvc58internal16InstantiationVecD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.q) #20
  br label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit

bb.o:                                             ; preds = %bb.k
  %i.bp = extractvalue { ptr, i32 } %i.be, 0
  %i.bq = tail call ptr @__cxa_begin_catch(ptr %i.bp) #20 ; 0 uses
  %.not4.i.i47 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i47, label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.o, %.lr.ph.i.i48
  %.05.i.i49 = phi ptr [ %i.br, %.lr.ph.i.i48 ], [ %i.p, %bb.o ] ; 3 uses
  tail call void @_ZN4cvc58internal16InstantiationVecD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.05.i.i49) #20
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i49, i64 40
  %.not.i.i50 = icmp eq ptr %.05.i.i49, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i50, label %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i48, !llvm.loop !437

bb.p:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit: ; preds = %.lr.ph.i.i48, %.thread, %bb.o, %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #22
  invoke void @__cxa_rethrow() #23
          to label %bb.s unwind label %bb.p

bb.q:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.bs

bb.r:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #21
  unreachable

bb.s:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal16InstantiationVecES2_EvT_S4_RSaIT0_E.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4cvc58internal16InstantiationVecC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i, !prof !28

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN4cvc58internal12NodeTemplateILb1EEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !31
  %i.m = load ptr, ptr %1, align 8, !tbaa !54
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.o = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %i.m, ptr %i.n, ptr noundef %i.i)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !21     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.p, %bb.e ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.o, ptr %i.j, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !371
  store i32 %i.x, ptr %i.v, align 8, !tbaa !371
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 5 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !25
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  %i.ac = lshr i64 %i.ab, 40
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = and i32 %i.ad, 1048575                  ; 3 uses
  %i.af = icmp samesign ult i32 %i.ae, 1048574
  br i1 %i.af, label %bb.f, label %bb.g, !prof !43

bb.f:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit
  %i.ag = add nuw nsw i32 %i.ae, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 40
  %i.aj = and i64 %i.ab, -1152920405095219201
  %i.ak = or i64 %i.ai, %i.aj
  store i64 %i.ak, ptr %i.aa, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit

bb.g:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EEC2ERKS5_.exit
  %i.al = icmp eq i32 %i.ae, 1048574
  br i1 %i.al, label %bb.h, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit, !prof !28

bb.h:                                             ; preds = %bb.g
  %i.am = or i64 %i.ab, 1152920405095219200
  store i64 %i.am, ptr %i.aa, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit unwind label %bb.i

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit: ; preds = %bb.g, %bb.f, %bb.h
  ret void

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %0, ptr %5, align 8, !tbaa !439
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24 ; 6 uses
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !441
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 1099511627775
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 1099511627775
  %i.p = icmp samesign ult i64 %i.l, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !129
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !129
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.b
  tail call void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #22
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.f
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !129
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !362  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627775
  %i.k = load ptr, ptr %2, align 8, !tbaa !25
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 1099511627775
  %i.n = icmp samesign ult i64 %i.j, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.o, align 8, !tbaa !362 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = load ptr, ptr %2, align 8, !tbaa !25
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1099511627775              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 1099511627775              ; 2 uses
  %i.w = icmp samesign ult i64 %i.r, %i.v         ; 2 uses
  %.in.v.i = select i1 %i.w, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !362 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !444

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.w, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !127
  %i.z = icmp eq ptr %.019.lcssa29.i, %i.y
  br i1 %i.z, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #25 ; 2 uses
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.pre83 = load ptr, ptr %.phi.trans.insert82, align 8, !tbaa !25
  %.pre84 = load i64, ptr %.pre83, align 8
  %.pre85 = load ptr, ptr %2, align 8, !tbaa !25
  %.pre86 = load i64, ptr %.pre85, align 8
  %.pre87 = and i64 %.pre84, 1099511627775
  %.pre88 = and i64 %.pre86, 1099511627775
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %.pre-phi89 = phi i64 [ %.pre88, %bb.f ], [ %i.r, %._crit_edge.i ]
  %.pre-phi = phi i64 [ %.pre87, %bb.f ], [ %i.v, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.aa, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.ab = icmp samesign ult i64 %.pre-phi, %.pre-phi89 ; 2 uses
  %spec.select.i = select i1 %i.ab, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.ab, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit

bb.h:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %2, align 8, !tbaa !25
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, 1099511627775            ; 8 uses
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !25
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, 1099511627775            ; 2 uses
  %i.aj = icmp samesign ult i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !362 ; 4 uses
  %i.am = icmp eq ptr %i.al, %1
  br i1 %i.am, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #25 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !25
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 1099511627775
  %i.as = icmp samesign ult i64 %i.ar, %i.af
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !398
  %i.av = icmp eq ptr %i.au, null                 ; 2 uses
  %spec.select = select i1 %i.av, ptr null, ptr %1
  %spec.select71 = select i1 %i.av, ptr %i.an, ptr %1
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.aw, align 8, !tbaa !362 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 1099511627775            ; 2 uses
  %i.bb = icmp samesign ult i64 %i.af, %i.ba      ; 2 uses
  %.in.v.i14 = select i1 %i.bb, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !362 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !444

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.bb, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.bc = icmp eq ptr %.019.lcssa29.i28, %i.al
  br i1 %i.bc, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.bd = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #25 ; 2 uses
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.pre80 = load ptr, ptr %.phi.trans.insert79, align 8, !tbaa !25
  %.pre81 = load i64, ptr %.pre80, align 8
  %.pre90 = and i64 %.pre81, 1099511627775
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %.pre-phi91 = phi i64 [ %.pre90, %bb.m ], [ %i.ba, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.bd, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.be = icmp samesign ult i64 %.pre-phi91, %i.af ; 2 uses
  %spec.select.i21 = select i1 %i.be, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.be, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit

bb.o:                                             ; preds = %bb.h
  %i.bf = icmp samesign ult i64 %i.ai, %i.af
  br i1 %i.bf, label %bb.p, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !362 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %1
  br i1 %i.bi, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #25 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !25
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, 1099511627775
  %i.bo = icmp samesign ult i64 %i.af, %i.bn
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !398
  %i.br = icmp eq ptr %i.bq, null                 ; 2 uses
  %spec.select72 = select i1 %i.br, ptr null, ptr %i.bj
  %spec.select73 = select i1 %i.br, ptr %1, ptr %i.bj
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit

bb.s:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bs, align 8, !tbaa !362 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !25
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = and i64 %i.bv, 1099511627775            ; 2 uses
  %i.bx = icmp samesign ult i64 %i.af, %i.bw      ; 2 uses
  %.in.v.i34 = select i1 %i.bx, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !362 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !444

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bx, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.ca = icmp eq ptr %.019.lcssa29.i48, %i.bz
  br i1 %i.ca, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.cb = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #25 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.pre78 = load i64, ptr %.pre, align 8
  %.pre92 = and i64 %.pre78, 1099511627775
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %.pre-phi93 = phi i64 [ %.pre92, %bb.t ], [ %i.bw, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.cb, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.cc = icmp samesign ult i64 %.pre-phi93, %i.af ; 2 uses
  %spec.select.i41 = select i1 %i.cc, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.cc, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.al, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.bh, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.al, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !441  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESK_IJEEEEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %3, align 8, !tbaa !54
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !25
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i64 %i.e, 40
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 1048575                    ; 3 uses
  %i.i = icmp samesign ult i32 %i.h, 1048574
  br i1 %i.i, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw nsw i32 %i.h, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 40
  %i.m = and i64 %i.e, -1152920405095219201
  %i.n = or i64 %i.l, %i.m
  store i64 %i.n, ptr %i.d, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.o = icmp eq i32 %i.h, 1048574
  br i1 %i.o, label %bb.d, label %bb.g, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.p = or i64 %i.e, 1152920405095219200
  store i64 %i.p, ptr %i.d, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #20 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #22
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  ret void

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #21
  unreachable

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !25 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = and i64 %i.f, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.g, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, label %bb.b, !prof !28

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = add i64 %i.f, 1152920405095219200
  %i.i = and i64 %i.h, 1152920405095219200        ; 2 uses
  %i.j = and i64 %i.f, -1152920405095219201
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.e, align 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %bb.c, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i, !prof !28

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #21
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !29

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.e
  %i.v = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = and i64 %i.w, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.x, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit
  %i.y = add i64 %i.w, 1152920405095219200
  %i.z = and i64 %i.y, 1152920405095219200        ; 2 uses
  %i.aa = and i64 %i.w, -1152920405095219201
  %i.ab = or disjoint i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %bb.g, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit, !prof !28

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #21
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit:   ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev.exit, %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4cvc58internal12SolverEngineD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS3_SJ_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<cvc5::internal::NodeTemplate<true>, cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>, std::__detail::_Identity, std::equal_to<cvc5::internal::NodeTemplate<true>>, std::hash<cvc5::internal::Node>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, true, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.023.0.in = phi ptr [ %i.c, %bb.b ], [ %.sroa.023.0, %bb.d ]
  %.sroa.023.0 = load ptr, ptr %.sroa.023.0.in, align 8, !tbaa !105 ; 4 uses
  %.not = icmp eq ptr %.sroa.023.0, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.023.0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZNKSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %bb.c, !llvm.loop !445

.thread:                                          ; preds = %bb.c, %bb.a
  %i.h = tail call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !108  ; 2 uses
  %i.k = urem i64 %i.h, %i.j                      ; 3 uses
  %i.l = load i64, ptr %i.a, align 8, !tbaa !109
  %.not30 = icmp eq i64 %i.l, 0
  br i1 %.not30, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.m = load ptr, ptr %0, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.k
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111  ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !105  ; 4 uses
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !112
  %i.u = icmp eq i64 %i.h, %i.t
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = icmp eq ptr %i.q, %i.v
  %i.x = select i1 %i.u, i1 %i.w, i1 false
  br i1 %i.x, label %_ZNKSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.z = icmp eq i64 %i.h, %i.af
  %i.aa = load ptr, ptr %i.y, align 8
  %i.ab = icmp eq ptr %i.q, %i.aa
  %i.ac = select i1 %i.z, i1 %i.ab, i1 false
  br i1 %i.ac, label %_ZNKSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !446

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.p, %bb.f ]
  %i.ad = load ptr, ptr %.020.i.i, align 8, !tbaa !105 ; 5 uses
  %.not18.i.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !112 ; 2 uses
  %i.ag = urem i64 %i.af, %i.j
  %.not19.i.i = icmp eq i64 %i.ag, %i.k
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !446

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !446

.critedge:                                        ; preds = %.lr.ph.i.i, %..loopexit_crit_edge21.i.i, %bb.e, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ah = load ptr, ptr %3, align 8, !tbaa !447, !nonnull !19
  %i.ai = tail call noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE16_M_allocate_nodeIJRKS5_EEEPS6_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  store ptr %0, ptr %4, align 8, !tbaa !449
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !452
  %i.ak = invoke ptr @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k, i64 noundef %i.h, ptr noundef %i.ai, i64 noundef 1)
          to label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZNKSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit

bb.i:                                             ; preds = %.critedge
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.al

_ZNKSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit: ; preds = %bb.d, %bb.g, %bb.f, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit
  %.sroa.026.1 = phi ptr [ %i.ak, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ %i.ad, %bb.g ], [ %i.p, %bb.f ], [ %.sroa.023.0, %bb.d ]
  %.sroa.4.1 = phi i8 [ 1, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.026.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !423
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #20 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !423
  invoke void @__cxa_rethrow() #23
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #21
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !108
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.t, align 8, !tbaa !112
  %i.u = load ptr, ptr %0, align 8, !tbaa !107    ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !111  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105
  store ptr %i.x, ptr %3, align 8, !tbaa !105
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !111
  store ptr %3, ptr %i.y, align 8, !tbaa !105
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  store ptr %i.aa, ptr %3, align 8, !tbaa !105
  store ptr %3, ptr %i.z, align 8, !tbaa !97
  %i.ab = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !112
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !111
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !111
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !109
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !109
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !452  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit, !prof !28

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #21
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #22
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit, %bb.a
  ret void
}

declare noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE16_M_allocate_nodeIJRKS5_EEEPS6_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 4 uses
  store ptr null, ptr %i.a, align 8, !tbaa !105
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %1, align 8, !tbaa !25     ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !25
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = lshr i64 %i.d, 40
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 1048575                    ; 3 uses
  %i.h = icmp samesign ult i32 %i.g, 1048574
  br i1 %i.h, label %bb.b, label %bb.c, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.i = add nuw nsw i32 %i.g, 1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 40
  %i.l = and i64 %i.d, -1152920405095219201
  %i.m = or i64 %i.k, %i.l
  store i64 %i.m, ptr %i.c, align 8
  br label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE9constructIS5_JRKS5_EEEvRS7_PT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %i.g, 1048574
  br i1 %i.n, label %bb.d, label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE9constructIS5_JRKS5_EEEvRS7_PT_DpOT0_.exit, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.o = or i64 %i.d, 1152920405095219200
  store i64 %i.o, ptr %i.c, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE9constructIS5_JRKS5_EEEvRS7_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE9constructIS5_JRKS5_EEEvRS7_PT_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.d
  ret ptr %i.a

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #20 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #22
  invoke void @__cxa_rethrow() #23
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.s

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #21
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !453
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !97
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !105 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !112
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !111  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !97
  store ptr %i.o, ptr %.02530, align 8, !tbaa !105
  store ptr %.02530, ptr %i.g, align 8, !tbaa !97
  store ptr %i.g, ptr %i.m, align 8, !tbaa !111
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !105
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !111
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !105
  store ptr %i.r, ptr %.02530, align 8, !tbaa !105
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !111
  store ptr %.02530, ptr %i.s, align 8, !tbaa !105
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !454

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !107    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !108
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #22
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !108
  store ptr %.0.i, ptr %0, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !109
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105  ; 4 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = icmp eq ptr %i.e, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit, label %.lr.ph, !llvm.loop !455

.lr.ph:                                           ; preds = %.preheader.i, %bb.c
  %.016.i34 = phi ptr [ %i.l, %bb.c ], [ %i.d, %.preheader.i ] ; 2 uses
  %i.l = load ptr, ptr %.016.i34, align 8, !tbaa !105 ; 4 uses
  %.not14.i = icmp eq ptr %i.l, null
  br i1 %.not14.i, label %.critedge, label %bb.c, !llvm.loop !455

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit: ; preds = %bb.c, %.preheader.i
  %i.m = phi ptr [ %i.d, %.preheader.i ], [ %i.l, %bb.c ] ; 2 uses
  %.01115.i.lcssa = phi ptr [ %i.c, %.preheader.i ], [ %.016.i34, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !108
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !112
  %i.r = urem i64 %i.q, %i.o
  br label %_ZNKSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit

bb.d:                                             ; preds = %bb.a
  %i.s = tail call noundef i64 @_ZNKSt4hashIN4cvc58internal12NodeTemplateILb1EEEEclERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !108  ; 2 uses
  %i.v = urem i64 %i.s, %i.u                      ; 4 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !111  ; 3 uses
  %.not.i24 = icmp eq ptr %i.y, null
  br i1 %.not.i24, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !105  ; 4 uses
  %i.aa = load ptr, ptr %1, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !112
  %i.ae = icmp eq i64 %i.s, %i.ad
  %i.af = load ptr, ptr %i.ab, align 8
  %i.ag = icmp eq ptr %i.aa, %i.af
  %i.ah = select i1 %i.ae, i1 %i.ag, i1 false
  br i1 %i.ah, label %_ZNKSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit, label %.lr.ph.i

bb.f:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aj = icmp eq i64 %i.s, %i.ap
  %i.ak = load ptr, ptr %i.ai, align 8
  %i.al = icmp eq ptr %i.aa, %i.ak
  %i.am = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %i.am, label %_ZNKSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit, label %.lr.ph.i, !llvm.loop !114

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.020.i = phi ptr [ %i.an, %bb.f ], [ %i.z, %bb.e ] ; 2 uses
  %i.an = load ptr, ptr %.020.i, align 8, !tbaa !105 ; 5 uses
  %.not18.i = icmp eq ptr %i.an, null
  br i1 %.not18.i, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !112 ; 2 uses
  %i.aq = urem i64 %i.ap, %i.u
  %.not19.i = icmp eq i64 %i.aq, %i.v
  br i1 %.not19.i, label %bb.f, label %..loopexit_crit_edge21.i, !llvm.loop !114

..loopexit_crit_edge21.i:                         ; preds = %bb.g
  br label %.critedge, !llvm.loop !114

_ZNKSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit: ; preds = %bb.f, %bb.e, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit
  %.020 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.y, %bb.e ], [ %.020.i, %bb.f ]
  %.119 = phi ptr [ %i.m, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.z, %bb.e ], [ %i.an, %bb.f ]
  %.017 = phi i64 [ %i.r, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeERKS3_.exit ], [ %i.v, %bb.e ], [ %i.v, %bb.f ]
  %i.ar = tail call ptr @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.017, ptr noundef nonnull %.020, ptr noundef nonnull %.119) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph.i, %.lr.ph, %..loopexit_crit_edge21.i, %bb.d, %bb.b, %_ZNKSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit
  %.1 = phi i64 [ 1, %_ZNKSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_find_before_nodeEmRKS3_m.exit ], [ 0, %.lr.ph ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %..loopexit_crit_edge21.i ], [ 0, %.lr.ph.i ]
  ret i64 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseEmPNS5_15_Hash_node_baseEPNS5_10_Hash_nodeIS3_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !111  ; 2 uses
  %i.d = icmp eq ptr %2, %i.c
  %i.e = load ptr, ptr %3, align 8, !tbaa !105    ; 4 uses
  %.not18 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not18, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !112
  %i.j = urem i64 %i.i, %i.g                      ; 2 uses
  %.not9.i = icmp eq i64 %i.j, %1
  br i1 %.not9.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j
  store ptr %i.c, ptr %i.k, align 8, !tbaa !111
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %2
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  store ptr %i.e, ptr %i.l, align 8, !tbaa !97
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  store ptr null, ptr %i.b, align 8, !tbaa !111
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEEm.exit

bb.g:                                             ; preds = %bb.a
  br i1 %.not18, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !108
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !112
  %i.r = urem i64 %i.q, %i.o                      ; 2 uses
  %.not17 = icmp eq i64 %i.r, %1
  br i1 %.not17, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r
  store ptr %2, ptr %i.s, align 8, !tbaa !111
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEEm.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEEm.exit: ; preds = %bb.f, %bb.c, %bb.h, %bb.i, %bb.g
  %i.t = load ptr, ptr %3, align 8, !tbaa !105    ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !105
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25   ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = and i64 %i.w, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.x, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit, label %bb.j, !prof !28

bb.j:                                             ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEEm.exit
  %i.y = add i64 %i.w, 1152920405095219200
  %i.z = and i64 %i.y, 1152920405095219200        ; 2 uses
  %i.aa = and i64 %i.w, -1152920405095219201
  %i.ab = or disjoint i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %bb.k, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit, !prof !28

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #21
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS5_10_Hash_nodeIS3_Lb1EEEm.exit, %bb.j, %bb.k
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef 24) #22
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !109
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !109
  ret ptr %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !21     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #23
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !25     ; 5 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !25
  %i.s = load i64, ptr %i.r, align 8              ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!213 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options8HolderFPESt14default_deleteIS3_EEE", !214, i64 0}
!214 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options8HolderFPESt14default_deleteIS3_EEE", !215, i64 0}
!215 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options8HolderFPELb0EE", !216, i64 0}
!216 = !{!"p1 _ZTSN4cvc58internal7options8HolderFPE", !12, i64 0}
!217 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options12HolderDRIVERESt14default_deleteIS3_EE", !218, i64 0}
!218 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options12HolderDRIVERESt14default_deleteIS3_ELb1ELb1EE", !219, i64 0}
!219 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options12HolderDRIVERESt14default_deleteIS3_EE", !220, i64 0}
!220 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options12HolderDRIVERESt14default_deleteIS3_EEE", !221, i64 0}
!221 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options12HolderDRIVERESt14default_deleteIS3_EEE", !222, i64 0}
!222 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options12HolderDRIVERELb0EE", !223, i64 0}
!223 = !{!"p1 _ZTSN4cvc58internal7options12HolderDRIVERE", !12, i64 0}
!224 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options14HolderPARALLELESt14default_deleteIS3_EE", !225, i64 0}
!225 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options14HolderPARALLELESt14default_deleteIS3_ELb1ELb1EE", !226, i64 0}
!226 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options14HolderPARALLELESt14default_deleteIS3_EE", !227, i64 0}
!227 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options14HolderPARALLELESt14default_deleteIS3_EEE", !228, i64 0}
!228 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options14HolderPARALLELESt14default_deleteIS3_EEE", !229, i64 0}
!229 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options14HolderPARALLELELb0EE", !230, i64 0}
!230 = !{!"p1 _ZTSN4cvc58internal7options14HolderPARALLELE", !12, i64 0}
!231 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options12HolderPARSERESt14default_deleteIS3_EE", !232, i64 0}
!232 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options12HolderPARSERESt14default_deleteIS3_ELb1ELb1EE", !233, i64 0}
!233 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options12HolderPARSERESt14default_deleteIS3_EE", !234, i64 0}
!234 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options12HolderPARSERESt14default_deleteIS3_EEE", !235, i64 0}
!235 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options12HolderPARSERESt14default_deleteIS3_EEE", !236, i64 0}
!236 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options12HolderPARSERELb0EE", !237, i64 0}
!237 = !{!"p1 _ZTSN4cvc58internal7options12HolderPARSERE", !12, i64 0}
!238 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options13HolderPRINTERESt14default_deleteIS3_EE", !239, i64 0}
!239 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options13HolderPRINTERESt14default_deleteIS3_ELb1ELb1EE", !240, i64 0}
!240 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options13HolderPRINTERESt14default_deleteIS3_EE", !241, i64 0}
!241 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options13HolderPRINTERESt14default_deleteIS3_EEE", !242, i64 0}
!242 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options13HolderPRINTERESt14default_deleteIS3_EEE", !243, i64 0}
!243 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options13HolderPRINTERELb0EE", !244, i64 0}
!244 = !{!"p1 _ZTSN4cvc58internal7options13HolderPRINTERE", !12, i64 0}
!245 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options11HolderPROOFESt14default_deleteIS3_EE", !246, i64 0}
!246 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options11HolderPROOFESt14default_deleteIS3_ELb1ELb1EE", !247, i64 0}
!247 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options11HolderPROOFESt14default_deleteIS3_EE", !248, i64 0}
!248 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options11HolderPROOFESt14default_deleteIS3_EEE", !249, i64 0}
!249 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options11HolderPROOFESt14default_deleteIS3_EEE", !250, i64 0}
!250 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options11HolderPROOFELb0EE", !251, i64 0}
!251 = !{!"p1 _ZTSN4cvc58internal7options11HolderPROOFE", !12, i64 0}
!252 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options10HolderPROPESt14default_deleteIS3_EE", !253, i64 0}
!253 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options10HolderPROPESt14default_deleteIS3_ELb1ELb1EE", !254, i64 0}
!254 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options10HolderPROPESt14default_deleteIS3_EE", !255, i64 0}
!255 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options10HolderPROPESt14default_deleteIS3_EEE", !256, i64 0}
!256 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options10HolderPROPESt14default_deleteIS3_EEE", !257, i64 0}
!257 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options10HolderPROPELb0EE", !258, i64 0}
!258 = !{!"p1 _ZTSN4cvc58internal7options10HolderPROPE", !12, i64 0}
!259 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options17HolderQUANTIFIERSESt14default_deleteIS3_EE", !260, i64 0}
!260 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options17HolderQUANTIFIERSESt14default_deleteIS3_ELb1ELb1EE", !261, i64 0}
!261 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options17HolderQUANTIFIERSESt14default_deleteIS3_EE", !262, i64 0}
!262 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options17HolderQUANTIFIERSESt14default_deleteIS3_EEE", !263, i64 0}
!263 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options17HolderQUANTIFIERSESt14default_deleteIS3_EEE", !264, i64 0}
!264 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options17HolderQUANTIFIERSELb0EE", !265, i64 0}
!265 = !{!"p1 _ZTSN4cvc58internal7options17HolderQUANTIFIERSE", !12, i64 0}
!266 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options9HolderSEPESt14default_deleteIS3_EE", !267, i64 0}
!267 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options9HolderSEPESt14default_deleteIS3_ELb1ELb1EE", !268, i64 0}
!268 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options9HolderSEPESt14default_deleteIS3_EE", !269, i64 0}
!269 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options9HolderSEPESt14default_deleteIS3_EEE", !270, i64 0}
!270 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options9HolderSEPESt14default_deleteIS3_EEE", !271, i64 0}
!271 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options9HolderSEPELb0EE", !272, i64 0}
!272 = !{!"p1 _ZTSN4cvc58internal7options9HolderSEPE", !12, i64 0}
!273 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options10HolderSETSESt14default_deleteIS3_EE", !274, i64 0}
!274 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options10HolderSETSESt14default_deleteIS3_ELb1ELb1EE", !275, i64 0}
!275 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options10HolderSETSESt14default_deleteIS3_EE", !276, i64 0}
!276 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options10HolderSETSESt14default_deleteIS3_EEE", !277, i64 0}
!277 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options10HolderSETSESt14default_deleteIS3_EEE", !278, i64 0}
!278 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options10HolderSETSELb0EE", !279, i64 0}
!279 = !{!"p1 _ZTSN4cvc58internal7options10HolderSETSE", !12, i64 0}
!280 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options9HolderSMTESt14default_deleteIS3_EE", !281, i64 0}
!281 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options9HolderSMTESt14default_deleteIS3_ELb1ELb1EE", !282, i64 0}
!282 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options9HolderSMTESt14default_deleteIS3_EE", !283, i64 0}
!283 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options9HolderSMTESt14default_deleteIS3_EEE", !284, i64 0}
!284 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options9HolderSMTESt14default_deleteIS3_EEE", !285, i64 0}
!285 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options9HolderSMTELb0EE", !286, i64 0}
!286 = !{!"p1 _ZTSN4cvc58internal7options9HolderSMTE", !12, i64 0}
!287 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options13HolderSTRINGSESt14default_deleteIS3_EE", !288, i64 0}
!288 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options13HolderSTRINGSESt14default_deleteIS3_ELb1ELb1EE", !289, i64 0}
!289 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options13HolderSTRINGSESt14default_deleteIS3_EE", !290, i64 0}
!290 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options13HolderSTRINGSESt14default_deleteIS3_EEE", !291, i64 0}
!291 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options13HolderSTRINGSESt14default_deleteIS3_EEE", !292, i64 0}
!292 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options13HolderSTRINGSELb0EE", !293, i64 0}
!293 = !{!"p1 _ZTSN4cvc58internal7options13HolderSTRINGSE", !12, i64 0}
!294 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options12HolderTHEORYESt14default_deleteIS3_EE", !295, i64 0}
!295 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options12HolderTHEORYESt14default_deleteIS3_ELb1ELb1EE", !296, i64 0}
!296 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options12HolderTHEORYESt14default_deleteIS3_EE", !297, i64 0}
!297 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options12HolderTHEORYESt14default_deleteIS3_EEE", !298, i64 0}
!298 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options12HolderTHEORYESt14default_deleteIS3_EEE", !299, i64 0}
!299 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options12HolderTHEORYELb0EE", !300, i64 0}
!300 = !{!"p1 _ZTSN4cvc58internal7options12HolderTHEORYE", !12, i64 0}
!301 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options8HolderUFESt14default_deleteIS3_EE", !302, i64 0}
!302 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options8HolderUFESt14default_deleteIS3_ELb1ELb1EE", !303, i64 0}
!303 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options8HolderUFESt14default_deleteIS3_EE", !304, i64 0}
!304 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options8HolderUFESt14default_deleteIS3_EEE", !305, i64 0}
!305 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options8HolderUFESt14default_deleteIS3_EEE", !306, i64 0}
!306 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options8HolderUFELb0EE", !307, i64 0}
!307 = !{!"p1 _ZTSN4cvc58internal7options8HolderUFE", !12, i64 0}
!308 = !{!"_ZTSSt10unique_ptrIN4cvc58internal7options14OptionsHandlerESt14default_deleteIS3_EE", !309, i64 0}
!309 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal7options14OptionsHandlerESt14default_deleteIS3_ELb1ELb1EE", !310, i64 0}
!310 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal7options14OptionsHandlerESt14default_deleteIS3_EE", !311, i64 0}
!311 = !{!"_ZTSSt5tupleIJPN4cvc58internal7options14OptionsHandlerESt14default_deleteIS3_EEE", !312, i64 0}
!312 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal7options14OptionsHandlerESt14default_deleteIS3_EEE", !313, i64 0}
!313 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal7options14OptionsHandlerELb0EE", !314, i64 0}
!314 = !{!"p1 _ZTSN4cvc58internal7options14OptionsHandlerE", !12, i64 0}
!315 = !{!316, !42, i64 109}
!316 = !{!"_ZTSN4cvc58internal7options9HolderSMTE", !38, i64 0, !317, i64 8, !38, i64 16, !38, i64 24, !318, i64 32, !319, i64 36, !320, i64 40, !321, i64 44, !322, i64 48, !323, i64 52, !324, i64 56, !325, i64 60, !326, i64 64, !327, i64 68, !42, i64 72, !42, i64 73, !42, i64 74, !42, i64 75, !42, i64 76, !42, i64 77, !42, i64 78, !42, i64 79, !42, i64 80, !42, i64 81, !42, i64 82, !42, i64 83, !42, i64 84, !42, i64 85, !42, i64 86, !42, i64 87, !42, i64 88, !42, i64 89, !42, i64 90, !42, i64 91, !42, i64 92, !42, i64 93, !42, i64 94, !42, i64 95, !42, i64 96, !42, i64 97, !42, i64 98, !42, i64 99, !42, i64 100, !42, i64 101, !42, i64 102, !42, i64 103, !42, i64 104, !42, i64 105, !42, i64 106, !42, i64 107, !42, i64 108, !42, i64 109, !42, i64 110, !42, i64 111, !42, i64 112, !42, i64 113, !42, i64 114, !42, i64 115, !42, i64 116, !42, i64 117, !42, i64 118, !42, i64 119, !42, i64 120, !42, i64 121, !42, i64 122, !42, i64 123, !42, i64 124, !42, i64 125, !42, i64 126, !42, i64 127, !42, i64 128, !42, i64 129, !42, i64 130, !42, i64 131, !42, i64 132, !42, i64 133, !42, i64 134, !42, i64 135, !42, i64 136, !42, i64 137, !42, i64 138, !42, i64 139, !42, i64 140, !42, i64 141, !42, i64 142, !42, i64 143, !42, i64 144, !42, i64 145, !42, i64 146, !42, i64 147, !42, i64 148, !42, i64 149, !42, i64 150, !42, i64 151, !42, i64 152, !42, i64 153, !42, i64 154, !42, i64 155, !42, i64 156, !42, i64 157, !42, i64 158, !42, i64 159, !42, i64 160, !42, i64 161}
!317 = !{!"double", !6, i64 0}
!318 = !{!"_ZTSN4cvc58internal7options15DeepRestartModeE", !6, i64 0}
!319 = !{!"_ZTSN4cvc58internal7options14DifficultyModeE", !6, i64 0}
!320 = !{!"_ZTSN4cvc58internal7options14ExtRewPrepModeE", !6, i64 0}
!321 = !{!"_ZTSN4cvc58internal7options8IandModeE", !6, i64 0}
!322 = !{!"_ZTSN4cvc58internal7options16InterpolantsModeE", !6, i64 0}
!323 = !{!"_ZTSN4cvc58internal7options14ModelCoresModeE", !6, i64 0}
!324 = !{!"_ZTSN4cvc58internal7options9ProofModeE", !6, i64 0}
!325 = !{!"_ZTSN4cvc58internal7options18SimplificationModeE", !6, i64 0}
!326 = !{!"_ZTSN4cvc58internal7options16SolveBVAsIntModeE", !6, i64 0}
!327 = !{!"_ZTSN4cvc58internal7options14UnsatCoresModeE", !6, i64 0}
!328 = !{i8 0, i8 2}
!329 = !{!330}
!330 = distinct !{!330, !331, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!331 = distinct !{!331, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!334 = distinct !{!334, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!335 = !{!333, !330}
!336 = distinct !{null, null, null, null}
!337 = !{!103, !104, i64 0}
!338 = !{!339, !340, i64 0}
!339 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal12SolverEngineELb0EE", !340, i64 0}
!340 = !{!"p1 _ZTSN4cvc58internal12SolverEngineE", !12, i64 0}
!341 = !{!340, !340, i64 0}
!342 = !{!343, !343, i64 0}
!343 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEEE", !12, i64 0}
!344 = !{!345, !346, i64 0}
!345 = !{!"_ZTSN4cvc58internal6ResultE", !346, i64 0, !347, i64 4, !37, i64 8}
!346 = !{!"_ZTSN4cvc58internal6Result6StatusE", !6, i64 0}
!347 = !{!"_ZTSN4cvc518UnknownExplanationE", !6, i64 0}
!348 = !{!349, !99, i64 0}
!349 = !{!"_ZTSSt10_HashtableIPN4cvc58internal9ProofNodeESt4pairIKS3_bESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !99, i64 0, !38, i64 8, !101, i64 16, !38, i64 24, !103, i64 32, !102, i64 48}
!350 = !{!349, !38, i64 8}
!351 = !{!120, !120, i64 0}
!352 = distinct !{null, null, null, null}
!353 = !{!119, !120, i64 8}
!354 = distinct !{null, ptr @_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!355 = !{!349, !38, i64 24}
!356 = !{!117, !117, i64 0}
!357 = distinct !{!357, !30}
!358 = distinct !{!358, !30}
!359 = !{!360, !117, i64 0}
!360 = !{!"_ZTSSt4pairIKPN4cvc58internal9ProofNodeEbE", !117, i64 0, !42, i64 8}
!361 = !{!360, !42, i64 8}
!362 = !{!125, !125, i64 0}
!363 = distinct !{!363, !30}
!364 = !{!365}
!365 = distinct !{!365, !366, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv: argument 0"}
!366 = distinct !{!366, !"_ZN4cvc58internal12NodeTemplateILb1EE4nullEv"}
!367 = !{!368, !369, i64 8}
!368 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal16InstantiationVecESaIS2_EE17_Vector_impl_dataE", !369, i64 0, !369, i64 8, !369, i64 16}
!369 = !{!"p1 _ZTSN4cvc58internal16InstantiationVecE", !12, i64 0}
!370 = !{!368, !369, i64 16}
!371 = !{!372, !376, i64 24}
!372 = !{!"_ZTSN4cvc58internal16InstantiationVecE", !373, i64 0, !376, i64 24, !26, i64 32}
!373 = !{!"_ZTSSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE", !374, i64 0}
!374 = !{!"_ZTSSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE", !375, i64 0}
!375 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_Vector_implE", !22, i64 0}
!376 = !{!"_ZTSN4cvc58internal6theory11InferenceIdE", !6, i64 0}
!377 = !{!378, !27, i64 0}
!378 = !{!"_ZTSN4cvc58internal12NodeTemplateILb0EEE", !27, i64 0}
!379 = !{!369, !369, i64 0}
!380 = !{!"branch_weights", i32 1, i32 1048575}
!381 = !{!27, !27, i64 0}
!382 = !{!"branch_weights", i32 2002, i32 2000}
!383 = distinct !{!383, !30}
!384 = !{!119, !120, i64 16}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZSt19__relocate_object_aISt10shared_ptrIN4cvc58internal9ProofNodeEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!387 = distinct !{!387, !"_ZSt19__relocate_object_aISt10shared_ptrIN4cvc58internal9ProofNodeEES4_SaIS4_EEvPT_PT0_RT1_"}
!388 = !{!389}
!389 = distinct !{!389, !387, !"_ZSt19__relocate_object_aISt10shared_ptrIN4cvc58internal9ProofNodeEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!390 = distinct !{!390, !30}
!391 = distinct !{!391, !30}
!392 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN4cvc58internal9ProofNodeEESaIS4_EED2Ev, null, null, null, ptr @_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!393 = distinct !{!393, !30}
!394 = !{!349, !102, i64 16}
!395 = distinct !{!395, !30}
!396 = distinct !{null, null}
!397 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN4cvc58internal9ProofNodeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!398 = !{!123, !125, i64 24}
!399 = !{!123, !125, i64 16}
!400 = distinct !{!400, !30}
!401 = distinct !{null}
!402 = distinct !{!402, !30}
!403 = distinct !{!403, !30}
!404 = distinct !{!404, !30}
!405 = distinct !{!405, !30}
!406 = distinct !{!406, !30}
!407 = distinct !{!407, !30}
!408 = distinct !{!408, !30}
!409 = distinct !{!409, !30}
!410 = distinct !{!410, !30}
!411 = distinct !{!411, !30}
!412 = distinct !{!412, !30}
!413 = !{!414}
!414 = distinct !{!414, !415, !"_ZSt19__relocate_object_aISt10shared_ptrIN4cvc58internal9ProofNodeEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!415 = distinct !{!415, !"_ZSt19__relocate_object_aISt10shared_ptrIN4cvc58internal9ProofNodeEES4_SaIS4_EEvPT_PT0_RT1_"}
!416 = !{!417}
!417 = distinct !{!417, !415, !"_ZSt19__relocate_object_aISt10shared_ptrIN4cvc58internal9ProofNodeEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!418 = !{!419}
!419 = distinct !{!419, !420, !"_ZSt19__relocate_object_aISt10shared_ptrIN4cvc58internal9ProofNodeEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!420 = distinct !{!420, !"_ZSt19__relocate_object_aISt10shared_ptrIN4cvc58internal9ProofNodeEES4_SaIS4_EEvPT_PT0_RT1_"}
!421 = !{!422}
!422 = distinct !{!422, !420, !"_ZSt19__relocate_object_aISt10shared_ptrIN4cvc58internal9ProofNodeEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!423 = !{!103, !38, i64 8}
!424 = !{!349, !102, i64 48}
!425 = distinct !{!425, !30}
!426 = !{!427}
!427 = distinct !{!427, !428, !"_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv: argument 0"}
!428 = distinct !{!428, !"_ZNK4cvc58internal4expr9NodeValue8iteratorINS0_12NodeTemplateILb1EEEEdeEv"}
!429 = distinct !{!429, !30}
!430 = !{!431, !431, i64 0}
!431 = !{!"p1 _ZTSSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE", !12, i64 0}
!432 = !{!433, !434, i64 8}
!433 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_17InstantiationListEESt10_Select1stIS7_ESt4lessIS3_ESaIS7_EE10_Auto_nodeE", !431, i64 0, !434, i64 8}
!434 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEENS2_17InstantiationListEEE", !12, i64 0}
!435 = distinct !{!435, !30}
!436 = !{!368, !369, i64 0}
!437 = distinct !{!437, !30}
!438 = distinct !{!438, !30}
!439 = !{!440, !440, i64 0}
!440 = !{!"p1 _ZTSSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE", !12, i64 0}
!441 = !{!442, !443, i64 8}
!442 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeE", !440, i64 0, !443, i64 8}
!443 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS4_SaIS4_EEEE", !12, i64 0}
!444 = distinct !{!444, !30}
!445 = distinct !{!445, !30}
!446 = distinct !{!446, !30}
!447 = !{!448, !343, i64 0}
!448 = !{!"_ZTSNSt8__detail10_AllocNodeISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEEE", !343, i64 0}
!449 = !{!450, !343, i64 0}
!450 = !{!"_ZTSNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeE", !343, i64 0, !451, i64 8}
!451 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEE", !12, i64 0}
!452 = !{!450, !451, i64 8}
!453 = !{!98, !102, i64 48}
!454 = distinct !{!454, !30}
!455 = distinct !{!455, !30}
end_hunk_1
