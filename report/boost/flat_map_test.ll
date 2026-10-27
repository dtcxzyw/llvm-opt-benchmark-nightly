Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_test?download=true
inline.NumInlined: 38937
inline.NumDeleted: 5991
loop-unroll.NumCompletelyUnrolled: 303
loop-unroll.NumRuntimeUnrolled: 383
loop-unroll.NumUnrolled: 701
begin_hunk_0_@_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiEvEESt3mapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_:bb.a

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 8 ; 2 uses
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #25
  %.not23 = icmp eq ptr %i.s, %i.f
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !84

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit ], [ true, %.preheader ], [ %i.r, %bb.c ], [ %i.r, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiEvEESt8multimapIiiS5_SaISt4pairIKiiEEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !507  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !499
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !508, !noalias !5982 ; 2 uses
  %.idx = shl nsw i64 %i.b, 3
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %.idx
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !497  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not4.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.j, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.05.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.h, %bb.b ]
  %i.j = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.j, %.lr.ph.i.i ]
  %.not13 = icmp eq i64 %.0.lcssa.i.i, %i.b
  br i1 %.not13, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.019.026 = phi ptr [ %i.s, %bb.c ], [ %i.e, %.preheader ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.t, %bb.c ], [ %i.h, %.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 32
  %i.m = load <2 x i32>, ptr %.sroa.019.026, align 4
  %i.n = load <2 x i32>, ptr %i.l, align 4
  %i.o = icmp eq <2 x i32> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %i.r = select i1 %i.p, i1 %i.q, i1 false        ; 3 uses
  br i1 %i.r, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 8 ; 2 uses
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #25
  %.not23 = icmp eq ptr %i.s, %i.f
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !86

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit ], [ true, %.preheader ], [ %i.r, %bb.c ], [ %i.r, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container8flat_mapIiiSt4lessIiEvEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESC_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !697
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !697
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SG_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiEvEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SC_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !505  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !509
  %i.f = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.f) #24
  br label %.body

_ZN5boost9container8flat_mapIiiSt4lessIiEvEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SC_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !668
  ret void

.body:                                            ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container13flat_multimapIiiSt4lessIiEvEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESC_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.148") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !697
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !697
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SG_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container13flat_multimapIiiSt4lessIiEvEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SC_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !505  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !509
  %i.f = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.f) #24
  br label %.body

_ZN5boost9container13flat_multimapIiiSt4lessIiEvEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SC_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !674
  ret void

.body:                                            ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 7 uses
  %7 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !508, !noalias !6005 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !507, !noalias !6005 ; 4 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.c ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6006)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6007)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !505, !noalias !6008
  %i.k = sub i64 %i.j, %i.c
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !531

bb.b:                                             ; preds = %bb.a
  %.not15.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.h, 10
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.l = shl i64 %i.c, 3
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 %i.g
  %bound0 = icmp ult ptr %i.d, %2
  %bound1 = icmp ult ptr %1, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %i.o = and i64 %i.h, 3
  %i.p = shl nsw i64 %n.vec, 3                    ; 2 uses
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr i8, ptr %1, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 3 uses
  %i.t = or disjoint i64 %i.s, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.s ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.d, i64 %i.t ; 2 uses
  %next.gep51 = getelementptr i8, ptr %1, i64 %i.s
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep), "nonnull"(ptr %next.gep49) ]
  %wide.vec = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !501, !alias.scope !6009, !noalias !6008
  %wide.vec54 = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !501, !alias.scope !6009, !noalias !6008
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501, !alias.scope !6010, !noalias !6008
  store <4 x i32> %wide.vec54, ptr %next.gep49, align 4, !tbaa !501, !alias.scope !6010, !noalias !6008
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !5992

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader63

.lr.ph.i.i.i.i.i.i.preheader63:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.i.i.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ] ; 4 uses
  %.01417.i.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %i.v = add nsw i64 %.018.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader63, %.lr.ph.i.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ]
  %.01417.i.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ] ; 4 uses
  %.sroa.0.016.i.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader63 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i.prol) ]
  %i.w = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !6008
  store i32 %i.w, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !6008
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !501, !noalias !6008
  store i32 %i.z, ptr %i.x, align 4, !tbaa !501, !noalias !6008
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ac = add i64 %.018.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !5993

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader63
  %.018.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.v, 3
  br i1 %i.ad, label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i) ]
  %i.ae = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !6008
  store i32 %i.ae, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !6008
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !501, !noalias !6008
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !501, !noalias !6008
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !501, !noalias !6008
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !501, !noalias !6008
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !501, !noalias !6008
  store i32 %i.an, ptr %i.al, align 4, !tbaa !501, !noalias !6008
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !501, !noalias !6008
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !501, !noalias !6008
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !501, !noalias !6008
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !501, !noalias !6008
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !501, !noalias !6008
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !501, !noalias !6008
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !501, !noalias !6008
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !501, !noalias !6008
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.bc = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5994

_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.b
  %i.bd = add i64 %i.c, %i.h                      ; 2 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !517, !noalias !6008
  store ptr %i.d, ptr %6, align 8, !tbaa !533, !alias.scope !6008
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.h, ptr %1)
  %.pre = load ptr, ptr %6, align 8, !tbaa !509
  %.pre25 = load ptr, ptr %0, align 8, !tbaa !508, !noalias !6011
  %.pre26 = load i64, ptr %i.b, align 8, !tbaa !507, !noalias !6011
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit

_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.be = phi i64 [ %i.bd, %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre26, %bb.c ] ; 2 uses
  %i.bf = phi ptr [ %i.a, %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre25, %bb.c ] ; 2 uses
  %i.bg = phi ptr [ %i.d, %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 4 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.be ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit
  store ptr %i.bg, ptr %4, align 8, !tbaa !533
  store ptr %i.bh, ptr %5, align 8, !tbaa !533
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = sub nuw nsw i64 64, %i.bo
  call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %i.bp, i1 noundef zeroext true)
  %.pre27 = load ptr, ptr %6, align 8, !tbaa !509
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !508, !noalias !6012
  %.pre29 = load i64, ptr %i.b, align 8, !tbaa !507, !noalias !6012
  br label %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit

_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit, %bb.d
  %i.bq = phi i64 [ %i.be, %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit ], [ %.pre29, %bb.d ]
  %i.br = phi ptr [ %i.bf, %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit ], [ %.pre28, %bb.d ] ; 2 uses
  %i.bs = phi ptr [ %i.bg, %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit ], [ %.pre27, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.bs, ptr %8, align 8, !tbaa !533
  call void @llvm.experimental.noalias.scope.decl(metadata !6012)
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %i.bt, ptr %9, align 8, !tbaa !533, !alias.scope !6012
  store ptr %i.br, ptr %10, align 8, !tbaa !533, !alias.scope !6013
  store ptr %i.bs, ptr %11, align 8, !tbaa !533
  call void @_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_T0_SG_T1_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11)
  %i.bu = load ptr, ptr %7, align 8, !tbaa !533   ; 3 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !533   ; 8 uses
  %.not = icmp eq ptr %i.bu, %i.bv
  %i.bw = load ptr, ptr %0, align 8, !tbaa !508, !noalias !6014 ; 4 uses
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !507, !noalias !6014 ; 3 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %.not.i = icmp eq ptr %i.bu, %i.by
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3
  %i.cd = sub i64 %i.bx, %i.cc                    ; 2 uses
  store i64 %i.cd, ptr %i.b, align 8, !tbaa !517, !noalias !6015
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit

_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit: ; preds = %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.ce = phi i64 [ %i.bx, %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit ], [ %i.cd, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  br i1 %.not, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cg = icmp eq ptr %i.bw, %i.bv
  %i.ch = icmp eq ptr %i.bv, %i.cf
  %or.cond.i.i = or i1 %i.cg, %i.ch
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.ci = load i32, ptr %i.bv, align 4, !tbaa !501
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.cl, %bb.g ], [ %i.bw, %.preheader.i.i ] ; 4 uses
  %i.cj = load i32, ptr %.0.i.i, align 4, !tbaa !501
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bv
  br i1 %i.cm, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !21

bb.h:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !501
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.025.i.i = phi ptr [ %i.cf, %bb.h ], [ %i.cp, %bb.k ] ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !501
  %i.cr = icmp slt i32 %i.cq, %i.co
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cs = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.ct = ptrtoint ptr %.0.i.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  %i.cw = ptrtoint ptr %.025.i.i to i64
  %i.cx = sub i64 %i.cw, %i.cs
  %i.cy = ashr exact i64 %i.cx, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.cv, i64 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.k:                                             ; preds = %bb.i
  %i.cz = icmp eq ptr %i.cp, %i.bv
  br i1 %i.cz, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.i, !llvm.loop !22

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %bb.j, %bb.e, %_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiEvE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SG_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 6 uses
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !508, !noalias !6028 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !507, !noalias !6028 ; 3 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.c ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6029)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6030)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !505, !noalias !6031
  %i.k = sub i64 %i.j, %i.c
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !531

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.h, 10
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.l = shl i64 %i.c, 3
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 %i.g
  %bound0 = icmp ult ptr %i.d, %2
  %bound1 = icmp ult ptr %1, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %i.o = and i64 %i.h, 3
  %i.p = shl nsw i64 %n.vec, 3                    ; 2 uses
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr i8, ptr %1, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 3 uses
  %i.t = or disjoint i64 %i.s, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.s ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.d, i64 %i.t ; 2 uses
  %next.gep35 = getelementptr i8, ptr %1, i64 %i.s
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep), "nonnull"(ptr %next.gep33) ]
  %wide.vec = load <4 x i32>, ptr %next.gep35, align 4, !tbaa !501, !alias.scope !6032, !noalias !6031
  %wide.vec38 = load <4 x i32>, ptr %next.gep36, align 4, !tbaa !501, !alias.scope !6032, !noalias !6031
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501, !alias.scope !6033, !noalias !6031
  store <4 x i32> %wide.vec38, ptr %next.gep33, align 4, !tbaa !501, !alias.scope !6033, !noalias !6031
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !6025

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.i.preheader47:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.i.i.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ] ; 4 uses
  %.01417.i.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %i.v = add nsw i64 %.018.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader47, %.lr.ph.i.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ]
  %.01417.i.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ] ; 4 uses
  %.sroa.0.016.i.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader47 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i.prol) ]
  %i.w = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !6031
  store i32 %i.w, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !6031
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !501, !noalias !6031
  store i32 %i.z, ptr %i.x, align 4, !tbaa !501, !noalias !6031
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ac = add i64 %.018.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !6026

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader47
  %.018.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.v, 3
  br i1 %i.ad, label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i) ]
  %i.ae = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !6031
  store i32 %i.ae, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !6031
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !501, !noalias !6031
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !501, !noalias !6031
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !501, !noalias !6031
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !501, !noalias !6031
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !501, !noalias !6031
  store i32 %i.an, ptr %i.al, align 4, !tbaa !501, !noalias !6031
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !501, !noalias !6031
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !501, !noalias !6031
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !501, !noalias !6031
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !501, !noalias !6031
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !501, !noalias !6031
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !501, !noalias !6031
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !501, !noalias !6031
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !501, !noalias !6031
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.bc = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6027

_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !517, !noalias !6031
  %i.be = add i64 %i.bd, %i.h                     ; 2 uses
  store i64 %i.be, ptr %i.b, align 8, !tbaa !517, !noalias !6031
  store ptr %i.d, ptr %5, align 8, !tbaa !533, !alias.scope !6031
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.h, ptr %1)
  %.pre = load ptr, ptr %5, align 8, !tbaa !509
  %.pre17 = load i64, ptr %i.b, align 8, !tbaa !507
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit

_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.bf = phi i64 [ %i.be, %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre17, %bb.c ]
  %i.bg = phi ptr [ %i.d, %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !508
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef %i.bg, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bn = load ptr, ptr %5, align 8, !tbaa !509   ; 7 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !508   ; 3 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !507
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = icmp eq ptr %i.bo, %i.bn
  %i.bs = icmp eq ptr %i.bn, %i.bq
  %or.cond.i.i = or i1 %i.br, %i.bs
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit
  %i.bt = load i32, ptr %i.bn, align 4, !tbaa !501
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.bw, %bb.e ], [ %i.bo, %.preheader.i.i ] ; 4 uses
  %i.bu = load i32, ptr %.0.i.i, align 4, !tbaa !501
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bn
  br i1 %i.bx, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.d, !llvm.loop !21

bb.f:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !501
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.025.i.i = phi ptr [ %i.bq, %bb.f ], [ %i.ca, %bb.i ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !501
  %i.cc = icmp slt i32 %i.cb, %i.bz
  br i1 %i.cc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cd = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.ce = ptrtoint ptr %.0.i.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3
  %i.ch = ptrtoint ptr %.025.i.i to i64
  %i.ci = sub i64 %i.ch, %i.cd
  %i.cj = ashr exact i64 %i.ci, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ck = icmp eq ptr %i.ca, %i.bn
  br i1 %i.ck, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.g, !llvm.loop !22

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !505  ; 6 uses
  %i.c = sub i64 1152921504606846975, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !517  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 1152921504606846975
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !531

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #30 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !508    ; 6 uses
  %i.t = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !507  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = icmp ne ptr %i.s, %2
  %i.z = icmp ne ptr %i.s, null                   ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.z, %i.y
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, !prof !626

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 4 %i.s, i64 %i.v, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 5 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.ab = and i64 %3, 3
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ac
  %i.ae = getelementptr i8, ptr %4, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 3 uses
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.af ; 2 uses
  %next.gep14 = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ag ; 2 uses
  %next.gep16 = getelementptr i8, ptr %4, i64 %i.af
  %next.gep17 = getelementptr i8, ptr %4, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep), "nonnull"(ptr %next.gep14) ]
  %wide.vec = load <4 x i32>, ptr %next.gep16, align 4, !tbaa !501
  %wide.vec19 = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !501
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501
  store <4 x i32> %wide.vec19, ptr %next.gep14, align 4, !tbaa !501
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !6034

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader25

.lr.ph.i.i.i.i.preheader25:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.01417.i.i.i.i.ph = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.sroa.0.016.i.i.i.i.ph = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader25, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ]
  %.01417.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ] ; 3 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.ai = load <2 x i32>, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !501
  store <2 x i32> %i.ai, ptr %.01417.i.i.i.i, align 4, !tbaa !501
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.al = add i64 %.018.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !6035

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %i.am = icmp ne ptr %2, %i.x
  %i.an = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.an, %i.am
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i, !prof !626

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.ap = ptrtoint ptr %i.x to i64
  %i.aq = sub i64 %i.ap, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 4 %2, i64 %i.aq, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  br i1 %i.z, label %bb.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mSG_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !505
  %i.as = shl i64 %i.ar, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.as) #24
  %.pre = load i64, ptr %i.d, align 8, !tbaa !517
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mSG_mT_.exit

_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mSG_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i, %bb.i
  %i.at = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.r, ptr %1, align 8, !tbaa !508
  %i.au = add i64 %i.at, %3
  store i64 %i.au, ptr %i.d, align 8, !tbaa !517
  store i64 %i.o, ptr %i.a, align 8, !tbaa !627
  %i.av = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.av, ptr %0, align 8, !tbaa !533
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEC2IPS4_EET_S9_RKS1_RKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !495
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !496
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !497
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !498
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !499
  %.not7.i = icmp eq ptr %1, %2
  br i1 %.not7.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_insert_range_uniqueIPS2_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESC_SC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i
  %.pr20 = phi i64 [ %.pr, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.af, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.not.i9 = icmp eq i64 %.pr20, 0
  br i1 %.not.i9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !500  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !501
  %i.i = load i32, ptr %.08.i, align 4, !tbaa !501
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !500 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.k = load i32, ptr %.08.i, align 4, !tbaa !501 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !501  ; 2 uses
  %i.n = icmp slt i32 %i.k, %i.m                  ; 2 uses
  %.in.v.i.i = select i1 %i.n, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !500 ; 2 uses
  %.not.i.i10 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i10, label %._crit_edge.i.i, label %bb.d, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.n, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !497
  %i.p = icmp eq ptr %.019.lcssa29.i.i, %i.o
  br i1 %i.p, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #25
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.pre81.i = load i32, ptr %.phi.trans.insert80.i, align 4, !tbaa !501
  %.pre82.i = load i32, ptr %.08.i, align 4, !tbaa !501
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.r = phi i32 [ %.pre82.i, %bb.e ], [ %i.k, %._crit_edge.i.i ]
  %i.s = phi i32 [ %.pre81.i, %bb.e ], [ %i.m, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.t = icmp slt i32 %i.s, %i.r
  br i1 %i.t, label %select.unfold, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.f, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.u = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.u, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.w = load i32, ptr %.08.i, align 4, !tbaa !501
  %i.x = load i32, ptr %i.v, align 4, !tbaa !501
  %i.y = icmp slt i32 %i.w, %i.x
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold
  %i.z = phi i1 [ %i.y, %bb.g ], [ true, %select.unfold ]
  %i.aa = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc8 unwind label %bb.h    ; 2 uses

.noexc8:                                          ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i64, ptr %.08.i, align 4
  store i64 %i.ac, ptr %i.ab, align 4
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.z, ptr noundef nonnull %i.aa, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #24
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !499
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !499
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i: ; preds = %bb.f, %.noexc8
  %.pr = phi i64 [ %.pr20, %bb.f ], [ %i.ae, %.noexc8 ]
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.af, %2
  br i1 %.not.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_insert_range_uniqueIPS2_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESC_SC_.exit, label %.lr.ph.i, !llvm.loop !99

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE22_M_insert_range_uniqueIPS2_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESC_SC_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE17_M_insert_unique_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EOT_RT0_.exit.i, %bb.a
  ret void

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_M_insert_IRS2_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS2_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #24
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !499
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !500  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !501
  %i.i = load i32, ptr %2, align 4, !tbaa !501
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEESt3mapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_:bb.a

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 8 ; 2 uses
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #25
  %.not23 = icmp eq ptr %i.s, %i.f
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !123

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit ], [ true, %.preheader ], [ %i.r, %bb.c ], [ %i.r, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEESt8multimapIiiS5_SaIS6_IKiiEEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !515  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !499
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9357 ; 2 uses
  %.idx = shl nsw i64 %i.b, 3
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %.idx
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !497  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not4.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.j, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.05.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.h, %bb.b ]
  %i.j = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.j, %.lr.ph.i.i ]
  %.not13 = icmp eq i64 %.0.lcssa.i.i, %i.b
  br i1 %.not13, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.019.026 = phi ptr [ %i.s, %bb.c ], [ %i.e, %.preheader ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.t, %bb.c ], [ %i.h, %.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 32
  %i.m = load <2 x i32>, ptr %.sroa.019.026, align 4
  %i.n = load <2 x i32>, ptr %i.l, align 4
  %i.o = icmp eq <2 x i32> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %i.r = select i1 %i.p, i1 %i.q, i1 false        ; 3 uses
  br i1 %i.r, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 8 ; 2 uses
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #25
  %.not23 = icmp eq ptr %i.s, %i.f
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !124

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit ], [ true, %.preheader ], [ %i.r, %bb.c ], [ %i.r, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESF_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.196") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !697
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !697
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SF_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !513  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !509
  %i.f = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.f) #27
  br label %.body

