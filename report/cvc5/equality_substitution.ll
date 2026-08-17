inline.NumInlined: 1461
inline.NumDeleted: 628
begin_hunk_0_@_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:bb.a

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bb

bb.o:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #24
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE16_M_insert_uniqueIRKS3_EESt4pairISt17_Rb_tree_iteratorIS3_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8, !tbaa !40 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !33
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 1099511627775              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.b ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 1099511627775              ; 2 uses
  %i.j = icmp samesign ult i64 %i.e, %i.i         ; 2 uses
  %.in.v.i = select i1 %i.j, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !128

._crit_edge.i:                                    ; preds = %bb.b
  br i1 %i.j, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = icmp eq ptr %.019.lcssa29.i, %i.l
  br i1 %i.m, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i
  %i.n = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #26 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33
  %.pre18 = load i64, ptr %.pre, align 8
  %.pre19 = load ptr, ptr %1, align 8, !tbaa !33
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
  %i.r = load ptr, ptr %1, align 8, !tbaa !33
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 1099511627775
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.v = load i64, ptr %i.u, align 8
  %i.w = and i64 %i.v, 1099511627775
  %i.x = icmp samesign ult i64 %i.t, %i.w
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %select.unfold, %bb.e
  %i.y = phi i1 [ %i.x, %bb.e ], [ true, %select.unfold ]
  %i.z = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 3 uses
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE17_M_construct_nodeIJRKS3_EEEvPSt13_Rb_tree_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.z, ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.y, ptr noundef nonnull %i.z, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !25
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %.sroa.010.0 = phi ptr [ %i.z, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE10_M_insert_IRKS3_NS9_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS3_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE17_M_construct_nodeIJRKS3_EEEvPSt13_Rb_tree_nodeIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %2, align 8, !tbaa !33     ; 5 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !33
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.b, label %bb.c, !prof !84

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
  br i1 %i.m, label %bb.d, label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN4cvc58internal12NodeTemplateILb1EEEEEE9constructIS4_JRKS4_EEEvRS6_PT_DpOT0_.exit, !prof !36

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeIN4cvc58internal12NodeTemplateILb1EEEEEE9constructIS4_JRKS4_EEEvRS6_PT_DpOT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 40) #22
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %i.t) #24
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
  %i.a = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i) #26 ; 2 uses
  %i.b = add nuw nsw i64 %.06.i, 1                ; 5 uses
  %.not.i = icmp eq ptr %i.a, %3
  br i1 %.not.i, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit, label %.lr.ph.i, !llvm.loop !126

_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit: ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 11 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %.not.not = icmp ugt i64 %i.j, %.06.i
  br i1 %.not.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.h, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 5 uses
  %i.n = icmp ugt i64 %i.m, %i.b
  br i1 %i.n, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.o = xor i64 %.06.i, -1
  %i.p = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.o ; 3 uses
  %i.q = tail call noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN4cvc58internal12NodeTemplateILb1EEEES5_ET0_T_S8_S7_(ptr nonnull %i.p, ptr %i.f, ptr noundef %i.f) ; 0 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.b
  store ptr %i.s, ptr %i.e, align 8, !tbaa !32
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
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33   ; 4 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !33
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i, label %bb.d, !prof !36

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ac = and i64 %i.ab, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ac, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i, label %bb.e, !prof !36

bb.e:                                             ; preds = %bb.d
  %i.ad = add i64 %i.ab, 1152920405095219200
  %i.ae = and i64 %i.ad, 1152920405095219200      ; 2 uses
  %i.af = and i64 %i.ab, -1152920405095219201
  %i.ag = or disjoint i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.z, align 8
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.f, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i, !prof !36

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !33  ; 5 uses
  store ptr %i.ai, ptr %i.y, align 8, !tbaa !33
  %i.aj = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.ak = lshr i64 %i.aj, 40
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = and i32 %i.al, 1048575                  ; 3 uses
  %i.an = icmp samesign ult i32 %i.am, 1048574
  br i1 %i.an, label %bb.g, label %bb.h, !prof !84

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
  br i1 %i.at, label %bb.i, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i, !prof !36

