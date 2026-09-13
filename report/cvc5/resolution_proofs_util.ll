Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/resolution_proofs_util?download=true
inline.NumInlined: 1812
inline.NumDeleted: 588
begin_hunk_0_@_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS5_:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !49
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = and i64 %i.bm, 1099511627775
  %i.bo = icmp samesign ult i64 %i.af, %i.bn
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !74
  %i.br = icmp eq ptr %i.bq, null                 ; 2 uses
  %spec.select72 = select i1 %i.br, ptr null, ptr %i.bj
  %spec.select73 = select i1 %i.br, ptr %1, ptr %i.bj
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE24_M_get_insert_unique_posERS5_.exit

bb.s:                                             ; preds = %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bs, align 8, !tbaa !69 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = and i64 %i.bv, 1099511627775            ; 2 uses
  %i.bx = icmp samesign ult i64 %i.af, %i.bw      ; 2 uses
  %.in.v.i34 = select i1 %i.bx, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !69 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !227

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bx, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !45
  %i.ca = icmp eq ptr %.019.lcssa29.i48, %i.bz
  br i1 %i.ca, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE24_M_get_insert_unique_posERS5_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.cb = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #26 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !49
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
  br label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE24_M_get_insert_unique_posERS5_.exit

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE24_M_get_insert_unique_posERS5_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.al, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.bh, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.al, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = and i64 %i.e, 1152920405095219200
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 1152920405095219200
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %i.e, 1152920405095219200
  %i.h = and i64 %i.g, 1152920405095219200        ; 2 uses
  %i.i = and i64 %i.e, -1152920405095219201
  %i.j = or disjoint i64 %i.h, %i.i
  store i64 %i.j, ptr %i.d, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.d, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, !prof !27

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #25
  unreachable

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #24
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_5proof15CrowdingLitInfoEESt10_Select1stIS8_ESt4lessIS3_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %3, align 8, !tbaa !28
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !49
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = lshr i64 %i.e, 40
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = and i32 %i.g, 1048575                    ; 3 uses
  %i.i = icmp samesign ult i32 %i.h, 1048574
  br i1 %i.i, label %bb.b, label %bb.c, !prof !58

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
  br i1 %i.o, label %bb.d, label %bb.g, !prof !27

bb.d:                                             ; preds = %bb.c
  %i.p = or i64 %i.e, 1152920405095219200
  store i64 %i.p, ptr %i.d, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #21 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #24
  invoke void @__cxa_rethrow() #22
          to label %bb.j unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 -1, i64 16, i1 false)
  store i8 0, ptr %i.v, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 -1, ptr %i.w, align 8, !tbaa !21
  ret void

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #25
  unreachable

bb.j:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.110", align 8    ; 6 uses
  %4 = alloca %"struct.std::pair.110", align 8    ; 6 uses
  %5 = alloca %"struct.std::pair.110", align 8    ; 6 uses
  %6 = alloca %"struct.std::pair.110", align 8    ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %i.h = getelementptr i8, ptr %0, i64 8          ; 14 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph65

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEET_SS_SS_T0_.exit"
  %i.j = icmp eq i64 %i.el, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph65, !llvm.loop !228

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa59 = phi i64 [ %i.d, %.lr.ph ], [ %i.fu, %bb.b ] ; 2 uses
  %storemerge29.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.k = add nsw i64 %.lcssa59, -2
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit16.i.i.i, %._crit_edge
  %.012.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ba, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit16.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.o = getelementptr inbounds [16 x i8], ptr %0, i64 %.012.i.i.i ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 16 uses
  store ptr %i.p, ptr %5, align 8, !tbaa !49
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  %i.r = lshr i64 %i.q, 40
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 1048575                    ; 3 uses
  %i.u = icmp samesign ult i32 %i.t, 1048574
  br i1 %i.u, label %bb.d, label %bb.e, !prof !58

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i32 %i.t, 1
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 40
  %i.y = and i64 %i.q, -1152920405095219201
  %i.z = or i64 %i.x, %i.y                        ; 2 uses
  store i64 %i.z, ptr %i.p, align 8
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp eq i32 %i.t, 1048574
  br i1 %i.aa, label %bb.f, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i.i.i, !prof !27