_ZN5boost9container8flat_mapIiiSt4lessIiESaISt4pairIiiEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SF_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !710
  ret void

.body:                                            ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESF_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.200") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !697
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !697
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SF_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !513  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !509
  %i.f = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.f) #27
  br label %.body

_ZN5boost9container13flat_multimapIiiSt4lessIiESaISt4pairIiiEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SF_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !713
  ret void

.body:                                            ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 7 uses
  %7 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9380 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !515, !noalias !9380 ; 4 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.c ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9381)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9382)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !513, !noalias !9383
  %i.k = sub i64 %i.j, %i.c
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !531

bb.b:                                             ; preds = %bb.a
  %.not15.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.h, 10
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.l = shl i64 %i.c, 3
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 %i.g
  %bound0 = icmp ult ptr %i.d, %2
  %bound1 = icmp ult ptr %1, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %i.o = and i64 %i.h, 3
  %i.p = shl nsw i64 %n.vec, 3                    ; 2 uses
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr i8, ptr %1, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 3 uses
  %i.t = or disjoint i64 %i.s, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.s ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.d, i64 %i.t ; 2 uses
  %next.gep51 = getelementptr i8, ptr %1, i64 %i.s
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep), "nonnull"(ptr %next.gep49) ]
  %wide.vec = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !501, !alias.scope !9384, !noalias !9383
  %wide.vec54 = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !501, !alias.scope !9384, !noalias !9383
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501, !alias.scope !9385, !noalias !9383
  store <4 x i32> %wide.vec54, ptr %next.gep49, align 4, !tbaa !501, !alias.scope !9385, !noalias !9383
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !9367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader63

.lr.ph.i.i.i.i.i.i.preheader63:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.i.i.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ] ; 4 uses
  %.01417.i.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %i.v = add nsw i64 %.018.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader63, %.lr.ph.i.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ]
  %.01417.i.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ] ; 4 uses
  %.sroa.0.016.i.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader63 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i.prol) ]
  %i.w = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !9383
  store i32 %i.w, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !9383
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !501, !noalias !9383
  store i32 %i.z, ptr %i.x, align 4, !tbaa !501, !noalias !9383
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ac = add i64 %.018.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !9368

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader63
  %.018.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.v, 3
  br i1 %i.ad, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i) ]
  %i.ae = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !9383
  store i32 %i.ae, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !9383
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !501, !noalias !9383
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !501, !noalias !9383
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !501, !noalias !9383
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !501, !noalias !9383
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !501, !noalias !9383
  store i32 %i.an, ptr %i.al, align 4, !tbaa !501, !noalias !9383
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !501, !noalias !9383
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !501, !noalias !9383
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !501, !noalias !9383
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !501, !noalias !9383
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !501, !noalias !9383
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !501, !noalias !9383
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !501, !noalias !9383
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !501, !noalias !9383
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.bc = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9369

_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.b
  %i.bd = add i64 %i.c, %i.h                      ; 2 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !518, !noalias !9383
  store ptr %i.d, ptr %6, align 8, !tbaa !533, !alias.scope !9383
  br label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.h, ptr %1)
  %.pre = load ptr, ptr %6, align 8, !tbaa !509
  %.pre25 = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9386
  %.pre26 = load i64, ptr %i.b, align 8, !tbaa !515, !noalias !9386
  br label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit

_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.be = phi i64 [ %i.bd, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre26, %bb.c ] ; 2 uses
  %i.bf = phi ptr [ %i.a, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre25, %bb.c ] ; 2 uses
  %i.bg = phi ptr [ %i.d, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 4 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.be ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit
  store ptr %i.bg, ptr %4, align 8, !tbaa !533
  store ptr %i.bh, ptr %5, align 8, !tbaa !533
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = sub nuw nsw i64 64, %i.bo
  call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %i.bp, i1 noundef zeroext true)
  %.pre27 = load ptr, ptr %6, align 8, !tbaa !509
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9387
  %.pre29 = load i64, ptr %i.b, align 8, !tbaa !515, !noalias !9387
  br label %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit

_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit, %bb.d
  %i.bq = phi i64 [ %i.be, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit ], [ %.pre29, %bb.d ]
  %i.br = phi ptr [ %i.bf, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit ], [ %.pre28, %bb.d ] ; 2 uses
  %i.bs = phi ptr [ %i.bg, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit ], [ %.pre27, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.bs, ptr %8, align 8, !tbaa !533
  call void @llvm.experimental.noalias.scope.decl(metadata !9387)
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %i.bt, ptr %9, align 8, !tbaa !533, !alias.scope !9387
  store ptr %i.br, ptr %10, align 8, !tbaa !533, !alias.scope !9388
  store ptr %i.bs, ptr %11, align 8, !tbaa !533
  call void @_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_T0_SG_T1_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11)
  %i.bu = load ptr, ptr %7, align 8, !tbaa !533   ; 3 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !533   ; 8 uses
  %.not = icmp eq ptr %i.bu, %i.bv
  %i.bw = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9389 ; 4 uses
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !515, !noalias !9389 ; 3 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %.not.i = icmp eq ptr %i.bu, %i.by
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3
  %i.cd = sub i64 %i.bx, %i.cc                    ; 2 uses
  store i64 %i.cd, ptr %i.b, align 8, !tbaa !518, !noalias !9390
  br label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit

_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit: ; preds = %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.ce = phi i64 [ %i.bx, %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit ], [ %i.cd, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  br i1 %.not, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cg = icmp eq ptr %i.bw, %i.bv
  %i.ch = icmp eq ptr %i.bv, %i.cf
  %or.cond.i.i = or i1 %i.cg, %i.ch
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.ci = load i32, ptr %i.bv, align 4, !tbaa !501
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.cl, %bb.g ], [ %i.bw, %.preheader.i.i ] ; 4 uses
  %i.cj = load i32, ptr %.0.i.i, align 4, !tbaa !501
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bv
  br i1 %i.cm, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !21

bb.h:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !501
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.025.i.i = phi ptr [ %i.cf, %bb.h ], [ %i.cp, %bb.k ] ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !501
  %i.cr = icmp slt i32 %i.cq, %i.co
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cs = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.ct = ptrtoint ptr %.0.i.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  %i.cw = ptrtoint ptr %.025.i.i to i64
  %i.cx = sub i64 %i.cw, %i.cs
  %i.cy = ashr exact i64 %i.cx, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.cv, i64 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.k:                                             ; preds = %bb.i
  %i.cz = icmp eq ptr %i.cp, %i.bv
  br i1 %i.cz, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.i, !llvm.loop !22

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %bb.j, %bb.e, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiESaIS4_EE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SH_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 6 uses
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9403 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !515, !noalias !9403 ; 3 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.c ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9404)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9405)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !513, !noalias !9406
  %i.k = sub i64 %i.j, %i.c
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !531

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.h, 10
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.l = shl i64 %i.c, 3
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 %i.g
  %bound0 = icmp ult ptr %i.d, %2
  %bound1 = icmp ult ptr %1, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %i.o = and i64 %i.h, 3
  %i.p = shl nsw i64 %n.vec, 3                    ; 2 uses
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr i8, ptr %1, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 3 uses
  %i.t = or disjoint i64 %i.s, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.s ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.d, i64 %i.t ; 2 uses
  %next.gep35 = getelementptr i8, ptr %1, i64 %i.s
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep), "nonnull"(ptr %next.gep33) ]
  %wide.vec = load <4 x i32>, ptr %next.gep35, align 4, !tbaa !501, !alias.scope !9407, !noalias !9406
  %wide.vec38 = load <4 x i32>, ptr %next.gep36, align 4, !tbaa !501, !alias.scope !9407, !noalias !9406
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501, !alias.scope !9408, !noalias !9406
  store <4 x i32> %wide.vec38, ptr %next.gep33, align 4, !tbaa !501, !alias.scope !9408, !noalias !9406
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !9400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.i.preheader47:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.i.i.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ] ; 4 uses
  %.01417.i.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %i.v = add nsw i64 %.018.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader47, %.lr.ph.i.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ]
  %.01417.i.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ] ; 4 uses
  %.sroa.0.016.i.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader47 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i.prol) ]
  %i.w = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !9406
  store i32 %i.w, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !9406
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !501, !noalias !9406
  store i32 %i.z, ptr %i.x, align 4, !tbaa !501, !noalias !9406
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ac = add i64 %.018.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !9401

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader47
  %.018.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.v, 3
  br i1 %i.ad, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i) ]
  %i.ae = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !9406
  store i32 %i.ae, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !9406
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !501, !noalias !9406
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !501, !noalias !9406
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !501, !noalias !9406
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !501, !noalias !9406
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !501, !noalias !9406
  store i32 %i.an, ptr %i.al, align 4, !tbaa !501, !noalias !9406
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !501, !noalias !9406
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !501, !noalias !9406
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !501, !noalias !9406
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !501, !noalias !9406
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !501, !noalias !9406
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !501, !noalias !9406
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !501, !noalias !9406
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !501, !noalias !9406
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.bc = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9402

_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !518, !noalias !9406
  %i.be = add i64 %i.bd, %i.h                     ; 2 uses
  store i64 %i.be, ptr %i.b, align 8, !tbaa !518, !noalias !9406
  store ptr %i.d, ptr %5, align 8, !tbaa !533, !alias.scope !9406
  br label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.h, ptr %1)
  %.pre = load ptr, ptr %5, align 8, !tbaa !509
  %.pre17 = load i64, ptr %i.b, align 8, !tbaa !515
  br label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit

_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.bf = phi i64 [ %i.be, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre17, %bb.c ]
  %i.bg = phi ptr [ %i.d, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !516
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef %i.bg, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bn = load ptr, ptr %5, align 8, !tbaa !509   ; 7 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !516   ; 3 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !515
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = icmp eq ptr %i.bo, %i.bn
  %i.bs = icmp eq ptr %i.bn, %i.bq
  %or.cond.i.i = or i1 %i.br, %i.bs
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit
  %i.bt = load i32, ptr %i.bn, align 4, !tbaa !501
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.bw, %bb.e ], [ %i.bo, %.preheader.i.i ] ; 4 uses
  %i.bu = load i32, ptr %.0.i.i, align 4, !tbaa !501
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bn
  br i1 %i.bx, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.d, !llvm.loop !21

bb.f:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !501
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.025.i.i = phi ptr [ %i.bq, %bb.f ], [ %i.ca, %bb.i ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !501
  %i.cc = icmp slt i32 %i.cb, %i.bz
  br i1 %i.cc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cd = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.ce = ptrtoint ptr %.0.i.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3
  %i.ch = ptrtoint ptr %.025.i.i to i64
  %i.ci = sub i64 %i.ch, %i.cd
  %i.cj = ashr exact i64 %i.ci, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ck = icmp eq ptr %i.ca, %i.bn
  br i1 %i.ck, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.g, !llvm.loop !22

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS8_17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSI_5bool_ILb0EEESP_E4typeE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiESaIS5_EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSE_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !513  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !518  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderISaISt4pairIiiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderISaISt4pairIiiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderISaISt4pairIiiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 3 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %bb.g, !prof !531

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderISaISt4pairIiiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderISaISt4pairIiiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = icmp samesign ugt i64 %i.o, 1152921504606846975
  br i1 %i.q, label %bb.h, label %_ZN5boost9container19vector_alloc_holderISaISt4pairIiiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !531

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZN5boost9container19vector_alloc_holderISaISt4pairIiiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %bb.g
  %i.r = shl nuw nsw i64 %i.o, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #26 ; 5 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !516    ; 6 uses
  %i.u = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !515  ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.x ; 2 uses
  %i.z = icmp ne ptr %i.t, %2
  %i.aa = icmp ne ptr %i.t, null                  ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.aa, %i.z
  br i1 %spec.select.i.i.i.i, label %bb.i, label %_ZN5boost9container24uninitialized_move_allocISaISt4pairIiiEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i, !prof !626

bb.i:                                             ; preds = %_ZN5boost9container19vector_alloc_holderISaISt4pairIiiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %i.t, i64 %i.w, i1 false)
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  br label %_ZN5boost9container24uninitialized_move_allocISaISt4pairIiiEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i

_ZN5boost9container24uninitialized_move_allocISaISt4pairIiiEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i: ; preds = %bb.i, %_ZN5boost9container19vector_alloc_holderISaISt4pairIiiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.ab, %bb.i ], [ %i.s, %_ZN5boost9container19vector_alloc_holderISaISt4pairIiiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 5 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyISaISt4pairIiiEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocISaISt4pairIiiEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.ac = and i64 %3, 3
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ad
  %i.af = getelementptr i8, ptr %4, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 3 uses
  %i.ah = or disjoint i64 %i.ag, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ag ; 2 uses
  %next.gep15 = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ah ; 2 uses
  %next.gep17 = getelementptr i8, ptr %4, i64 %i.ag
  %next.gep18 = getelementptr i8, ptr %4, i64 %i.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep), "nonnull"(ptr %next.gep15) ]
  %wide.vec = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !501
  %wide.vec20 = load <4 x i32>, ptr %next.gep18, align 4, !tbaa !501
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501
  store <4 x i32> %wide.vec20, ptr %next.gep15, align 4, !tbaa !501
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !9409

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyISaISt4pairIiiEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader26

.lr.ph.i.i.i.i.preheader26:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  %.01417.i.i.i.i.ph = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.sroa.0.016.i.i.i.i.ph = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader26, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader26 ]
  %.01417.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader26 ] ; 3 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader26 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.aj = load <2 x i32>, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !501
  store <2 x i32> %i.aj, ptr %.01417.i.i.i.i, align 4, !tbaa !501
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.am = add i64 %.018.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyISaISt4pairIiiEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9410

_ZN5boost9container3dtl18insert_range_proxyISaISt4pairIiiEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocISaISt4pairIiiEEPS3_S5_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i
  %i.an = icmp ne ptr %2, %i.y
  %i.ao = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ao, %i.an
  br i1 %spec.select.i.i18.i.i, label %bb.j, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaISt4pairIiiEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, !prof !626

bb.j:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaISt4pairIiiEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.aq = ptrtoint ptr %i.y to i64
  %i.ar = sub i64 %i.aq, %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 4 %2, i64 %i.ar, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocISaISt4pairIiiEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocISaISt4pairIiiEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %bb.j, %_ZN5boost9container3dtl18insert_range_proxyISaISt4pairIiiEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i
  br i1 %i.aa, label %bb.k, label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mSF_mT_.exit

bb.k:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaISt4pairIiiEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %i.as = load i64, ptr %i.a, align 8, !tbaa !513
  %i.at = shl i64 %i.as, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.at) #27
  %.pre = load i64, ptr %i.d, align 8, !tbaa !518
  br label %_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mSF_mT_.exit