bb.i:                                             ; preds = %bb.h
  %i.au = or i64 %i.aj, 1152920405095219200
  store i64 %i.au, ptr %i.ai, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %.lr.ph.i.i.i.i.i
  %i.av = add nsw i64 %.010.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.i.i.i.i51.preheader, !llvm.loop !158

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i, %bb.c
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55
  %.08.i.i.i.i.i = phi ptr [ %i.bu, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55 ], [ %1, %.lr.ph.i.i.i.i.i51.preheader ] ; 3 uses
  %.sroa.03.07.i.i.i.i.i = phi ptr [ %i.bv, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55 ], [ %2, %.lr.ph.i.i.i.i.i51.preheader ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %.08.i.i.i.i.i, align 8, !tbaa !33 ; 4 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !33
  %.not.i.i.i.i.i.i52 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i.i.i.i.i52, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55, label %bb.j, !prof !36

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i51
  %i.ba = load i64, ptr %i.ay, align 8            ; 3 uses
  %i.bb = and i64 %i.ba, 1152920405095219200
  %.not.i.i.i.i.i.i.i53 = icmp eq i64 %i.bb, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i53, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i54, label %bb.k, !prof !36

bb.k:                                             ; preds = %bb.j
  %i.bc = add i64 %i.ba, 1152920405095219200
  %i.bd = and i64 %i.bc, 1152920405095219200      ; 2 uses
  %i.be = and i64 %i.ba, -1152920405095219201
  %i.bf = or disjoint i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.ay, align 8
  %i.bg = icmp eq i64 %i.bd, 0
  br i1 %i.bg, label %bb.l, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i54, !prof !36

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i54

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i54: ; preds = %bb.l, %bb.k, %bb.j
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !33 ; 5 uses
  store ptr %i.bh, ptr %.08.i.i.i.i.i, align 8, !tbaa !33
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = lshr i64 %i.bi, 40
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 1048575                  ; 3 uses
  %i.bm = icmp samesign ult i32 %i.bl, 1048574
  br i1 %i.bm, label %bb.m, label %bb.n, !prof !84

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
  br i1 %i.bs, label %bb.o, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55, !prof !36

bb.o:                                             ; preds = %bb.n
  %i.bt = or i64 %i.bi, 1152920405095219200
  store i64 %i.bt, ptr %i.bh, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bh)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i55: ; preds = %bb.o, %bb.n, %bb.m, %.lr.ph.i.i.i.i.i51
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.bv = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, %3
  br i1 %.not.i.i.i.i.i, label %_ZSt4copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i51, !llvm.loop !159

bb.p:                                             ; preds = %bb.b
  %i.bw = icmp sgt i64 %i.m, 0
  br i1 %i.bw, label %.preheader.i.a, label %.preheader7.i

.preheader7.i:                                    ; preds = %bb.p
  %.not9.i = icmp eq ptr %i.f, %1
  br i1 %.not9.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i56

.preheader.i.a:                                   ; preds = %bb.p, %.preheader.i.a
  %.012.i = phi i64 [ %5, %.preheader.i.a ], [ %i.m, %bb.p ]
  %4 = phi ptr [ %6, %.preheader.i.a ], [ %2, %bb.p ]
  %5 = add nsw i64 %.012.i, -1                    ; 2 uses
  %6 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %4) #26 ; 2 uses
  %.not6.i = icmp eq i64 %5, 0
  br i1 %.not6.i, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.preheader.i.a, !llvm.loop !160

.lr.ph.i56:                                       ; preds = %.preheader7.i, %.lr.ph.i56
  %.110.i = phi i64 [ %i.by, %.lr.ph.i56 ], [ %i.m, %.preheader7.i ]
  %i.bx = phi ptr [ %i.bz, %.lr.ph.i56 ], [ %2, %.preheader7.i ]
  %i.by = add nsw i64 %.110.i, 1                  ; 2 uses
  %i.bz = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %i.bx) #26 ; 2 uses
  %.not.i57 = icmp eq i64 %i.by, 0
  br i1 %.not.i57, label %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i56, !llvm.loop !161