bb.f:                                             ; preds = %bb.e
  %i.ab = or i64 %i.q, 1152920405095219200
  store i64 %i.ab, ptr %i.p, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  %.pre.i.i.i = load i64, ptr %i.p, align 8
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i.i.i

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ac = phi i64 [ %i.z, %bb.d ], [ %i.q, %bb.e ], [ %.pre.i.i.i, %bb.f ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !68 ; 2 uses
  store i64 %i.ae, ptr %i.m, align 8, !tbaa !68
  store ptr %i.p, ptr %6, align 8, !tbaa !49
  %i.af = lshr i64 %i.ac, 40
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = and i32 %i.ag, 1048575                  ; 3 uses
  %i.ai = icmp samesign ult i32 %i.ah, 1048574
  br i1 %i.ai, label %bb.g, label %bb.h, !prof !58

bb.g:                                             ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i.i.i
  %i.aj = add nuw nsw i32 %i.ah, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw nsw i64 %i.ak, 40
  %i.am = and i64 %i.ac, -1152920405095219201
  %i.an = or i64 %i.al, %i.am
  store i64 %i.an, ptr %i.p, align 8
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i.i.i
  %i.ao = icmp eq i32 %i.ah, 1048574
  br i1 %i.ao, label %bb.i, label %bb.j, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.ap = or i64 %i.ac, 1152920405095219200
  store i64 %i.ap, ptr %i.p, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  store i64 %i.ae, ptr %i.n, align 8, !tbaa !68
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_T0_ST_T1_T2_"(ptr nonnull %0, i64 noundef %.012.i.i.i, i64 noundef %.lcssa59, ptr noundef align 8 %6)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.aq = load i64, ptr %i.p, align 8             ; 4 uses
  %i.ar = and i64 %i.aq, 1152920405095219200
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ar, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i.i.i, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  %i.as = add i64 %i.aq, 1152920405095219200
  %i.at = and i64 %i.as, 1152920405095219200      ; 2 uses
  %i.au = and i64 %i.aq, -1152920405095219201
  %i.av = or disjoint i64 %i.at, %i.au            ; 2 uses
  store i64 %i.av, ptr %i.p, align 8
  %i.aw = icmp eq i64 %i.at, 0
  br i1 %i.aw, label %bb.m, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i.i.i, !prof !27

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %._ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit_crit_edge.i.i.i unwind label %bb.n

._ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit_crit_edge.i.i.i: ; preds = %bb.m
  %.pre6.i.i.i = load i64, ptr %i.p, align 8
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #25
  unreachable

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i.i.i: ; preds = %._ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit_crit_edge.i.i.i, %bb.l, %bb.k
  %i.az = phi i64 [ %.pre6.i.i.i, %._ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit_crit_edge.i.i.i ], [ %i.aq, %bb.k ], [ %i.av, %bb.l ] ; 3 uses
  %.not.i.i.i = icmp eq i64 %.012.i.i.i, 0
  %i.ba = add nsw i64 %.012.i.i.i, -1
  %i.bb = and i64 %i.az, 1152920405095219200
  %.not.i.i.i15.i.i.i = icmp eq i64 %i.bb, 1152920405095219200
  br i1 %.not.i.i.i15.i.i.i, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit16.i.i.i, label %bb.o, !prof !27

bb.o:                                             ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i.i.i
  %i.bc = add i64 %i.az, 1152920405095219200
  %i.bd = and i64 %i.bc, 1152920405095219200      ; 2 uses
  %i.be = and i64 %i.az, -1152920405095219201
  %i.bf = or disjoint i64 %i.bd, %i.be
  store i64 %i.bf, ptr %i.p, align 8
  %i.bg = icmp eq i64 %i.bd, 0
  br i1 %i.bg, label %bb.p, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit16.i.i.i, !prof !27

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit16.i.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  tail call void @__clang_call_terminate(ptr %i.bi) #25
  unreachable

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit16.i.i.i: ; preds = %bb.p, %bb.o, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br i1 %.not.i.i.i, label %.lr.ph.i9.i.preheader, label %bb.c, !llvm.loop !229

bb.r:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #21
  br label %bb.t

common.resume:                                    ; preds = %bb.ar, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %.pn.i.i.i, %bb.t ], [ %.pn.i, %bb.ar ]
  resume { ptr, i32 } %common.resume.op

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bk, %bb.s ], [ %i.bj, %bb.r ]
  call void @_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %common.resume