_ZN5boost9container6vectorISt4pairIiiESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvPS3_mSF_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaISt4pairIiiEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, %bb.k
  %i.au = phi i64 [ %i.x, %_ZN5boost9container35uninitialized_move_and_insert_allocISaISt4pairIiiEEPS3_S5_NS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i ], [ %.pre, %bb.k ]
  store ptr %i.s, ptr %1, align 8, !tbaa !516
  %i.av = add i64 %i.au, %3
  store i64 %i.av, ptr %i.d, align 8, !tbaa !518
  store i64 %i.o, ptr %i.a, align 8, !tbaa !627
  %i.aw = getelementptr inbounds i8, ptr %i.s, i64 %i.w
  store ptr %i.aw, ptr %0, align 8, !tbaa !533
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9447 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !515, !noalias !9448 ; 2 uses
  %.idx = shl i64 %i.c, 3                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  %i.e = load ptr, ptr %1, align 8, !tbaa !516, !noalias !9449 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !515, !noalias !9450
  %i.h = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %.not2.i.i = icmp eq i64 %i.c, 0
  br i1 %.not2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %i.e, i64 %.idx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.v, %bb.d ], [ %i.e, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.i = phi ptr [ %i.u, %bb.d ], [ %i.a, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.j = icmp eq ptr %.sroa.02.0.i, %i.h
  br i1 %i.j, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = load i32, ptr %.sroa.02.0.i, align 4, !tbaa !529 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !529  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i

_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i:          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !530  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !530  ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i

_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i: ; preds = %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i
  %i.t = icmp slt i32 %i.r, %i.p
  br i1 %i.t, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8
  %.not.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !100

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.a
  %i.w = phi ptr [ %i.e, %bb.a ], [ %scevgep, %bb.d ]
  %i.x = icmp ne ptr %i.w, %i.h
  br label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit

_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit: ; preds = %.lr.ph.i.i, %bb.b, %bb.c, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i, %._crit_edge.i.i
  %.0.i.i = phi i1 [ %i.x, %._crit_edge.i.i ], [ true, %bb.c ], [ false, %bb.b ], [ true, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i ], [ false, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i ], [ false, %.lr.ph.i.i ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containergtERKNS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !516, !noalias !9487 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !515, !noalias !9488 ; 2 uses
  %.idx.i = shl i64 %i.c, 3                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9489 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !515, !noalias !9490
  %i.h = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %.idx.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.preheader.i
  %.sroa.02.0.i.i = phi ptr [ %i.v, %bb.d ], [ %i.e, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %i.i = phi ptr [ %i.u, %bb.d ], [ %i.a, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.j = icmp eq ptr %.sroa.02.0.i.i, %i.h
  br i1 %i.j, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEES9_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.k = load i32, ptr %.sroa.02.0.i.i, align 4, !tbaa !529 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !529  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEES9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEES9_.exit, label %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i

_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i:        ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !530  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !530  ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEES9_.exit, label %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i

_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i: ; preds = %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i
  %i.t = icmp slt i32 %i.r, %i.p
  br i1 %i.t, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEES9_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !100

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.a
  %i.w = phi ptr [ %i.e, %bb.a ], [ %scevgep.i, %bb.d ]
  %i.x = icmp ne ptr %i.w, %i.h
  br label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEES9_.exit

_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEES9_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i, %._crit_edge.i.i.i
  %.0.i.i.i = phi i1 [ %i.x, %._crit_edge.i.i.i ], [ false, %.lr.ph.i.i.i ], [ false, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i ], [ true, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0.i.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerleERKNS0_8flat_mapIiiSt4lessIiESaISt4pairIiiEEEES9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !516, !noalias !9527 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !515, !noalias !9528 ; 2 uses
  %.idx.i = shl i64 %i.c, 3                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !516, !noalias !9529 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_:bb.a

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 8 ; 2 uses
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #25
  %.not23 = icmp eq ptr %i.s, %i.f
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !132

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit ], [ true, %.preheader ], [ %i.r, %bb.c ], [ %i.r, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !511  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !499
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !508, !noalias !11922 ; 2 uses
  %.idx = shl nsw i64 %i.b, 3
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %.idx
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !497  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not4.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.j, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.05.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.h, %bb.b ]
  %i.j = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i) #25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.j, %.lr.ph.i.i ]
  %.not13 = icmp eq i64 %.0.lcssa.i.i, %i.b
  br i1 %.not13, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.019.026 = phi ptr [ %i.s, %bb.c ], [ %i.e, %.preheader ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.t, %bb.c ], [ %i.h, %.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 32
  %i.m = load <2 x i32>, ptr %.sroa.019.026, align 4
  %i.n = load <2 x i32>, ptr %i.l, align 4
  %i.o = icmp eq <2 x i32> %i.m, %i.n             ; 2 uses
  %i.p = extractelement <2 x i1> %i.o, i64 0
  %i.q = extractelement <2 x i1> %i.o, i64 1
  %i.r = select i1 %i.p, i1 %i.q, i1 false        ; 3 uses
  br i1 %i.r, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 8 ; 2 uses
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #25
  %.not23 = icmp eq ptr %i.s, %i.f
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !133

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit ], [ true, %.preheader ], [ %i.r, %bb.c ], [ %i.r, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container8flat_mapIiiSt4lessIiENS2_13new_allocatorISt4pairIiiEEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESG_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.222") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !697
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !697
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !505  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !509
  %i.f = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.f) #24
  br label %.body

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !722
  ret void

.body:                                            ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container13flat_multimapIiiSt4lessIiENS2_13new_allocatorISt4pairIiiEEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESG_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.226") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !697
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !697
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !505  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !509
  %i.f = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.f) #24
  br label %.body

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !725
  ret void

.body:                                            ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 7 uses
  %7 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !508, !noalias !11945 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !511, !noalias !11945 ; 4 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.c ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11946)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11947)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !505, !noalias !11948
  %i.k = sub i64 %i.j, %i.c
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !531

bb.b:                                             ; preds = %bb.a
  %.not15.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.h, 10
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader63, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.l = shl i64 %i.c, 3
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 %i.g
  %bound0 = icmp ult ptr %i.d, %2
  %bound1 = icmp ult ptr %1, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader63, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %i.o = and i64 %i.h, 3
  %i.p = shl nsw i64 %n.vec, 3                    ; 2 uses
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr i8, ptr %1, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 3 uses
  %i.t = or disjoint i64 %i.s, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.s ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.d, i64 %i.t ; 2 uses
  %next.gep51 = getelementptr i8, ptr %1, i64 %i.s
  %next.gep52 = getelementptr i8, ptr %1, i64 %i.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep), "nonnull"(ptr %next.gep49) ]
  %wide.vec = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !501, !alias.scope !11949, !noalias !11948
  %wide.vec54 = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !501, !alias.scope !11949, !noalias !11948
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501, !alias.scope !11950, !noalias !11948
  store <4 x i32> %wide.vec54, ptr %next.gep49, align 4, !tbaa !501, !alias.scope !11950, !noalias !11948
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !11932

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader63

.lr.ph.i.i.i.i.i.i.preheader63:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.i.i.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ] ; 4 uses
  %.01417.i.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %i.v = add nsw i64 %.018.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader63, %.lr.ph.i.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ]
  %.01417.i.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ] ; 4 uses
  %.sroa.0.016.i.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader63 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i.prol) ]
  %i.w = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !11948
  store i32 %i.w, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !11948
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !501, !noalias !11948
  store i32 %i.z, ptr %i.x, align 4, !tbaa !501, !noalias !11948
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ac = add i64 %.018.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !11933

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader63
  %.018.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.v, 3
  br i1 %i.ad, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i) ]
  %i.ae = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !11948
  store i32 %i.ae, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !11948
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !501, !noalias !11948
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !501, !noalias !11948
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !501, !noalias !11948
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !501, !noalias !11948
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !501, !noalias !11948
  store i32 %i.an, ptr %i.al, align 4, !tbaa !501, !noalias !11948
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !501, !noalias !11948
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !501, !noalias !11948
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !501, !noalias !11948
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !501, !noalias !11948
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !501, !noalias !11948
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !501, !noalias !11948
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !501, !noalias !11948
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !501, !noalias !11948
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.bc = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11934

_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.b
  %i.bd = add i64 %i.c, %i.h                      ; 2 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !517, !noalias !11948
  store ptr %i.d, ptr %6, align 8, !tbaa !533, !alias.scope !11948
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.h, ptr %1)
  %.pre = load ptr, ptr %6, align 8, !tbaa !509
  %.pre25 = load ptr, ptr %0, align 8, !tbaa !508, !noalias !11951
  %.pre26 = load i64, ptr %i.b, align 8, !tbaa !511, !noalias !11951
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit

_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.be = phi i64 [ %i.bd, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre26, %bb.c ] ; 2 uses
  %i.bf = phi ptr [ %i.a, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre25, %bb.c ] ; 2 uses
  %i.bg = phi ptr [ %i.d, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 4 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.be ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit
  store ptr %i.bg, ptr %4, align 8, !tbaa !533
  store ptr %i.bh, ptr %5, align 8, !tbaa !533
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = sub nuw nsw i64 64, %i.bo
  call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %i.bp, i1 noundef zeroext true)
  %.pre27 = load ptr, ptr %6, align 8, !tbaa !509
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !508, !noalias !11952
  %.pre29 = load i64, ptr %i.b, align 8, !tbaa !511, !noalias !11952
  br label %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit

_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit, %bb.d
  %i.bq = phi i64 [ %i.be, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit ], [ %.pre29, %bb.d ]
  %i.br = phi ptr [ %i.bf, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit ], [ %.pre28, %bb.d ] ; 2 uses
  %i.bs = phi ptr [ %i.bg, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit ], [ %.pre27, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr %i.bs, ptr %8, align 8, !tbaa !533
  call void @llvm.experimental.noalias.scope.decl(metadata !11952)
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %i.bt, ptr %9, align 8, !tbaa !533, !alias.scope !11952
  store ptr %i.br, ptr %10, align 8, !tbaa !533, !alias.scope !11953
  store ptr %i.bs, ptr %11, align 8, !tbaa !533
  call void @_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_T0_SG_T1_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11)
  %i.bu = load ptr, ptr %7, align 8, !tbaa !533   ; 3 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !533   ; 8 uses
  %.not = icmp eq ptr %i.bu, %i.bv
  %i.bw = load ptr, ptr %0, align 8, !tbaa !508, !noalias !11954 ; 4 uses
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !511, !noalias !11954 ; 3 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %.not.i = icmp eq ptr %i.bu, %i.by
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3
  %i.cd = sub i64 %i.bx, %i.cc                    ; 2 uses
  store i64 %i.cd, ptr %i.b, align 8, !tbaa !517, !noalias !11955
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit

_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit: ; preds = %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.ce = phi i64 [ %i.bx, %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit ], [ %i.cd, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  br i1 %.not, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cg = icmp eq ptr %i.bw, %i.bv
  %i.ch = icmp eq ptr %i.bv, %i.cf
  %or.cond.i.i = or i1 %i.cg, %i.ch
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.ci = load i32, ptr %i.bv, align 4, !tbaa !501
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.cl, %bb.g ], [ %i.bw, %.preheader.i.i ] ; 4 uses
  %i.cj = load i32, ptr %.0.i.i, align 4, !tbaa !501
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bv
  br i1 %i.cm, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !21

bb.h:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !501
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.025.i.i = phi ptr [ %i.cf, %bb.h ], [ %i.cp, %bb.k ] ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !501
  %i.cr = icmp slt i32 %i.cq, %i.co
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cs = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.ct = ptrtoint ptr %.0.i.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  %i.cw = ptrtoint ptr %.025.i.i to i64
  %i.cx = sub i64 %i.cw, %i.cs
  %i.cy = ashr exact i64 %i.cx, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.cv, i64 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.k:                                             ; preds = %bb.i
  %i.cz = icmp eq ptr %i.cp, %i.bv
  br i1 %i.cz, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.i, !llvm.loop !22

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %bb.j, %bb.e, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13new_allocatorIS4_EEE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.27", align 8 ; 6 uses
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = load ptr, ptr %0, align 8, !tbaa !508, !noalias !11968 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !511, !noalias !11968 ; 3 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.c ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11969)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11970)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !505, !noalias !11971
  %i.k = sub i64 %i.j, %i.c
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !531

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.h, 10
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader47, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.l = shl i64 %i.c, 3
  %i.m = getelementptr i8, ptr %i.a, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 %i.g
  %bound0 = icmp ult ptr %i.d, %2
  %bound1 = icmp ult ptr %1, %i.n
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader47, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, -4                       ; 3 uses
  %i.o = and i64 %i.h, 3
  %i.p = shl nsw i64 %n.vec, 3                    ; 2 uses
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = getelementptr i8, ptr %1, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i64 %index, 3                        ; 3 uses
  %i.t = or disjoint i64 %i.s, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.s ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.d, i64 %i.t ; 2 uses
  %next.gep35 = getelementptr i8, ptr %1, i64 %i.s
  %next.gep36 = getelementptr i8, ptr %1, i64 %i.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep), "nonnull"(ptr %next.gep33) ]
  %wide.vec = load <4 x i32>, ptr %next.gep35, align 4, !tbaa !501, !alias.scope !11972, !noalias !11971
  %wide.vec38 = load <4 x i32>, ptr %next.gep36, align 4, !tbaa !501, !alias.scope !11972, !noalias !11971
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501, !alias.scope !11973, !noalias !11971
  store <4 x i32> %wide.vec38, ptr %next.gep33, align 4, !tbaa !501, !alias.scope !11973, !noalias !11971
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !11965

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader47

.lr.ph.i.i.i.i.i.i.preheader47:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.i.i.ph = phi i64 [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ] ; 4 uses
  %.01417.i.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.q, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.r, %middle.block ] ; 2 uses
  %i.v = add nsw i64 %.018.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader47, %.lr.ph.i.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.prol = phi i64 [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ], [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ]
  %.01417.i.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ], [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ] ; 4 uses
  %.sroa.0.016.i.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader47 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i.prol) ]
  %i.w = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !11971
  store i32 %i.w, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !501, !noalias !11971
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !501, !noalias !11971
  store i32 %i.z, ptr %i.x, align 4, !tbaa !501, !noalias !11971
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ac = add i64 %.018.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !11966

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader47
  %.018.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.v, 3
  br i1 %i.ad, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i) ]
  %i.ae = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !11971
  store i32 %i.ae, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !501, !noalias !11971
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !501, !noalias !11971
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !501, !noalias !11971
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !501, !noalias !11971
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !501, !noalias !11971
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !501, !noalias !11971
  store i32 %i.an, ptr %i.al, align 4, !tbaa !501, !noalias !11971
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !501, !noalias !11971
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !501, !noalias !11971
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !501, !noalias !11971
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !501, !noalias !11971
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !501, !noalias !11971
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !501, !noalias !11971
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !501, !noalias !11971
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !501, !noalias !11971
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.bc = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11967

_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !517, !noalias !11971
  %i.be = add i64 %i.bd, %i.h                     ; 2 uses
  store i64 %i.be, ptr %i.b, align 8, !tbaa !517, !noalias !11971
  store ptr %i.d, ptr %5, align 8, !tbaa !533, !alias.scope !11971
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.27") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.h, ptr %1)
  %.pre = load ptr, ptr %5, align 8, !tbaa !509
  %.pre17 = load i64, ptr %i.b, align 8, !tbaa !511
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit

_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.bf = phi i64 [ %i.be, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre17, %bb.c ]
  %i.bg = phi ptr [ %i.d, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !508
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef %i.bg, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.bn = load ptr, ptr %5, align 8, !tbaa !509   ; 7 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !508   ; 3 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !511
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = icmp eq ptr %i.bo, %i.bn
  %i.bs = icmp eq ptr %i.bn, %i.bq
  %or.cond.i.i = or i1 %i.br, %i.bs
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit
  %i.bt = load i32, ptr %i.bn, align 4, !tbaa !501
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.bw, %bb.e ], [ %i.bo, %.preheader.i.i ] ; 4 uses
  %i.bu = load i32, ptr %.0.i.i, align 4, !tbaa !501
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bn
  br i1 %i.bx, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.d, !llvm.loop !21

bb.f:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !501
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.025.i.i = phi ptr [ %i.bq, %bb.f ], [ %i.ca, %bb.i ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !501
  %i.cc = icmp slt i32 %i.cb, %i.bz
  br i1 %i.cc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.cd = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.ce = ptrtoint ptr %.0.i.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3
  %i.ch = ptrtoint ptr %.025.i.i to i64
  %i.ci = sub i64 %i.ch, %i.cd
  %i.cj = ashr exact i64 %i.ci, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ck = icmp eq ptr %i.ca, %i.bn
  br i1 %i.ck, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.g, !llvm.loop !22

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS9_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSF_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.27") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !505  ; 6 uses
  %i.c = sub i64 1152921504606846975, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !517  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 1152921504606846975
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !531

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #30 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !508    ; 6 uses
  %i.t = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !511  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = icmp ne ptr %i.s, %2
  %i.z = icmp ne ptr %i.s, null                   ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.z, %i.y
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, !prof !626

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 4 %i.s, i64 %i.v, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 5 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.ab = and i64 %3, 3
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ac
  %i.ae = getelementptr i8, ptr %4, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 3 uses
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.af ; 2 uses
  %next.gep14 = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ag ; 2 uses
  %next.gep16 = getelementptr i8, ptr %4, i64 %i.af
  %next.gep17 = getelementptr i8, ptr %4, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep), "nonnull"(ptr %next.gep14) ]
  %wide.vec = load <4 x i32>, ptr %next.gep16, align 4, !tbaa !501
  %wide.vec19 = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !501
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !501
  store <4 x i32> %wide.vec19, ptr %next.gep14, align 4, !tbaa !501
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !11974

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader25

.lr.ph.i.i.i.i.preheader25:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.01417.i.i.i.i.ph = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.sroa.0.016.i.i.i.i.ph = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader25, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ]
  %.01417.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ] ; 3 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.ai = load <2 x i32>, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !501
  store <2 x i32> %i.ai, ptr %.01417.i.i.i.i, align 4, !tbaa !501
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.al = add i64 %.018.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !11975

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %i.am = icmp ne ptr %2, %i.x
  %i.an = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.an, %i.am
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i, !prof !626

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.ap = ptrtoint ptr %i.x to i64
  %i.aq = sub i64 %i.ap, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 4 %2, i64 %i.aq, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  br i1 %i.z, label %bb.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mSG_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !505
  %i.as = shl i64 %i.ar, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.as) #24
  %.pre = load i64, ptr %i.d, align 8, !tbaa !517
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mSG_mT_.exit