_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph.i56, %.preheader.i.a, %.preheader7.i
  %.sroa.0.0 = phi ptr [ %6, %.preheader.i.a ], [ %2, %.preheader7.i ], [ %i.bz, %.lr.ph.i56 ] ; 3 uses
  %i.ca = tail call noundef ptr @_ZSt16__do_uninit_copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_ET0_T_S8_S7_(ptr %.sroa.0.0, ptr %3, ptr noundef %i.f) ; 0 uses
  %i.cb = sub nuw i64 %i.b, %i.m
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb ; 2 uses
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !32
  %i.ce = tail call noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN4cvc58internal12NodeTemplateILb1EEEES5_ET0_T_S8_S7_(ptr %1, ptr %i.f, ptr noundef %i.cd) ; 0 uses
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.l
  store ptr %i.cg, ptr %i.e, align 8, !tbaa !32
  %.not6.i.i.i.i.i58 = icmp eq ptr %2, %.sroa.0.0
  br i1 %.not6.i.i.i.i.i58, label %_ZSt4copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65
  %.08.i.i.i.i.i60 = phi ptr [ %i.de, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65 ], [ %1, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 3 uses
  %.sroa.03.07.i.i.i.i.i61 = phi ptr [ %i.df, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65 ], [ %2, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i61, i64 32 ; 2 uses
  %i.ci = load ptr, ptr %.08.i.i.i.i.i60, align 8, !tbaa !33 ; 4 uses
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !33
  %.not.i.i.i.i.i.i62 = icmp eq ptr %i.ci, %i.cj
  br i1 %.not.i.i.i.i.i.i62, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65, label %bb.q, !prof !36

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i59
  %i.ck = load i64, ptr %i.ci, align 8            ; 3 uses
  %i.cl = and i64 %i.ck, 1152920405095219200
  %.not.i.i.i.i.i.i.i63 = icmp eq i64 %i.cl, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i63, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i64, label %bb.r, !prof !36

bb.r:                                             ; preds = %bb.q
  %i.cm = add i64 %i.ck, 1152920405095219200
  %i.cn = and i64 %i.cm, 1152920405095219200      ; 2 uses
  %i.co = and i64 %i.ck, -1152920405095219201
  %i.cp = or disjoint i64 %i.cn, %i.co
  store i64 %i.cp, ptr %i.ci, align 8
  %i.cq = icmp eq i64 %i.cn, 0
  br i1 %i.cq, label %bb.s, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i64, !prof !36

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ci)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i64

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i.i.i.i64: ; preds = %bb.s, %bb.r, %bb.q
  %i.cr = load ptr, ptr %i.ch, align 8, !tbaa !33 ; 5 uses
  store ptr %i.cr, ptr %.08.i.i.i.i.i60, align 8, !tbaa !33
  %i.cs = load i64, ptr %i.cr, align 8            ; 3 uses
  %i.ct = lshr i64 %i.cs, 40
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = and i32 %i.cu, 1048575                  ; 3 uses
  %i.cw = icmp samesign ult i32 %i.cv, 1048574
  br i1 %i.cw, label %bb.t, label %bb.u, !prof !84

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
  br i1 %i.dc, label %bb.v, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65, !prof !36

bb.v:                                             ; preds = %bb.u
  %i.dd = or i64 %i.cs, 1152920405095219200
  store i64 %i.dd, ptr %i.cr, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cr)
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit.i.i.i.i.i65: ; preds = %bb.v, %bb.u, %bb.t, %.lr.ph.i.i.i.i.i59
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i60, i64 8
  %i.df = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.03.07.i.i.i.i.i61) #26 ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq ptr %i.df, %.sroa.0.0
  br i1 %.not.i.i.i.i.i66, label %_ZSt4copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !159