.lr.ph.i9.i.preheader:                            ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit16.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.bn, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_RT0_.exit" ], [ %storemerge29.lcssa, %.lr.ph.i9.i.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !49 ; 16 uses
  store ptr %i.bo, ptr %3, align 8, !tbaa !49
  %i.bp = load i64, ptr %i.bo, align 8            ; 3 uses
  %i.bq = lshr i64 %i.bp, 40
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = and i32 %i.br, 1048575                  ; 3 uses
  %i.bt = icmp samesign ult i32 %i.bs, 1048574
  br i1 %i.bt, label %bb.u, label %bb.v, !prof !58

bb.u:                                             ; preds = %.lr.ph.i9.i
  %i.bu = add nuw nsw i32 %i.bs, 1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 40
  %i.bx = and i64 %i.bp, -1152920405095219201
  %i.by = or i64 %i.bw, %i.bx
  store i64 %i.by, ptr %i.bo, align 8
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i

bb.v:                                             ; preds = %.lr.ph.i9.i
  %i.bz = icmp eq i32 %i.bs, 1048574
  br i1 %i.bz, label %bb.w, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i, !prof !27

bb.w:                                             ; preds = %bb.v
  %i.ca = or i64 %i.bp, 1152920405095219200
  store i64 %i.ca, ptr %i.bo, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bo)
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i: ; preds = %bb.w, %bb.v, %bb.u
  %i.cb = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !68 ; 2 uses
  store i64 %i.cc, ptr %i.bl, align 8, !tbaa !68
  %i.cd = load ptr, ptr %i.bn, align 8, !tbaa !49 ; 4 uses
  %i.ce = load ptr, ptr %0, align 8, !tbaa !49
  %.not.i.i.i16 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i.i.i16, label %bb.ad, label %bb.x, !prof !27

bb.x:                                             ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i
  %i.cf = load i64, ptr %i.cd, align 8            ; 3 uses
  %i.cg = and i64 %i.cf, 1152920405095219200
  %.not.i.i.i.i = icmp eq i64 %i.cg, 1152920405095219200
  br i1 %.not.i.i.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i, label %bb.y, !prof !27

bb.y:                                             ; preds = %bb.x
  %i.ch = add i64 %i.cf, 1152920405095219200
  %i.ci = and i64 %i.ch, 1152920405095219200      ; 2 uses
  %i.cj = and i64 %i.cf, -1152920405095219201
  %i.ck = or disjoint i64 %i.ci, %i.cj
  store i64 %i.ck, ptr %i.cd, align 8
  %i.cl = icmp eq i64 %i.ci, 0
  br i1 %i.cl, label %bb.z, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i, !prof !27

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i unwind label %bb.ap

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  %i.cm = load ptr, ptr %0, align 8, !tbaa !49    ; 5 uses
  store ptr %i.cm, ptr %i.bn, align 8, !tbaa !49
  %i.cn = load i64, ptr %i.cm, align 8            ; 3 uses
  %i.co = lshr i64 %i.cn, 40
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = and i32 %i.cp, 1048575                  ; 3 uses
  %i.cr = icmp samesign ult i32 %i.cq, 1048574
  br i1 %i.cr, label %bb.aa, label %bb.ab, !prof !58

bb.aa:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i
  %i.cs = add nuw nsw i32 %i.cq, 1
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 40
  %i.cv = and i64 %i.cn, -1152920405095219201
  %i.cw = or i64 %i.cu, %i.cv
  store i64 %i.cw, ptr %i.cm, align 8
  br label %bb.ad

bb.ab:                                            ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i.i
  %i.cx = icmp eq i32 %i.cq, 1048574
  br i1 %i.cx, label %bb.ac, label %bb.ad, !prof !27