_ZN5boost9container6vectorISt4pairIiiENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS8_4pairIiiEEEEEEEEvPS3_mSG_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i, %bb.i
  %i.at = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.r, ptr %1, align 8, !tbaa !508
  %i.au = add i64 %i.at, %3
  store i64 %i.au, ptr %i.d, align 8, !tbaa !517
  store i64 %i.o, ptr %i.a, align 8, !tbaa !627
  %i.av = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.av, ptr %0, align 8, !tbaa !533
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !508, !noalias !12012 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !511, !noalias !12013 ; 2 uses
  %.idx = shl i64 %i.c, 3                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  %i.e = load ptr, ptr %1, align 8, !tbaa !508, !noalias !12014 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !511, !noalias !12015
  %i.h = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %.not2.i.i = icmp eq i64 %i.c, 0
  br i1 %.not2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %i.e, i64 %.idx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.v, %bb.d ], [ %i.e, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.i = phi ptr [ %i.u, %bb.d ], [ %i.a, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.j = icmp eq ptr %.sroa.02.0.i, %i.h
  br i1 %i.j, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = load i32, ptr %.sroa.02.0.i, align 4, !tbaa !529 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !529  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i

_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i:          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !530  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !530  ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i

_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i: ; preds = %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i
  %i.t = icmp slt i32 %i.r, %i.p
  br i1 %i.t, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8
  %.not.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !100

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.a
  %i.w = phi ptr [ %i.e, %bb.a ], [ %scevgep, %bb.d ]
  %i.x = icmp ne ptr %i.w, %i.h
  br label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit

_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit: ; preds = %.lr.ph.i.i, %bb.b, %bb.c, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i, %._crit_edge.i.i
  %.0.i.i = phi i1 [ %i.x, %._crit_edge.i.i ], [ true, %bb.c ], [ false, %bb.b ], [ true, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i ], [ false, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i ], [ false, %.lr.ph.i.i ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containergtERKNS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !508, !noalias !12052 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !511, !noalias !12053 ; 2 uses
  %.idx.i = shl i64 %i.c, 3                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !508, !noalias !12054 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !511, !noalias !12055
  %i.h = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not2.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %.idx.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.preheader.i
  %.sroa.02.0.i.i = phi ptr [ %i.v, %bb.d ], [ %i.e, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %i.i = phi ptr [ %i.u, %bb.d ], [ %i.a, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.j = icmp eq ptr %.sroa.02.0.i.i, %i.h
  br i1 %i.j, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESA_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.k = load i32, ptr %.sroa.02.0.i.i, align 4, !tbaa !529 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !529  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESA_.exit, label %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i

_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i:        ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !530  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !530  ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESA_.exit, label %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i

_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i: ; preds = %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i
  %i.t = icmp slt i32 %i.r, %i.p
  br i1 %i.t, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESA_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !100

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.a
  %i.w = phi ptr [ %i.e, %bb.a ], [ %scevgep.i, %bb.d ]
  %i.x = icmp ne ptr %i.w, %i.h
  br label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESA_.exit

_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESA_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i, %._crit_edge.i.i.i
  %.0.i.i.i = phi i1 [ %i.x, %._crit_edge.i.i.i ], [ false, %.lr.ph.i.i.i ], [ false, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i ], [ true, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0.i.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerleERKNS0_8flat_mapIiiSt4lessIiENS0_13new_allocatorISt4pairIiiEEEEESA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !508, !noalias !12092 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !511, !noalias !12093 ; 2 uses
  %.idx.i = shl i64 %i.c, 3                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !508, !noalias !12094 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairINS2_4test12copyable_intES6_ELb0EEES9_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEET_SH_SH_T0_SI_T1_:bb.a
  %..i5 = select i1 %i.da, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., ptr %i.by
  %.25.i6 = select i1 %i.da, ptr %.sroa.025, ptr %.sroa.031
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink24.i7 = phi ptr [ %..i5, %bb.v ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, %bb.u ]
  %.sink23.i8 = phi ptr [ %.25.i6, %bb.v ], [ %.sroa.0, %bb.u ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sink24.i7, i64 8
  store ptr %i.db, ptr %.sink23.i8, align 8, !tbaa !795, !noalias !18178
  %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32 = load ptr, ptr %.sroa.031, align 8, !tbaa !795, !noalias !18178 ; 2 uses
  %.not.i9 = icmp eq ptr %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32, %i.bt
  br i1 %.not.i9, label %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESA_SA_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEET1_T_SK_T0_SL_SJ_T2_.exit20.loopexit, label %.lr.ph.i4, !llvm.loop !18169

_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESA_SA_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEET1_T_SK_T0_SL_SJ_T2_.exit20.loopexit: ; preds = %bb.w
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre = load ptr, ptr %.sroa.0, align 8, !tbaa !789, !noalias !18178
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.f, %.preheader67, %.preheader66, %bb.a, %._crit_edge.i18, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESA_SA_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEET1_T_SK_T0_SL_SJ_T2_.exit20.loopexit, %._crit_edge.i, %.loopexit.loopexit, %._crit_edge92
  %.sroa.036.0..sroa.036.0..sroa.036.0..sink = phi ptr [ %i.r, %._crit_edge92 ], [ %i.ac, %.preheader66 ], [ %i.s, %.preheader67 ], [ %.sroa.036.0..sroa.036.0..sroa.036.0..sroa.036.0..pre, %.loopexit.loopexit ], [ %i.be, %._crit_edge.i ], [ %i.cp, %._crit_edge.i18 ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEEEESA_SA_NS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEET1_T_SK_T0_SL_SJ_T2_.exit20.loopexit ], [ %i.a, %bb.a ], [ %.pre119, %.split ], [ %i.ac, %bb.f ]
  store ptr %.sroa.036.0..sroa.036.0..sroa.036.0..sink, ptr %0, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIS4_S4_EEEEEEEENS0_12vec_iteratorIPS5_Lb0EEESJ_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.312") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !788  ; 6 uses
  %i.d = sub i64 1152921504606846975, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !793  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 1152921504606846975
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !531

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #30 ; 8 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !790    ; 13 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load i64, ptr %i.e, align 8, !tbaa !787  ; 6 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.x = add i64 %i.a, -8
  %i.y = sub i64 %i.x, %i.u                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader139, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -8
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.t, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.ae   ; 2 uses
  %i.ah = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ah, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi17 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %i.ai = shl i64 %index, 3                       ; 3 uses
  %i.aj = or disjoint i64 %i.ai, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ai
  %next.gep18 = getelementptr i8, ptr %i.t, i64 %i.aj
  %next.gep19 = getelementptr i8, ptr %i.s, i64 %i.ai
  %next.gep20 = getelementptr i8, ptr %i.s, i64 %i.aj
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !792, !alias.scope !18198
  %wide.vec22 = load <4 x i32>, ptr %next.gep18, align 4, !tbaa !792, !alias.scope !18198
  store <4 x i32> %wide.vec, ptr %next.gep19, align 4, !tbaa !792, !alias.scope !18199
  store <4 x i32> %wide.vec22, ptr %next.gep20, align 4, !tbaa !792, !alias.scope !18199
  %i.ak = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.al = add <2 x i32> %vec.phi17, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !18182

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.al, %i.ak
  %i.an = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.an, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !18200, !noalias !18198
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader139

.lr.ph.i.i.i.preheader139:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph140 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader139, %.lr.ph.i.i.i
  %i.ao = phi i32 [ %i.at, %.lr.ph.i.i.i ], [ %.ph140, %.lr.ph.i.i.i.preheader139 ]
  %.018.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader139 ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader139 ] ; 3 uses
  %i.ap = load i32, ptr %.018.i.i.i, align 4, !tbaa !792
  store i32 %i.ap, ptr %.01517.i.i.i, align 4, !tbaa !792
  %i.aq = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !792
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !792
  %i.at = add i32 %i.ao, 2                        ; 2 uses
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.au = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !18184

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ag, %middle.block ], [ %i.av, %.lr.ph.i.i.i ] ; 10 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEENS_13move_iteratorIPNS1_4pairIS6_S6_EEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %min.iters.check40 = icmp ult i64 %3, 16
  br i1 %min.iters.check40, label %.lr.ph.i.i.i.i.preheader135, label %vector.memcheck41

vector.memcheck41:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aw = shl i64 %3, 3                           ; 2 uses
  %i.ax = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %4, i64 %i.aw     ; 2 uses
  %bound042 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound143 = icmp ugt ptr %i.ax, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict44 = and i1 %bound042, %bound143
  %bound045 = icmp ult ptr %.015.lcssa.i.i.i, %i.ay
  %bound146 = icmp ult ptr %4, %i.ax
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx = or i1 %found.conflict44, %found.conflict47
  %bound048 = icmp ugt ptr %i.ay, @_ZN5boost9container4test12copyable_int5countE
  %bound149 = icmp ult ptr %4, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx51 = or i1 %conflict.rdx, %found.conflict50
  br i1 %conflict.rdx51, label %.lr.ph.i.i.i.i.preheader135, label %vector.ph52

vector.ph52:                                      ; preds = %vector.memcheck41
  %n.vec53 = and i64 %3, -4                       ; 3 uses
  %i.az = and i64 %3, 3
  %i.ba = shl i64 %n.vec53, 3                     ; 2 uses
  %i.bb = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ba
  %i.bc = getelementptr i8, ptr %4, i64 %i.ba
  %i.bd = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre, i64 0
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next72, %vector.body54 ] ; 2 uses
  %vec.phi56 = phi <2 x i32> [ %i.bd, %vector.ph52 ], [ %i.bg, %vector.body54 ]
  %vec.phi57 = phi <2 x i32> [ zeroinitializer, %vector.ph52 ], [ %i.bh, %vector.body54 ]
  %i.be = shl i64 %index55, 3                     ; 3 uses
  %i.bf = or disjoint i64 %i.be, 16               ; 2 uses
  %next.gep58 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.be ; 2 uses
  %next.gep60 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bf ; 2 uses
  %next.gep62 = getelementptr i8, ptr %4, i64 %i.be
  %next.gep63 = getelementptr i8, ptr %4, i64 %i.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep58), "nonnull"(ptr %next.gep60) ]
  %wide.vec64 = load <4 x i32>, ptr %next.gep62, align 4, !tbaa !792, !alias.scope !18201
  %wide.vec67 = load <4 x i32>, ptr %next.gep63, align 4, !tbaa !792, !alias.scope !18201
  store <4 x i32> %wide.vec64, ptr %next.gep58, align 4, !tbaa !792, !alias.scope !18202, !noalias !18203
  store <4 x i32> %wide.vec67, ptr %next.gep60, align 4, !tbaa !792, !alias.scope !18202, !noalias !18203
  %i.bg = add <2 x i32> %vec.phi56, splat (i32 2) ; 2 uses
  %i.bh = add <2 x i32> %vec.phi57, splat (i32 2) ; 2 uses
  %index.next72 = add nuw i64 %index55, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next72, %n.vec53
  br i1 %i.bi, label %middle.block73, label %vector.body54, !llvm.loop !18189

middle.block73:                                   ; preds = %vector.body54
  %bin.rdx74 = add <2 x i32> %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx74) ; 2 uses
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !18204, !noalias !18201
  %cmp.n75 = icmp eq i64 %3, %n.vec53
  br i1 %cmp.n75, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEENS_13move_iteratorIPNS1_4pairIS6_S6_EEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader135

.lr.ph.i.i.i.i.preheader135:                      ; preds = %vector.memcheck41, %.lr.ph.i.i.i.i.preheader, %middle.block73
  %.ph136 = phi i32 [ %.pre, %vector.memcheck41 ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %middle.block73 ] ; 2 uses
  %.018.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck41 ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block73 ] ; 4 uses
  %.01417.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck41 ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block73 ] ; 2 uses
  %.sroa.0.016.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck41 ], [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block73 ] ; 2 uses
  %i.bk = add i64 %.018.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader135, %.lr.ph.i.i.i.i.prol
  %i.bl = phi i32 [ %i.bn, %.lr.ph.i.i.i.i.prol ], [ %.ph136, %.lr.ph.i.i.i.i.preheader135 ]
  %.018.i.i.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.prol ], [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader135 ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.prol ], [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader135 ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader135 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader135 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.bm = load <2 x i32>, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !792
  store <2 x i32> %i.bm, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !792
  %i.bn = add i32 %i.bl, 2                        ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 8 ; 2 uses
  %i.bq = add i64 %.018.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.prol, !llvm.loop !18190

.lr.ph.i.i.i.i.prol.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i.i.prol
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader135
  %.unr = phi i32 [ %.ph136, %.lr.ph.i.i.i.i.preheader135 ], [ %i.bn, %.lr.ph.i.i.i.i.prol.loopexit.unr-lcssa ]
  %.018.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader135 ], [ %i.bq, %.lr.ph.i.i.i.i.prol.loopexit.unr-lcssa ]
  %.01417.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader135 ], [ %i.bp, %.lr.ph.i.i.i.i.prol.loopexit.unr-lcssa ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader135 ], [ %i.bo, %.lr.ph.i.i.i.i.prol.loopexit.unr-lcssa ]
  %i.br = icmp ult i64 %i.bk, 3
  br i1 %i.br, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEENS_13move_iteratorIPNS1_4pairIS6_S6_EEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bs = phi i32 [ %i.cd, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.018.i.i.i.i = phi i64 [ %i.cg, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.bt = load <2 x i32>, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !792
  store <2 x i32> %i.bt, ptr %.01417.i.i.i.i, align 4, !tbaa !792
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.bw = load <2 x i32>, ptr %i.bu, align 4, !tbaa !792
  store <2 x i32> %i.bw, ptr %i.bv, align 4, !tbaa !792
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.bz = load <2 x i32>, ptr %i.bx, align 4, !tbaa !792
  store <2 x i32> %i.bz, ptr %i.by, align 4, !tbaa !792
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 24
  %i.cc = load <2 x i32>, ptr %i.ca, align 4, !tbaa !792
  store <2 x i32> %i.cc, ptr %i.cb, align 4, !tbaa !792
  %i.cd = add i32 %i.bs, 8                        ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 32
  %i.cg = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEENS_13move_iteratorIPNS1_4pairIS6_S6_EEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !18191

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEENS_13move_iteratorIPNS1_4pairIS6_S6_EEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  store i32 %i.cd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEENS_13move_iteratorIPNS1_4pairIS6_S6_EEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit.i.i

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEENS_13move_iteratorIPNS1_4pairIS6_S6_EEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit.i.i: ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEENS_13move_iteratorIPNS1_4pairIS6_S6_EEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.prol.loopexit, %middle.block73, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.w
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIS5_S5_EEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEENS_13move_iteratorIPNS1_4pairIS6_S6_EEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit.i.i
  %i.ch = getelementptr [8 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 7 uses
  %.pre9 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.ci = shl i64 %i.v, 3
  %i.cj = add i64 %i.ci, %i.u
  %i.ck = add i64 %i.cj, -8
  %i.cl = sub i64 %i.ck, %i.a                     ; 2 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check94 = icmp ult i64 %i.cl, 232
  br i1 %min.iters.check94, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck95

vector.memcheck95:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.co = shl i64 %3, 3
  %i.cp = shl i64 %i.v, 3
  %i.cq = add i64 %i.cp, %i.u
  %i.cr = add i64 %i.cq, -8
  %i.cs = sub i64 %i.cr, %i.a
  %i.ct = and i64 %i.cs, -8                       ; 2 uses
  %i.cu = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.co
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.ct
  %i.cw = getelementptr i8, ptr %i.cv, i64 8      ; 2 uses
  %i.cx = getelementptr i8, ptr %2, i64 %i.ct
  %i.cy = getelementptr i8, ptr %i.cx, i64 8      ; 2 uses
  %bound096 = icmp ult ptr %i.ch, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound197 = icmp ugt ptr %i.cw, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict98 = and i1 %bound096, %bound197
  %bound099 = icmp ult ptr %i.ch, %i.cy
  %bound1100 = icmp ult ptr %2, %i.cw
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %found.conflict98, %found.conflict101
  %bound0103 = icmp ugt ptr %i.cy, @_ZN5boost9container4test12copyable_int5countE
  %bound1104 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %conflict.rdx102, %found.conflict105
  br i1 %conflict.rdx106, label %.lr.ph.i20.i.i.preheader, label %vector.ph107

vector.ph107:                                     ; preds = %vector.memcheck95
  %n.vec108 = and i64 %i.cn, 4611686018427387900  ; 3 uses
  %i.cz = shl i64 %n.vec108, 3                    ; 2 uses
  %i.da = getelementptr i8, ptr %2, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.ch, i64 %i.cz
  %i.dc = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre9, i64 0
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph107
  %index110 = phi i64 [ 0, %vector.ph107 ], [ %index.next127, %vector.body109 ] ; 2 uses
  %vec.phi111 = phi <2 x i32> [ %i.dc, %vector.ph107 ], [ %i.df, %vector.body109 ]
  %vec.phi112 = phi <2 x i32> [ zeroinitializer, %vector.ph107 ], [ %i.dg, %vector.body109 ]
  %i.dd = shl i64 %index110, 3                    ; 3 uses
  %i.de = or disjoint i64 %i.dd, 16               ; 2 uses
  %next.gep113 = getelementptr i8, ptr %2, i64 %i.dd
  %next.gep114 = getelementptr i8, ptr %2, i64 %i.de
  %next.gep115 = getelementptr i8, ptr %i.ch, i64 %i.dd ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.ch, i64 %i.de ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep115), "nonnull"(ptr %next.gep117) ]
  %wide.vec119 = load <4 x i32>, ptr %next.gep113, align 4, !tbaa !792, !alias.scope !18205
  %wide.vec122 = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !792, !alias.scope !18205
  store <4 x i32> %wide.vec119, ptr %next.gep115, align 4, !tbaa !792, !alias.scope !18206, !noalias !18207
  store <4 x i32> %wide.vec122, ptr %next.gep117, align 4, !tbaa !792, !alias.scope !18206, !noalias !18207
  %i.df = add <2 x i32> %vec.phi111, splat (i32 2) ; 2 uses
  %i.dg = add <2 x i32> %vec.phi112, splat (i32 2) ; 2 uses
  %index.next127 = add nuw i64 %index110, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next127, %n.vec108
  br i1 %i.dh, label %middle.block128, label %vector.body109, !llvm.loop !18196

middle.block128:                                  ; preds = %vector.body109
  %bin.rdx129 = add <2 x i32> %i.dg, %i.df
  %i.di = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx129) ; 2 uses
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !18208, !noalias !18205
  %cmp.n130 = icmp eq i64 %i.cn, %n.vec108
  br i1 %cmp.n130, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIS5_S5_EEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck95, %.lr.ph.i20.preheader.i.i, %middle.block128
  %.ph = phi i32 [ %.pre9, %vector.memcheck95 ], [ %.pre9, %.lr.ph.i20.preheader.i.i ], [ %i.di, %middle.block128 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck95 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.da, %middle.block128 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.ch, %vector.memcheck95 ], [ %i.ch, %.lr.ph.i20.preheader.i.i ], [ %i.db, %middle.block128 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.dj = phi i32 [ %i.dl, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dm, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.dn, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.dk = load <2 x i32>, ptr %.018.i21.i.i, align 4, !tbaa !792
  store <2 x i32> %i.dk, ptr %.01517.i22.i.i, align 4, !tbaa !792
  %i.dl = add i32 %i.dj, 2                        ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.dm, %i.w
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIS5_S5_EEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i.loopexit, label %.lr.ph.i20.i.i, !llvm.loop !18197

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIS5_S5_EEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i.loopexit: ; preds = %.lr.ph.i20.i.i
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIS5_S5_EEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIS5_S5_EEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIS5_S5_EEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i.loopexit, %middle.block128, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEENS_13move_iteratorIPNS1_4pairIS6_S6_EEEEE31uninitialized_copy_n_and_updateIPS7_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIS4_S4_EEEEEEEEvPS5_mSI_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIS5_S5_EEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.v, 0
  br i1 %.not3.i.i, label %bb.h, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.do = trunc i64 %i.v to i32
  %i.dp = shl i32 %i.do, 1
  %i.dq = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i, %i.dp
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.i.i, %bb.g
  %i.dr = load i64, ptr %i.b, align 8, !tbaa !788
  %i.ds = shl i64 %i.dr, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ds) #24
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !793
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIS4_S4_EEEEEEEEvPS5_mSI_mT_.exit

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIS4_S4_EEEEEEEEvPS5_mSI_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIS5_S5_EEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, %bb.h
  %i.dt = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIS5_S5_EEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ]
  %i.du = ptrtoint ptr %2 to i64
  %i.dv = ptrtoint ptr %i.t to i64
  %i.dw = sub i64 %i.du, %i.dv
  store ptr %i.s, ptr %1, align 8, !tbaa !790
  %i.dx = add i64 %i.dt, %3
  store i64 %i.dx, ptr %i.e, align 8, !tbaa !793
  store i64 %i.p, ptr %i.b, align 8, !tbaa !627
  %i.dy = getelementptr inbounds i8, ptr %i.s, i64 %i.dw
  store ptr %i.dy, ptr %0, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEvT_SI_T0_NS0_9iter_sizeISI_E4typeEb(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %7 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !795    ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !795    ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = icmp ult i64 %i.f, 24
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_12vec_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit, %bb.a
  %.lcssa237 = phi ptr [ %i.a, %bb.a ], [ %i.ml, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_12vec_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ] ; 3 uses
  %.lcssa234 = phi ptr [ %i.b, %bb.a ], [ %storemerge, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_12vec_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ] ; 7 uses
  %.not.i = icmp eq ptr %.lcssa234, %.lcssa237
  %.sroa.015.029.i = getelementptr inbounds nuw i8, ptr %.lcssa234, i64 8 ; 2 uses
  %.not2230.i = icmp eq ptr %.sroa.015.029.i, %.lcssa237
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2230.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEbT_SI_T0_.exit102.thread, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %._crit_edge, %bb.d
  %.sroa.015.032.i = phi ptr [ %.sroa.015.0.i, %bb.d ], [ %.sroa.015.029.i, %._crit_edge ] ; 4 uses
  %.pn31.i = phi ptr [ %.sroa.015.032.i, %bb.d ], [ %.lcssa234, %._crit_edge ] ; 6 uses
  %i.h = load i32, ptr %.sroa.015.032.i, align 4, !tbaa !792 ; 3 uses
  %i.i = load i32, ptr %.pn31.i, align 4, !tbaa !792
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph33.i
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.l = getelementptr inbounds nuw i8, ptr %.pn31.i, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !792
  %i.n = add i32 %i.k, 2
  store i32 %i.n, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.o = load i32, ptr %.pn31.i, align 4, !tbaa !792
  store i32 %i.o, ptr %.sroa.015.032.i, align 4, !tbaa !792
  %i.p = getelementptr inbounds nuw i8, ptr %.pn31.i, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !792
  store i32 %i.q, ptr %i.l, align 4, !tbaa !792
  %.not2324.i = icmp eq ptr %.pn31.i, %.lcssa234
  br i1 %.not2324.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.0.026.i = phi ptr [ %i.r, %bb.c ], [ %.pn31.i, %bb.b ] ; 5 uses
  %i.r = getelementptr i8, ptr %.sroa.0.026.i, i64 -8 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !792  ; 2 uses
  %i.t = icmp slt i32 %i.h, %i.s
  br i1 %i.t, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.s, ptr %.sroa.0.026.i, align 4, !tbaa !792
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.026.i, i64 -4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.026.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !792
  store i32 %i.w, ptr %i.v, align 4, !tbaa !792
  %.not23.i = icmp eq ptr %i.r, %.lcssa234
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !18209

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.sroa.08.0.lcssa.i = phi ptr [ %.lcssa234, %bb.b ], [ %.lcssa234, %bb.c ], [ %.sroa.0.026.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.h, ptr %.sroa.08.0.lcssa.i, align 4, !tbaa !792
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i, i64 4
  store i32 %i.m, ptr %i.x, align 4, !tbaa !792
  %i.y = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.z = add i32 %i.y, -2
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph33.i
  %.sroa.015.0.i = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i, i64 8 ; 2 uses
  %.not22.i = icmp eq ptr %.sroa.015.0.i, %.lcssa237
  br i1 %.not22.i, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortINS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEbT_SI_T0_.exit102.thread, label %.lr.ph33.i, !llvm.loop !18210

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_12vec_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit
  %i.aa = phi i64 [ %i.mo, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_12vec_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ], [ %i.f, %bb.a ] ; 3 uses
  %i.ab = phi i64 [ %.pre-phi, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_12vec_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ], [ %i.d, %bb.a ]
  %i.ac = phi i64 [ %i.mm, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_12vec_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ], [ %i.c, %bb.a ]
  %i.ad = phi ptr [ %storemerge, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_12vec_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ], [ %i.b, %bb.a ] ; 52 uses
  %i.ae = phi ptr [ %i.ml, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_12vec_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ], [ %i.a, %bb.a ] ; 21 uses
  %.038243 = phi i1 [ false, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_12vec_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ], [ %3, %bb.a ] ; 2 uses
  %.041242 = phi i64 [ %.4, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_12vec_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ], [ %2, %bb.a ] ; 5 uses
  %i.af = lshr i64 %i.aa, 1
  %i.ag = icmp ugt i64 %i.aa, 128
  %i.ah = getelementptr [8 x i8], ptr %i.ad, i64 %i.af ; 34 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 4 uses
  br i1 %i.ag, label %bb.e, label %bb.r

bb.e:                                             ; preds = %.lr.ph
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !792 ; 3 uses
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !792 ; 3 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN5boost7movelib14pdqsort_detail5sort2INS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEvT_SI_T0_.exit.i

bb.f:                                             ; preds = %bb.e
  store i32 %i.aj, ptr %i.ad, align 4, !tbaa !792
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !792
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !792
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !792
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !792
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !792
  br label %_ZN5boost7movelib14pdqsort_detail5sort2INS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEvT_SI_T0_.exit.i

_ZN5boost7movelib14pdqsort_detail5sort2INS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEvT_SI_T0_.exit.i: ; preds = %bb.f, %bb.e
  %i.aq = phi i32 [ %i.aj, %bb.e ], [ %i.ak, %bb.f ] ; 3 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !792 ; 2 uses
  %i.as = icmp slt i32 %i.ar, %i.aq
  br i1 %i.as, label %bb.g, label %_ZN5boost7movelib14pdqsort_detail5sort2INS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEvT_SI_T0_.exit1.i

bb.g:                                             ; preds = %_ZN5boost7movelib14pdqsort_detail5sort2INS_9container12vec_iteratorIPSt4pairINS3_4test12copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEvT_SI_T0_.exit.i
  store i32 %i.ar, ptr %i.ah, align 4, !tbaa !792
  store i32 %i.aq, ptr %i.ai, align 4, !tbaa !792
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.av = load i32, ptr %i.at, align 4, !tbaa !792
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !792
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !792
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE24priv_set_difference_backINS_13move_iteratorINS0_12vec_iteratorIPS5_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS4_ES5_NSF_9select1stIS4_EEEEEEvT_SM_T0_:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bw = phi ptr [ %i.bv, %bb.i ], [ %i.aw, %bb.h ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.0163158, i64 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.by = phi ptr [ %i.bt, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJS5_EEERS5_DpOT_.exit ], [ %i.bw, %bb.j ] ; 3 uses
  %i.bz = phi ptr [ %i.bl, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJS5_EEERS5_DpOT_.exit ], [ %i.av, %bb.j ] ; 2 uses
  %i.ca = phi ptr [ %i.bl, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJS5_EEERS5_DpOT_.exit ], [ %i.au, %bb.j ]
  %.221 = phi ptr [ %.120, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJS5_EEERS5_DpOT_.exit ], [ %.0193059, %bb.j ]
  %.218 = phi ptr [ %.117, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJS5_EEERS5_DpOT_.exit ], [ %i.bx, %bb.j ] ; 2 uses
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE12emplace_backIJS5_EEERS5_DpOT_.exit ], [ %.03257, %bb.j ] ; 2 uses
  %i.cb = load ptr, ptr %2, align 8, !tbaa !795   ; 2 uses
  %.not25 = icmp eq ptr %i.by, %i.cb
  br i1 %.not25, label %.loopexit, label %bb.b, !llvm.loop !20039

.loopexit:                                        ; preds = %bb.k, %bb.a, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE6insertINS_13move_iteratorINS0_12vec_iteratorIPS5_Lb0EEEEEEESD_NSB_ISC_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS0_3dtl17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESP_E4typeE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS5_Lb0EEEEEEEEESF_SE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.312") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !788  ; 6 uses
  %i.d = sub i64 1152921504606846975, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !793  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 1152921504606846975
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !531

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #30 ; 8 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !790    ; 13 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !789    ; 8 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !787  ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.y = add i64 %i.a, -8
  %i.z = sub i64 %i.y, %i.u                       ; 3 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader139, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ac = and i64 %i.z, -8
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %bound0 = icmp ugt ptr %i.ae, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.t, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.s, i64 %i.af   ; 2 uses
  %i.ai = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ai, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi16 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.aj = shl i64 %index, 3                       ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.aj
  %next.gep17 = getelementptr i8, ptr %i.t, i64 %i.ak
  %next.gep18 = getelementptr i8, ptr %i.s, i64 %i.aj
  %next.gep19 = getelementptr i8, ptr %i.s, i64 %i.ak
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !792, !alias.scope !20072
  %wide.vec21 = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !792, !alias.scope !20072
  store <4 x i32> %wide.vec, ptr %next.gep18, align 4, !tbaa !792, !alias.scope !20073
  store <4 x i32> %wide.vec21, ptr %next.gep19, align 4, !tbaa !792, !alias.scope !20073
  %i.al = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.am = add <2 x i32> %vec.phi16, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !20055

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !20074, !noalias !20072
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader139

.lr.ph.i.i.i.preheader139:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph140 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader139, %.lr.ph.i.i.i
  %i.ap = phi i32 [ %i.au, %.lr.ph.i.i.i ], [ %.ph140, %.lr.ph.i.i.i.preheader139 ]
  %.018.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader139 ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader139 ] ; 3 uses
  %i.aq = load i32, ptr %.018.i.i.i, align 4, !tbaa !792
  store i32 %i.aq, ptr %.01517.i.i.i, align 4, !tbaa !792
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !792
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !792
  %i.au = add i32 %i.ap, 2                        ; 2 uses
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !20057

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ah, %middle.block ], [ %i.aw, %.lr.ph.i.i.i ] ; 10 uses
  %.not13.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not13.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20075 ; 3 uses
  %min.iters.check39 = icmp ult i64 %3, 16
  br i1 %min.iters.check39, label %.lr.ph.i.i.i.i.preheader134, label %vector.memcheck40