bb.w:                                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEENSt15iterator_traitsIT_E15difference_typeES7_S7_St18input_iterator_tag.exit
  %i.dg = load ptr, ptr %0, align 8, !tbaa !29    ; 6 uses
  %i.dh = ptrtoint ptr %i.dg to i64               ; 2 uses
  %i.di = sub i64 %i.h, %i.dh
  %i.dj = ashr exact i64 %i.di, 3                 ; 4 uses
  %i.dk = sub nsw i64 1152921504606846975, %i.dj
  %.not = icmp ugt i64 %i.dk, %.06.i
  br i1 %.not, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_M_check_lenEmPKc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #25
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
  %i.dq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #21
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
  %i.dv = load ptr, ptr %.05.i.i, align 8, !tbaa !33 ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8            ; 3 uses
  %i.dx = and i64 %i.dw, 1152920405095219200
  %.not.i.i.i.i.i71 = icmp eq i64 %i.dx, 1152920405095219200
  br i1 %.not.i.i.i.i.i71, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, label %bb.z, !prof !36

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.dy = add i64 %i.dw, 1152920405095219200
  %i.dz = and i64 %i.dy, 1152920405095219200      ; 2 uses
  %i.ea = and i64 %i.dw, -1152920405095219201
  %i.eb = or disjoint i64 %i.dz, %i.ea
  store i64 %i.eb, ptr %i.dv, align 8
  %i.ec = icmp eq i64 %i.dz, 0
  br i1 %i.ec, label %bb.aa, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, !prof !36

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  tail call void @__clang_call_terminate(ptr %i.ee) #24
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i: ; preds = %bb.aa, %bb.z, %.lr.ph.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ef, %i.f
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !37

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit70
  %.not.i72 = icmp eq ptr %i.dg, null
  br i1 %.not.i72, label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit
  %i.eg = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.dh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.ei) #22
  br label %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_.exit, %bb.ac
  store ptr %i.dr, ptr %0, align 8, !tbaa !29
  store ptr %i.du, ptr %i.e, align 8, !tbaa !32
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.do
  store ptr %i.ej, ptr %i.c, align 8, !tbaa !39
  br label %_ZSt4copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEET0_T_SE_SD_.exit

bb.ad:                                            ; preds = %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_S4_ET0_T_S8_S7_RSaIT1_E.exit, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit
  %.0 = phi ptr [ %i.dt, %_ZSt22__uninitialized_copy_aISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_S4_ET0_T_S8_S7_RSaIT1_E.exit ], [ %i.ds, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb1EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit ], [ %i.dr, %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE11_M_allocateEm.exit ]
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  %i.em = tail call ptr @__cxa_begin_catch(ptr %i.el) #23 ; 0 uses
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
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %i.eq) #24
  unreachable