bb.ac:                                            ; preds = %bb.ab
  %i.cy = or i64 %i.cn, 1152920405095219200
  store i64 %i.cy, ptr %i.cm, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %bb.ad unwind label %bb.ap

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit.i
  %i.cz = load i64, ptr %i.h, align 8, !tbaa !62
  store i64 %i.cz, ptr %i.cb, align 8, !tbaa !68
  %i.da = ptrtoint ptr %i.bn to i64
  %i.db = sub i64 %i.da, %i.a                     ; 2 uses
  %i.dc = ashr exact i64 %i.db, 4
  store ptr %i.bo, ptr %4, align 8, !tbaa !49
  %i.dd = load i64, ptr %i.bo, align 8            ; 3 uses
  %i.de = lshr i64 %i.dd, 40
  %i.df = trunc nuw nsw i64 %i.de to i32
  %i.dg = and i32 %i.df, 1048575                  ; 3 uses
  %i.dh = icmp samesign ult i32 %i.dg, 1048574
  br i1 %i.dh, label %bb.ae, label %bb.af, !prof !58

bb.ae:                                            ; preds = %bb.ad
  %i.di = add nuw nsw i32 %i.dg, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 40
  %i.dl = and i64 %i.dd, -1152920405095219201
  %i.dm = or i64 %i.dk, %i.dl
  store i64 %i.dm, ptr %i.bo, align 8
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.dn = icmp eq i32 %i.dg, 1048574
  br i1 %i.dn, label %bb.ag, label %bb.ah, !prof !27

bb.ag:                                            ; preds = %bb.af
  %i.do = or i64 %i.dd, 1152920405095219200
  store i64 %i.do, ptr %i.bo, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %bb.ah unwind label %bb.ap

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  store i64 %i.cc, ptr %i.bm, align 8, !tbaa !68
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_T0_ST_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.dc, ptr noundef align 8 %4)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  %i.dp = load i64, ptr %i.bo, align 8            ; 4 uses
  %i.dq = and i64 %i.dp, 1152920405095219200
  %.not.i.i.i8.i = icmp eq i64 %i.dq, 1152920405095219200
  br i1 %.not.i.i.i8.i, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i, label %bb.aj, !prof !27

bb.aj:                                            ; preds = %bb.ai
  %i.dr = add i64 %i.dp, 1152920405095219200
  %i.ds = and i64 %i.dr, 1152920405095219200      ; 2 uses
  %i.dt = and i64 %i.dp, -1152920405095219201
  %i.du = or disjoint i64 %i.ds, %i.dt            ; 2 uses
  store i64 %i.du, ptr %i.bo, align 8
  %i.dv = icmp eq i64 %i.ds, 0
  br i1 %i.dv, label %bb.ak, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i, !prof !27

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %._ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit_crit_edge.i unwind label %bb.al

._ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit_crit_edge.i: ; preds = %bb.ak
  %.pre.i = load i64, ptr %i.bo, align 8
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  tail call void @__clang_call_terminate(ptr %i.dx) #25
  unreachable

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i: ; preds = %._ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit_crit_edge.i, %bb.aj, %bb.ai
  %i.dy = phi i64 [ %.pre.i, %._ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit_crit_edge.i ], [ %i.dp, %bb.ai ], [ %i.du, %bb.aj ] ; 3 uses
  %i.dz = and i64 %i.dy, 1152920405095219200
  %.not.i.i.i9.i = icmp eq i64 %i.dz, 1152920405095219200
  br i1 %.not.i.i.i9.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_RT0_.exit", label %bb.am, !prof !27

bb.am:                                            ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i
  %i.ea = add i64 %i.dy, 1152920405095219200
  %i.eb = and i64 %i.ea, 1152920405095219200      ; 2 uses
  %i.ec = and i64 %i.dy, -1152920405095219201
  %i.ed = or disjoint i64 %i.eb, %i.ec
  store i64 %i.ed, ptr %i.bo, align 8
  %i.ee = icmp eq i64 %i.eb, 0
  br i1 %i.ee, label %bb.an, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_RT0_.exit", !prof !27

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_RT0_.exit" unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  tail call void @__clang_call_terminate(ptr %i.eg) #25
  unreachable

bb.ap:                                            ; preds = %bb.ag, %bb.ac, %bb.z
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ah
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn.i = phi { ptr, i32 } [ %i.ei, %bb.aq ], [ %i.eh, %bb.ap ]
  call void @_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_RT0_.exit": ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmED2Ev.exit.i, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ej = icmp sgt i64 %i.db, 16
  br i1 %i.ej, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_T0_.exit", !llvm.loop !230