vector.memcheck40:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ax = shl i64 %3, 3                           ; 2 uses
  %i.ay = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %i.v, i64 %i.ax   ; 2 uses
  %bound041 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound142 = icmp ugt ptr %i.ay, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict43 = and i1 %bound041, %bound142
  %bound044 = icmp ult ptr %.015.lcssa.i.i.i, %i.az
  %bound145 = icmp ult ptr %i.v, %i.ay
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict43, %found.conflict46
  %bound047 = icmp ugt ptr %i.az, @_ZN5boost9container4test12copyable_int5countE
  %bound148 = icmp ult ptr %i.v, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx50 = or i1 %conflict.rdx, %found.conflict49
  br i1 %conflict.rdx50, label %.lr.ph.i.i.i.i.preheader134, label %vector.ph51

vector.ph51:                                      ; preds = %vector.memcheck40
  %n.vec52 = and i64 %3, -4                       ; 3 uses
  %i.ba = shl i64 %n.vec52, 3                     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.v, i64 %i.ba
  %i.bc = and i64 %3, 3
  %i.bd = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ba
  %i.be = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre, i64 0
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next71, %vector.body53 ] ; 2 uses
  %vec.phi55 = phi <2 x i32> [ %i.be, %vector.ph51 ], [ %i.bh, %vector.body53 ]
  %vec.phi56 = phi <2 x i32> [ zeroinitializer, %vector.ph51 ], [ %i.bi, %vector.body53 ]
  %i.bf = shl i64 %index54, 3                     ; 3 uses
  %i.bg = or disjoint i64 %i.bf, 16               ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.v, i64 %i.bf
  %next.gep58 = getelementptr i8, ptr %i.v, i64 %i.bg
  %next.gep59 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bf ; 2 uses
  %next.gep61 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bg ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep59), "nonnull"(ptr %next.gep61) ]
  %wide.vec63 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !792, !alias.scope !20076, !noalias !20075
  %wide.vec66 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !792, !alias.scope !20076, !noalias !20075
  store <4 x i32> %wide.vec63, ptr %next.gep59, align 4, !tbaa !792, !alias.scope !20077, !noalias !20075
  store <4 x i32> %wide.vec66, ptr %next.gep61, align 4, !tbaa !792, !alias.scope !20077, !noalias !20075
  %i.bh = add <2 x i32> %vec.phi55, splat (i32 2) ; 2 uses
  %i.bi = add <2 x i32> %vec.phi56, splat (i32 2) ; 2 uses
  %index.next71 = add nuw i64 %index54, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next71, %n.vec52
  br i1 %i.bj, label %middle.block72, label %vector.body53, !llvm.loop !20063

middle.block72:                                   ; preds = %vector.body53
  %bin.rdx73 = add <2 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx73) ; 2 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !20078, !noalias !20079
  %cmp.n74 = icmp eq i64 %3, %n.vec52
  br i1 %cmp.n74, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.preheader134

.lr.ph.i.i.i.i.preheader134:                      ; preds = %vector.memcheck40, %.lr.ph.i.i.i.i.preheader, %middle.block72
  %.ph135 = phi i32 [ %.pre, %vector.memcheck40 ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %middle.block72 ] ; 2 uses
  %.ph136 = phi ptr [ %i.v, %vector.memcheck40 ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block72 ] ; 4 uses
  %.015.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck40 ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block72 ] ; 4 uses
  %.01214.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck40 ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %middle.block72 ] ; 5 uses
  %xtraiter = and i64 %.015.i.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader134
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.ph) ]
  %i.bl = load i32, ptr %.ph136, align 4, !tbaa !792, !noalias !20075
  store i32 %i.bl, ptr %.01214.i.i.i.i.ph, align 4, !tbaa !792, !noalias !20075
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.ph, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.ph136, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !792, !noalias !20075
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !792, !noalias !20075
  %i.bp = add i32 %.ph135, 2                      ; 2 uses
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20075
  %i.bq = getelementptr inbounds nuw i8, ptr %.ph136, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.ph, i64 8
  %i.bs = add nsw i64 %.015.i.i.i.i.ph, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader134
  %.unr = phi i32 [ %.ph135, %.lr.ph.i.i.i.i.preheader134 ], [ %i.bp, %.lr.ph.i.i.i.i.prol ]
  %.unr144 = phi ptr [ %.ph136, %.lr.ph.i.i.i.i.preheader134 ], [ %i.bq, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %.015.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader134 ], [ %i.bs, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %.01214.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader134 ], [ %i.br, %.lr.ph.i.i.i.i.prol ]
  %i.bt = icmp eq i64 %.015.i.i.i.i.ph, 1
  br i1 %i.bt, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bu = phi i32 [ %i.ch, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bv = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.unr144, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !792, !noalias !20075
  store i32 %i.bw, ptr %.01214.i.i.i.i, align 4, !tbaa !792, !noalias !20075
  %i.bx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !792, !noalias !20075
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !792, !noalias !20075
  %i.ca = add i32 %i.bu, 2
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20075
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !792, !noalias !20075
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !792, !noalias !20075
  %i.ce = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !792, !noalias !20075
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !792, !noalias !20075
  %i.ch = add i32 %i.bu, 4                        ; 2 uses
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20075
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.ck = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !20065

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block72, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.x
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIS8_Lb0EEEEEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.cl = getelementptr [8 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 7 uses
  %.pre8 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.cm = shl i64 %i.w, 3
  %i.cn = add i64 %i.cm, %i.u
  %i.co = add i64 %i.cn, -8
  %i.cp = sub i64 %i.co, %i.a                     ; 2 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.cp, 232
  br i1 %min.iters.check93, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.cs = shl i64 %3, 3
  %i.ct = shl i64 %i.w, 3
  %i.cu = add i64 %i.ct, %i.u
  %i.cv = add i64 %i.cu, -8
  %i.cw = sub i64 %i.cv, %i.a
  %i.cx = and i64 %i.cw, -8                       ; 2 uses
  %i.cy = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.cs
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cx
  %i.da = getelementptr i8, ptr %i.cz, i64 8      ; 2 uses
  %i.db = getelementptr i8, ptr %2, i64 %i.cx
  %i.dc = getelementptr i8, ptr %i.db, i64 8      ; 2 uses
  %bound095 = icmp ult ptr %i.cl, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound196 = icmp ugt ptr %i.da, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict97 = and i1 %bound095, %bound196
  %bound098 = icmp ult ptr %i.cl, %i.dc
  %bound199 = icmp ult ptr %2, %i.da
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %found.conflict97, %found.conflict100
  %bound0102 = icmp ugt ptr %i.dc, @_ZN5boost9container4test12copyable_int5countE
  %bound1103 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %conflict.rdx101, %found.conflict104
  br i1 %conflict.rdx105, label %.lr.ph.i20.i.i.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck94
  %n.vec107 = and i64 %i.cr, 4611686018427387900  ; 3 uses
  %i.dd = shl i64 %n.vec107, 3                    ; 2 uses
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.cl, i64 %i.dd
  %i.dg = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre8, i64 0
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next126, %vector.body108 ] ; 2 uses
  %vec.phi110 = phi <2 x i32> [ %i.dg, %vector.ph106 ], [ %i.dj, %vector.body108 ]
  %vec.phi111 = phi <2 x i32> [ zeroinitializer, %vector.ph106 ], [ %i.dk, %vector.body108 ]
  %i.dh = shl i64 %index109, 3                    ; 3 uses
  %i.di = or disjoint i64 %i.dh, 16               ; 2 uses
  %next.gep112 = getelementptr i8, ptr %2, i64 %i.dh
  %next.gep113 = getelementptr i8, ptr %2, i64 %i.di
  %next.gep114 = getelementptr i8, ptr %i.cl, i64 %i.dh ; 2 uses
  %next.gep116 = getelementptr i8, ptr %i.cl, i64 %i.di ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep114), "nonnull"(ptr %next.gep116) ]
  %wide.vec118 = load <4 x i32>, ptr %next.gep112, align 4, !tbaa !792, !alias.scope !20080
  %wide.vec121 = load <4 x i32>, ptr %next.gep113, align 4, !tbaa !792, !alias.scope !20080
  store <4 x i32> %wide.vec118, ptr %next.gep114, align 4, !tbaa !792, !alias.scope !20081, !noalias !20082
  store <4 x i32> %wide.vec121, ptr %next.gep116, align 4, !tbaa !792, !alias.scope !20081, !noalias !20082
  %i.dj = add <2 x i32> %vec.phi110, splat (i32 2) ; 2 uses
  %i.dk = add <2 x i32> %vec.phi111, splat (i32 2) ; 2 uses
  %index.next126 = add nuw i64 %index109, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next126, %n.vec107
  br i1 %i.dl, label %middle.block127, label %vector.body108, !llvm.loop !20070