bb.ai:                                            ; preds = %_ZNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE13_M_deallocateEPS3_m.exit74
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyISt13move_iteratorIPN4cvc58internal12NodeTemplateILb1EEEES5_ET0_T_S8_S7_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit
  %.014 = phi ptr [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 3 uses
  %.sroa.08.013 = phi ptr [ %i.n, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.sroa.08.013, align 8, !tbaa !33 ; 5 uses
  store ptr %i.a, ptr %.014, align 8, !tbaa !33
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !84

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit, !prof !36

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit unwind label %bb.e

_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !162

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #25
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJS3_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #24
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyISt23_Rb_tree_const_iteratorIN4cvc58internal12NodeTemplateILb1EEEEPS4_ET0_T_S8_S7_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit
  %.014 = phi ptr [ %i.p, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 3 uses
  %.sroa.08.013 = phi ptr [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 5 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !33
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.b, label %bb.c, !prof !84

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
  br i1 %i.m, label %bb.d, label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit, !prof !36

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit unwind label %bb.e

_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.o = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.08.013) #26 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !163

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #23 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #25
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
  tail call void @__clang_call_terminate(ptr %i.v) #24
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE22_M_emplace_hint_uniqueIJRS5_S8_EEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, std::vector<cvc5::internal::NodeTemplate<true>>>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %0, ptr %4, align 8, !tbaa !164
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #21 ; 6 uses
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE17_M_construct_nodeIJRS5_S8_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !166
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
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 1099511627775
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 1099511627775
  %i.p = icmp samesign ult i64 %i.l, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #23
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !25
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.b
  tail call void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #22
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %bb.f
  %.sroa.0.09 = phi ptr [ %i.b, %.thread ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret ptr %.sroa.0.09
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 1099511627775
  %i.k = load ptr, ptr %2, align 8, !tbaa !33
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 1099511627775
  %i.n = icmp samesign ult i64 %i.j, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.o, align 8, !tbaa !40 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.p = load ptr, ptr %2, align 8, !tbaa !33
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 1099511627775              ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.u = load i64, ptr %i.t, align 8
  %i.v = and i64 %i.u, 1099511627775              ; 2 uses
  %i.w = icmp samesign ult i64 %i.r, %i.v         ; 2 uses
  %.in.v.i = select i1 %i.w, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !169

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.w, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.z = icmp eq ptr %.019.lcssa29.i, %i.y
  br i1 %i.z, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #26 ; 2 uses
  %.phi.trans.insert82 = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.pre83 = load ptr, ptr %.phi.trans.insert82, align 8, !tbaa !33
  %.pre84 = load i64, ptr %.pre83, align 8
  %.pre85 = load ptr, ptr %2, align 8, !tbaa !33
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
  %i.ad = load ptr, ptr %2, align 8, !tbaa !33
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, 1099511627775            ; 8 uses
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !33
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, 1099511627775            ; 2 uses
  %i.aj = icmp samesign ult i64 %i.af, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !40 ; 4 uses
  %i.am = icmp eq ptr %i.al, %1
  br i1 %i.am, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !33
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = and i64 %i.aq, 1099511627775
  %i.as = icmp samesign ult i64 %i.ar, %i.af
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !149
  %i.av = icmp eq ptr %i.au, null                 ; 2 uses
  %spec.select = select i1 %i.av, ptr null, ptr %1
  %spec.select71 = select i1 %i.av, ptr %i.an, ptr %1
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.aw, align 8, !tbaa !40 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 1099511627775            ; 2 uses
  %i.bb = icmp samesign ult i64 %i.af, %i.ba      ; 2 uses
  %.in.v.i14 = select i1 %i.bb, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !40 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !169

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.bb, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.bc = icmp eq ptr %.019.lcssa29.i28, %i.al
  br i1 %i.bc, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.bd = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #26 ; 2 uses
  %.phi.trans.insert79 = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %.pre80 = load ptr, ptr %.phi.trans.insert79, align 8, !tbaa !33
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
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %1
  br i1 %i.bi, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, 1099511627775
  %i.bo = icmp samesign ult i64 %i.af, %i.bn
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !149
  %i.br = icmp eq ptr %i.bq, null                 ; 2 uses
  %spec.select72 = select i1 %i.br, ptr null, ptr %i.bj
  %spec.select73 = select i1 %i.br, ptr %1, ptr %i.bj
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit

bb.s:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bs, align 8, !tbaa !40 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = and i64 %i.bv, 1099511627775            ; 2 uses
  %i.bx = icmp samesign ult i64 %i.af, %i.bw      ; 2 uses
  %.in.v.i34 = select i1 %i.bx, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !40 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !169

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bx, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !23
  %i.ca = icmp eq ptr %.019.lcssa29.i48, %i.bz
  br i1 %i.ca, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE24_M_get_insert_unique_posERS5_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.cb = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #26 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !33
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !166  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @_ZNSt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS3_SaIS3_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE17_M_construct_nodeIJRS5_S8_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %2, align 8, !tbaa !33     ; 5 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !33
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.b, label %bb.c, !prof !84

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 40
  %i.k = and i64 %i.c, -1152920405095219201
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %i.b, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.f, 1048574
  br i1 %i.m, label %bb.d, label %bb.g, !prof !36

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #23 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #22
  invoke void @__cxa_rethrow() #25
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load <2 x ptr>, ptr %3, align 8, !tbaa !125
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !125
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  store ptr %i.w, ptr %i.u, align 8, !tbaa !39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  ret void

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.r

bb.i:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #24
  unreachable

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZSt11make_uniqueIN4cvc58internal6theory15SubstitutionMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!12 = distinct !{!12, !"_ZSt11make_uniqueIN4cvc58internal6theory15SubstitutionMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTSN4cvc58internal6theory15SubstitutionMapE", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!17, !19, i64 0}
!17 = !{!"_ZTSSt15_Rb_tree_header", !18, i64 0, !21, i64 32}
!18 = !{!"_ZTSSt18_Rb_tree_node_base", !19, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!19 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!20 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !15, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!17, !20, i64 8}
!23 = !{!17, !20, i64 16}
!24 = !{!17, !20, i64 24}
!25 = !{!17, !21, i64 32}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZSt11make_uniqueIN4cvc58internal6theory15SubstitutionMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!28 = distinct !{!28, !"_ZSt11make_uniqueIN4cvc58internal6theory15SubstitutionMapEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!29 = !{!30, !31, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN4cvc58internal12NodeTemplateILb1EEE", !15, i64 0}
!32 = !{!30, !31, i64 8}
!33 = !{!34, !35, i64 0}
!34 = !{!"_ZTSN4cvc58internal12NodeTemplateILb1EEE", !35, i64 0}
!35 = !{!"p1 _ZTSN4cvc58internal4expr9NodeValueE", !15, i64 0}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!30, !31, i64 16}
!40 = !{!20, !20, i64 0}
!41 = !{!42, !68, i64 216}
!42 = !{!"_ZTSN4cvc58internal6theory15SubstitutionMapE", !43, i64 0, !52, i64 48, !66, i64 160, !68, i64 216, !68, i64 217, !69, i64 224}
!43 = !{!"_ZTSN4cvc57context7ContextE", !44, i64 0, !45, i64 8, !51, i64 32, !51, i64 40}
!44 = !{!"p1 _ZTSN4cvc57context20ContextMemoryManagerE", !15, i64 0}
!45 = !{!"_ZTSSt6vectorIPN4cvc57context5ScopeESaIS3_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIPN4cvc57context5ScopeESaIS3_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIPN4cvc57context5ScopeESaIS3_EE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIPN4cvc57context5ScopeESaIS3_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p2 _ZTSN4cvc57context5ScopeE", !50, i64 0}
!50 = !{!"any p2 pointer", !15, i64 0}
!51 = !{!"p1 _ZTSN4cvc57context16ContextNotifyObjE", !15, i64 0}
!52 = !{!"_ZTSN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EEE", !53, i64 0, !57, i64 40, !64, i64 96, !65, i64 104}
!53 = !{!"_ZTSN4cvc57context10ContextObjE", !54, i64 8, !55, i64 16, !55, i64 24, !56, i64 32}
!54 = !{!"p1 _ZTSN4cvc57context5ScopeE", !15, i64 0}
!55 = !{!"p1 _ZTSN4cvc57context10ContextObjE", !15, i64 0}
!56 = !{!"p2 _ZTSN4cvc57context10ContextObjE", !50, i64 0}
!57 = !{!"_ZTSSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEEPNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEES7_St8equal_toIS3_ESaISt4pairIKS3_S9_EEE", !58, i64 0}
!58 = !{!"_ZTSSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_PNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEEESaISC_ENSt8__detail10_Select1stESt8equal_toIS3_ES9_NSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !59, i64 0, !21, i64 8, !60, i64 16, !21, i64 24, !62, i64 32, !61, i64 48}
!59 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !50, i64 0}
!60 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !61, i64 0}
!61 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !15, i64 0}
!62 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !63, i64 0, !21, i64 8}
!63 = !{!"float", !6, i64 0}
!64 = !{!"p1 _ZTSN4cvc57context11CDOhash_mapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EEE", !15, i64 0}
!65 = !{!"p1 _ZTSN4cvc57context7ContextE", !15, i64 0}
!66 = !{!"_ZTSSt13unordered_mapIN4cvc58internal12NodeTemplateILb1EEES3_St4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S3_EEE", !67, i64 0}
!67 = !{!"_ZTSSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_S3_ESaIS6_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE", !59, i64 0, !21, i64 8, !60, i64 16, !21, i64 24, !62, i64 32, !61, i64 48}
!68 = !{!"bool", !6, i64 0}
!69 = !{!"_ZTSN4cvc58internal6theory15SubstitutionMap16CacheInvalidatorE", !70, i64 0, !72, i64 24}
!70 = !{!"_ZTSN4cvc57context16ContextNotifyObjE", !51, i64 8, !71, i64 16}
!71 = !{!"p2 _ZTSN4cvc57context16ContextNotifyObjE", !50, i64 0}
!72 = !{!"p1 bool", !15, i64 0}
!73 = !{!74, !35, i64 0}
!74 = !{!"_ZTSN4cvc58internal12NodeTemplateILb0EEE", !35, i64 0}
!75 = !{!76, !77, i64 8}
!76 = !{!"_ZTSN4cvc58internal6EnvObjE", !77, i64 8}
!77 = !{!"p1 _ZTSN4cvc58internal3EnvE", !15, i64 0}
!78 = !{}
!79 = !{i64 8}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!82 = distinct !{!82, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!83 = !{!35, !35, i64 0}
!84 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!87 = distinct !{!87, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!90 = distinct !{!90, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!93 = distinct !{!93, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!96 = distinct !{!96, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!99 = distinct !{!99, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!102 = distinct !{!102, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi: argument 0"}
!105 = distinct !{!105, !"_ZNK4cvc58internal12NodeTemplateILb1EEixEi"}
!106 = !{!107, !35, i64 0}
!107 = !{!"_ZTSN4cvc58internal8TypeNodeE", !35, i64 0}
!108 = !{!58, !21, i64 24}
!109 = !{!60, !61, i64 0}
!110 = distinct !{!110, !38}
!111 = !{!58, !21, i64 8}
!112 = !{!58, !59, i64 0}
!113 = !{!61, !61, i64 0}
!114 = !{!115, !21, i64 0}
!115 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !21, i64 0}
!116 = distinct !{!116, !38}
!117 = !{!118, !64, i64 8}
!118 = !{!"_ZTSSt4pairIKN4cvc58internal12NodeTemplateILb1EEEPNS0_7context11CDOhash_mapIS3_S3_St4hashIS3_EEEE", !34, i64 0, !64, i64 8}
!119 = distinct !{!119, !38}
!120 = distinct !{!120, !38}
!121 = !{!68, !68, i64 0}
!122 = !{i8 0, i8 2}
!123 = distinct !{!123, !38}
!124 = distinct !{!124, !38}
!125 = !{!31, !31, i64 0}
!126 = distinct !{!126, !38}
!127 = distinct !{!127, !38}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38}
!130 = !{!"branch_weights", i32 1, i32 1048575}
!131 = !{!67, !61, i64 16}
!132 = distinct !{!132, !38}
!133 = !{!67, !59, i64 0}
!134 = !{!67, !21, i64 8}
!135 = !{ptr @_ZN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EED2Ev}
!136 = !{!58, !61, i64 16}
!137 = distinct !{!137, !38}
!138 = !{!52, !64, i64 96}
!139 = !{!140, !142, i64 56}
!140 = !{!"_ZTSN4cvc57context11CDOhash_mapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EEE", !53, i64 0, !141, i64 40, !142, i64 56, !64, i64 64, !64, i64 72}
!141 = !{!"_ZTSSt4pairIKN4cvc58internal12NodeTemplateILb1EEES4_E", !34, i64 0, !34, i64 8}
!142 = !{!"p1 _ZTSN4cvc57context9CDHashMapINS_8internal12NodeTemplateILb1EEES4_St4hashIS4_EEE", !15, i64 0}
!143 = distinct !{null}
!144 = !{!145, !147, i64 0}
!145 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !146, i64 0, !21, i64 8, !6, i64 16}
!146 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !147, i64 0}
!147 = !{!"p1 omnipotent char", !15, i64 0}
!148 = !{!6, !6, i64 0}
!149 = !{!18, !20, i64 24}
!150 = !{!18, !20, i64 16}
!151 = distinct !{!151, !38}
!152 = distinct !{!152, !38}
!153 = distinct !{!153, !38}
!154 = distinct !{!154, !38}
!155 = distinct !{!155, !38}
!156 = distinct !{!156, !38}
!157 = distinct !{!157, !38}
!158 = distinct !{!158, !38}
!159 = distinct !{!159, !38}
!160 = distinct !{!160, !38}
!161 = distinct !{!161, !38}
!162 = distinct !{!162, !38}
!163 = distinct !{!163, !38}
!164 = !{!165, !165, i64 0}
!165 = !{!"p1 _ZTSSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE", !15, i64 0}
!166 = !{!167, !168, i64 8}
!167 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeE", !165, i64 0, !168, i64 8}
!168 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS4_SaIS4_EEEE", !15, i64 0}
!169 = distinct !{!169, !38}
end_hunk_0