.lr.ph65:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2964 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.03063 = phi i64 [ %i.el, %bb.b ], [ %2, %.lr.ph ]
  %i.ek = phi i64 [ %i.fu, %bb.b ], [ %i.d, %.lr.ph ]
  %i.el = add nsw i64 %.03063, -1                 ; 3 uses
  %i.em = lshr i64 %i.ek, 1
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.em ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %storemerge2964, i64 -16 ; 2 uses
  %.val.i.i.i = load i64, ptr %i.g, align 8, !tbaa !68 ; 3 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 8      ; 5 uses
  %.val1.i.i.i = load i64, ptr %i.ep, align 8, !tbaa !68 ; 3 uses
  %i.eq = icmp ult i64 %.val.i.i.i, %.val1.i.i.i
  %i.er = getelementptr i8, ptr %storemerge2964, i64 -8 ; 5 uses
  %.val1.i27.i.i = load i64, ptr %i.er, align 8, !tbaa !68 ; 4 uses
  br i1 %i.eq, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %.lr.ph65
  %i.es = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.es, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  tail call void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.en)
  %i.et = load i64, ptr %i.h, align 8, !tbaa !62
  %i.eu = load i64, ptr %i.ep, align 8, !tbaa !62
  store i64 %i.eu, ptr %i.h, align 8, !tbaa !62
  store i64 %i.et, ptr %i.ep, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.au:                                            ; preds = %bb.as
  %i.ev = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ev, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.eo)
  %i.ew = load i64, ptr %i.h, align 8, !tbaa !62
  %i.ex = load i64, ptr %i.er, align 8, !tbaa !62
  store i64 %i.ex, ptr %i.h, align 8, !tbaa !62
  store i64 %i.ew, ptr %i.er, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.aw:                                            ; preds = %bb.au
  tail call void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  %i.ey = load i64, ptr %i.h, align 8, !tbaa !62
  %i.ez = load i64, ptr %i.g, align 8, !tbaa !62
  store i64 %i.ez, ptr %i.h, align 8, !tbaa !62
  store i64 %i.ey, ptr %i.g, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.ax:                                            ; preds = %.lr.ph65
  %i.fa = icmp ult i64 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.fa, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f)
  %i.fb = load i64, ptr %i.h, align 8, !tbaa !62
  %i.fc = load i64, ptr %i.g, align 8, !tbaa !62
  store i64 %i.fc, ptr %i.h, align 8, !tbaa !62
  store i64 %i.fb, ptr %i.g, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.az:                                            ; preds = %bb.ax
  %i.fd = icmp ult i64 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.fd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.eo)
  %i.fe = load i64, ptr %i.h, align 8, !tbaa !62
  %i.ff = load i64, ptr %i.er, align 8, !tbaa !62
  store i64 %i.ff, ptr %i.h, align 8, !tbaa !62
  store i64 %i.fe, ptr %i.er, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.bb:                                            ; preds = %bb.az
  tail call void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.en)
  %i.fg = load i64, ptr %i.h, align 8, !tbaa !62
  %i.fh = load i64, ptr %i.ep, align 8, !tbaa !62
  store i64 %i.fh, ptr %i.h, align 8, !tbaa !62
  store i64 %i.fg, ptr %i.ep, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader": ; preds = %bb.bb, %bb.ba, %bb.ay, %bb.aw, %bb.av, %bb.at
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader", %bb.be
  %.sroa.012.0.i.i = phi ptr [ %i.fk, %bb.be ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.be ], [ %storemerge2964, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i64, ptr %i.h, align 8, !tbaa !68 ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i" ], [ %i.fk, %bb.bc ] ; 9 uses
  %i.fi = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8
  %.val.i.i14.i = load i64, ptr %i.fi, align 8, !tbaa !68
  %i.fj = icmp ult i64 %.val.i.i14.i, %.val1.i.i13.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 16 ; 2 uses
  br i1 %i.fj, label %bb.bc, label %.preheader.i.i.preheader, !llvm.loop !231

.preheader.i.i.preheader:                         ; preds = %bb.bc
  %i.fl = getelementptr i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 4 uses
  %i.fm = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %.val1.i9.i.i = load i64, ptr %i.fm, align 8, !tbaa !68
  %i.fn = icmp ult i64 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.fn, label %.preheader.i.i, label %bb.bd, !llvm.loop !232

bb.bd:                                            ; preds = %.preheader.i.i
  %i.fo = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.fo, label %bb.be, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEET_SS_SS_T0_.exit"

bb.be:                                            ; preds = %bb.bd
  %i.fp = getelementptr i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  tail call void @_ZSt4swapIN4cvc58internal12NodeTemplateILb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.012.1.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.1.i.i)
  %i.fq = load i64, ptr %i.fl, align 8, !tbaa !62
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !62
  store i64 %i.fr, ptr %i.fl, align 8, !tbaa !62
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_SS_T0_.exit.i", !llvm.loop !233

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEET_SS_SS_T0_.exit": ; preds = %bb.bd
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2964, i64 noundef %i.el)
  %i.fs = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ft = sub i64 %i.fs, %i.a
  %i.fu = ashr exact i64 %i.ft, 4                 ; 3 uses
  %i.fv = icmp sgt i64 %i.fu, 16
  br i1 %i.fv, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_T0_.exit", !llvm.loop !228

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEET_SS_SS_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_SS_SS_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4cvc58internal12NodeTemplateILb1EEEmESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS4_5proof21eliminateCrowdingLitsEPNS4_11NodeManagerEbRKS9_IS6_SaIS6_EESL_SL_SL_PNS4_7CDProofEPNS4_16ProofNodeManagerEE3$_0EEEvT_T0_ST_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.110", align 8    ; 3 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit
  %.045 = phi i64 [ %spec.select, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.045, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [16 x i8], ptr %0, i64 %i.g
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val.i = load i64, ptr %i.i, align 8, !tbaa !68
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val1.i = load i64, ptr %i.j, align 8, !tbaa !68
  %i.k = icmp ult i64 %.val.i, %.val1.i
  %spec.select = select i1 %i.k, i64 %i.g, i64 %i.e ; 4 uses
  %i.l = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select ; 3 uses
  %i.m = getelementptr inbounds [16 x i8], ptr %0, i64 %.045 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49   ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !49
  %.not.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit, label %bb.b, !prof !27

bb.b:                                             ; preds = %.lr.ph
  %i.p = load i64, ptr %i.n, align 8              ; 3 uses
  %i.q = and i64 %i.p, 1152920405095219200
  %.not.i.i.i = icmp eq i64 %i.q, 1152920405095219200
  br i1 %.not.i.i.i, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i, label %bb.c, !prof !27

bb.c:                                             ; preds = %bb.b
  %i.r = add i64 %i.p, 1152920405095219200
  %i.s = and i64 %i.r, 1152920405095219200        ; 2 uses
  %i.t = and i64 %i.p, -1152920405095219201
  %i.u = or disjoint i64 %i.s, %i.t
  store i64 %i.u, ptr %i.n, align 8
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.d, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i:  ; preds = %bb.d, %bb.c, %bb.b
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !49   ; 5 uses
  store ptr %i.w, ptr %i.m, align 8, !tbaa !49
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = lshr i64 %i.x, 40
  %i.z = trunc nuw nsw i64 %i.y to i32
  %i.aa = and i32 %i.z, 1048575                   ; 3 uses
  %i.ab = icmp samesign ult i32 %i.aa, 1048574
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !58

bb.e:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i
  %i.ac = add nuw nsw i32 %i.aa, 1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 40
  %i.af = and i64 %i.x, -1152920405095219201
  %i.ag = or i64 %i.ae, %i.af
  store i64 %i.ag, ptr %i.w, align 8
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit

bb.f:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i
  %i.ah = icmp eq i32 %i.aa, 1048574
  br i1 %i.ah, label %bb.g, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.ai = or i64 %i.x, 1152920405095219200
  store i64 %i.ai, ptr %i.w, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit: ; preds = %.lr.ph, %bb.e, %bb.f, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !68
  %i.am = icmp slt i64 %spec.select, %i.b
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !234

._crit_edge:                                      ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit ] ; 5 uses
  %i.an = and i64 %2, 1
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.p