middle.block127:                                  ; preds = %vector.body108
  %bin.rdx128 = add <2 x i32> %i.dk, %i.dj
  %i.dm = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx128) ; 2 uses
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !20083, !noalias !20080
  %cmp.n129 = icmp eq i64 %i.cr, %n.vec107
  br i1 %cmp.n129, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIS8_Lb0EEEEEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck94, %.lr.ph.i20.preheader.i.i, %middle.block127
  %.ph = phi i32 [ %.pre8, %vector.memcheck94 ], [ %.pre8, %.lr.ph.i20.preheader.i.i ], [ %i.dm, %middle.block127 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck94 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.de, %middle.block127 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.cl, %vector.memcheck94 ], [ %i.cl, %.lr.ph.i20.preheader.i.i ], [ %i.df, %middle.block127 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.dn = phi i32 [ %i.dp, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dq, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.dr, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.do = load <2 x i32>, ptr %.018.i21.i.i, align 4, !tbaa !792
  store <2 x i32> %i.do, ptr %.01517.i22.i.i, align 4, !tbaa !792
  %i.dp = add i32 %i.dn, 2                        ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.dq, %i.x
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIS8_Lb0EEEEEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.loopexit, label %.lr.ph.i20.i.i, !llvm.loop !20071

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIS8_Lb0EEEEEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.loopexit: ; preds = %.lr.ph.i20.i.i
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIS8_Lb0EEEEEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIS8_Lb0EEEEEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIS8_Lb0EEEEEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.loopexit, %middle.block127, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS5_Lb0EEEEEEEEEvSE_mSE_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIS8_Lb0EEEEEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.w, 0
  br i1 %.not3.i.i, label %bb.h, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.ds = trunc i64 %i.w to i32
  %i.dt = shl i32 %i.ds, 1
  %i.du = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i, %i.dt
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.i.i, %bb.g
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !788
  %i.dw = shl i64 %i.dv, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.dw) #24
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !793
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS5_Lb0EEEEEEEEEvSE_mSE_mT_.exit

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS5_Lb0EEEEEEEEEvSE_mSE_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIS8_Lb0EEEEEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i, %bb.h
  %i.dx = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIS8_Lb0EEEEEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ]
  %i.dy = ptrtoint ptr %2 to i64
  %i.dz = ptrtoint ptr %i.t to i64
  %i.ea = sub i64 %i.dy, %i.dz
  store ptr %i.s, ptr %1, align 8, !tbaa !790
  %i.eb = add i64 %i.dx, %3
  store i64 %i.eb, ptr %i.e, align 8, !tbaa !793
  store i64 %i.p, ptr %i.b, align 8, !tbaa !627
  %i.ec = getelementptr inbounds i8, ptr %i.s, i64 %i.ea
  store ptr %i.ec, ptr %0, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE24priv_merge_in_new_bufferINS_13move_iteratorINS0_12vec_iteratorIPS5_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS4_ES5_NSF_9select1stIS4_EEEENS_11move_detail17integral_constantIjLj1EEEEEvT_mT0_T1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !787
  %i.c = add i64 %i.b, %2                         ; 3 uses
  %i.d = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.d, label %bb.b, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE18allocation_commandEjmRmRPS6_.exit, !prof !531

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE18allocation_commandEjmRmRPS6_.exit: ; preds = %bb.a
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !790    ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !787  ; 6 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i ; 3 uses
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4 ; 2 uses
  %.not70 = icmp eq i64 %2, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE18allocation_commandEjmRmRPS6_.exit
  %.promoted = load ptr, ptr %1, align 8, !tbaa !789
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE18allocation_commandEjmRmRPS6_.exit
  %i.k = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE18allocation_commandEjmRmRPS6_.exit ], [ %.sink, %bb.f ] ; 4 uses
  %.032.lcssa = phi ptr [ %i.g, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE18allocation_commandEjmRmRPS6_.exit ], [ %.133, %bb.f ] ; 10 uses
  %.0.lcssa = phi ptr [ %i.f, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE18allocation_commandEjmRmRPS6_.exit ], [ %.1, %bb.f ] ; 8 uses
  %.032.lcssa124 = ptrtoaddr ptr %.032.lcssa to i64 ; 2 uses
  %.not16.i = icmp eq ptr %.032.lcssa, %i.j
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %i.l = shl i64 %i.i, 3
  %i.m = add i64 %i.l, %i.h
  %i.n = add i64 %i.m, -8
  %i.o = sub i64 %i.n, %.032.lcssa124             ; 2 uses
  %i.p = lshr i64 %i.o, 3
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.o, 200
  br i1 %min.iters.check126, label %.lr.ph.i.preheader165, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph.i.preheader
  %i.r = shl i64 %i.i, 3
  %i.s = add i64 %i.r, %i.h
  %i.t = add i64 %i.s, -8
  %i.u = sub i64 %i.t, %.032.lcssa124
  %i.v = and i64 %i.u, -8
  %i.w = add i64 %i.v, 8                          ; 2 uses
  %i.x = getelementptr i8, ptr %.0.lcssa, i64 %i.w ; 2 uses
  %i.y = getelementptr i8, ptr %.032.lcssa, i64 %i.w ; 2 uses
  %bound0128 = icmp ult ptr %.0.lcssa, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1129 = icmp ugt ptr %i.x, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict130 = and i1 %bound0128, %bound1129
  %bound0131 = icmp ult ptr %.0.lcssa, %i.y
  %bound1132 = icmp ult ptr %.032.lcssa, %i.x
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx = or i1 %found.conflict130, %found.conflict133
  %bound0134 = icmp ugt ptr %i.y, @_ZN5boost9container4test12copyable_int5countE
  %bound1135 = icmp ult ptr %.032.lcssa, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx, %found.conflict136
  br i1 %conflict.rdx137, label %.lr.ph.i.preheader165, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck127
  %n.vec139 = and i64 %i.q, 4611686018427387900   ; 3 uses
  %i.z = shl i64 %n.vec139, 3                     ; 2 uses
  %i.aa = getelementptr i8, ptr %.032.lcssa, i64 %i.z
  %i.ab = getelementptr i8, ptr %.0.lcssa, i64 %i.z
  %i.ac = insertelement <2 x i32> <i32 poison, i32 0>, i32 %i.k, i64 0
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next158, %vector.body140 ] ; 2 uses
  %vec.phi142 = phi <2 x i32> [ %i.ac, %vector.ph138 ], [ %i.af, %vector.body140 ]
  %vec.phi143 = phi <2 x i32> [ zeroinitializer, %vector.ph138 ], [ %i.ag, %vector.body140 ]
  %i.ad = shl i64 %index141, 3                    ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep144 = getelementptr i8, ptr %.032.lcssa, i64 %i.ad
  %next.gep145 = getelementptr i8, ptr %.032.lcssa, i64 %i.ae
  %next.gep146 = getelementptr i8, ptr %.0.lcssa, i64 %i.ad ; 2 uses
  %next.gep148 = getelementptr i8, ptr %.0.lcssa, i64 %i.ae ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep146), "nonnull"(ptr %next.gep148) ]
  %wide.vec150 = load <4 x i32>, ptr %next.gep144, align 4, !tbaa !792, !alias.scope !20097
  %wide.vec153 = load <4 x i32>, ptr %next.gep145, align 4, !tbaa !792, !alias.scope !20097
  store <4 x i32> %wide.vec150, ptr %next.gep146, align 4, !tbaa !792, !alias.scope !20098, !noalias !20099
  store <4 x i32> %wide.vec153, ptr %next.gep148, align 4, !tbaa !792, !alias.scope !20098, !noalias !20099
  %i.af = add <2 x i32> %vec.phi142, splat (i32 2) ; 2 uses
  %i.ag = add <2 x i32> %vec.phi143, splat (i32 2) ; 2 uses
  %index.next158 = add nuw i64 %index141, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next158, %n.vec139
  br i1 %i.ah, label %middle.block159, label %vector.body140, !llvm.loop !20088

middle.block159:                                  ; preds = %vector.body140
  %bin.rdx160 = add <2 x i32> %i.ag, %i.af
  %i.ai = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx160) ; 3 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !20100, !noalias !20097
  %cmp.n161 = icmp eq i64 %i.q, %n.vec139
  br i1 %cmp.n161, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i.preheader165

.lr.ph.i.preheader165:                            ; preds = %vector.memcheck127, %.lr.ph.i.preheader, %middle.block159
  %.ph = phi i32 [ %i.k, %vector.memcheck127 ], [ %i.k, %.lr.ph.i.preheader ], [ %i.ai, %middle.block159 ]
  %.018.i.ph = phi ptr [ %.032.lcssa, %vector.memcheck127 ], [ %.032.lcssa, %.lr.ph.i.preheader ], [ %i.aa, %middle.block159 ]
  %.01517.i.ph = phi ptr [ %.0.lcssa, %vector.memcheck127 ], [ %.0.lcssa, %.lr.ph.i.preheader ], [ %i.ab, %middle.block159 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader165, %.lr.ph.i
  %i.aj = phi i32 [ %i.ao, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader165 ]
  %.018.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %.018.i.ph, %.lr.ph.i.preheader165 ] ; 3 uses
  %.01517.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %.01517.i.ph, %.lr.ph.i.preheader165 ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.ak = load i32, ptr %.018.i, align 4, !tbaa !792
  store i32 %i.ak, ptr %.01517.i, align 4, !tbaa !792
  %i.al = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %.018.i, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !792
  store i32 %i.an, ptr %i.al, align 4, !tbaa !792
  %i.ao = add i32 %i.aj, 2                        ; 3 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.ap = getelementptr inbounds nuw i8, ptr %.018.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %.not.i = icmp eq ptr %i.ap, %i.j
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !20089

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.ar = phi ptr [ %i.cp, %bb.f ], [ %.promoted, %.lr.ph.preheader ] ; 11 uses
  %.073 = phi ptr [ %.1, %bb.f ], [ %i.f, %.lr.ph.preheader ] ; 9 uses
  %.03272 = phi ptr [ %.133, %bb.f ], [ %i.g, %.lr.ph.preheader ] ; 5 uses
  %.03671 = phi i64 [ %.137, %bb.f ], [ %2, %.lr.ph.preheader ] ; 9 uses
  %_ZN5boost9container4test12copyable_int5countE.promoted75 = phi i32 [ %.sink, %bb.f ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.preheader ] ; 4 uses
  %i.as = icmp eq ptr %.03272, %i.j
  br i1 %i.as, label %.lr.ph.i41, label %bb.c

.lr.ph.i41:                                       ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %.03671, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i41
  %i.at = shl i64 %.03671, 3
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.at
  %bound0 = icmp ugt ptr %scevgep, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.ar, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.03671, -4                    ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ar, i64 %i.au
  %i.aw = and i64 %.03671, 3
  %i.ax = getelementptr i8, ptr %.073, i64 %i.au
  %i.ay = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted75, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ay, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi97 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.az = shl i64 %index, 3                       ; 3 uses
  %i.ba = or disjoint i64 %i.az, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.az
  %next.gep98 = getelementptr i8, ptr %i.ar, i64 %i.ba
  %next.gep99 = getelementptr i8, ptr %.073, i64 %i.az ; 2 uses
  %next.gep101 = getelementptr i8, ptr %.073, i64 %i.ba ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep99), "nonnull"(ptr %next.gep101) ]
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !792, !alias.scope !20101
  %wide.vec104 = load <4 x i32>, ptr %next.gep98, align 4, !tbaa !792, !alias.scope !20101
  store <4 x i32> %wide.vec, ptr %next.gep99, align 4, !tbaa !792, !alias.scope !20102
  store <4 x i32> %wide.vec104, ptr %next.gep101, align 4, !tbaa !792, !alias.scope !20102
  %i.bb = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.bc = add <2 x i32> %vec.phi97, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !20093

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 3 uses
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !20103, !noalias !20101
  %cmp.n = icmp eq i64 %.03671, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i41, %middle.block
  %.ph168 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted75, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted75, %.lr.ph.i41 ], [ %i.be, %middle.block ] ; 2 uses
  %.ph169 = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i41 ], [ %i.av, %middle.block ] ; 4 uses
  %.016.i.ph = phi i64 [ %.03671, %vector.memcheck ], [ %.03671, %.lr.ph.i41 ], [ %i.aw, %middle.block ] ; 4 uses
  %.01315.i.ph = phi ptr [ %.073, %vector.memcheck ], [ %.073, %.lr.ph.i41 ], [ %i.ax, %middle.block ] ; 5 uses
  %xtraiter = and i64 %.016.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bf = add nsw i64 %.016.i.ph, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.ph) ]
  %i.bg = load i32, ptr %.ph169, align 4, !tbaa !792
  store i32 %i.bg, ptr %.01315.i.ph, align 4, !tbaa !792
  %i.bh = getelementptr inbounds nuw i8, ptr %.01315.i.ph, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.ph169, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !792
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !792
  %i.bk = add i32 %.ph168, 2                      ; 3 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.bl = getelementptr inbounds nuw i8, ptr %.ph169, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %.01315.i.ph, i64 8
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa171.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.bk, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph168, %scalar.ph.preheader ], [ %i.bk, %scalar.ph.prol ]
  %.unr179 = phi ptr [ %.ph169, %scalar.ph.preheader ], [ %i.bl, %scalar.ph.prol ]
  %.016.i.unr = phi i64 [ %.016.i.ph, %scalar.ph.preheader ], [ %i.bf, %scalar.ph.prol ]
  %.01315.i.unr = phi ptr [ %.01315.i.ph, %scalar.ph.preheader ], [ %i.bm, %scalar.ph.prol ]
  %i.bn = icmp eq i64 %.016.i.ph, 1
  br i1 %i.bn, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bo = phi i32 [ %i.cc, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.bp = phi ptr [ %i.cd, %scalar.ph ], [ %.unr179, %scalar.ph.prol.loopexit ] ; 5 uses
  %.016.i = phi i64 [ %i.bx, %scalar.ph ], [ %.016.i.unr, %scalar.ph.prol.loopexit ]
  %.01315.i = phi ptr [ %i.ce, %scalar.ph ], [ %.01315.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i) ]
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !792
  store i32 %i.bq, ptr %.01315.i, align 4, !tbaa !792
  %i.br = getelementptr inbounds nuw i8, ptr %.01315.i, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !792
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !792
  %i.bu = add i32 %i.bo, 2
  store i32 %i.bu, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.01315.i, i64 8
  %i.bx = add i64 %.016.i, -2                     ; 2 uses
  %i.by = load i32, ptr %i.bv, align 4, !tbaa !792
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !792
  %i.bz = getelementptr inbounds nuw i8, ptr %.01315.i, i64 12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !792
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !792
  %i.cc = add i32 %i.bo, 4                        ; 3 uses
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.01315.i, i64 16
  %.not.i42.1 = icmp eq i64 %i.bx, 0
  br i1 %.not.i42.1, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %scalar.ph, !llvm.loop !20095

bb.c:                                             ; preds = %.lr.ph
  %i.cf = load i32, ptr %i.ar, align 4, !tbaa !792 ; 2 uses
  %i.cg = load i32, ptr %.03272, align 4, !tbaa !792 ; 2 uses
  %i.ch = icmp slt i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.cf, ptr %.073, align 4, !tbaa !792
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !792
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  store ptr %i.ck, ptr %1, align 8, !tbaa !795
  %i.cl = add i64 %.03671, -1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.cg, ptr %.073, align 4, !tbaa !792
  %i.cm = getelementptr inbounds nuw i8, ptr %.03272, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !792
  %i.co = getelementptr inbounds nuw i8, ptr %.03272, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cp = phi ptr [ %i.ck, %bb.d ], [ %i.ar, %bb.e ]
  %.sink79 = phi i32 [ %i.cj, %bb.d ], [ %i.cn, %bb.e ]
  %.137 = phi i64 [ %i.cl, %bb.d ], [ %.03671, %bb.e ] ; 2 uses
  %.133 = phi ptr [ %.03272, %bb.d ], [ %i.co, %bb.e ] ; 2 uses
  %.sink = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted75, 2 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.073, i64 4
  store i32 %.sink79, ptr %i.cq, align 4, !tbaa !792
  store i32 %.sink, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %.1 = getelementptr inbounds nuw i8, ptr %.073, i64 8 ; 2 uses
  %.not = icmp eq i64 %.137, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20096

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph.i, %middle.block, %middle.block159, %._crit_edge
  %_ZN5boost9container4test12copyable_int5countE.promoted.i = phi i32 [ %i.ao, %.lr.ph.i ], [ %i.k, %._crit_edge ], [ %i.ai, %middle.block159 ], [ %i.be, %middle.block ], [ %.lcssa171.unr, %scalar.ph.prol.loopexit ], [ %i.cc, %scalar.ph ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !788 ; 2 uses
  %.not3.i = icmp eq i64 %i.i, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %i.ct = trunc i64 %i.i to i32
  %i.cu = shl i32 %i.ct, 1
  %i.cv = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i, %i.cu
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit: ; preds = %.lr.ph.preheader.i, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %.not39 = icmp eq i64 %i.cs, 0
  br i1 %.not39, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit
  %i.cw = shl i64 %i.cs, 3
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.cw) #24
  br label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEEED2Ev.exit

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_13new_allocatorISt4pairINS0_4test12copyable_intES6_EEEED2Ev.exit: ; preds = %bb.g, %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit
  %i.cx = add i64 %i.i, %2
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !793
  store ptr %i.f, ptr %0, align 8, !tbaa !790
  store i64 %i.c, ptr %i.cr, align 8, !tbaa !627
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE18priv_merge_genericINS_13move_iteratorINS0_12vec_iteratorIPS5_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS4_ES5_NSF_9select1stIS4_EEEEEEvT_SM_T0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf.323", align 8 ; 7 uses
  %4 = alloca %"struct.boost::container::dtl::insert_range_proxy.345", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !787  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !790, !noalias !20112 ; 3 uses
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.b ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !789    ; 7 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !789    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !20113
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !788, !noalias !20114 ; 2 uses
  %i.m = sub i64 %i.l, %i.b
  %.not.i.i = icmp ugt i64 %i.j, %i.m
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !531

bb.b:                                             ; preds = %bb.a
  %.not13.i.i.i.i.i.i = icmp eq ptr %i.f, %i.e
  br i1 %.not13.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS5_Lb0EEEEEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.n = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.o = load i32, ptr %i.e, align 4, !tbaa !792, !noalias !20115
  store i32 %i.o, ptr %i.d, align 4, !tbaa !792, !noalias !20115
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20115
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !792, !noalias !20115
  store i32 %i.s, ptr %i.q, align 4, !tbaa !792, !noalias !20115
  %i.t = add i32 %i.p, 2
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20115
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = add nsw i64 %i.j, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.unr = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.x = icmp eq i64 %i.i, 8
end_hunk_4
begin_hunk_5_@_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE19insert_unique_rangeINS0_12vec_iteratorIPS6_Lb1EEEEEvT_SI_:bb.a
  %i.cv = load i64, ptr %i.ch, align 8, !tbaa !806 ; 2 uses
  %.not.i.i30.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i30.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit33.i.i, label %.preheader.i.i.i31.i.i