bb.h:                                             ; preds = %._crit_edge
  %i.ap = add nsw i64 %2, -2
  %i.aq = ashr exact i64 %i.ap, 1
  %i.ar = icmp eq i64 %.0.lcssa, %i.aq
  br i1 %i.ar, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.as = shl nsw i64 %.0.lcssa, 1
  %i.at = or disjoint i64 %i.as, 1                ; 2 uses
  %i.au = getelementptr inbounds [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !49 ; 4 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !49
  %.not.i.i25 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i.i25, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit28, label %bb.j, !prof !27

bb.j:                                             ; preds = %bb.i
  %i.ay = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.az = and i64 %i.ay, 1152920405095219200
  %.not.i.i.i26 = icmp eq i64 %i.az, 1152920405095219200
  br i1 %.not.i.i.i26, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i27, label %bb.k, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.ba = add i64 %i.ay, 1152920405095219200
  %i.bb = and i64 %i.ba, 1152920405095219200      ; 2 uses
  %i.bc = and i64 %i.ay, -1152920405095219201
  %i.bd = or disjoint i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.aw, align 8
  %i.be = icmp eq i64 %i.bb, 0
  br i1 %i.be, label %bb.l, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i27, !prof !27

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
  br label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i27

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i27: ; preds = %bb.l, %bb.k, %bb.j
  %i.bf = load ptr, ptr %i.au, align 8, !tbaa !49 ; 5 uses
  store ptr %i.bf, ptr %i.av, align 8, !tbaa !49
  %i.bg = load i64, ptr %i.bf, align 8            ; 3 uses
  %i.bh = lshr i64 %i.bg, 40
  %i.bi = trunc nuw nsw i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 1048575                  ; 3 uses
  %i.bk = icmp samesign ult i32 %i.bj, 1048574
  br i1 %i.bk, label %bb.m, label %bb.n, !prof !58

bb.m:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i27
  %i.bl = add nuw nsw i32 %i.bj, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 40
  %i.bo = and i64 %i.bg, -1152920405095219201
  %i.bp = or i64 %i.bn, %i.bo
  store i64 %i.bp, ptr %i.bf, align 8
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit28

bb.n:                                             ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i.i27
  %i.bq = icmp eq i32 %i.bj, 1048574
  br i1 %i.bq, label %bb.o, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit28, !prof !27

bb.o:                                             ; preds = %bb.n
  %i.br = or i64 %i.bg, 1152920405095219200
  store i64 %i.br, ptr %i.bf, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bf)
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit28

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit28: ; preds = %bb.i, %bb.m, %bb.n, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !68
  br label %bb.p

bb.p:                                             ; preds = %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit28, %bb.h, %._crit_edge
  %.1 = phi i64 [ %i.at, %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEaSEOS4_.exit28 ], [ %.0.lcssa, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bv = load ptr, ptr %3, align 8, !tbaa !49    ; 14 uses
  store ptr %i.bv, ptr %4, align 8, !tbaa !49
  %i.bw = load i64, ptr %i.bv, align 8            ; 3 uses
  %i.bx = lshr i64 %i.bw, 40
  %i.by = trunc nuw nsw i64 %i.bx to i32
  %i.bz = and i32 %i.by, 1048575                  ; 3 uses
  %i.ca = icmp samesign ult i32 %i.bz, 1048574
  br i1 %i.ca, label %bb.q, label %bb.r, !prof !58

bb.q:                                             ; preds = %bb.p
  %i.cb = add nuw nsw i32 %i.bz, 1
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 40
  %i.ce = and i64 %i.bw, -1152920405095219201
  %i.cf = or i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.bv, align 8
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit

bb.r:                                             ; preds = %bb.p
  %i.cg = icmp eq i32 %i.bz, 1048574
  br i1 %i.cg, label %bb.s, label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit, !prof !27

bb.s:                                             ; preds = %bb.r
  %i.ch = or i64 %i.bw, 1152920405095219200
  store i64 %i.ch, ptr %i.bv, align 8
  tail call void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bv)
  br label %_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit

_ZNSt4pairIN4cvc58internal12NodeTemplateILb1EEEmEC2EOS4_.exit: ; preds = %bb.q, %bb.r, %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !68 ; 3 uses
  store i64 %i.ck, ptr %i.ci, align 8, !tbaa !68
end_hunk_0