.preheader.i.i.i31.i.i:                           ; preds = %bb.m
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i32.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = shl i32 %i.cw, 1
  %i.cy = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i32.i.i, %i.cx
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit33.i.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit33.i.i: ; preds = %.preheader.i.i.i31.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.cu

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairINS0_4test12copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSH_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit.i.i, %bb.e, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESB_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb1EEEEEEENSC_ISD_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.312") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !788  ; 6 uses
  %i.d = sub i64 1152921504606846975, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !793  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 1152921504606846975
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !531

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #30 ; 8 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !790    ; 13 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !789    ; 8 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !787  ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.y = add i64 %i.a, -8
  %i.z = sub i64 %i.y, %i.u                       ; 3 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader139, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ac = and i64 %i.z, -8
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %bound0 = icmp ugt ptr %i.ae, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.t, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.s, i64 %i.af   ; 2 uses
  %i.ai = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ai, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi16 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.aj = shl i64 %index, 3                       ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.aj
  %next.gep17 = getelementptr i8, ptr %i.t, i64 %i.ak
  %next.gep18 = getelementptr i8, ptr %i.s, i64 %i.aj
  %next.gep19 = getelementptr i8, ptr %i.s, i64 %i.ak
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !792, !alias.scope !20422
  %wide.vec21 = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !792, !alias.scope !20422
  store <4 x i32> %wide.vec, ptr %next.gep18, align 4, !tbaa !792, !alias.scope !20423
  store <4 x i32> %wide.vec21, ptr %next.gep19, align 4, !tbaa !792, !alias.scope !20423
  %i.al = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.am = add <2 x i32> %vec.phi16, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !20405

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !20424, !noalias !20422
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader139

.lr.ph.i.i.i.preheader139:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph140 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader139, %.lr.ph.i.i.i
  %i.ap = phi i32 [ %i.au, %.lr.ph.i.i.i ], [ %.ph140, %.lr.ph.i.i.i.preheader139 ]
  %.018.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader139 ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader139 ] ; 3 uses
  %i.aq = load i32, ptr %.018.i.i.i, align 4, !tbaa !792
  store i32 %i.aq, ptr %.01517.i.i.i, align 4, !tbaa !792
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !792
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !792
  %i.au = add i32 %i.ap, 2                        ; 2 uses
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !20407

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ah, %middle.block ], [ %i.aw, %.lr.ph.i.i.i ] ; 10 uses
  %.not13.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not13.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20425 ; 3 uses
  %min.iters.check39 = icmp ult i64 %3, 16
  br i1 %min.iters.check39, label %.lr.ph.i.i.i.i.preheader134, label %vector.memcheck40

vector.memcheck40:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ax = shl i64 %3, 3                           ; 2 uses
  %i.ay = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %i.v, i64 %i.ax   ; 2 uses
  %bound041 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound142 = icmp ugt ptr %i.ay, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict43 = and i1 %bound041, %bound142
  %bound044 = icmp ult ptr %.015.lcssa.i.i.i, %i.az
  %bound145 = icmp ult ptr %i.v, %i.ay
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict43, %found.conflict46
  %bound047 = icmp ugt ptr %i.az, @_ZN5boost9container4test12copyable_int5countE
  %bound148 = icmp ult ptr %i.v, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx50 = or i1 %conflict.rdx, %found.conflict49
  br i1 %conflict.rdx50, label %.lr.ph.i.i.i.i.preheader134, label %vector.ph51

vector.ph51:                                      ; preds = %vector.memcheck40
  %n.vec52 = and i64 %3, -4                       ; 3 uses
  %i.ba = shl i64 %n.vec52, 3                     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.v, i64 %i.ba
  %i.bc = and i64 %3, 3
  %i.bd = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ba
  %i.be = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre, i64 0
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next71, %vector.body53 ] ; 2 uses
  %vec.phi55 = phi <2 x i32> [ %i.be, %vector.ph51 ], [ %i.bh, %vector.body53 ]
  %vec.phi56 = phi <2 x i32> [ zeroinitializer, %vector.ph51 ], [ %i.bi, %vector.body53 ]
  %i.bf = shl i64 %index54, 3                     ; 3 uses
  %i.bg = or disjoint i64 %i.bf, 16               ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.v, i64 %i.bf
  %next.gep58 = getelementptr i8, ptr %i.v, i64 %i.bg
  %next.gep59 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bf ; 2 uses
  %next.gep61 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bg ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep59), "nonnull"(ptr %next.gep61) ]
  %wide.vec63 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !792, !alias.scope !20426, !noalias !20425
  %wide.vec66 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !792, !alias.scope !20426, !noalias !20425
  store <4 x i32> %wide.vec63, ptr %next.gep59, align 4, !tbaa !792, !alias.scope !20427, !noalias !20425
  store <4 x i32> %wide.vec66, ptr %next.gep61, align 4, !tbaa !792, !alias.scope !20427, !noalias !20425
  %i.bh = add <2 x i32> %vec.phi55, splat (i32 2) ; 2 uses
  %i.bi = add <2 x i32> %vec.phi56, splat (i32 2) ; 2 uses
  %index.next71 = add nuw i64 %index54, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next71, %n.vec52
  br i1 %i.bj, label %middle.block72, label %vector.body53, !llvm.loop !20413

middle.block72:                                   ; preds = %vector.body53
  %bin.rdx73 = add <2 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx73) ; 2 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !20428, !noalias !20429
  %cmp.n74 = icmp eq i64 %3, %n.vec52
  br i1 %cmp.n74, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.preheader134

.lr.ph.i.i.i.i.preheader134:                      ; preds = %vector.memcheck40, %.lr.ph.i.i.i.i.preheader, %middle.block72
  %.ph135 = phi i32 [ %.pre, %vector.memcheck40 ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %middle.block72 ] ; 2 uses
  %.ph136 = phi ptr [ %i.v, %vector.memcheck40 ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block72 ] ; 4 uses
  %.015.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck40 ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block72 ] ; 4 uses
  %.01214.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck40 ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %middle.block72 ] ; 5 uses
  %xtraiter = and i64 %.015.i.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader134
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.ph) ]
  %i.bl = load i32, ptr %.ph136, align 4, !tbaa !792, !noalias !20425
  store i32 %i.bl, ptr %.01214.i.i.i.i.ph, align 4, !tbaa !792, !noalias !20425
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.ph, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.ph136, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !792, !noalias !20425
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !792, !noalias !20425
  %i.bp = add i32 %.ph135, 2                      ; 2 uses
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20425
  %i.bq = getelementptr inbounds nuw i8, ptr %.ph136, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.ph, i64 8
  %i.bs = add nsw i64 %.015.i.i.i.i.ph, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader134
  %.unr = phi i32 [ %.ph135, %.lr.ph.i.i.i.i.preheader134 ], [ %i.bp, %.lr.ph.i.i.i.i.prol ]
  %.unr144 = phi ptr [ %.ph136, %.lr.ph.i.i.i.i.preheader134 ], [ %i.bq, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %.015.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader134 ], [ %i.bs, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %.01214.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader134 ], [ %i.br, %.lr.ph.i.i.i.i.prol ]
  %i.bt = icmp eq i64 %.015.i.i.i.i.ph, 1
  br i1 %i.bt, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bu = phi i32 [ %i.ch, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bv = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.unr144, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !792, !noalias !20425
  store i32 %i.bw, ptr %.01214.i.i.i.i, align 4, !tbaa !792, !noalias !20425
  %i.bx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !792, !noalias !20425
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !792, !noalias !20425
  %i.ca = add i32 %i.bu, 2
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20425
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !792, !noalias !20425
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !792, !noalias !20425
  %i.ce = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !792, !noalias !20425
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !792, !noalias !20425
  %i.ch = add i32 %i.bu, 4                        ; 2 uses
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20425
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.ck = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !20415

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block72, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.x
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb1EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.cl = getelementptr [8 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 7 uses
  %.pre8 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.cm = shl i64 %i.w, 3
  %i.cn = add i64 %i.cm, %i.u
  %i.co = add i64 %i.cn, -8
  %i.cp = sub i64 %i.co, %i.a                     ; 2 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.cp, 232
  br i1 %min.iters.check93, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.cs = shl i64 %3, 3
  %i.ct = shl i64 %i.w, 3
  %i.cu = add i64 %i.ct, %i.u
  %i.cv = add i64 %i.cu, -8
  %i.cw = sub i64 %i.cv, %i.a
  %i.cx = and i64 %i.cw, -8                       ; 2 uses
  %i.cy = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.cs
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cx
  %i.da = getelementptr i8, ptr %i.cz, i64 8      ; 2 uses
  %i.db = getelementptr i8, ptr %2, i64 %i.cx
  %i.dc = getelementptr i8, ptr %i.db, i64 8      ; 2 uses
  %bound095 = icmp ult ptr %i.cl, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound196 = icmp ugt ptr %i.da, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict97 = and i1 %bound095, %bound196
  %bound098 = icmp ult ptr %i.cl, %i.dc
  %bound199 = icmp ult ptr %2, %i.da
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %found.conflict97, %found.conflict100
  %bound0102 = icmp ugt ptr %i.dc, @_ZN5boost9container4test12copyable_int5countE
  %bound1103 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %conflict.rdx101, %found.conflict104
  br i1 %conflict.rdx105, label %.lr.ph.i20.i.i.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck94
  %n.vec107 = and i64 %i.cr, 4611686018427387900  ; 3 uses
  %i.dd = shl i64 %n.vec107, 3                    ; 2 uses
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.cl, i64 %i.dd
  %i.dg = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre8, i64 0
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next126, %vector.body108 ] ; 2 uses
  %vec.phi110 = phi <2 x i32> [ %i.dg, %vector.ph106 ], [ %i.dj, %vector.body108 ]
  %vec.phi111 = phi <2 x i32> [ zeroinitializer, %vector.ph106 ], [ %i.dk, %vector.body108 ]
  %i.dh = shl i64 %index109, 3                    ; 3 uses
  %i.di = or disjoint i64 %i.dh, 16               ; 2 uses
  %next.gep112 = getelementptr i8, ptr %2, i64 %i.dh
  %next.gep113 = getelementptr i8, ptr %2, i64 %i.di
  %next.gep114 = getelementptr i8, ptr %i.cl, i64 %i.dh ; 2 uses
  %next.gep116 = getelementptr i8, ptr %i.cl, i64 %i.di ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep114), "nonnull"(ptr %next.gep116) ]
  %wide.vec118 = load <4 x i32>, ptr %next.gep112, align 4, !tbaa !792, !alias.scope !20430
  %wide.vec121 = load <4 x i32>, ptr %next.gep113, align 4, !tbaa !792, !alias.scope !20430
  store <4 x i32> %wide.vec118, ptr %next.gep114, align 4, !tbaa !792, !alias.scope !20431, !noalias !20432
  store <4 x i32> %wide.vec121, ptr %next.gep116, align 4, !tbaa !792, !alias.scope !20431, !noalias !20432
  %i.dj = add <2 x i32> %vec.phi110, splat (i32 2) ; 2 uses
  %i.dk = add <2 x i32> %vec.phi111, splat (i32 2) ; 2 uses
  %index.next126 = add nuw i64 %index109, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next126, %n.vec107
  br i1 %i.dl, label %middle.block127, label %vector.body108, !llvm.loop !20420

middle.block127:                                  ; preds = %vector.body108
  %bin.rdx128 = add <2 x i32> %i.dk, %i.dj
  %i.dm = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx128) ; 2 uses
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !20433, !noalias !20430
  %cmp.n129 = icmp eq i64 %i.cr, %n.vec107
  br i1 %cmp.n129, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb1EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck94, %.lr.ph.i20.preheader.i.i, %middle.block127
  %.ph = phi i32 [ %.pre8, %vector.memcheck94 ], [ %.pre8, %.lr.ph.i20.preheader.i.i ], [ %i.dm, %middle.block127 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck94 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.de, %middle.block127 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.cl, %vector.memcheck94 ], [ %i.cl, %.lr.ph.i20.preheader.i.i ], [ %i.df, %middle.block127 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.dn = phi i32 [ %i.dp, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dq, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.dr, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.do = load <2 x i32>, ptr %.018.i21.i.i, align 4, !tbaa !792
  store <2 x i32> %i.do, ptr %.01517.i22.i.i, align 4, !tbaa !792
  %i.dp = add i32 %i.dn, 2                        ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.dq, %i.x
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb1EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.loopexit, label %.lr.ph.i20.i.i, !llvm.loop !20421

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb1EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.loopexit: ; preds = %.lr.ph.i20.i.i
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb1EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb1EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb1EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.loopexit, %middle.block127, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb1EEEEEEEvSD_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb1EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.w, 0
  br i1 %.not3.i.i, label %bb.h, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.ds = trunc i64 %i.w to i32
  %i.dt = shl i32 %i.ds, 1
  %i.du = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i, %i.dt
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.i.i, %bb.g
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !788
  %i.dw = shl i64 %i.dv, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.dw) #24
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !793
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb1EEEEEEEvSD_mSD_mT_.exit

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb1EEEEEEEvSD_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb1EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, %bb.h
  %i.dx = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb1EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ]
  %i.dy = ptrtoint ptr %2 to i64
  %i.dz = ptrtoint ptr %i.t to i64
  %i.ea = sub i64 %i.dy, %i.dz
  store ptr %i.s, ptr %1, align 8, !tbaa !790
  %i.eb = add i64 %i.dx, %3
  store i64 %i.eb, ptr %i.e, align 8, !tbaa !793
  store i64 %i.p, ptr %i.b, align 8, !tbaa !627
  %i.ec = getelementptr inbounds i8, ptr %i.s, i64 %i.ea
  store ptr %i.ec, ptr %0, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE18insert_equal_rangeINS0_12vec_iteratorIPS6_Lb1EEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf.323", align 8 ; 6 uses
  %4 = alloca %"class.boost::movelib::adaptive_xbuf.323", align 8 ; 6 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.353", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !801    ; 7 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !801    ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !790, !noalias !20442 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !787, !noalias !20442 ; 3 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20443)
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20444)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !20443
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !788, !noalias !20445
  %i.m = sub i64 %i.l, %i.e
  %.not.i.i = icmp ugt i64 %i.j, %i.m
  br i1 %.not.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !531

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.n = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.o = load i32, ptr %i.a, align 4, !tbaa !792, !noalias !20446
  store i32 %i.o, ptr %i.f, align 4, !tbaa !792, !noalias !20446
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20446
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !792, !noalias !20446
  store i32 %i.s, ptr %i.q, align 4, !tbaa !792, !noalias !20446
  %i.t = add i32 %i.p, 2
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20446
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = add nsw i64 %i.j, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.unr = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.x = icmp eq i64 %i.i, 8
  br i1 %i.x, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb1EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %i.y = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i) ]
  %i.z = load i32, ptr %i.y, align 4, !tbaa !792, !noalias !20446
  store i32 %i.z, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !792, !noalias !20446
  %i.aa = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20446 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !792, !noalias !20446
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !792, !noalias !20446
  %i.ae = add i32 %i.aa, 2
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20446
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !792, !noalias !20446
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !792, !noalias !20446
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !792, !noalias !20446
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !792, !noalias !20446
  %i.al = add i32 %i.aa, 4
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20446
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16
  %i.ao = add i64 %.015.i.i.i.i.i.i, -2           ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb1EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !294

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb1EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.ap = add i64 %i.e, %i.j                      ; 2 uses
  store i64 %i.ap, ptr %i.d, align 8, !tbaa !793, !noalias !20445
  store ptr %i.f, ptr %6, align 8, !tbaa !795, !alias.scope !20445
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE6insertINS0_12vec_iteratorIPS5_Lb1EEEEENSA_ISB_Lb0EEESC_T_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %5, align 8, !tbaa !801, !noalias !20445
  call void @_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb1EEEEEEENSC_ISD_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.312") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.f, i64 noundef %i.j, ptr noundef nonnull align 8 dead_on_return %5)
  %.pre = load ptr, ptr %6, align 8, !tbaa !789
  %.pre18 = load i64, ptr %i.d, align 8, !tbaa !787
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE6insertINS0_12vec_iteratorIPS5_Lb1EEEEENSA_ISB_Lb0EEESC_T_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE6insertINS0_12vec_iteratorIPS5_Lb1EEEEENSA_ISB_Lb0EEESC_T_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb1EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.aq = phi i64 [ %i.ap, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb1EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre18, %bb.c ]
  %i.ar = phi ptr [ %i.f, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb1EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !20443
  %i.as = load ptr, ptr %0, align 8, !tbaa !790
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_(ptr noundef %i.ar, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE6insertINS0_12vec_iteratorIPS5_Lb1EEEEENSA_ISB_Lb0EEESC_T_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit
  %i.az = load i64, ptr %i.au, align 8, !tbaa !806 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl39flat_tree_container_inplace_sort_endingINS0_6vectorISt4pairINS0_4test12copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSH_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i.i.i.i

end_hunk_5
begin_hunk_6_@_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE19insert_unique_rangeINS0_12vec_iteratorIPS6_Lb0EEEEEvT_SI_:bb.a
  %i.cv = load i64, ptr %i.ch, align 8, !tbaa !806 ; 2 uses
  %.not.i.i30.i.i = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i30.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit33.i.i, label %.preheader.i.i.i31.i.i

.preheader.i.i.i31.i.i:                           ; preds = %bb.m
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i32.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.cw = trunc i64 %i.cv to i32
  %i.cx = shl i32 %i.cw, 1
  %i.cy = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i.i32.i.i, %i.cx
  store i32 %i.cy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit33.i.i

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit33.i.i: ; preds = %.preheader.i.i.i31.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.cu

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairINS0_4test12copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSH_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test12copyable_intES5_EPS6_mED2Ev.exit.i.i, %bb.e, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE5eraseENS0_12vec_iteratorIPS5_Lb1EEESB_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb0EEEEEEESE_SD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.312") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !788  ; 6 uses
  %i.d = sub i64 1152921504606846975, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !793  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 1152921504606846975
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !531

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.10) #29
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #30 ; 8 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !790    ; 13 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 3 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !789    ; 8 uses
  %i.w = load i64, ptr %i.e, align 8, !tbaa !787  ; 6 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.y = add i64 %i.a, -8
  %i.z = sub i64 %i.y, %i.u                       ; 3 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader139, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ac = and i64 %i.z, -8
  %i.ad = getelementptr i8, ptr %i.t, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %bound0 = icmp ugt ptr %i.ae, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %i.t, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.preheader139, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.t, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.s, i64 %i.af   ; 2 uses
  %i.ai = insertelement <2 x i32> <i32 poison, i32 0>, i32 %_ZN5boost9container4test12copyable_int5countE.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ai, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi16 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.aj = shl i64 %index, 3                       ; 3 uses
  %i.ak = or disjoint i64 %i.aj, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.aj
  %next.gep17 = getelementptr i8, ptr %i.t, i64 %i.ak
  %next.gep18 = getelementptr i8, ptr %i.s, i64 %i.aj
  %next.gep19 = getelementptr i8, ptr %i.s, i64 %i.ak
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !792, !alias.scope !20495
  %wide.vec21 = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !792, !alias.scope !20495
  store <4 x i32> %wide.vec, ptr %next.gep18, align 4, !tbaa !792, !alias.scope !20496
  store <4 x i32> %wide.vec21, ptr %next.gep19, align 4, !tbaa !792, !alias.scope !20496
  %i.al = add <2 x i32> %vec.phi, splat (i32 2)   ; 2 uses
  %i.am = add <2 x i32> %vec.phi16, splat (i32 2) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !20478

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !20497, !noalias !20495
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i.preheader139

.lr.ph.i.i.i.preheader139:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph140 = phi i32 [ %_ZN5boost9container4test12copyable_int5countE.promoted, %vector.memcheck ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader139, %.lr.ph.i.i.i
  %i.ap = phi i32 [ %i.au, %.lr.ph.i.i.i ], [ %.ph140, %.lr.ph.i.i.i.preheader139 ]
  %.018.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader139 ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader139 ] ; 3 uses
  %i.aq = load i32, ptr %.018.i.i.i, align 4, !tbaa !792
  store i32 %i.aq, ptr %.01517.i.i.i, align 4, !tbaa !792
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !792
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !792
  %i.au = add i32 %i.ap, 2                        ; 2 uses
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !20480

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ah, %middle.block ], [ %i.aw, %.lr.ph.i.i.i ] ; 10 uses
  %.not13.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not13.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20498 ; 3 uses
  %min.iters.check39 = icmp ult i64 %3, 16
  br i1 %min.iters.check39, label %.lr.ph.i.i.i.i.preheader134, label %vector.memcheck40

vector.memcheck40:                                ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ax = shl i64 %3, 3                           ; 2 uses
  %i.ay = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %i.v, i64 %i.ax   ; 2 uses
  %bound041 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound142 = icmp ugt ptr %i.ay, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict43 = and i1 %bound041, %bound142
  %bound044 = icmp ult ptr %.015.lcssa.i.i.i, %i.az
  %bound145 = icmp ult ptr %i.v, %i.ay
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx = or i1 %found.conflict43, %found.conflict46
  %bound047 = icmp ugt ptr %i.az, @_ZN5boost9container4test12copyable_int5countE
  %bound148 = icmp ult ptr %i.v, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict49 = and i1 %bound047, %bound148
  %conflict.rdx50 = or i1 %conflict.rdx, %found.conflict49
  br i1 %conflict.rdx50, label %.lr.ph.i.i.i.i.preheader134, label %vector.ph51

vector.ph51:                                      ; preds = %vector.memcheck40
  %n.vec52 = and i64 %3, -4                       ; 3 uses
  %i.ba = shl i64 %n.vec52, 3                     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.v, i64 %i.ba
  %i.bc = and i64 %3, 3
  %i.bd = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ba
  %i.be = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre, i64 0
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next71, %vector.body53 ] ; 2 uses
  %vec.phi55 = phi <2 x i32> [ %i.be, %vector.ph51 ], [ %i.bh, %vector.body53 ]
  %vec.phi56 = phi <2 x i32> [ zeroinitializer, %vector.ph51 ], [ %i.bi, %vector.body53 ]
  %i.bf = shl i64 %index54, 3                     ; 3 uses
  %i.bg = or disjoint i64 %i.bf, 16               ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.v, i64 %i.bf
  %next.gep58 = getelementptr i8, ptr %i.v, i64 %i.bg
  %next.gep59 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bf ; 2 uses
  %next.gep61 = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bg ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep59), "nonnull"(ptr %next.gep61) ]
  %wide.vec63 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !792, !alias.scope !20499, !noalias !20498
  %wide.vec66 = load <4 x i32>, ptr %next.gep58, align 4, !tbaa !792, !alias.scope !20499, !noalias !20498
  store <4 x i32> %wide.vec63, ptr %next.gep59, align 4, !tbaa !792, !alias.scope !20500, !noalias !20498
  store <4 x i32> %wide.vec66, ptr %next.gep61, align 4, !tbaa !792, !alias.scope !20500, !noalias !20498
  %i.bh = add <2 x i32> %vec.phi55, splat (i32 2) ; 2 uses
  %i.bi = add <2 x i32> %vec.phi56, splat (i32 2) ; 2 uses
  %index.next71 = add nuw i64 %index54, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next71, %n.vec52
  br i1 %i.bj, label %middle.block72, label %vector.body53, !llvm.loop !20486

middle.block72:                                   ; preds = %vector.body53
  %bin.rdx73 = add <2 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx73) ; 2 uses
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !20501, !noalias !20502
  %cmp.n74 = icmp eq i64 %3, %n.vec52
  br i1 %cmp.n74, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.preheader134

.lr.ph.i.i.i.i.preheader134:                      ; preds = %vector.memcheck40, %.lr.ph.i.i.i.i.preheader, %middle.block72
  %.ph135 = phi i32 [ %.pre, %vector.memcheck40 ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %middle.block72 ] ; 2 uses
  %.ph136 = phi ptr [ %i.v, %vector.memcheck40 ], [ %i.v, %.lr.ph.i.i.i.i.preheader ], [ %i.bb, %middle.block72 ] ; 4 uses
  %.015.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck40 ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.bc, %middle.block72 ] ; 4 uses
  %.01214.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck40 ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bd, %middle.block72 ] ; 5 uses
  %xtraiter = and i64 %.015.i.i.i.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader134
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.ph) ]
  %i.bl = load i32, ptr %.ph136, align 4, !tbaa !792, !noalias !20498
  store i32 %i.bl, ptr %.01214.i.i.i.i.ph, align 4, !tbaa !792, !noalias !20498
  %i.bm = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.ph, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.ph136, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !792, !noalias !20498
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !792, !noalias !20498
  %i.bp = add i32 %.ph135, 2                      ; 2 uses
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20498
  %i.bq = getelementptr inbounds nuw i8, ptr %.ph136, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.ph, i64 8
  %i.bs = add nsw i64 %.015.i.i.i.i.ph, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader134
  %.unr = phi i32 [ %.ph135, %.lr.ph.i.i.i.i.preheader134 ], [ %i.bp, %.lr.ph.i.i.i.i.prol ]
  %.unr144 = phi ptr [ %.ph136, %.lr.ph.i.i.i.i.preheader134 ], [ %i.bq, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %.015.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader134 ], [ %i.bs, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %.01214.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader134 ], [ %i.br, %.lr.ph.i.i.i.i.prol ]
  %i.bt = icmp eq i64 %.015.i.i.i.i.ph, 1
  br i1 %i.bt, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.bu = phi i32 [ %i.ch, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bv = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %.unr144, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !792, !noalias !20498
  store i32 %i.bw, ptr %.01214.i.i.i.i, align 4, !tbaa !792, !noalias !20498
  %i.bx = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !792, !noalias !20498
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !792, !noalias !20498
  %i.ca = add i32 %i.bu, 2
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20498
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !792, !noalias !20498
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !792, !noalias !20498
  %i.ce = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !792, !noalias !20498
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !792, !noalias !20498
  %i.ch = add i32 %i.bu, 4                        ; 2 uses
  store i32 %i.ch, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20498
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.ck = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.1, label %.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !20488

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block72, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.x
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb0EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.cl = getelementptr [8 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 7 uses
  %.pre8 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501 ; 3 uses
  %i.cm = shl i64 %i.w, 3
  %i.cn = add i64 %i.cm, %i.u
  %i.co = add i64 %i.cn, -8
  %i.cp = sub i64 %i.co, %i.a                     ; 2 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %i.cp, 232
  br i1 %min.iters.check93, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.cs = shl i64 %3, 3
  %i.ct = shl i64 %i.w, 3
  %i.cu = add i64 %i.ct, %i.u
  %i.cv = add i64 %i.cu, -8
  %i.cw = sub i64 %i.cv, %i.a
  %i.cx = and i64 %i.cw, -8                       ; 2 uses
  %i.cy = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.cs
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cx
  %i.da = getelementptr i8, ptr %i.cz, i64 8      ; 2 uses
  %i.db = getelementptr i8, ptr %2, i64 %i.cx
  %i.dc = getelementptr i8, ptr %i.db, i64 8      ; 2 uses
  %bound095 = icmp ult ptr %i.cl, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound196 = icmp ugt ptr %i.da, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict97 = and i1 %bound095, %bound196
  %bound098 = icmp ult ptr %i.cl, %i.dc
  %bound199 = icmp ult ptr %2, %i.da
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %found.conflict97, %found.conflict100
  %bound0102 = icmp ugt ptr %i.dc, @_ZN5boost9container4test12copyable_int5countE
  %bound1103 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %conflict.rdx101, %found.conflict104
  br i1 %conflict.rdx105, label %.lr.ph.i20.i.i.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %vector.memcheck94
  %n.vec107 = and i64 %i.cr, 4611686018427387900  ; 3 uses
  %i.dd = shl i64 %n.vec107, 3                    ; 2 uses
  %i.de = getelementptr i8, ptr %2, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.cl, i64 %i.dd
  %i.dg = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre8, i64 0
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next126, %vector.body108 ] ; 2 uses
  %vec.phi110 = phi <2 x i32> [ %i.dg, %vector.ph106 ], [ %i.dj, %vector.body108 ]
  %vec.phi111 = phi <2 x i32> [ zeroinitializer, %vector.ph106 ], [ %i.dk, %vector.body108 ]
  %i.dh = shl i64 %index109, 3                    ; 3 uses
  %i.di = or disjoint i64 %i.dh, 16               ; 2 uses
  %next.gep112 = getelementptr i8, ptr %2, i64 %i.dh
  %next.gep113 = getelementptr i8, ptr %2, i64 %i.di
  %next.gep114 = getelementptr i8, ptr %i.cl, i64 %i.dh ; 2 uses
  %next.gep116 = getelementptr i8, ptr %i.cl, i64 %i.di ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep114), "nonnull"(ptr %next.gep116) ]
  %wide.vec118 = load <4 x i32>, ptr %next.gep112, align 4, !tbaa !792, !alias.scope !20503
  %wide.vec121 = load <4 x i32>, ptr %next.gep113, align 4, !tbaa !792, !alias.scope !20503
  store <4 x i32> %wide.vec118, ptr %next.gep114, align 4, !tbaa !792, !alias.scope !20504, !noalias !20505
  store <4 x i32> %wide.vec121, ptr %next.gep116, align 4, !tbaa !792, !alias.scope !20504, !noalias !20505
  %i.dj = add <2 x i32> %vec.phi110, splat (i32 2) ; 2 uses
  %i.dk = add <2 x i32> %vec.phi111, splat (i32 2) ; 2 uses
  %index.next126 = add nuw i64 %index109, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next126, %n.vec107
  br i1 %i.dl, label %middle.block127, label %vector.body108, !llvm.loop !20493

middle.block127:                                  ; preds = %vector.body108
  %bin.rdx128 = add <2 x i32> %i.dk, %i.dj
  %i.dm = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx128) ; 2 uses
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !alias.scope !20506, !noalias !20503
  %cmp.n129 = icmp eq i64 %i.cr, %n.vec107
  br i1 %cmp.n129, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb0EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck94, %.lr.ph.i20.preheader.i.i, %middle.block127
  %.ph = phi i32 [ %.pre8, %vector.memcheck94 ], [ %.pre8, %.lr.ph.i20.preheader.i.i ], [ %i.dm, %middle.block127 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck94 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.de, %middle.block127 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.cl, %vector.memcheck94 ], [ %i.cl, %.lr.ph.i20.preheader.i.i ], [ %i.df, %middle.block127 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.dn = phi i32 [ %i.dp, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dq, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.dr, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.do = load <2 x i32>, ptr %.018.i21.i.i, align 4, !tbaa !792
  store <2 x i32> %i.do, ptr %.01517.i22.i.i, align 4, !tbaa !792
  %i.dp = add i32 %i.dn, 2                        ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 8 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.dq, %i.x
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb0EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.loopexit, label %.lr.ph.i20.i.i, !llvm.loop !20494

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb0EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.loopexit: ; preds = %.lr.ph.i20.i.i
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb0EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb0EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb0EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.loopexit, %middle.block127, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb0EEEEEEEvSD_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb0EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.w, 0
  br i1 %.not3.i.i, label %bb.h, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %_ZN5boost9container4test12copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4
  %i.ds = trunc i64 %i.w to i32
  %i.dt = shl i32 %i.ds, 1
  %i.du = sub i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i, %i.dt
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.i.i, %bb.g
  %i.dv = load i64, ptr %i.b, align 8, !tbaa !788
  %i.dw = shl i64 %i.dv, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.dw) #24
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !793
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb0EEEEEEEvSD_mSD_mT_.exit

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb0EEEEEEEvSD_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb0EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, %bb.h
  %i.dx = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairINS0_4test12copyable_intES5_EEEPS6_S8_NS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIS8_Lb0EEEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ]
  %i.dy = ptrtoint ptr %2 to i64
  %i.dz = ptrtoint ptr %i.t to i64
  %i.ea = sub i64 %i.dy, %i.dz
  store ptr %i.s, ptr %1, align 8, !tbaa !790
  %i.eb = add i64 %i.dx, %3
  store i64 %i.eb, ptr %i.e, align 8, !tbaa !793
  store i64 %i.p, ptr %i.b, align 8, !tbaa !627
  %i.ec = getelementptr inbounds i8, ptr %i.s, i64 %i.ea
  store ptr %i.ec, ptr %0, align 8, !tbaa !795
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairINS0_4test12copyable_intES5_ENS1_9select1stIS5_EESt4lessIS5_ENS0_13new_allocatorIS6_EEE18insert_equal_rangeINS0_12vec_iteratorIPS6_Lb0EEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf.323", align 8 ; 6 uses
  %4 = alloca %"class.boost::movelib::adaptive_xbuf.323", align 8 ; 6 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.354", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator.312", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !795    ; 7 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !795    ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.c = load ptr, ptr %0, align 8, !tbaa !790, !noalias !20515 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !787, !noalias !20515 ; 3 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20516)
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20517)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !20516
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !788, !noalias !20518
  %i.m = sub i64 %i.l, %i.e
  %.not.i.i = icmp ugt i64 %i.j, %i.m
  br i1 %.not.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !531

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.n = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.n, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.o = load i32, ptr %i.a, align 4, !tbaa !792, !noalias !20519
  store i32 %i.o, ptr %i.f, align 4, !tbaa !792, !noalias !20519
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20519
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !792, !noalias !20519
  store i32 %i.s, ptr %i.q, align 4, !tbaa !792, !noalias !20519
  %i.t = add i32 %i.p, 2
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20519
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = add nsw i64 %i.j, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %.lr.ph.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.unr = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.v, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.x = icmp eq i64 %i.i, 8
  br i1 %i.x, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb0EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %i.y = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i.i.i = phi i64 [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i.i) ]
  %i.z = load i32, ptr %i.y, align 4, !tbaa !792, !noalias !20519
  store i32 %i.z, ptr %.01214.i.i.i.i.i.i, align 4, !tbaa !792, !noalias !20519
  %i.aa = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20519 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !792, !noalias !20519
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !792, !noalias !20519
  %i.ae = add i32 %i.aa, 2
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20519
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 8
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !792, !noalias !20519
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !792, !noalias !20519
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !792, !noalias !20519
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !792, !noalias !20519
  %i.al = add i32 %i.aa, 4
  store i32 %i.al, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !501, !noalias !20519
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16
  %i.ao = add i64 %.015.i.i.i.i.i.i, -2           ; 2 uses
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb0EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !295

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb0EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.ap = add i64 %i.e, %i.j                      ; 2 uses
  store i64 %i.ap, ptr %i.d, align 8, !tbaa !793, !noalias !20518
  store ptr %i.f, ptr %6, align 8, !tbaa !795, !alias.scope !20518
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE6insertINS0_12vec_iteratorIPS5_Lb0EEEEESC_NSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %5, align 8, !tbaa !795, !noalias !20518
  call void @_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb0EEEEEEESE_SD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.312") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.f, i64 noundef %i.j, ptr noundef nonnull align 8 dead_on_return %5)
  %.pre = load ptr, ptr %6, align 8, !tbaa !789
  %.pre18 = load i64, ptr %i.d, align 8, !tbaa !787
  br label %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE6insertINS0_12vec_iteratorIPS5_Lb0EEEEESC_NSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit

_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE6insertINS0_12vec_iteratorIPS5_Lb0EEEEESC_NSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb0EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.aq = phi i64 [ %i.ap, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb0EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre18, %bb.c ]
  %i.ar = phi ptr [ %i.f, %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS0_12vec_iteratorIPS5_Lb0EEEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !20516
  %i.as = load ptr, ptr %0, align 8, !tbaa !790
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.ar to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairINS_9container4test12copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeET0_RT1_(ptr noundef %i.ar, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5boost9container6vectorISt4pairINS0_4test12copyable_intES4_ENS0_13new_allocatorIS5_EEvE6insertINS0_12vec_iteratorIPS5_Lb0EEEEESC_NSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit
  %i.az = load i64, ptr %i.au, align 8, !tbaa !806 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl39flat_tree_container_inplace_sort_endingINS0_6vectorISt4pairINS0_4test12copyable_intES6_ENS0_13new_allocatorIS7_EEvEENS1_23flat_tree_value_compareISt4lessIS6_ES7_NS1_9select1stIS6_EEEEEEvRT_NSH_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i.i.i.i

end_hunk_6
