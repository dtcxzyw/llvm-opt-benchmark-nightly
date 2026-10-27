Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 242
loop-unroll.NumUnrolled: 513
begin_hunk_0_@_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_:bb.a
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !336  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !317
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !339, !noalias !2334 ; 2 uses
  %.idx = shl nsw i64 %i.b, 3
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %.idx
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !315  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not4.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.j, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.05.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.h, %bb.b ]
  %i.j = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i) #27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i, !llvm.loop !3

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
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #27
  %.not23 = icmp eq ptr %i.s, %i.f
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !13

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit ], [ true, %.preheader ], [ %i.r, %bb.c ], [ %i.r, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container8flat_mapIiiSt4lessIiENS2_6vectorISt4pairIiiEvvEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESG_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !376
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !330  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !331
  %i.f = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.f) #23
  br label %.body

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !310
  ret void

.body:                                            ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #26
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container13flat_multimapIiiSt4lessIiENS2_6vectorISt4pairIiiEvvEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESG_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.4") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !376
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !330  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !331
  %i.f = shl i64 %i.d, 3
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.f) #23
  br label %.body

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_6vectorISt4pairIiiEvvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !323
  ret void

.body:                                            ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #26
  resume { ptr, i32 } %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 7 uses
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.a = load ptr, ptr %0, align 8, !tbaa !339, !noalias !2357 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !336, !noalias !2357 ; 4 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.c ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2359)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !330, !noalias !2360
  %i.k = sub i64 %i.j, %i.c
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !344

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep49) ]
  %wide.vec = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !338, !alias.scope !2361, !noalias !2360
  %wide.vec54 = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !338, !alias.scope !2361, !noalias !2360
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !2362, !noalias !2360
  store <4 x i32> %wide.vec54, ptr %next.gep49, align 4, !tbaa !338, !alias.scope !2362, !noalias !2360
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !2344

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
  %i.w = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !2360
  store i32 %i.w, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !2360
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !338, !noalias !2360
  store i32 %i.z, ptr %i.x, align 4, !tbaa !338, !noalias !2360
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ac = add i64 %.018.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2345

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
  %i.ae = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !2360
  store i32 %i.ae, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !2360
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !338, !noalias !2360
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !338, !noalias !2360
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !338, !noalias !2360
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !338, !noalias !2360
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !338, !noalias !2360
  store i32 %i.an, ptr %i.al, align 4, !tbaa !338, !noalias !2360
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !338, !noalias !2360
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !338, !noalias !2360
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !338, !noalias !2360
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !338, !noalias !2360
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !338, !noalias !2360
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !338, !noalias !2360
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !338, !noalias !2360
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !338, !noalias !2360
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.bc = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2346

_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.b
  %i.bd = add i64 %i.c, %i.h                      ; 2 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !334, !noalias !2360
  store ptr %i.d, ptr %6, align 8, !tbaa !350, !alias.scope !2360
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.h, ptr %1)
  %.pre = load ptr, ptr %6, align 8, !tbaa !331
  %.pre25 = load ptr, ptr %0, align 8, !tbaa !339, !noalias !2363
  %.pre26 = load i64, ptr %i.b, align 8, !tbaa !336, !noalias !2363
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
  store ptr %i.bg, ptr %4, align 8, !tbaa !350
  store ptr %i.bh, ptr %5, align 8, !tbaa !350
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = sub nuw nsw i64 64, %i.bo
  call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %i.bp, i1 noundef zeroext true)
  %.pre27 = load ptr, ptr %6, align 8, !tbaa !331
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !339, !noalias !2364
  %.pre29 = load i64, ptr %i.b, align 8, !tbaa !336, !noalias !2364
  br label %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit

_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit, %bb.d
  %i.bq = phi i64 [ %i.be, %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit ], [ %.pre29, %bb.d ]
  %i.br = phi ptr [ %i.bf, %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit ], [ %.pre28, %bb.d ] ; 2 uses
  %i.bs = phi ptr [ %i.bg, %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit ], [ %.pre27, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.bs, ptr %8, align 8, !tbaa !350
  call void @llvm.experimental.noalias.scope.decl(metadata !2364)
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %i.bt, ptr %9, align 8, !tbaa !350, !alias.scope !2364
  store ptr %i.br, ptr %10, align 8, !tbaa !350, !alias.scope !2365
  store ptr %i.bs, ptr %11, align 8, !tbaa !350
  call void @_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_T0_SG_T1_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11)
  %i.bu = load ptr, ptr %7, align 8, !tbaa !350   ; 3 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !350   ; 8 uses
  %.not = icmp eq ptr %i.bu, %i.bv
  %i.bw = load ptr, ptr %0, align 8, !tbaa !339, !noalias !2366 ; 4 uses
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !336, !noalias !2366 ; 3 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %.not.i = icmp eq ptr %i.bu, %i.by
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3
  %i.cd = sub i64 %i.bx, %i.cc                    ; 2 uses
  store i64 %i.cd, ptr %i.b, align 8, !tbaa !334, !noalias !2367
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
  %i.ci = load i32, ptr %i.bv, align 4, !tbaa !338
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.cl, %bb.g ], [ %i.bw, %.preheader.i.i ] ; 4 uses
  %i.cj = load i32, ptr %.0.i.i, align 4, !tbaa !338
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bv
  br i1 %i.cm, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !27

bb.h:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !338
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.025.i.i = phi ptr [ %i.cf, %bb.h ], [ %i.cp, %bb.k ] ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !338
  %i.cr = icmp slt i32 %i.cq, %i.co
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.cs = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.ct = ptrtoint ptr %.0.i.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  %i.cw = ptrtoint ptr %.025.i.i to i64
  %i.cx = sub i64 %i.cw, %i.cs
  %i.cy = ashr exact i64 %i.cx, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.cv, i64 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.k:                                             ; preds = %bb.i
  %i.cz = icmp eq ptr %i.cp, %i.bv
  br i1 %i.cz, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.i, !llvm.loop !28

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %bb.j, %bb.e, %_ZN5boost9container6vectorISt4pairIiiEvvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES7_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_6vectorIS4_vvEEE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator", align 8 ; 6 uses
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = load ptr, ptr %0, align 8, !tbaa !339, !noalias !2380 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !336, !noalias !2380 ; 3 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.c ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2381)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2382)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !330, !noalias !2383
  %i.k = sub i64 %i.j, %i.c
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !344

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep33) ]
  %wide.vec = load <4 x i32>, ptr %next.gep35, align 4, !tbaa !338, !alias.scope !2384, !noalias !2383
  %wide.vec38 = load <4 x i32>, ptr %next.gep36, align 4, !tbaa !338, !alias.scope !2384, !noalias !2383
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !2385, !noalias !2383
  store <4 x i32> %wide.vec38, ptr %next.gep33, align 4, !tbaa !338, !alias.scope !2385, !noalias !2383
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !2377

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
  %i.w = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !2383
  store i32 %i.w, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !2383
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !338, !noalias !2383
  store i32 %i.z, ptr %i.x, align 4, !tbaa !338, !noalias !2383
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ac = add i64 %.018.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2378

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
  %i.ae = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !2383
  store i32 %i.ae, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !2383
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !338, !noalias !2383
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !338, !noalias !2383
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !338, !noalias !2383
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !338, !noalias !2383
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !338, !noalias !2383
  store i32 %i.an, ptr %i.al, align 4, !tbaa !338, !noalias !2383
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !338, !noalias !2383
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !338, !noalias !2383
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !338, !noalias !2383
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !338, !noalias !2383
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !338, !noalias !2383
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !338, !noalias !2383
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !338, !noalias !2383
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !338, !noalias !2383
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.bc = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2379

_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !334, !noalias !2383
  %i.be = add i64 %i.bd, %i.h                     ; 2 uses
  store i64 %i.be, ptr %i.b, align 8, !tbaa !334, !noalias !2383
  store ptr %i.d, ptr %5, align 8, !tbaa !350, !alias.scope !2383
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.h, ptr %1)
  %.pre = load ptr, ptr %5, align 8, !tbaa !331
  %.pre17 = load i64, ptr %i.b, align 8, !tbaa !336
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit

_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.bf = phi i64 [ %i.be, %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre17, %bb.c ]
  %i.bg = phi ptr [ %i.d, %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !339
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef %i.bg, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bn = load ptr, ptr %5, align 8, !tbaa !331   ; 7 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !339   ; 3 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !336
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = icmp eq ptr %i.bo, %i.bn
  %i.bs = icmp eq ptr %i.bn, %i.bq
  %or.cond.i.i = or i1 %i.br, %i.bs
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit
  %i.bt = load i32, ptr %i.bn, align 4, !tbaa !338
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.bw, %bb.e ], [ %i.bo, %.preheader.i.i ] ; 4 uses
  %i.bu = load i32, ptr %.0.i.i, align 4, !tbaa !338
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bn
  br i1 %i.bx, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.d, !llvm.loop !27

bb.f:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !338
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.025.i.i = phi ptr [ %i.bq, %bb.f ], [ %i.ca, %bb.i ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !338
  %i.cc = icmp slt i32 %i.cb, %i.bz
  br i1 %i.cc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.cd = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.ce = ptrtoint ptr %.0.i.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3
  %i.ch = ptrtoint ptr %.025.i.i to i64
  %i.ci = sub i64 %i.ch, %i.cd
  %i.cj = ashr exact i64 %i.ci, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ck = icmp eq ptr %i.ca, %i.bn
  br i1 %i.ck, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.g, !llvm.loop !28

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost9container6vectorISt4pairIiiEvvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSC_ISD_Lb1EEET_SG_PNS_11move_detail13disable_if_orIvNSH_14is_convertibleISG_mEENS7_17is_input_iteratorISG_Xsr21has_iterator_categoryISG_EE5valueEEENSH_5bool_ILb0EEESO_E4typeE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorISt4pairIiiEvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_T0_SG_T1_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.047 = alloca ptr, align 8                ; 4 uses
  %.sroa.041 = alloca ptr, align 8                ; 3 uses
  %.sroa.036 = alloca ptr, align 8                ; 5 uses
  %.sroa.031 = alloca ptr, align 8                ; 4 uses
  %.sroa.025 = alloca ptr, align 8                ; 3 uses
  %.sroa.0 = alloca ptr, align 8                  ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !350    ; 4 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !350
  %.not82 = icmp eq ptr %i.a, %i.b
  br i1 %.not82, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre114 = load ptr, ptr %3, align 8, !tbaa !350 ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !350
  %i.d = icmp eq ptr %.pre114, %i.c
  br i1 %i.d, label %.preheader, label %.lr.ph210

.preheader:                                       ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %.lcssa203 = phi ptr [ %i.a, %.lr.ph.preheader ], [ %.be162, %.lr.ph.backedge ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.lcssa203, i64 8 ; 3 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !350
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_T0_SG_T1_:bb.a
  %i.bv = icmp slt i32 %i.v, %i.bu
  br i1 %i.bv, label %.critedge2, label %.preheader67, !llvm.loop !2396

.critedge2:                                       ; preds = %bb.p
  store ptr %i.bs, ptr %.sroa.031, align 8, !tbaa !350, !alias.scope !2403
  %i.bw = load ptr, ptr %3, align 8, !tbaa !331
  store ptr %i.bw, ptr %.sroa.025, align 8, !tbaa !350
  %i.bx = load ptr, ptr %4, align 8, !tbaa !331
  store ptr %i.s, ptr %.sroa.0, align 8, !tbaa !350
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.critedge2, %bb.w
  %i.by = phi ptr [ %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32, %bb.w ], [ %i.bs, %.critedge2 ] ; 7 uses
  %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0. = load ptr, ptr %.sroa.025, align 8, !tbaa !350, !noalias !2404 ; 3 uses
  %i.bz = icmp eq ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., %i.bx
  br i1 %i.bz, label %.preheader.i12, label %bb.s

.preheader.i12:                                   ; preds = %.lr.ph.i4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %.not610.i13 = icmp eq ptr %i.ca, %i.bt
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.22.pre = load ptr, ptr %.sroa.0, align 8 ; 2 uses
  br i1 %.not610.i13, label %._crit_edge.i18, label %.lr.ph12.i14

.lr.ph12.i14:                                     ; preds = %.preheader.i12, %bb.r
  %.sroa.031.0..sroa.031.0.3384 = phi ptr [ %i.ck, %bb.r ], [ %i.ca, %.preheader.i12 ] ; 3 uses
  %i.cb = phi ptr [ %i.cj, %bb.r ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.22.pre, %.preheader.i12 ] ; 4 uses
  %.sroa.02.011.i15 = phi ptr [ %.sroa.02.1.i16, %bb.r ], [ %i.by, %.preheader.i12 ] ; 3 uses
  %i.cc = load i32, ptr %.sroa.02.011.i15, align 4, !tbaa !338, !noalias !2404 ; 2 uses
  %i.cd = load i32, ptr %.sroa.031.0..sroa.031.0.3384, align 4, !tbaa !338, !noalias !2404
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph12.i14
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !347, !noalias !2404
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.02.011.i15, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !338, !noalias !2404
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !348, !noalias !2404
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph12.i14
  %i.cj = phi ptr [ %i.ci, %bb.q ], [ %i.cb, %.lr.ph12.i14 ] ; 2 uses
  %.sroa.02.1.i16 = phi ptr [ %.sroa.031.0..sroa.031.0.3384, %bb.q ], [ %.sroa.02.011.i15, %.lr.ph12.i14 ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.031.0..sroa.031.0.3384, i64 8 ; 2 uses
  %.not6.i17 = icmp eq ptr %i.ck, %i.bt
  br i1 %.not6.i17, label %._crit_edge.i18, label %.lr.ph12.i14, !llvm.loop !2393

._crit_edge.i18:                                  ; preds = %bb.r, %.preheader.i12
  %.sroa.0.0..sroa.0.0..sroa.0.0.22 = phi ptr [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.22.pre, %.preheader.i12 ], [ %i.cj, %bb.r ] ; 3 uses
  %.sroa.02.0.lcssa.i19 = phi ptr [ %i.by, %.preheader.i12 ], [ %.sroa.02.1.i16, %bb.r ] ; 2 uses
  %i.cl = load i32, ptr %.sroa.02.0.lcssa.i19, align 4, !tbaa !338, !noalias !2404
  store i32 %i.cl, ptr %.sroa.0.0..sroa.0.0..sroa.0.0.22, align 4, !tbaa !347, !noalias !2404
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.lcssa.i19, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !338, !noalias !2404
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0.22, i64 4
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !348, !noalias !2404
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0.22, i64 8
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph.i4
  %i.cq = load i32, ptr %i.by, align 4, !tbaa !338, !noalias !2404 ; 4 uses
  %i.cr = load i32, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., align 4, !tbaa !338, !noalias !2404 ; 2 uses
  %i.cs = icmp slt i32 %i.cq, %i.cr
  br i1 %i.cs, label %.preheader7.i10, label %bb.v

.preheader7.i10:                                  ; preds = %bb.s, %bb.t
  %i.ct = phi ptr [ %i.cu, %bb.t ], [ %i.by, %bb.s ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %.not5.i11 = icmp eq ptr %i.cu, %i.bt
  br i1 %.not5.i11, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader7.i10
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !338, !noalias !2404
  %i.cw = icmp slt i32 %i.cq, %i.cv
  br i1 %i.cw, label %bb.u, label %.preheader7.i10, !llvm.loop !2394

bb.u:                                             ; preds = %bb.t, %.preheader7.i10
  store ptr %i.cu, ptr %.sroa.031, align 8, !tbaa !350, !noalias !2404
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21 = load ptr, ptr %.sroa.0, align 8, !tbaa !350, !noalias !2404 ; 3 uses
  store i32 %i.cq, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, align 4, !tbaa !347, !noalias !2404
  %i.cx = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !338, !noalias !2404
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, i64 4
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !348, !noalias !2404
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.da = icmp slt i32 %i.cr, %i.cq               ; 2 uses
  %..i5 = select i1 %i.da, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., ptr %i.by
  %.25.i6 = select i1 %i.da, ptr %.sroa.025, ptr %.sroa.031
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink24.i7 = phi ptr [ %..i5, %bb.v ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, %bb.u ]
  %.sink23.i8 = phi ptr [ %.25.i6, %bb.v ], [ %.sroa.0, %bb.u ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sink24.i7, i64 8
  store ptr %i.db, ptr %.sink23.i8, align 8, !tbaa !350, !noalias !2404
  %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32 = load ptr, ptr %.sroa.031, align 8, !tbaa !350, !noalias !2404 ; 2 uses
  %.not.i9 = icmp eq ptr %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32, %i.bt
  br i1 %.not.i9, label %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEET1_T_SI_T0_SJ_SH_T2_.exit20.loopexit, label %.lr.ph.i4, !llvm.loop !2395

_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEET1_T_SI_T0_SJ_SH_T2_.exit20.loopexit: ; preds = %bb.w
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre = load ptr, ptr %.sroa.0, align 8, !tbaa !331, !noalias !2404
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.f, %.preheader67, %.preheader66, %bb.a, %._crit_edge.i18, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEET1_T_SI_T0_SJ_SH_T2_.exit20.loopexit, %._crit_edge.i, %.loopexit.loopexit, %._crit_edge92
  %.sroa.036.0..sroa.036.0..sroa.036.0..sink = phi ptr [ %i.r, %._crit_edge92 ], [ %i.ac, %.preheader66 ], [ %i.s, %.preheader67 ], [ %.sroa.036.0..sroa.036.0..sroa.036.0..sroa.036.0..pre, %.loopexit.loopexit ], [ %i.be, %._crit_edge.i ], [ %i.cp, %._crit_edge.i18 ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPSt4pairIiiELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIiES6_NSA_9select1stIiEEEEEET1_T_SI_T0_SJ_SH_T2_.exit20.loopexit ], [ %i.a, %bb.a ], [ %.pre119, %.split ], [ %i.ac, %bb.f ]
  store ptr %.sroa.036.0..sroa.036.0..sroa.036.0..sink, ptr %0, align 8, !tbaa !350
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairIiiEvvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !330  ; 6 uses
  %i.c = sub i64 1152921504606846975, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !334  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.6) #22
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
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !344

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.6) #22
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorISt4pairIiiEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !339    ; 6 uses
  %i.t = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !336  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = icmp ne ptr %i.s, %2
  %i.z = icmp ne ptr %i.s, null                   ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.z, %i.y
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, !prof !367

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep14) ]
  %wide.vec = load <4 x i32>, ptr %next.gep16, align 4, !tbaa !338
  %wide.vec19 = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !338
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338
  store <4 x i32> %wide.vec19, ptr %next.gep14, align 4, !tbaa !338
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !2405

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
  %i.ai = load <2 x i32>, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !338
  store <2 x i32> %i.ai, ptr %.01417.i.i.i.i, align 4, !tbaa !338
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.al = add i64 %.018.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2406

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %i.am = icmp ne ptr %2, %i.x
  %i.an = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.an, %i.am
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i, !prof !367

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.ap = ptrtoint ptr %i.x to i64
  %i.aq = sub i64 %i.ap, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 4 %2, i64 %i.aq, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  br i1 %i.z, label %bb.i, label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mSG_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !330
  %i.as = shl i64 %i.ar, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.as) #23
  %.pre = load i64, ptr %i.d, align 8, !tbaa !334
  br label %_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mSG_mT_.exit

_ZN5boost9container6vectorISt4pairIiiEvvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvPS3_mSG_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i, %bb.i
  %i.at = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.r, ptr %1, align 8, !tbaa !339
  %i.au = add i64 %i.at, %3
  store i64 %i.au, ptr %i.d, align 8, !tbaa !334
  store i64 %i.o, ptr %i.a, align 8, !tbaa !368
  %i.av = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.av, ptr %0, align 8, !tbaa !350
  ret void
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !383
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container12length_errorE, i64 16), ptr %i.a, align 8, !tbaa !302
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container12length_errorE, ptr nonnull @_ZNSt9exceptionD2Ev) #22
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container12length_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost9container9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !383  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.7, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container15throw_bad_allocEv() local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.8, ptr %i.b, align 8, !tbaa !383
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost9container9bad_allocE, i64 16), ptr %i.a, align 8, !tbaa !302
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5boost9container9bad_allocE, ptr nonnull @_ZNSt9exceptionD2Ev) #22
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container9bad_allocD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !350    ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !350    ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = icmp ult i64 %i.f, 24
  br i1 %i.g, label %._crit_edge, label %.lr.ph249

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_12vec_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit, %bb.a
  %.lcssa236 = phi ptr [ %i.a, %bb.a ], [ %i.ls, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_12vec_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit ] ; 3 uses
  %.lcssa233 = phi ptr [ %i.b, %bb.a ], [ %storemerge, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_12vec_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit ] ; 7 uses
  %.not.i = icmp eq ptr %.lcssa233, %.lcssa236
  %.sroa.013.027.i = getelementptr inbounds nuw i8, ptr %.lcssa233, i64 8 ; 2 uses
  %.not2028.i = icmp eq ptr %.sroa.013.027.i, %.lcssa236
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2028.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14pdqsort_detail22partial_insertion_sortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEbT_SG_T0_.exit100.thread, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %._crit_edge, %bb.d
  %.sroa.013.030.i = phi ptr [ %.sroa.013.0.i, %bb.d ], [ %.sroa.013.027.i, %._crit_edge ] ; 5 uses
  %.pn29.i = phi ptr [ %.sroa.013.030.i, %bb.d ], [ %.lcssa233, %._crit_edge ] ; 5 uses
  %i.h = load i32, ptr %.sroa.013.030.i, align 4, !tbaa !338
  %i.i = load i32, ptr %.pn29.i, align 4, !tbaa !338 ; 2 uses
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph31.i
  %i.k = load i64, ptr %.sroa.013.030.i, align 4  ; 2 uses
  %.sroa.04.0.extract.trunc.i = trunc i64 %i.k to i32
  store i32 %i.i, ptr %.sroa.013.030.i, align 4, !tbaa !347
  %i.l = getelementptr inbounds nuw i8, ptr %.pn29.i, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !338
  %i.n = getelementptr inbounds nuw i8, ptr %.pn29.i, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !348
  %.not2122.i = icmp eq ptr %.pn29.i, %.lcssa233
  br i1 %.not2122.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.0.024.i = phi ptr [ %i.o, %bb.c ], [ %.pn29.i, %bb.b ] ; 5 uses
  %i.o = getelementptr i8, ptr %.sroa.0.024.i, i64 -8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !338  ; 2 uses
  %i.q = icmp sgt i32 %i.p, %.sroa.04.0.extract.trunc.i
  br i1 %i.q, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.sroa.06.0.lcssa.i = phi ptr [ %.lcssa233, %bb.b ], [ %.sroa.0.024.i, %.lr.ph.i ], [ %.lcssa233, %bb.c ]
  store i64 %i.k, ptr %.sroa.06.0.lcssa.i, align 4
  br label %bb.d

end_hunk_1
begin_hunk_2_@_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_:bb.a
  %i.b = load i64, ptr %i.a, align 8, !tbaa !432  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !317
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !422, !noalias !7188 ; 2 uses
  %.idx = shl nsw i64 %i.b, 3
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %.idx
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !315  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not4.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.j, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.05.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.h, %bb.b ]
  %i.j = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i) #27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i, !llvm.loop !3

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
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #27
  %.not23 = icmp eq ptr %i.s, %i.f
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !109

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit ], [ true, %.preheader ], [ %i.r, %bb.c ], [ %i.r, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container8flat_mapIiiSt4lessIiENS2_12small_vectorISt4pairIiiELm7EvvEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESG_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.69") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #24 ; 8 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !376
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !376
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !422
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !423
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 7, ptr %i.d, align 8, !tbaa !424
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load i64, ptr %i.d, align 8, !tbaa !424  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !331  ; 2 uses
  %i.h = icmp eq ptr %i.b, %i.g
  br i1 %i.h, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.i) #23
  br label %.body

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !427
  ret void

.body:                                            ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #26
  resume { ptr, i32 } %i.e
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container13flat_multimapIiiSt4lessIiENS2_12small_vectorISt4pairIiiELm7EvvEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESG_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.73") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #24 ; 8 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !376
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !376
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !422
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !423
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 7, ptr %i.d, align 8, !tbaa !424
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load i64, ptr %i.d, align 8, !tbaa !424  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !331  ; 2 uses
  %i.h = icmp eq ptr %i.b, %i.g
  br i1 %i.h, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = shl i64 %i.f, 3
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.i) #23
  br label %.body

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !430
  ret void

.body:                                            ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #26
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 7 uses
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.a = load ptr, ptr %0, align 8, !tbaa !422, !noalias !7211 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !432, !noalias !7211 ; 4 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.c ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7212)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7213)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !424, !noalias !7214
  %i.k = sub i64 %i.j, %i.c
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !344

bb.b:                                             ; preds = %bb.a
  %.not15.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep49) ]
  %wide.vec = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !338, !alias.scope !7215, !noalias !7214
  %wide.vec54 = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !338, !alias.scope !7215, !noalias !7214
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !7216, !noalias !7214
  store <4 x i32> %wide.vec54, ptr %next.gep49, align 4, !tbaa !338, !alias.scope !7216, !noalias !7214
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !7198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader63

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
  %i.w = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !7214
  store i32 %i.w, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !7214
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !338, !noalias !7214
  store i32 %i.z, ptr %i.x, align 4, !tbaa !338, !noalias !7214
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ac = add i64 %.018.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !7199

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader63
  %.018.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader63 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.v, 3
  br i1 %i.ad, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i) ]
  %i.ae = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !7214
  store i32 %i.ae, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !7214
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !338, !noalias !7214
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !338, !noalias !7214
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !338, !noalias !7214
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !338, !noalias !7214
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !338, !noalias !7214
  store i32 %i.an, ptr %i.al, align 4, !tbaa !338, !noalias !7214
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !338, !noalias !7214
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !338, !noalias !7214
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !338, !noalias !7214
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !338, !noalias !7214
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !338, !noalias !7214
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !338, !noalias !7214
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !338, !noalias !7214
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !338, !noalias !7214
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.bc = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7200

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.b
  %i.bd = add i64 %i.c, %i.h                      ; 2 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !423, !noalias !7214
  store ptr %i.d, ptr %6, align 8, !tbaa !350, !alias.scope !7214
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESJ_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.h, ptr %1)
  %.pre = load ptr, ptr %6, align 8, !tbaa !331
  %.pre25 = load ptr, ptr %0, align 8, !tbaa !422, !noalias !7217
  %.pre26 = load i64, ptr %i.b, align 8, !tbaa !432, !noalias !7217
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.be = phi i64 [ %i.bd, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre26, %bb.c ] ; 2 uses
  %i.bf = phi ptr [ %i.a, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre25, %bb.c ] ; 2 uses
  %i.bg = phi ptr [ %i.d, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 4 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.be ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit
  store ptr %i.bg, ptr %4, align 8, !tbaa !350
  store ptr %i.bh, ptr %5, align 8, !tbaa !350
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.bn, i1 false)
  %i.bp = sub nuw nsw i64 64, %i.bo
  call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %i.bp, i1 noundef zeroext true)
  %.pre27 = load ptr, ptr %6, align 8, !tbaa !331
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !422, !noalias !7218
  %.pre29 = load i64, ptr %i.b, align 8, !tbaa !432, !noalias !7218
  br label %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit

_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit, %bb.d
  %i.bq = phi i64 [ %i.be, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit ], [ %.pre29, %bb.d ]
  %i.br = phi ptr [ %i.bf, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit ], [ %.pre28, %bb.d ] ; 2 uses
  %i.bs = phi ptr [ %i.bg, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit ], [ %.pre27, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %i.bs, ptr %8, align 8, !tbaa !350
  call void @llvm.experimental.noalias.scope.decl(metadata !7218)
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bq
  store ptr %i.bt, ptr %9, align 8, !tbaa !350, !alias.scope !7218
  store ptr %i.br, ptr %10, align 8, !tbaa !350, !alias.scope !7219
  store ptr %i.bs, ptr %11, align 8, !tbaa !350
  call void @_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_T0_SG_T1_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11)
  %i.bu = load ptr, ptr %7, align 8, !tbaa !350   ; 3 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !350   ; 8 uses
  %.not = icmp eq ptr %i.bu, %i.bv
  %i.bw = load ptr, ptr %0, align 8, !tbaa !422, !noalias !7220 ; 4 uses
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !432, !noalias !7220 ; 3 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx ; 2 uses
  %.not.i = icmp eq ptr %i.bu, %i.by
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 3
  %i.cd = sub i64 %i.bx, %i.cc                    ; 2 uses
  store i64 %i.cd, ptr %i.b, align 8, !tbaa !423, !noalias !7221
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit: ; preds = %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.ce = phi i64 [ %i.bx, %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit ], [ %i.cd, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  br i1 %.not, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ce ; 2 uses
  %i.cg = icmp eq ptr %i.bw, %i.bv
  %i.ch = icmp eq ptr %i.bv, %i.cf
  %or.cond.i.i = or i1 %i.cg, %i.ch
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.ci = load i32, ptr %i.bv, align 4, !tbaa !338
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.cl, %bb.g ], [ %i.bw, %.preheader.i.i ] ; 4 uses
  %i.cj = load i32, ptr %.0.i.i, align 4, !tbaa !338
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.bv
  br i1 %i.cm, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !27

bb.h:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !338
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.025.i.i = phi ptr [ %i.cf, %bb.h ], [ %i.cp, %bb.k ] ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !338
  %i.cr = icmp slt i32 %i.cq, %i.co
  br i1 %i.cr, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.cs = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.ct = ptrtoint ptr %.0.i.i to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = ashr exact i64 %i.cu, 3
  %i.cw = ptrtoint ptr %.025.i.i to i64
  %i.cx = sub i64 %i.cw, %i.cs
  %i.cy = ashr exact i64 %i.cx, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.cv, i64 noundef %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.k:                                             ; preds = %bb.i
  %i.cz = icmp eq ptr %i.cp, %i.bv
  br i1 %i.cz, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.i, !llvm.loop !28

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %bb.j, %bb.e, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESB_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_12small_vectorIS4_Lm7EvvEEE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator", align 8 ; 6 uses
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.a = load ptr, ptr %0, align 8, !tbaa !422, !noalias !7234 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !432, !noalias !7234 ; 3 uses
  %i.d = getelementptr [8 x i8], ptr %i.a, i64 %i.c ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7235)
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7236)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !424, !noalias !7237
  %i.k = sub i64 %i.j, %i.c
  %.not.i.i = icmp ugt i64 %i.h, %i.k
  br i1 %.not.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !344

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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep33) ]
  %wide.vec = load <4 x i32>, ptr %next.gep35, align 4, !tbaa !338, !alias.scope !7238, !noalias !7237
  %wide.vec38 = load <4 x i32>, ptr %next.gep36, align 4, !tbaa !338, !alias.scope !7238, !noalias !7237
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !7239, !noalias !7237
  store <4 x i32> %wide.vec38, ptr %next.gep33, align 4, !tbaa !338, !alias.scope !7239, !noalias !7237
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !7231

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader47

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
  %i.w = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !7237
  store i32 %i.w, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !7237
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !338, !noalias !7237
  store i32 %i.z, ptr %i.x, align 4, !tbaa !338, !noalias !7237
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ac = add i64 %.018.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !7232

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader47
  %.018.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader47 ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ad = icmp ult i64 %i.v, 3
  br i1 %i.ad, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i) ]
  %i.ae = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !7237
  store i32 %i.ae, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !7237
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !338, !noalias !7237
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !338, !noalias !7237
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !338, !noalias !7237
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !338, !noalias !7237
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !338, !noalias !7237
  store i32 %i.an, ptr %i.al, align 4, !tbaa !338, !noalias !7237
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !338, !noalias !7237
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !338, !noalias !7237
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !338, !noalias !7237
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !338, !noalias !7237
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !338, !noalias !7237
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !338, !noalias !7237
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !338, !noalias !7237
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !338, !noalias !7237
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.bc = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !7233

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !423, !noalias !7237
  %i.be = add i64 %i.bd, %i.h                     ; 2 uses
  store i64 %i.be, ptr %i.b, align 8, !tbaa !423, !noalias !7237
  store ptr %i.d, ptr %5, align 8, !tbaa !350, !alias.scope !7237
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESJ_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.d, i64 noundef %i.h, ptr %1)
  %.pre = load ptr, ptr %5, align 8, !tbaa !331
  %.pre17 = load i64, ptr %i.b, align 8, !tbaa !432
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.c
  %i.bf = phi i64 [ %i.be, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre17, %bb.c ]
  %i.bg = phi ptr [ %i.d, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre, %bb.c ] ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !422
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef %i.bg, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bn = load ptr, ptr %5, align 8, !tbaa !331   ; 7 uses
  %i.bo = load ptr, ptr %0, align 8, !tbaa !422   ; 3 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !432
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = icmp eq ptr %i.bo, %i.bn
  %i.bs = icmp eq ptr %i.bn, %i.bq
  %or.cond.i.i = or i1 %i.br, %i.bs
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit
  %i.bt = load i32, ptr %i.bn, align 4, !tbaa !338
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.bw, %bb.e ], [ %i.bo, %.preheader.i.i ] ; 4 uses
  %i.bu = load i32, ptr %.0.i.i, align 4, !tbaa !338
  %i.bv = icmp slt i32 %i.bt, %i.bu
  br i1 %i.bv, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bn
  br i1 %i.bx, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.d, !llvm.loop !27

bb.f:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !338
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.025.i.i = phi ptr [ %i.bq, %bb.f ], [ %i.ca, %bb.i ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !338
  %i.cc = icmp slt i32 %i.cb, %i.bz
  br i1 %i.cc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.cd = ptrtoint ptr %i.bn to i64               ; 2 uses
  %i.ce = ptrtoint ptr %.0.i.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3
  %i.ch = ptrtoint ptr %.025.i.i to i64
  %i.ci = sub i64 %i.ch, %i.cd
  %i.cj = ashr exact i64 %i.ci, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.cg, i64 noundef %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ck = icmp eq ptr %i.ca, %i.bn
  br i1 %i.ck, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.g, !llvm.loop !28

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSG_ISH_Lb1EEET_SK_PNS_11move_detail13disable_if_orIvNSL_14is_convertibleISK_mEENSB_17is_input_iteratorISK_Xsr21has_iterator_categoryISK_EE5valueEEENSL_5bool_ILb0EEESS_E4typeE.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorISt4pairIiiELm7EvvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEENS0_12vec_iteratorIPS3_Lb0EEESJ_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !424  ; 6 uses
  %i.c = sub i64 1152921504606846975, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !423  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.6) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 1152921504606846975
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !344

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.6) #22
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #28 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !422    ; 7 uses
  %i.t = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !432  ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = icmp ne ptr %i.s, %2
  %i.z = icmp ne ptr %i.s, null                   ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.z, %i.y
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i, !prof !367

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 4 %i.s, i64 %i.v, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  br label %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 5 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader27, label %vector.ph

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
  %next.gep16 = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ag ; 2 uses
  %next.gep18 = getelementptr i8, ptr %4, i64 %i.af
  %next.gep19 = getelementptr i8, ptr %4, i64 %i.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep16) ]
  %wide.vec = load <4 x i32>, ptr %next.gep18, align 4, !tbaa !338
  %wide.vec21 = load <4 x i32>, ptr %next.gep19, align 4, !tbaa !338
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338
  store <4 x i32> %wide.vec21, ptr %next.gep16, align 4, !tbaa !338
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !7240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader27

.lr.ph.i.i.i.i.preheader27:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.01417.i.i.i.i.ph = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.sroa.0.016.i.i.i.i.ph = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader27, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader27 ]
  %.01417.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader27 ] ; 3 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader27 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.ai = load <2 x i32>, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !338
  store <2 x i32> %i.ai, ptr %.01417.i.i.i.i, align 4, !tbaa !338
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.al = add i64 %.018.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7241

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %i.am = icmp ne ptr %2, %i.x
  %i.an = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.an, %i.am
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIiiEEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, !prof !367

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.ap = ptrtoint ptr %i.x to i64
  %i.aq = sub i64 %i.ap, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr nonnull align 4 %2, i64 %i.aq, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIiiEEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIiiEEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = icmp ne ptr %i.ar, %i.s
  %or.cond.not = select i1 %i.z, i1 %i.as, i1 false
  br i1 %or.cond.not, label %bb.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mSI_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIiiEEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i
  %i.at = load i64, ptr %i.a, align 8, !tbaa !424
  %i.au = shl i64 %i.at, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.au) #23
  %.pre = load i64, ptr %i.d, align 8, !tbaa !423
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mSI_mT_.exit

_ZN5boost9container6vectorISt4pairIiiENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNSA_4pairIiiEEEEEEEEvPS3_mSI_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIiiEEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i, %bb.i
  %i.av = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorISt4pairIiiENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPNS9_4pairIiiEEEEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.r, ptr %1, align 8, !tbaa !422
  %i.aw = add i64 %i.av, %3
  store i64 %i.aw, ptr %i.d, align 8, !tbaa !423
  store i64 %i.o, ptr %i.a, align 8, !tbaa !368
  %i.ax = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.ax, ptr %0, align 8, !tbaa !350
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !422, !noalias !7278 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !432, !noalias !7279 ; 2 uses
  %.idx = shl i64 %i.c, 3                         ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx
  %i.e = load ptr, ptr %1, align 8, !tbaa !422, !noalias !7280 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !432, !noalias !7281
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
  %i.k = load i32, ptr %.sroa.02.0.i, align 4, !tbaa !347 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !347  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i

_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i:          ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !348  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !348  ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i

_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i: ; preds = %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i
  %i.t = icmp slt i32 %i.r, %i.p
  br i1 %i.t, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 8
  %.not.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !81

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.a
  %i.w = phi ptr [ %i.e, %bb.a ], [ %scevgep, %bb.d ]
  %i.x = icmp ne ptr %i.w, %i.h
  br label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit

_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit: ; preds = %.lr.ph.i.i, %bb.b, %bb.c, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i, %._crit_edge.i.i
  %.0.i.i = phi i1 [ %i.x, %._crit_edge.i.i ], [ true, %bb.c ], [ false, %bb.b ], [ true, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i ], [ false, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i ], [ false, %.lr.ph.i.i ]
  ret i1 %.0.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containergtERKNS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !422, !noalias !7318 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !432, !noalias !7319 ; 2 uses
  %.idx.i = shl i64 %i.c, 3                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  %i.e = load ptr, ptr %0, align 8, !tbaa !422, !noalias !7320 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !432, !noalias !7321
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
  br i1 %i.j, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESA_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.k = load i32, ptr %.sroa.02.0.i.i, align 4, !tbaa !347 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !347  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESA_.exit, label %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i

_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i:        ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !348  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !348  ; 2 uses
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESA_.exit, label %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i

_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i: ; preds = %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i
  %i.t = icmp slt i32 %i.r, %i.p
  br i1 %i.t, label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESA_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.u, %i.d
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !81

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.a
  %i.w = phi ptr [ %i.e, %bb.a ], [ %scevgep.i, %bb.d ]
  %i.x = icmp ne ptr %i.w, %i.h
  br label %_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESA_.exit

_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESA_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i, %._crit_edge.i.i.i
  %.0.i.i.i = phi i1 [ %i.x, %._crit_edge.i.i.i ], [ false, %.lr.ph.i.i.i ], [ false, %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i.i ], [ true, %_ZNK5boost9intrusive14algo_pred_lessclISt4pairIiiES4_EEbRKT_RKT0_.exit.i.i.i ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0.i.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerleERKNS0_8flat_mapIiiSt4lessIiENS0_12small_vectorISt4pairIiiELm7EvvEEEESA_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !422, !noalias !7358 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !432, !noalias !7359 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test20CheckEqualContainersINS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt3mapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_:bb.a
  br i1 %.not4.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.05.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.g, %bb.b ]
  %i.i = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i) #27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %.lr.ph.i.i ]
  %.not13 = icmp eq i64 %.0.lcssa.i.i, %i.b
  br i1 %.not13, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.019.026 = phi ptr [ %i.r, %bb.c ], [ %0, %.preheader ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.s, %bb.c ], [ %i.g, %.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 32
  %i.l = load <2 x i32>, ptr %.sroa.019.026, align 4
  %i.m = load <2 x i32>, ptr %i.k, align 4
  %i.n = icmp eq <2 x i32> %i.l, %i.m             ; 2 uses
  %i.o = extractelement <2 x i1> %i.n, i64 0
  %i.p = extractelement <2 x i1> %i.n, i64 1
  %i.q = select i1 %i.o, i1 %i.p, i1 false        ; 3 uses
  br i1 %i.q, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 8 ; 2 uses
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #27
  %.not23 = icmp eq ptr %i.r, %i.e
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !120

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit ], [ true, %.preheader ], [ %i.q, %bb.c ], [ %i.q, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESt8multimapIiiS5_SaIS7_IKiiEEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4000
  %i.b = load i64, ptr %i.a, align 8, !tbaa !444  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !317
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.idx = shl nsw i64 %i.b, 3
  %i.e = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !315  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not4.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.05.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.g, %bb.b ]
  %i.i = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i) #27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, label %.lr.ph.i.i, !llvm.loop !3

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %.lr.ph.i.i ]
  %.not13 = icmp eq i64 %.0.lcssa.i.i, %i.b
  br i1 %.not13, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.019.026 = phi ptr [ %i.r, %bb.c ], [ %0, %.preheader ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.s, %bb.c ], [ %i.g, %.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 32
  %i.l = load <2 x i32>, ptr %.sroa.019.026, align 4
  %i.m = load <2 x i32>, ptr %i.k, align 4
  %i.n = icmp eq <2 x i32> %i.l, %i.m             ; 2 uses
  %i.o = extractelement <2 x i1> %i.n, i64 0
  %i.p = extractelement <2 x i1> %i.n, i64 1
  %i.q = select i1 %i.o, i1 %i.p, i1 false        ; 3 uses
  br i1 %i.q, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 8 ; 2 uses
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #27
  %.not23 = icmp eq ptr %i.r, %i.e
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !121

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorISt4pairIKiiEEEENS_7movelib9iter_sizeIT_E4typeES9_S9_.exit ], [ true, %.preheader ], [ %i.q, %bb.c ], [ %i.q, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container8flat_mapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESG_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.106") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(4008) ptr @_Znwm(i64 noundef 4008) #24 ; 4 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !376
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !376
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4000
  store i64 0, ptr %i.b, align 8, !tbaa !442
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(4008) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit unwind label %bb.b

_ZN5boost9container8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !9130
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4008) #26
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib11make_uniqueINS_9container13flat_multimapIiiSt4lessIiENS2_13static_vectorISt4pairIiiELm500EvEEEEJNS_13move_iteratorIPNS2_3dtl4pairIiiEEEESG_EEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.boost::movelib::unique_ptr.110") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(4008) ptr @_Znwm(i64 noundef 4008) #24 ; 4 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !376
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !376
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4000
  store i64 0, ptr %i.b, align 8, !tbaa !442
  invoke void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(4008) %i.a, ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload)
          to label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit unwind label %bb.b

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEC2INS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEET_SG_.exit: ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !9131
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4008) #26
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE19insert_unique_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %8 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::vec_iterator", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4000 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !444, !noalias !9152 ; 5 uses
  %.idx24 = shl i64 %i.b, 3                       ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %.idx24    ; 15 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = sub i64 500, %i.b
  %.not.i.i = icmp ugt i64 %i.g, %i.h
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !344

bb.b:                                             ; preds = %bb.a
  %.not15.i.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader62, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.i = getelementptr i8, ptr %0, i64 %.idx24
  %i.j = getelementptr i8, ptr %i.i, i64 %i.f
  %bound0 = icmp ult ptr %i.c, %2
  %bound1 = icmp ult ptr %1, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader62, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  %i.k = and i64 %i.g, 3
  %i.l = shl nsw i64 %n.vec, 3                    ; 2 uses
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 3                        ; 3 uses
  %i.p = or disjoint i64 %i.o, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.o ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.c, i64 %i.p ; 2 uses
  %next.gep50 = getelementptr i8, ptr %1, i64 %i.o
  %next.gep51 = getelementptr i8, ptr %1, i64 %i.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep48) ]
  %wide.vec = load <4 x i32>, ptr %next.gep50, align 4, !tbaa !338, !alias.scope !9153, !noalias !9154
  %wide.vec53 = load <4 x i32>, ptr %next.gep51, align 4, !tbaa !338, !alias.scope !9153, !noalias !9154
  store <4 x i32> %wide.vec, ptr %next.gep, align 8, !tbaa !338, !alias.scope !9155, !noalias !9154
  store <4 x i32> %wide.vec53, ptr %next.gep48, align 8, !tbaa !338, !alias.scope !9155, !noalias !9154
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !9141

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i.preheader62

.lr.ph.i.i.i.i.i.i.preheader62:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.k, %middle.block ] ; 4 uses
  %.01417.i.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.m, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.n, %middle.block ] ; 2 uses
  %i.r = add nsw i64 %.018.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader62, %.lr.ph.i.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.prol = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.prol ], [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader62 ]
  %.01417.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader62 ] ; 4 uses
  %.sroa.0.016.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader62 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i.prol) ]
  %i.s = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !9154
  store i32 %i.s, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !9154
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !338, !noalias !9154
  store i32 %i.v, ptr %i.t, align 4, !tbaa !338, !noalias !9154
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.y = add i64 %.018.i.i.i.i.i.i.prol, -1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !9142

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader62
  %.018.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader62 ], [ %i.y, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader62 ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader62 ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.z = icmp ult i64 %i.r, 3
  br i1 %i.z, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i) ]
  %i.aa = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !9154
  store i32 %i.aa, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !9154
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !338, !noalias !9154
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !338, !noalias !9154
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !338, !noalias !9154
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !338, !noalias !9154
  %i.ah = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !338, !noalias !9154
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !338, !noalias !9154
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !338, !noalias !9154
  store i32 %i.am, ptr %i.al, align 4, !tbaa !338, !noalias !9154
  %i.an = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !338, !noalias !9154
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !338, !noalias !9154
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !338, !noalias !9154
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !338, !noalias !9154
  %i.at = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !338, !noalias !9154
  store i32 %i.av, ptr %i.at, align 4, !tbaa !338, !noalias !9154
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.ay = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9143

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22, !noalias !9154
  unreachable

_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.b
  %i.az = add i64 %i.b, %i.g                      ; 2 uses
  store i64 %i.az, ptr %i.a, align 8, !tbaa !442, !noalias !9154
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ba = icmp eq ptr %2, %1
  br i1 %i.ba, label %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit
  %.idx = shl nsw i64 %i.az, 3
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %.idx
  store ptr %i.c, ptr %4, align 8, !tbaa !350
  store ptr %i.bb, ptr %5, align 8, !tbaa !350
  %i.bc = ashr exact i64 %i.f, 3
  %i.bd = lshr i64 %i.bc, 1
  %i.be = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.bd, i1 false)
  %i.bf = sub nuw nsw i64 64, %i.be
  call void @_ZN5boost7movelib14pdqsort_detail12pdqsort_loopINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_SG_T0_NS0_9iter_sizeISG_E4typeEb(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %i.bf, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !444, !noalias !9156
  br label %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit

_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit: ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit, %bb.d
  %i.bg = phi i64 [ %i.b, %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit ], [ %.pre, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.c, ptr %7, align 8, !tbaa !350
  call void @llvm.experimental.noalias.scope.decl(metadata !9156)
  %i.bh = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bg
  store ptr %i.bh, ptr %8, align 8, !tbaa !350, !alias.scope !9156
  store ptr %0, ptr %9, align 8, !tbaa !350, !alias.scope !9157
  store ptr %i.c, ptr %10, align 8, !tbaa !350
  call void @_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPSt4pairIiiELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEET_SF_SF_T0_SG_T1_(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  %i.bi = load ptr, ptr %6, align 8, !tbaa !350   ; 3 uses
  %.not = icmp eq ptr %i.bi, %i.c
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !444, !noalias !9158 ; 3 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bj ; 2 uses
  %.not.i = icmp eq ptr %i.bi, %i.bk
  br i1 %.not.i, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3
  %i.bp = sub i64 %i.bj, %i.bo                    ; 2 uses
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !442, !noalias !9159
  br label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit

_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit: ; preds = %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.bq = phi i64 [ %i.bj, %_ZN5boost7movelib7pdqsortINS_9container12vec_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_T0_.exit ], [ %i.bp, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ]
  br i1 %.not, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit
  %.idx25 = shl nuw nsw i64 %i.bq, 3              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.idx25
  %i.bs = icmp eq i64 %i.b, 0
  %i.bt = icmp eq i64 %.idx24, %.idx25
  %or.cond.i.i = or i1 %i.bs, %i.bt
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.e
  %i.bu = load i32, ptr %i.c, align 8, !tbaa !338
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.bx, %bb.g ], [ %0, %.preheader.i.i ] ; 4 uses
  %i.bv = load i32, ptr %.0.i.i, align 4, !tbaa !338
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.c
  br i1 %i.by, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !27

bb.h:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !338
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.025.i.i = phi ptr [ %i.br, %bb.h ], [ %i.cb, %bb.k ] ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !338
  %i.cd = icmp slt i32 %i.cc, %i.ca
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ce = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.cf = ptrtoint ptr %.0.i.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  %i.ci = ptrtoint ptr %.025.i.i to i64
  %i.cj = sub i64 %i.ci, %i.ce
  %i.ck = ashr exact i64 %i.cj, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.ch, i64 noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.k:                                             ; preds = %bb.i
  %i.cl = icmp eq ptr %i.cb, %i.c
  br i1 %i.cl, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.i, !llvm.loop !28

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %bb.j, %bb.e, %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEESA_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13static_vectorIS4_Lm500EvEEE18insert_equal_rangeINS_13move_iteratorIPNS1_4pairIiiEEEEEEvT_SI_(ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %.not = icmp eq ptr %1, %2
  br i1 %.not, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4000 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !444, !noalias !9172 ; 4 uses
  %.idx13 = shl i64 %i.b, 3                       ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %.idx13    ; 12 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 8 uses
  %i.h = sub i64 500, %i.b
  %.not.i.i = icmp ugt i64 %i.g, %i.h
  br i1 %.not.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.preheader, !prof !344

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader46, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.i = getelementptr i8, ptr %0, i64 %.idx13
  %i.j = getelementptr i8, ptr %i.i, i64 %i.f
  %bound0 = icmp ult ptr %i.c, %2
  %bound1 = icmp ult ptr %1, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader46, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  %i.k = and i64 %i.g, 3
  %i.l = shl nsw i64 %n.vec, 3                    ; 2 uses
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 3                        ; 3 uses
  %i.p = or disjoint i64 %i.o, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.o ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.c, i64 %i.p ; 2 uses
  %next.gep34 = getelementptr i8, ptr %1, i64 %i.o
  %next.gep35 = getelementptr i8, ptr %1, i64 %i.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep32) ]
  %wide.vec = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !338, !alias.scope !9173, !noalias !9174
  %wide.vec37 = load <4 x i32>, ptr %next.gep35, align 4, !tbaa !338, !alias.scope !9173, !noalias !9174
  store <4 x i32> %wide.vec, ptr %next.gep, align 8, !tbaa !338, !alias.scope !9175, !noalias !9174
  store <4 x i32> %wide.vec37, ptr %next.gep32, align 8, !tbaa !338, !alias.scope !9175, !noalias !9174
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !9169

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i.preheader46

.lr.ph.i.i.i.i.i.i.preheader46:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.i.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.k, %middle.block ] ; 4 uses
  %.01417.i.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.m, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.n, %middle.block ] ; 2 uses
  %i.r = add nsw i64 %.018.i.i.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader46, %.lr.ph.i.i.i.i.i.i.prol
  %.018.i.i.i.i.i.i.prol = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i.i.prol ], [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader46 ]
  %.01417.i.i.i.i.i.i.prol = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ], [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader46 ] ; 4 uses
  %.sroa.0.016.i.i.i.i.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader46 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader46 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i.prol) ]
  %i.s = load i32, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !9174
  store i32 %i.s, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !338, !noalias !9174
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !338, !noalias !9174
  store i32 %i.v, ptr %i.t, align 4, !tbaa !338, !noalias !9174
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.y = add i64 %.018.i.i.i.i.i.i.prol, -1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !9170

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader46
  %.018.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader46 ], [ %i.y, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader46 ], [ %i.x, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader46 ], [ %i.w, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.z = icmp ult i64 %i.r, 3
  br i1 %i.z, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i) ]
  %i.aa = load i32, ptr %.sroa.0.016.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !9174
  store i32 %i.aa, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !338, !noalias !9174
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !338, !noalias !9174
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !338, !noalias !9174
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !338, !noalias !9174
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !338, !noalias !9174
  %i.ah = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !338, !noalias !9174
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !338, !noalias !9174
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !338, !noalias !9174
  store i32 %i.am, ptr %i.al, align 4, !tbaa !338, !noalias !9174
  %i.an = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !338, !noalias !9174
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !338, !noalias !9174
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 24
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !338, !noalias !9174
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !338, !noalias !9174
  %i.at = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !338, !noalias !9174
  store i32 %i.av, ptr %i.at, align 4, !tbaa !338, !noalias !9174
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 32
  %i.ay = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i.i.i.i.i.3 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9171

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #22, !noalias !9174
  unreachable

_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block
  %i.az = load i64, ptr %i.a, align 8, !tbaa !442, !noalias !9174
  %i.ba = add i64 %i.az, %i.g                     ; 2 uses
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !442, !noalias !9174
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bb = ptrtoint ptr %i.c to i64                ; 2 uses
  %i.bc = sub nsw i64 %i.ba, %i.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_(ptr noundef nonnull %i.c, i64 noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !444
  %.idx = shl nuw nsw i64 %i.bd, 3                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.bf = icmp eq i64 %i.b, 0
  %i.bg = icmp eq i64 %.idx13, %.idx
  %or.cond.i.i = or i1 %i.bf, %i.bg
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit
  %i.bh = load i32, ptr %i.c, align 8, !tbaa !338
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.bk, %bb.e ], [ %0, %.preheader.i.i ] ; 4 uses
  %i.bi = load i32, ptr %.0.i.i, align 4, !tbaa !338
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.c
  br i1 %i.bl, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.d, !llvm.loop !27

bb.f:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !338
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.025.i.i = phi ptr [ %i.be, %bb.f ], [ %i.bo, %bb.i ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.025.i.i, i64 -8 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !338
  %i.bq = icmp slt i32 %i.bp, %i.bn
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.br = ptrtoint ptr %.0.i.i to i64
  %i.bs = sub i64 %i.bb, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = ptrtoint ptr %.025.i.i to i64
  %i.bv = sub i64 %i.bu, %i.bb
  %i.bw = ashr exact i64 %i.bv, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.bt, i64 noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit

bb.i:                                             ; preds = %bb.g
  %i.bx = icmp eq ptr %i.bo, %i.c
  br i1 %i.bx, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit, label %bb.g, !llvm.loop !28

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_13static_vectorISt4pairIiiELm500EvEENS1_23flat_tree_value_compareISt4lessIiES5_NS1_9select1stIiEEEEEEvRT_NSD_8iteratorET0_NS_11move_detail5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %bb.h, %_ZN5boost9container6vectorISt4pairIiiENS0_3dtl24static_storage_allocatorIS3_Lm500ELm0ELb1EEEvE6insertINS_13move_iteratorIPNS4_4pairIiiEEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS4_17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSJ_5bool_ILb0EEESQ_E4typeE.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl24static_storage_allocatorISt4pairIiiELm500ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() local_unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZN5boost9container15throw_bad_allocEv() #22
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerltERKNS0_8flat_mapIiiSt4lessIiENS0_13static_vectorISt4pairIiiELm500EvEEEESA_(ptr noundef nonnull align 8 dereferenceable(4008) %0, ptr noundef nonnull align 8 dereferenceable(4008) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4000
  %i.b = load i64, ptr %i.a, align 8, !tbaa !444, !noalias !9196 ; 2 uses
  %.idx = shl i64 %i.b, 3                         ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4000
  %i.e = load i64, ptr %i.d, align 8, !tbaa !444, !noalias !9197
  %i.f = getelementptr inbounds [8 x i8], ptr %1, i64 %i.e ; 2 uses
  %.not2.i.i = icmp eq i64 %i.b, 0
  br i1 %.not2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %1, i64 %.idx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.d
  %.sroa.02.0.i = phi ptr [ %i.t, %bb.d ], [ %1, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.g = phi ptr [ %i.s, %bb.d ], [ %0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.h = icmp eq ptr %.sroa.02.0.i, %i.f
  br i1 %i.h, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.i = load i32, ptr %.sroa.02.0.i, align 4, !tbaa !347 ; 2 uses
  %i.j = load i32, ptr %i.g, align 4, !tbaa !347  ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp slt i32 %i.j, %i.i
  br i1 %i.l, label %_ZN5boost9intrusive28algo_lexicographical_compareINS_9container12vec_iteratorIPSt4pairIiiELb1EEES7_EEbT_S8_T0_S9_.exit, label %_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i

_ZStltIiiEbRKSt4pairIT_T0_ES5_.exit.i.i:          ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 4
end_hunk_3
begin_hunk_4_@_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE5eraseENS0_14deque_iteratorIPS3_Lb1ELj0ELj0EmEES7_:bb.a
  %i.ia = phi ptr [ %i.jb, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i.1 ], [ %.unr155, %.lr.ph.i22.i44.prol.loopexit ] ; 2 uses
  %i.ib = phi ptr [ %i.jc, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i.1 ], [ %.unr156, %.lr.ph.i22.i44.prol.loopexit ] ; 3 uses
  %.06.i23.i = phi ptr [ %i.iu, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i.1 ], [ %.06.i23.i.unr, %.lr.ph.i22.i44.prol.loopexit ] ; 5 uses
  %.035.i24.i = phi i64 [ %i.ip, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i.1 ], [ %.035.i24.i.unr, %.lr.ph.i22.i44.prol.loopexit ]
  %i.ic = load i32, ptr %.06.i23.i, align 4, !tbaa !338, !noalias !21063
  store i32 %i.ic, ptr %i.ib, align 4, !tbaa !347, !noalias !21063
  %i.id = getelementptr inbounds nuw i8, ptr %.06.i23.i, i64 4
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !338, !noalias !21063
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !348, !noalias !21063
  %i.ig = getelementptr inbounds nuw i8, ptr %.06.i23.i, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 8 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 1024
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %bb.y, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i, !prof !344

bb.y:                                             ; preds = %.lr.ph.i22.i44
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !331, !noalias !21063 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i: ; preds = %bb.y, %.lr.ph.i22.i44
  %.pre46.i95 = phi ptr [ %.pre46.i96, %.lr.ph.i22.i44 ], [ %i.il, %bb.y ]
  %i.im = phi ptr [ %i.hz, %.lr.ph.i22.i44 ], [ %i.il, %bb.y ] ; 2 uses
  %i.in = phi ptr [ %i.ia, %.lr.ph.i22.i44 ], [ %i.ik, %bb.y ] ; 2 uses
  %i.io = phi ptr [ %i.ih, %.lr.ph.i22.i44 ], [ %i.il, %bb.y ] ; 3 uses
  %i.ip = add nsw i64 %.035.i24.i, -2             ; 2 uses
  %i.iq = load i32, ptr %i.ig, align 4, !tbaa !338, !noalias !21063
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !347, !noalias !21063
  %i.ir = getelementptr inbounds nuw i8, ptr %.06.i23.i, i64 12
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !338, !noalias !21063
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  store i32 %i.is, ptr %i.it, align 4, !tbaa !348, !noalias !21063
  %i.iu = getelementptr inbounds nuw i8, ptr %.06.i23.i, i64 16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.io, i64 8 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 1024
  %i.ix = icmp eq ptr %i.iv, %i.iw
  br i1 %i.ix, label %bb.z, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i.1, !prof !344

bb.z:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !331, !noalias !21063 ; 3 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i.1

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i.1: ; preds = %bb.z, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i
  %.pre46.i95.1 = phi ptr [ %.pre46.i95, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i ], [ %i.iz, %bb.z ] ; 2 uses
  %i.ja = phi ptr [ %i.im, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i ], [ %i.iz, %bb.z ]
  %i.jb = phi ptr [ %i.in, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i ], [ %i.iy, %bb.z ] ; 2 uses
  %i.jc = phi ptr [ %i.iv, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i ], [ %i.iz, %bb.z ] ; 2 uses
  %.not.i26.i.1 = icmp eq i64 %i.ip, 0
  br i1 %.not.i26.i.1, label %_ZN5boost9container6move_nIPSt4pairIiiENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit27.i, label %.lr.ph.i22.i44, !llvm.loop !214

_ZN5boost9container6move_nIPSt4pairIiiENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit27.i: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i.1, %.lr.ph.i22.i44.prol.loopexit
  %.pre46.i95.lcssa = phi ptr [ %.pre46.i95.lcssa.unr, %.lr.ph.i22.i44.prol.loopexit ], [ %.pre46.i95.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i.1 ]
  %.lcssa147 = phi ptr [ %.lcssa147.unr, %.lr.ph.i22.i44.prol.loopexit ], [ %i.jb, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i.1 ] ; 2 uses
  %.lcssa146 = phi ptr [ %.lcssa146.unr, %.lr.ph.i22.i44.prol.loopexit ], [ %i.jc, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i25.i.1 ]
  %i.jd = sub nuw i64 %.01738.i, %i.hl            ; 2 uses
  %.not.i45 = icmp eq i64 %i.jd, 0
  br i1 %.not.i45, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS3_Lb1ELj0ELj0EmEEmNS5_IS6_Lb0ELj0ELj0EmEE.exit, label %.lr.ph.i43, !llvm.loop !215

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS3_Lb1ELj0ELj0EmEEmNS5_IS6_Lb0ELj0ELj0EmEE.exit: ; preds = %_ZN5boost9container6move_nIPSt4pairIiiENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit27.i, %_ZN5boost9container6move_nIPSt4pairIiiENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.je = phi ptr [ %.promoted41.i, %_ZN5boost9container6move_nIPSt4pairIiiENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i ], [ %.lcssa147, %_ZN5boost9container6move_nIPSt4pairIiiENS0_14deque_iteratorIS4_Lb0ELj0ELj0EmEEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit27.i ] ; 2 uses
  %i.jf = icmp ult ptr %i.je, %.sink.i33
  br i1 %i.jf, label %.lr.ph.i.i47, label %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit49

.lr.ph.i.i47:                                     ; preds = %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS3_Lb1ELj0ELj0EmEEmNS5_IS6_Lb0ELj0ELj0EmEE.exit, %.lr.ph.i.i47
  %.06.i.i48.pn = phi ptr [ %.06.i.i48, %.lr.ph.i.i47 ], [ %i.je, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS3_Lb1ELj0ELj0EmEEmNS5_IS6_Lb0ELj0ELj0EmEE.exit ]
  %.06.i.i48 = getelementptr inbounds nuw i8, ptr %.06.i.i48.pn, i64 8 ; 3 uses
  %i.jg = load ptr, ptr %.06.i.i48, align 8, !tbaa !331
  tail call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef 1024) #23
  %i.jh = icmp ult ptr %.06.i.i48, %.sink.i33
  br i1 %i.jh, label %.lr.ph.i.i47, label %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit49.loopexit, !llvm.loop !205

_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit49.loopexit: ; preds = %.lr.ph.i.i47
  %.pre = load i64, ptr %i.x, align 8, !tbaa !521
  br label %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit49

_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit49: ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit49.loopexit, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS3_Lb1ELj0ELj0EmEEmNS5_IS6_Lb0ELj0ELj0EmEE.exit
  %i.ji = phi i64 [ %.pre, %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit49.loopexit ], [ %i.y, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS3_Lb1ELj0ELj0EmEEmNS5_IS6_Lb0ELj0ELj0EmEE.exit ]
  %i.jj = sub i64 %i.ji, %.0.i
  store i64 %i.jj, ptr %i.x, align 8, !tbaa !521
  %i.jk = load ptr, ptr %1, align 8, !tbaa !519, !noalias !21064 ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i50, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit, label %.split.i.i.i51

.split.i.i.i51:                                   ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit49
  %i.jl = load i64, ptr %i.z, align 8, !tbaa !520, !noalias !21065
  %i.jm = add i64 %i.jl, %i.bc
  br label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit.sink.split

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit.sink.split: ; preds = %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE5clearEv.exit, %.split.i.i.i26, %.split.i.i.i51
  %.sink139 = phi i64 [ %i.jm, %.split.i.i.i51 ], [ %i.fj, %.split.i.i.i26 ], [ %i.an, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE5clearEv.exit ] ; 2 uses
  %.sink = phi ptr [ %i.jk, %.split.i.i.i51 ], [ %i.fi, %.split.i.i.i26 ], [ %i.ao, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE5clearEv.exit ]
  %i.jn = lshr i64 %.sink139, 7
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.sink, i64 %i.jn ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !331, !noalias !345
  %i.jq = and i64 %.sink139, 127
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jq
  br label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit: ; preds = %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit.sink.split, %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit49, %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE5clearEv.exit
  %.sink1.i27.sink = phi ptr [ null, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE5clearEv.exit ], [ null, %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit ], [ null, %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit49 ], [ %i.jr, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit.sink.split ]
  %.sink.i28.sink = phi ptr [ null, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE5clearEv.exit ], [ null, %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit ], [ null, %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE39prot_deallocate_nodes_if_not_reservableEPPS4_SA_.exit49 ], [ %i.jo, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE3endEv.exit.sink.split ]
  store ptr %.sink1.i27.sink, ptr %0, align 8, !tbaa !525
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i28.sink, ptr %i.js, align 8, !tbaa !526
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE25priv_insert_back_aux_implINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !519
  %.not.i.i = icmp eq ptr %i.a, null              ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 127
  %i.e = xor i64 %i.d, 127                        ; 2 uses
  %i.f = select i1 %.not.i.i, i64 0, i64 %i.e
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %bb.b, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE29priv_reserve_elements_at_backEm.exit

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = sub i64 %2, %i.e
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEESB_mb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h, i1 noundef zeroext false)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !521, !noalias !21082
  br label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE29priv_reserve_elements_at_backEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !520
  br label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE29priv_reserve_elements_at_backEm.exit

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE29priv_reserve_elements_at_backEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.c ], [ %i.j, %bb.d ] ; 3 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !519, !noalias !21083 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZNK5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit, label %.split.i

.split.i:                                         ; preds = %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE29priv_reserve_elements_at_backEm.exit
  %i.m = lshr i64 %i.k, 7
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !331, !noalias !21083
  %i.p = and i64 %i.k, 127
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  br label %_ZNK5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit

_ZNK5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit: ; preds = %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE29priv_reserve_elements_at_backEm.exit, %.split.i
  %i.r = phi ptr [ %i.q, %.split.i ], [ null, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE29priv_reserve_elements_at_backEm.exit ] ; 9 uses
  %.sink = phi ptr [ %i.n, %.split.i ], [ null, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE29priv_reserve_elements_at_backEm.exit ] ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !525
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.s, align 8, !tbaa !526
  %.not.i.i4 = icmp eq i64 %2, 0
  br i1 %.not.i.i4, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_.exit, label %bb.e, !prof !344

bb.e:                                             ; preds = %_ZNK5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit
  %i.t = load ptr, ptr %.sink, align 8, !tbaa !331
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = ashr exact i64 %i.w, 3
  %i.y = sub nsw i64 128, %i.x
  %i.z = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.y) ; 8 uses
  %.not15.i.i.i.i = icmp eq i64 %i.w, 1024
  br i1 %.not15.i.i.i.i, label %.loopexit40.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.z, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader58, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = shl i64 %i.z, 3                         ; 2 uses
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.aa
  %i.ac = getelementptr i8, ptr %3, i64 %i.aa
  %bound0 = icmp ult ptr %i.r, %i.ac
  %bound1 = icmp ult ptr %3, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader58, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.ad = and i64 %i.z, 3
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.r, i64 %i.ae
  %i.ag = getelementptr i8, ptr %3, i64 %i.ae     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 3 uses
  %i.ai = or disjoint i64 %i.ah, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ah ; 2 uses
  %next.gep15 = getelementptr i8, ptr %i.r, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %3, i64 %i.ah
  %next.gep18 = getelementptr i8, ptr %3, i64 %i.ai
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep15) ]
  %wide.vec = load <4 x i32>, ptr %next.gep17, align 4, !tbaa !338, !alias.scope !21084
  %wide.vec20 = load <4 x i32>, ptr %next.gep18, align 4, !tbaa !338, !alias.scope !21084
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !21085, !noalias !21084
  store <4 x i32> %wide.vec20, ptr %next.gep15, align 4, !tbaa !338, !alias.scope !21085, !noalias !21084
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !21073

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit40.i.i, label %.lr.ph.i.i.i.i.preheader58

.lr.ph.i.i.i.i.preheader58:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.ph = phi i64 [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ] ; 4 uses
  %.01417.i.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.i.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %i.ak = add i64 %.018.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader58, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.prol ], [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader58 ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.prol ], [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader58 ] ; 4 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader58 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader58 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.al = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !338
  store i32 %i.al, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !338
  %i.am = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !338
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !338
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 8 ; 2 uses
  %i.ar = add i64 %.018.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !21074

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader58
  %.lcssa59.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader58 ], [ %i.ap, %.lr.ph.i.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader58 ], [ %i.ar, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader58 ], [ %i.aq, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader58 ], [ %i.ap, %.lr.ph.i.i.i.i.prol ]
  %i.as = icmp ult i64 %i.ak, 3
  br i1 %i.as, label %.loopexit40.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.br, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.at = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !338
  store i32 %i.at, ptr %.01417.i.i.i.i, align 4, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !338
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !338
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !338
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !338
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !338
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !338
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !338
  %i.bg = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 20
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !338
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !338
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 24
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !338
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !338
  %i.bm = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 28
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 28
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !338
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !338
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 32
  %i.br = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i.i.i.3, label %.loopexit40.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21075

.loopexit40.i.i:                                  ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %.promoted.i.i = phi ptr [ %3, %bb.e ], [ %i.ag, %middle.block ], [ %.lcssa59.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.bp, %.lr.ph.i.i.i.i ]
  %i.bs = sub i64 %2, %i.z                        ; 2 uses
  %.not2842.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not2842.i.i, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit40.i.i, %.loopexit
  %.lcssa45.i.i = phi ptr [ %.lcssa, %.loopexit ], [ %.promoted.i.i, %.loopexit40.i.i ] ; 7 uses
  %.044.i.i = phi ptr [ %i.bt, %.loopexit ], [ %.sink, %.loopexit40.i.i ]
  %.02643.i.i = phi i64 [ %i.dm, %.loopexit ], [ %i.bs, %.loopexit40.i.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 8 ; 2 uses
  %i.bu = tail call i64 @llvm.umin.i64(i64 %.02643.i.i, i64 128) ; 7 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !331 ; 7 uses
  %min.iters.check32 = icmp ult i64 %.02643.i.i, 4
  br i1 %min.iters.check32, label %.lr.ph.i.i31.i.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %.lr.ph.i.i
  %i.bw = shl nuw nsw i64 %i.bu, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bv, i64 %i.bw
  %scevgep27 = getelementptr i8, ptr %.lcssa45.i.i, i64 %i.bw
  %bound028 = icmp ult ptr %i.bv, %scevgep27
  %bound129 = icmp ult ptr %.lcssa45.i.i, %scevgep
  %found.conflict30 = and i1 %bound028, %bound129
  br i1 %found.conflict30, label %.lr.ph.i.i31.i.i.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %vector.memcheck26
  %n.vec34 = and i64 %i.bu, 252                   ; 3 uses
  %i.bx = and i64 %i.bu, 3
  %i.by = shl nuw nsw i64 %n.vec34, 3             ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bv, i64 %i.by
  %i.ca = getelementptr i8, ptr %.lcssa45.i.i, i64 %i.by ; 2 uses
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph33
  %index36 = phi i64 [ 0, %vector.ph33 ], [ %index.next51, %vector.body35 ] ; 2 uses
  %i.cb = shl i64 %index36, 3                     ; 3 uses
  %i.cc = or disjoint i64 %i.cb, 16               ; 2 uses
  %next.gep37 = getelementptr i8, ptr %i.bv, i64 %i.cb ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.bv, i64 %i.cc ; 2 uses
  %next.gep41 = getelementptr i8, ptr %.lcssa45.i.i, i64 %i.cb
  %next.gep42 = getelementptr i8, ptr %.lcssa45.i.i, i64 %i.cc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep37) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep39) ]
  %wide.vec43 = load <4 x i32>, ptr %next.gep41, align 4, !tbaa !338, !alias.scope !21086
  %wide.vec46 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !338, !alias.scope !21086
  store <4 x i32> %wide.vec43, ptr %next.gep37, align 4, !tbaa !338, !alias.scope !21087, !noalias !21086
  store <4 x i32> %wide.vec46, ptr %next.gep39, align 4, !tbaa !338, !alias.scope !21087, !noalias !21086
  %index.next51 = add nuw i64 %index36, 4         ; 2 uses
  %i.cd = icmp eq i64 %index.next51, %n.vec34
  br i1 %i.cd, label %middle.block52, label %vector.body35, !llvm.loop !21079

middle.block52:                                   ; preds = %vector.body35
  %cmp.n53 = icmp eq i64 %i.bu, %n.vec34
  br i1 %cmp.n53, label %.loopexit, label %.lr.ph.i.i31.i.i.preheader

.lr.ph.i.i31.i.i.preheader:                       ; preds = %vector.memcheck26, %.lr.ph.i.i, %middle.block52
  %.018.i.i32.i.i.ph = phi i64 [ %i.bu, %vector.memcheck26 ], [ %i.bu, %.lr.ph.i.i ], [ %i.bx, %middle.block52 ] ; 4 uses
  %.01417.i.i33.i.i.ph = phi ptr [ %i.bv, %vector.memcheck26 ], [ %i.bv, %.lr.ph.i.i ], [ %i.bz, %middle.block52 ] ; 2 uses
  %.sroa.0.016.i.i34.i.i.ph = phi ptr [ %.lcssa45.i.i, %vector.memcheck26 ], [ %.lcssa45.i.i, %.lr.ph.i.i ], [ %i.ca, %middle.block52 ] ; 2 uses
  %i.ce = add nsw i64 %.018.i.i32.i.i.ph, -1
  %xtraiter60 = and i64 %.018.i.i32.i.i.ph, 3     ; 2 uses
  %lcmp.mod61.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod61.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol

.lr.ph.i.i31.i.i.prol:                            ; preds = %.lr.ph.i.i31.i.i.preheader, %.lr.ph.i.i31.i.i.prol
  %.018.i.i32.i.i.prol = phi i64 [ %i.cl, %.lr.ph.i.i31.i.i.prol ], [ %.018.i.i32.i.i.ph, %.lr.ph.i.i31.i.i.preheader ]
  %.01417.i.i33.i.i.prol = phi ptr [ %i.ck, %.lr.ph.i.i31.i.i.prol ], [ %.01417.i.i33.i.i.ph, %.lr.ph.i.i31.i.i.preheader ] ; 4 uses
  %.sroa.0.016.i.i34.i.i.prol = phi ptr [ %i.cj, %.lr.ph.i.i31.i.i.prol ], [ %.sroa.0.016.i.i34.i.i.ph, %.lr.ph.i.i31.i.i.preheader ] ; 3 uses
  %prol.iter62 = phi i64 [ %prol.iter62.next, %.lr.ph.i.i31.i.i.prol ], [ 0, %.lr.ph.i.i31.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.i.prol) ]
  %i.cf = load i32, ptr %.sroa.0.016.i.i34.i.i.prol, align 4, !tbaa !338
  store i32 %i.cf, ptr %.01417.i.i33.i.i.prol, align 4, !tbaa !338
  %i.cg = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i.prol, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i.prol, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !338
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !338
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i.prol, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i.prol, i64 8 ; 2 uses
  %i.cl = add i64 %.018.i.i32.i.i.prol, -1        ; 2 uses
  %prol.iter62.next = add i64 %prol.iter62, 1     ; 2 uses
  %prol.iter62.cmp.not = icmp eq i64 %prol.iter62.next, %xtraiter60
  br i1 %prol.iter62.cmp.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol, !llvm.loop !21080

.lr.ph.i.i31.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i31.i.i.prol, %.lr.ph.i.i31.i.i.preheader
  %.lcssa57.unr = phi ptr [ poison, %.lr.ph.i.i31.i.i.preheader ], [ %i.cj, %.lr.ph.i.i31.i.i.prol ]
  %.018.i.i32.i.i.unr = phi i64 [ %.018.i.i32.i.i.ph, %.lr.ph.i.i31.i.i.preheader ], [ %i.cl, %.lr.ph.i.i31.i.i.prol ]
  %.01417.i.i33.i.i.unr = phi ptr [ %.01417.i.i33.i.i.ph, %.lr.ph.i.i31.i.i.preheader ], [ %i.ck, %.lr.ph.i.i31.i.i.prol ]
  %.sroa.0.016.i.i34.i.i.unr = phi ptr [ %.sroa.0.016.i.i34.i.i.ph, %.lr.ph.i.i31.i.i.preheader ], [ %i.cj, %.lr.ph.i.i31.i.i.prol ]
  %i.cm = icmp ult i64 %i.ce, 3
  br i1 %i.cm, label %.loopexit, label %.lr.ph.i.i31.i.i

.lr.ph.i.i31.i.i:                                 ; preds = %.lr.ph.i.i31.i.i.prol.loopexit, %.lr.ph.i.i31.i.i
  %.018.i.i32.i.i = phi i64 [ %i.dl, %.lr.ph.i.i31.i.i ], [ %.018.i.i32.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ]
  %.01417.i.i33.i.i = phi ptr [ %i.dk, %.lr.ph.i.i31.i.i ], [ %.01417.i.i33.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i34.i.i = phi ptr [ %i.dj, %.lr.ph.i.i31.i.i ], [ %.sroa.0.016.i.i34.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.i) ]
  %i.cn = load i32, ptr %.sroa.0.016.i.i34.i.i, align 4, !tbaa !338
  store i32 %i.cn, ptr %.01417.i.i33.i.i, align 4, !tbaa !338
  %i.co = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !338
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !338
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 8
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !338
  store i32 %i.ct, ptr %i.cs, align 4, !tbaa !338
  %i.cu = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !338
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !338
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 16
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !338
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !338
  %i.da = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 20
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 20
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !338
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !338
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 24
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !338
  store i32 %i.df, ptr %i.de, align 4, !tbaa !338
  %i.dg = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 28
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 28
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !338
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !338
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 32 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 32
  %i.dl = add i64 %.018.i.i32.i.i, -4             ; 2 uses
  %.not.i.i35.i.i.3 = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i35.i.i.3, label %.loopexit, label %.lr.ph.i.i31.i.i, !llvm.loop !21081

.loopexit:                                        ; preds = %.lr.ph.i.i31.i.i.prol.loopexit, %.lr.ph.i.i31.i.i, %middle.block52
  %.lcssa = phi ptr [ %i.ca, %middle.block52 ], [ %.lcssa57.unr, %.lr.ph.i.i31.i.i.prol.loopexit ], [ %i.dj, %.lr.ph.i.i31.i.i ]
  %i.dm = sub nuw i64 %.02643.i.i, %i.bu          ; 2 uses
  %.not28.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not28.i.i, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !216

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_.exit: ; preds = %.loopexit, %_ZNK5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE14prot_off_to_itEm.exit, %.loopexit40.i.i
  %i.dn = add i64 %i.k, %2
  store i64 %i.dn, ptr %i.b, align 8, !tbaa !521
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE26priv_insert_front_aux_implINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !520  ; 2 uses
  %i.c = and i64 %i.b, 127                        ; 2 uses
  %i.d = icmp ugt i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !519
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sub nuw i64 %2, %i.c
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEESB_mb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.f, i1 noundef zeroext true)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !520, !noalias !21106
  br label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !521
  br label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.c ], [ %i.h, %bb.d ] ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !519, !noalias !21107 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE10prot_startEv.exit, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit
  %i.k = lshr i64 %i.i, 7
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !331, !noalias !21107
  %i.n = and i64 %i.i, 127
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  br label %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE10prot_startEv.exit

_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE10prot_startEv.exit: ; preds = %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit, %.split.i.i
  %.sroa.06.0 = phi ptr [ %i.o, %.split.i.i ], [ null, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit ] ; 3 uses
  %.sroa.5.0 = phi ptr [ %i.l, %.split.i.i ], [ null, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21108)
  %i.p = sub nsw i64 0, %2
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE10prot_startEv.exit
  %i.q = load ptr, ptr %.sroa.5.0, align 8, !tbaa !331, !noalias !21108
  %i.r = ptrtoint ptr %.sroa.06.0 to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = sub nsw i64 %i.u, %2                     ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.v, 128
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds [8 x i8], ptr %.sroa.06.0, i64 %i.p
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.x = icmp sgt i64 %i.v, 0
  %i.y = lshr i64 %i.v, 7                         ; 2 uses
  %i.z = or disjoint i64 %i.y, -144115188075855872
  %i.aa = select i1 %i.x, i64 %i.y, i64 %i.z      ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.5.0, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !331, !noalias !21108
  %i.ad = shl nsw i64 %i.aa, 7
  %i.ae = sub nsw i64 %i.v, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ae
  br label %bb.h

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit: ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE10prot_startEv.exit
  store ptr %.sroa.06.0, ptr %0, align 8, !tbaa !525, !alias.scope !21108
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.ag, align 8, !tbaa !526, !alias.scope !21108
  br label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_.exit

bb.h:                                             ; preds = %bb.f, %bb.g
  %.sroa.6.1.i.ph = phi ptr [ %i.ab, %bb.g ], [ %.sroa.5.0, %bb.f ] ; 3 uses
  %.sroa.0.0.i.ph = phi ptr [ %i.af, %bb.g ], [ %i.w, %bb.f ] ; 9 uses
  store ptr %.sroa.0.0.i.ph, ptr %0, align 8, !tbaa !525, !alias.scope !21108
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.1.i.ph, ptr %i.ah, align 8, !tbaa !526, !alias.scope !21108
  %i.ai = load ptr, ptr %.sroa.6.1.i.ph, align 8, !tbaa !331
  %i.aj = ptrtoint ptr %.sroa.0.0.i.ph to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = ashr exact i64 %i.al, 3
  %i.an = sub nsw i64 128, %i.am
  %i.ao = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.an) ; 8 uses
  %.not15.i.i.i.i = icmp eq i64 %i.al, 1024
  br i1 %.not15.i.i.i.i, label %.loopexit40.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %min.iters.check = icmp ult i64 %i.ao, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ap = shl i64 %i.ao, 3                        ; 2 uses
  %i.aq = getelementptr i8, ptr %.sroa.0.0.i.ph, i64 %i.ap
  %i.ar = getelementptr i8, ptr %3, i64 %i.ap
  %bound0 = icmp ult ptr %.sroa.0.0.i.ph, %i.ar
  %bound1 = icmp ult ptr %3, %i.aq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, -4                      ; 3 uses
  %i.as = and i64 %i.ao, 3
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %.sroa.0.0.i.ph, i64 %i.at
  %i.av = getelementptr i8, ptr %3, i64 %i.at     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 3 uses
  %i.ax = or disjoint i64 %i.aw, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.sroa.0.0.i.ph, i64 %i.aw ; 2 uses
  %next.gep22 = getelementptr i8, ptr %.sroa.0.0.i.ph, i64 %i.ax ; 2 uses
  %next.gep24 = getelementptr i8, ptr %3, i64 %i.aw
  %next.gep25 = getelementptr i8, ptr %3, i64 %i.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep22) ]
  %wide.vec = load <4 x i32>, ptr %next.gep24, align 4, !tbaa !338, !alias.scope !21109
  %wide.vec27 = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !338, !alias.scope !21109
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !21110, !noalias !21109
  store <4 x i32> %wide.vec27, ptr %next.gep22, align 4, !tbaa !338, !alias.scope !21110, !noalias !21109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !21097

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.loopexit40.i.i, label %.lr.ph.i.i.i.i.preheader65

.lr.ph.i.i.i.i.preheader65:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.018.i.i.i.i.ph = phi i64 [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ] ; 4 uses
  %.01417.i.i.i.i.ph = phi ptr [ %.sroa.0.0.i.ph, %vector.memcheck ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.i.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ] ; 2 uses
  %i.az = add i64 %.018.i.i.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader65, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.prol ], [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.prol ], [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ] ; 4 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.be, %.lr.ph.i.i.i.i.prol ], [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader65 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.ba = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !338
  store i32 %i.ba, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !338
  %i.bb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !338
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !338
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 8 ; 2 uses
  %i.bg = add i64 %.018.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !21098

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader65
  %.lcssa66.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader65 ], [ %i.be, %.lr.ph.i.i.i.i.prol ]
  %.018.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ], [ %i.bg, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %.01417.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ], [ %i.bf, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader65 ], [ %i.be, %.lr.ph.i.i.i.i.prol ]
  %i.bh = icmp ult i64 %i.az, 3
  br i1 %i.bh, label %.loopexit40.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.cg, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.bi = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !338
  store i32 %i.bi, ptr %.01417.i.i.i.i, align 4, !tbaa !338
  %i.bj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !338
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !338
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !338
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !338
  %i.bp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !338
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !338
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !338
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !338
  %i.bv = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 20
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 20
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !338
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !338
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 24
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !338
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !338
  %i.cb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 28
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !338
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !338
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 32
  %i.cg = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.i.3, label %.loopexit40.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21099

.loopexit40.i.i:                                  ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %bb.h
  %.promoted.i.i = phi ptr [ %3, %bb.h ], [ %i.av, %middle.block ], [ %.lcssa66.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ce, %.lr.ph.i.i.i.i ]
  %i.ch = sub i64 %2, %i.ao                       ; 2 uses
  %.not2842.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not2842.i.i, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit40.i.i, %.loopexit
  %.lcssa45.i.i = phi ptr [ %.lcssa, %.loopexit ], [ %.promoted.i.i, %.loopexit40.i.i ] ; 7 uses
  %.044.i.i = phi ptr [ %i.ci, %.loopexit ], [ %.sroa.6.1.i.ph, %.loopexit40.i.i ]
  %.02643.i.i = phi i64 [ %i.eb, %.loopexit ], [ %i.ch, %.loopexit40.i.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 8 ; 2 uses
  %i.cj = tail call i64 @llvm.umin.i64(i64 %.02643.i.i, i64 128) ; 7 uses
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !331 ; 7 uses
  %min.iters.check39 = icmp ult i64 %.02643.i.i, 4
  br i1 %min.iters.check39, label %.lr.ph.i.i31.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %.lr.ph.i.i
  %i.cl = shl nuw nsw i64 %i.cj, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ck, i64 %i.cl
  %scevgep34 = getelementptr i8, ptr %.lcssa45.i.i, i64 %i.cl
  %bound035 = icmp ult ptr %i.ck, %scevgep34
  %bound136 = icmp ult ptr %.lcssa45.i.i, %scevgep
  %found.conflict37 = and i1 %bound035, %bound136
  br i1 %found.conflict37, label %.lr.ph.i.i31.i.i.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %vector.memcheck33
  %n.vec41 = and i64 %i.cj, 252                   ; 3 uses
  %i.cm = and i64 %i.cj, 3
  %i.cn = shl nuw nsw i64 %n.vec41, 3             ; 2 uses
  %i.co = getelementptr i8, ptr %i.ck, i64 %i.cn
  %i.cp = getelementptr i8, ptr %.lcssa45.i.i, i64 %i.cn ; 2 uses
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph40
  %index43 = phi i64 [ 0, %vector.ph40 ], [ %index.next58, %vector.body42 ] ; 2 uses
  %i.cq = shl i64 %index43, 3                     ; 3 uses
  %i.cr = or disjoint i64 %i.cq, 16               ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.ck, i64 %i.cq ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.ck, i64 %i.cr ; 2 uses
  %next.gep48 = getelementptr i8, ptr %.lcssa45.i.i, i64 %i.cq
  %next.gep49 = getelementptr i8, ptr %.lcssa45.i.i, i64 %i.cr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep44) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep46) ]
  %wide.vec50 = load <4 x i32>, ptr %next.gep48, align 4, !tbaa !338, !alias.scope !21111
  %wide.vec53 = load <4 x i32>, ptr %next.gep49, align 4, !tbaa !338, !alias.scope !21111
  store <4 x i32> %wide.vec50, ptr %next.gep44, align 4, !tbaa !338, !alias.scope !21112, !noalias !21111
  store <4 x i32> %wide.vec53, ptr %next.gep46, align 4, !tbaa !338, !alias.scope !21112, !noalias !21111
  %index.next58 = add nuw i64 %index43, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next58, %n.vec41
  br i1 %i.cs, label %middle.block59, label %vector.body42, !llvm.loop !21103

middle.block59:                                   ; preds = %vector.body42
  %cmp.n60 = icmp eq i64 %i.cj, %n.vec41
  br i1 %cmp.n60, label %.loopexit, label %.lr.ph.i.i31.i.i.preheader

.lr.ph.i.i31.i.i.preheader:                       ; preds = %vector.memcheck33, %.lr.ph.i.i, %middle.block59
  %.018.i.i32.i.i.ph = phi i64 [ %i.cj, %vector.memcheck33 ], [ %i.cj, %.lr.ph.i.i ], [ %i.cm, %middle.block59 ] ; 4 uses
  %.01417.i.i33.i.i.ph = phi ptr [ %i.ck, %vector.memcheck33 ], [ %i.ck, %.lr.ph.i.i ], [ %i.co, %middle.block59 ] ; 2 uses
  %.sroa.0.016.i.i34.i.i.ph = phi ptr [ %.lcssa45.i.i, %vector.memcheck33 ], [ %.lcssa45.i.i, %.lr.ph.i.i ], [ %i.cp, %middle.block59 ] ; 2 uses
  %i.ct = add nsw i64 %.018.i.i32.i.i.ph, -1
  %xtraiter67 = and i64 %.018.i.i32.i.i.ph, 3     ; 2 uses
  %lcmp.mod68.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod68.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol

.lr.ph.i.i31.i.i.prol:                            ; preds = %.lr.ph.i.i31.i.i.preheader, %.lr.ph.i.i31.i.i.prol
  %.018.i.i32.i.i.prol = phi i64 [ %i.da, %.lr.ph.i.i31.i.i.prol ], [ %.018.i.i32.i.i.ph, %.lr.ph.i.i31.i.i.preheader ]
  %.01417.i.i33.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i31.i.i.prol ], [ %.01417.i.i33.i.i.ph, %.lr.ph.i.i31.i.i.preheader ] ; 4 uses
  %.sroa.0.016.i.i34.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i31.i.i.prol ], [ %.sroa.0.016.i.i34.i.i.ph, %.lr.ph.i.i31.i.i.preheader ] ; 3 uses
  %prol.iter69 = phi i64 [ %prol.iter69.next, %.lr.ph.i.i31.i.i.prol ], [ 0, %.lr.ph.i.i31.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.i.prol) ]
  %i.cu = load i32, ptr %.sroa.0.016.i.i34.i.i.prol, align 4, !tbaa !338
  store i32 %i.cu, ptr %.01417.i.i33.i.i.prol, align 4, !tbaa !338
  %i.cv = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i.prol, i64 4
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i.prol, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !338
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !338
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i.prol, i64 8 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i.prol, i64 8 ; 2 uses
  %i.da = add i64 %.018.i.i32.i.i.prol, -1        ; 2 uses
  %prol.iter69.next = add i64 %prol.iter69, 1     ; 2 uses
  %prol.iter69.cmp.not = icmp eq i64 %prol.iter69.next, %xtraiter67
  br i1 %prol.iter69.cmp.not, label %.lr.ph.i.i31.i.i.prol.loopexit, label %.lr.ph.i.i31.i.i.prol, !llvm.loop !21104

.lr.ph.i.i31.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i31.i.i.prol, %.lr.ph.i.i31.i.i.preheader
  %.lcssa64.unr = phi ptr [ poison, %.lr.ph.i.i31.i.i.preheader ], [ %i.cy, %.lr.ph.i.i31.i.i.prol ]
  %.018.i.i32.i.i.unr = phi i64 [ %.018.i.i32.i.i.ph, %.lr.ph.i.i31.i.i.preheader ], [ %i.da, %.lr.ph.i.i31.i.i.prol ]
  %.01417.i.i33.i.i.unr = phi ptr [ %.01417.i.i33.i.i.ph, %.lr.ph.i.i31.i.i.preheader ], [ %i.cz, %.lr.ph.i.i31.i.i.prol ]
  %.sroa.0.016.i.i34.i.i.unr = phi ptr [ %.sroa.0.016.i.i34.i.i.ph, %.lr.ph.i.i31.i.i.preheader ], [ %i.cy, %.lr.ph.i.i31.i.i.prol ]
  %i.db = icmp ult i64 %i.ct, 3
  br i1 %i.db, label %.loopexit, label %.lr.ph.i.i31.i.i

.lr.ph.i.i31.i.i:                                 ; preds = %.lr.ph.i.i31.i.i.prol.loopexit, %.lr.ph.i.i31.i.i
  %.018.i.i32.i.i = phi i64 [ %i.ea, %.lr.ph.i.i31.i.i ], [ %.018.i.i32.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ]
  %.01417.i.i33.i.i = phi ptr [ %i.dz, %.lr.ph.i.i31.i.i ], [ %.01417.i.i33.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i34.i.i = phi ptr [ %i.dy, %.lr.ph.i.i31.i.i ], [ %.sroa.0.016.i.i34.i.i.unr, %.lr.ph.i.i31.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.i) ]
  %i.dc = load i32, ptr %.sroa.0.016.i.i34.i.i, align 4, !tbaa !338
  store i32 %i.dc, ptr %.01417.i.i33.i.i, align 4, !tbaa !338
  %i.dd = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !338
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !338
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 8
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !338
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !338
  %i.dj = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 12
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 12
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !338
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !338
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 16
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !338
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !338
  %i.dp = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 20
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 20
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !338
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !338
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 24
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !338
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !338
  %i.dv = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 28
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 28
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !338
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !338
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.i, i64 32 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.i, i64 32
  %i.ea = add i64 %.018.i.i32.i.i, -4             ; 2 uses
  %.not.i.i35.i.i.3 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i35.i.i.3, label %.loopexit, label %.lr.ph.i.i31.i.i, !llvm.loop !21105

.loopexit:                                        ; preds = %.lr.ph.i.i31.i.i.prol.loopexit, %.lr.ph.i.i31.i.i, %middle.block59
  %.lcssa = phi ptr [ %i.cp, %middle.block59 ], [ %.lcssa64.unr, %.lr.ph.i.i31.i.i.prol.loopexit ], [ %i.dy, %.lr.ph.i.i31.i.i ]
  %i.eb = sub nuw i64 %.02643.i.i, %i.cj          ; 2 uses
  %.not28.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not28.i.i, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_.exit, label %.lr.ph.i.i, !llvm.loop !216

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE53priv_insert_segmented_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmT_.exit: ; preds = %.loopexit, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiEl.exit, %.loopexit40.i.i
  %i.ec = sub i64 %i.i, %2
  store i64 %i.ec, ptr %i.a, align 8, !tbaa !520
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmmT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !521  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !520  ; 3 uses
  %i.e = sub i64 %i.b, %i.d                       ; 3 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.h = and i64 %i.d, 127                        ; 2 uses
  %i.i = icmp ugt i64 %3, %i.h
  br i1 %i.i, label %bb.c, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !519
  %.not.i70 = icmp eq ptr %i.j, null
  br i1 %.not.i70, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub nuw i64 %3, %i.h
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEESB_mb(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.k, i1 noundef zeroext true)
  %.pre526 = load i64, ptr %i.c, align 8, !tbaa !520, !noalias !21228
  br label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_initialize_map_and_nodesEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %3)
  %i.l = load i64, ptr %i.a, align 8, !tbaa !521  ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !520
  br label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.m = phi i64 [ %i.d, %bb.b ], [ %.pre526, %bb.d ], [ %i.l, %bb.e ] ; 4 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !519, !noalias !21229, !nonnull !345, !noundef !345
  %i.o = lshr i64 %i.m, 7
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.o ; 18 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !331, !noalias !21229 ; 7 uses
  %i.r = and i64 %i.m, 127                        ; 7 uses
  %.idx = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr i8, ptr %i.q, i64 %.idx    ; 24 uses
  %i.t = sub nsw i64 0, %3
  %.not.i.i71 = icmp eq i64 %3, 0                 ; 2 uses
  br i1 %.not.i.i71, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS7_NS_11move_detail5bool_ILb0EEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE30priv_reserve_elements_at_frontEm.exit
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub nsw i64 %i.r, %3                     ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.v, 128
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmIEl.exit

bb.h:                                             ; preds = %bb.f
  %i.x = icmp sgt i64 %i.v, 0
  %i.y = lshr i64 %i.v, 7                         ; 2 uses
  %i.z = or disjoint i64 %i.y, -144115188075855872
  %i.aa = select i1 %i.x, i64 %i.y, i64 %i.z      ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !331 ; 2 uses
  %i.ad = shl nsw i64 %i.aa, 7
  %i.ae = sub nsw i64 %i.v, %i.ad
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ae
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmIEl.exit

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmIEl.exit: ; preds = %bb.g, %bb.h
  %.pre.i = phi ptr [ %i.q, %bb.g ], [ %i.ac, %bb.h ] ; 4 uses
  %.sroa.0390.0 = phi ptr [ %i.w, %bb.g ], [ %i.af, %bb.h ] ; 9 uses
  %.sroa.8.1 = phi ptr [ %i.p, %bb.g ], [ %i.ab, %bb.h ] ; 10 uses
  %.not65 = icmp ult i64 %2, %3
  br i1 %.not65, label %bb.y, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmIEl.exit
  %i.ag = add nsw i64 %i.r, %3                    ; 4 uses
  %or.cond.i = icmp ult i64 %i.ag, 128
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %3
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit

bb.k:                                             ; preds = %bb.i
  %i.ai = icmp sgt i64 %i.ag, 0
  %i.aj = lshr i64 %i.ag, 7                       ; 2 uses
  %i.ak = or disjoint i64 %i.aj, -144115188075855872
  %i.al = select i1 %i.ai, i64 %i.aj, i64 %i.ak   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !331 ; 2 uses
  %i.ao = shl nsw i64 %i.al, 7
  %i.ap = sub nsw i64 %i.ag, %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEpLEl.exit: ; preds = %bb.k, %bb.j
  %i.ar = phi ptr [ %i.an, %bb.k ], [ %i.q, %bb.j ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmmT_:bb.a
  %.not2334.i = icmp eq i64 %i.ka, 0
  br i1 %.not2334.i, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i
  %.lcssa37.i = phi ptr [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i ], [ %.promoted.i86, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i ] ; 7 uses
  %.036.i = phi ptr [ %i.kb, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i ], [ %i.hy, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i ]
  %.02135.i = phi i64 [ %i.lu, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i ], [ %i.ka, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i ] ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.036.i, i64 8 ; 2 uses
  %i.kc = tail call i64 @llvm.umin.i64(i64 %.02135.i, i64 128) ; 7 uses
  %i.kd = load ptr, ptr %i.kb, align 8, !tbaa !331 ; 7 uses
  %min.iters.check1039 = icmp ult i64 %.02135.i, 4
  br i1 %min.iters.check1039, label %.lr.ph.i.i26.i.preheader, label %vector.memcheck1032

vector.memcheck1032:                              ; preds = %.lr.ph.i87
  %i.ke = shl nuw nsw i64 %i.kc, 3                ; 2 uses
  %scevgep1033 = getelementptr i8, ptr %i.kd, i64 %i.ke
  %scevgep1034 = getelementptr i8, ptr %.lcssa37.i, i64 %i.ke
  %bound01035 = icmp ult ptr %i.kd, %scevgep1034
  %bound11036 = icmp ult ptr %.lcssa37.i, %scevgep1033
  %found.conflict1037 = and i1 %bound01035, %bound11036
  br i1 %found.conflict1037, label %.lr.ph.i.i26.i.preheader, label %vector.ph1040

vector.ph1040:                                    ; preds = %vector.memcheck1032
  %n.vec1041 = and i64 %i.kc, 252                 ; 3 uses
  %i.kf = and i64 %i.kc, 3
  %i.kg = shl nuw nsw i64 %n.vec1041, 3           ; 2 uses
  %i.kh = getelementptr i8, ptr %i.kd, i64 %i.kg
  %i.ki = getelementptr i8, ptr %.lcssa37.i, i64 %i.kg ; 2 uses
  br label %vector.body1042

vector.body1042:                                  ; preds = %vector.body1042, %vector.ph1040
  %index1043 = phi i64 [ 0, %vector.ph1040 ], [ %index.next1056, %vector.body1042 ] ; 2 uses
  %i.kj = shl i64 %index1043, 3                   ; 3 uses
  %i.kk = or disjoint i64 %i.kj, 16               ; 2 uses
  %next.gep1044 = getelementptr i8, ptr %i.kd, i64 %i.kj
  %next.gep1045 = getelementptr i8, ptr %i.kd, i64 %i.kk
  %next.gep1046 = getelementptr i8, ptr %.lcssa37.i, i64 %i.kj
  %next.gep1047 = getelementptr i8, ptr %.lcssa37.i, i64 %i.kk
  %wide.vec1048 = load <4 x i32>, ptr %next.gep1046, align 4, !tbaa !338, !alias.scope !21237
  %wide.vec1051 = load <4 x i32>, ptr %next.gep1047, align 4, !tbaa !338, !alias.scope !21237
  store <4 x i32> %wide.vec1048, ptr %next.gep1044, align 4, !tbaa !338, !alias.scope !21238, !noalias !21237
  store <4 x i32> %wide.vec1051, ptr %next.gep1045, align 4, !tbaa !338, !alias.scope !21238, !noalias !21237
  %index.next1056 = add nuw i64 %index1043, 4     ; 2 uses
  %i.kl = icmp eq i64 %index.next1056, %n.vec1041
  br i1 %i.kl, label %middle.block1057, label %vector.body1042, !llvm.loop !21136

middle.block1057:                                 ; preds = %vector.body1042
  %cmp.n1058 = icmp eq i64 %i.kc, %n.vec1041
  br i1 %cmp.n1058, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i, label %.lr.ph.i.i26.i.preheader

.lr.ph.i.i26.i.preheader:                         ; preds = %vector.memcheck1032, %.lr.ph.i87, %middle.block1057
  %.09.i.i27.i.ph = phi i64 [ %i.kc, %vector.memcheck1032 ], [ %i.kc, %.lr.ph.i87 ], [ %i.kf, %middle.block1057 ] ; 4 uses
  %.048.i.i28.i.ph = phi ptr [ %i.kd, %vector.memcheck1032 ], [ %i.kd, %.lr.ph.i87 ], [ %i.kh, %middle.block1057 ] ; 2 uses
  %.sroa.0.07.i.i29.i.ph = phi ptr [ %.lcssa37.i, %vector.memcheck1032 ], [ %.lcssa37.i, %.lr.ph.i87 ], [ %i.ki, %middle.block1057 ] ; 2 uses
  %i.km = add nsw i64 %.09.i.i27.i.ph, -1
  %xtraiter1203 = and i64 %.09.i.i27.i.ph, 3      ; 2 uses
  %lcmp.mod1204.not = icmp eq i64 %xtraiter1203, 0
  br i1 %lcmp.mod1204.not, label %.lr.ph.i.i26.i.prol.loopexit, label %.lr.ph.i.i26.i.prol

.lr.ph.i.i26.i.prol:                              ; preds = %.lr.ph.i.i26.i.preheader, %.lr.ph.i.i26.i.prol
  %.09.i.i27.i.prol = phi i64 [ %i.kn, %.lr.ph.i.i26.i.prol ], [ %.09.i.i27.i.ph, %.lr.ph.i.i26.i.preheader ]
  %.048.i.i28.i.prol = phi ptr [ %i.kt, %.lr.ph.i.i26.i.prol ], [ %.048.i.i28.i.ph, %.lr.ph.i.i26.i.preheader ] ; 3 uses
  %.sroa.0.07.i.i29.i.prol = phi ptr [ %i.ks, %.lr.ph.i.i26.i.prol ], [ %.sroa.0.07.i.i29.i.ph, %.lr.ph.i.i26.i.preheader ] ; 3 uses
  %prol.iter1205 = phi i64 [ %prol.iter1205.next, %.lr.ph.i.i26.i.prol ], [ 0, %.lr.ph.i.i26.i.preheader ]
  %i.kn = add i64 %.09.i.i27.i.prol, -1           ; 2 uses
  %i.ko = load i32, ptr %.sroa.0.07.i.i29.i.prol, align 4, !tbaa !338
  store i32 %i.ko, ptr %.048.i.i28.i.prol, align 4, !tbaa !338
  %i.kp = getelementptr inbounds nuw i8, ptr %.048.i.i28.i.prol, i64 4
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i.prol, i64 4
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !338
  store i32 %i.kr, ptr %i.kp, align 4, !tbaa !338
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i.prol, i64 8 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.048.i.i28.i.prol, i64 8 ; 2 uses
  %prol.iter1205.next = add i64 %prol.iter1205, 1 ; 2 uses
  %prol.iter1205.cmp.not = icmp eq i64 %prol.iter1205.next, %xtraiter1203
  br i1 %prol.iter1205.cmp.not, label %.lr.ph.i.i26.i.prol.loopexit, label %.lr.ph.i.i26.i.prol, !llvm.loop !21137

.lr.ph.i.i26.i.prol.loopexit:                     ; preds = %.lr.ph.i.i26.i.prol, %.lr.ph.i.i26.i.preheader
  %.lcssa1063.unr = phi ptr [ poison, %.lr.ph.i.i26.i.preheader ], [ %i.ks, %.lr.ph.i.i26.i.prol ]
  %.09.i.i27.i.unr = phi i64 [ %.09.i.i27.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.kn, %.lr.ph.i.i26.i.prol ]
  %.048.i.i28.i.unr = phi ptr [ %.048.i.i28.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.kt, %.lr.ph.i.i26.i.prol ]
  %.sroa.0.07.i.i29.i.unr = phi ptr [ %.sroa.0.07.i.i29.i.ph, %.lr.ph.i.i26.i.preheader ], [ %i.ks, %.lr.ph.i.i26.i.prol ]
  %i.ku = icmp ult i64 %i.km, 3
  br i1 %i.ku, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i, label %.lr.ph.i.i26.i

.lr.ph.i.i26.i:                                   ; preds = %.lr.ph.i.i26.i.prol.loopexit, %.lr.ph.i.i26.i
  %.09.i.i27.i = phi i64 [ %i.ln, %.lr.ph.i.i26.i ], [ %.09.i.i27.i.unr, %.lr.ph.i.i26.i.prol.loopexit ]
  %.048.i.i28.i = phi ptr [ %i.lt, %.lr.ph.i.i26.i ], [ %.048.i.i28.i.unr, %.lr.ph.i.i26.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i29.i = phi ptr [ %i.ls, %.lr.ph.i.i26.i ], [ %.sroa.0.07.i.i29.i.unr, %.lr.ph.i.i26.i.prol.loopexit ] ; 9 uses
  %i.kv = load i32, ptr %.sroa.0.07.i.i29.i, align 4, !tbaa !338
  store i32 %i.kv, ptr %.048.i.i28.i, align 4, !tbaa !338
  %i.kw = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 4
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !338
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !338
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 8
  %i.lb = load i32, ptr %i.kz, align 4, !tbaa !338
  store i32 %i.lb, ptr %i.la, align 4, !tbaa !338
  %i.lc = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 12
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 12
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !338
  store i32 %i.le, ptr %i.lc, align 4, !tbaa !338
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 16
  %i.lh = load i32, ptr %i.lf, align 4, !tbaa !338
  store i32 %i.lh, ptr %i.lg, align 4, !tbaa !338
  %i.li = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 20
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 20
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !338
  store i32 %i.lk, ptr %i.li, align 4, !tbaa !338
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 24
  %i.lm = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 24
  %i.ln = add i64 %.09.i.i27.i, -4                ; 2 uses
  %i.lo = load i32, ptr %i.ll, align 4, !tbaa !338
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !338
  %i.lp = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 28
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 28
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !338
  store i32 %i.lr, ptr %i.lp, align 4, !tbaa !338
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i, i64 32 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.048.i.i28.i, i64 32
  %.not.i.i30.i.3 = icmp eq i64 %i.ln, 0
  br i1 %.not.i.i30.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i, label %.lr.ph.i.i26.i, !llvm.loop !21138

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i: ; preds = %.lr.ph.i.i26.i.prol.loopexit, %.lr.ph.i.i26.i, %middle.block1057
  %.lcssa = phi ptr [ %i.ki, %middle.block1057 ], [ %.lcssa1063.unr, %.lr.ph.i.i26.i.prol.loopexit ], [ %i.ls, %.lr.ph.i.i26.i ]
  %i.lu = sub nuw i64 %.02135.i, %i.kc            ; 2 uses
  %.not23.i = icmp eq i64 %i.lu, 0
  br i1 %.not23.i, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit, label %.lr.ph.i87, !llvm.loop !21139

bb.y:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmIEl.exit
  %i.lv = sub nuw i64 %3, %2                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21239)
  %i.lw = sub nsw i64 %i.r, %i.lv                 ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.lw, 128
  br i1 %or.cond.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.lx = sub nsw i64 0, %i.lv
  %i.ly = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.lx
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.lz = icmp sgt i64 %i.lw, 0
  %i.ma = lshr i64 %i.lw, 7                       ; 2 uses
  %i.mb = or disjoint i64 %i.ma, -144115188075855872
  %i.mc = select i1 %i.lz, i64 %i.ma, i64 %i.mb   ; 2 uses
  %i.md = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.mc ; 2 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !331, !noalias !21239
  %i.mf = shl nsw i64 %i.mc, 7
  %i.mg = sub nsw i64 %i.lw, %i.mf
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.mg
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sroa.6.1.i.ph = phi ptr [ %i.md, %bb.aa ], [ %i.p, %bb.z ] ; 3 uses
  %.sroa.0.0.i.ph = phi ptr [ %i.mh, %bb.aa ], [ %i.ly, %bb.z ] ; 9 uses
  store ptr %.sroa.0.0.i.ph, ptr %0, align 8, !tbaa !525, !alias.scope !21239
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.1.i.ph, ptr %i.mi, align 8, !tbaa !526, !alias.scope !21239
  %i.mj = load ptr, ptr %.sroa.6.1.i.ph, align 8, !tbaa !331
  %i.mk = ptrtoint ptr %.sroa.0.0.i.ph to i64
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = sub i64 %i.mk, %i.ml                    ; 2 uses
  %i.mn = ashr exact i64 %i.mm, 3
  %i.mo = sub nsw i64 128, %i.mn
  %i.mp = tail call i64 @llvm.umin.i64(i64 %i.lv, i64 %i.mo) ; 8 uses
  %.not15.i.i.i = icmp eq i64 %i.mm, 1024
  br i1 %.not15.i.i.i, label %.loopexit40.i, label %.lr.ph.i.i.i91.preheader

.lr.ph.i.i.i91.preheader:                         ; preds = %bb.ab
  %min.iters.check873 = icmp ult i64 %i.mp, 8
  br i1 %min.iters.check873, label %.lr.ph.i.i.i91.preheader1079, label %vector.memcheck874

vector.memcheck874:                               ; preds = %.lr.ph.i.i.i91.preheader
  %i.mq = shl i64 %i.mp, 3                        ; 2 uses
  %i.mr = getelementptr i8, ptr %.sroa.0.0.i.ph, i64 %i.mq
  %i.ms = getelementptr i8, ptr %4, i64 %i.mq
  %bound0875 = icmp ult ptr %.sroa.0.0.i.ph, %i.ms
  %bound1876 = icmp ult ptr %4, %i.mr
  %found.conflict877 = and i1 %bound0875, %bound1876
  br i1 %found.conflict877, label %.lr.ph.i.i.i91.preheader1079, label %vector.ph878

vector.ph878:                                     ; preds = %vector.memcheck874
  %n.vec879 = and i64 %i.mp, -4                   ; 3 uses
  %i.mt = and i64 %i.mp, 3
  %i.mu = shl i64 %n.vec879, 3                    ; 2 uses
  %i.mv = getelementptr i8, ptr %.sroa.0.0.i.ph, i64 %i.mu
  %i.mw = getelementptr i8, ptr %4, i64 %i.mu     ; 2 uses
  br label %vector.body880

vector.body880:                                   ; preds = %vector.body880, %vector.ph878
  %index881 = phi i64 [ 0, %vector.ph878 ], [ %index.next896, %vector.body880 ] ; 2 uses
  %i.mx = shl i64 %index881, 3                    ; 3 uses
  %i.my = or disjoint i64 %i.mx, 16               ; 2 uses
  %next.gep882 = getelementptr i8, ptr %.sroa.0.0.i.ph, i64 %i.mx ; 2 uses
  %next.gep884 = getelementptr i8, ptr %.sroa.0.0.i.ph, i64 %i.my ; 2 uses
  %next.gep886 = getelementptr i8, ptr %4, i64 %i.mx
  %next.gep887 = getelementptr i8, ptr %4, i64 %i.my
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep882) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep884) ]
  %wide.vec888 = load <4 x i32>, ptr %next.gep886, align 4, !tbaa !338, !alias.scope !21240
  %wide.vec891 = load <4 x i32>, ptr %next.gep887, align 4, !tbaa !338, !alias.scope !21240
  store <4 x i32> %wide.vec888, ptr %next.gep882, align 4, !tbaa !338, !alias.scope !21241, !noalias !21240
  store <4 x i32> %wide.vec891, ptr %next.gep884, align 4, !tbaa !338, !alias.scope !21241, !noalias !21240
  %index.next896 = add nuw i64 %index881, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next896, %n.vec879
  br i1 %i.mz, label %middle.block897, label %vector.body880, !llvm.loop !21145

middle.block897:                                  ; preds = %vector.body880
  %cmp.n898 = icmp eq i64 %i.mp, %n.vec879
  br i1 %cmp.n898, label %.loopexit40.i, label %.lr.ph.i.i.i91.preheader1079

.lr.ph.i.i.i91.preheader1079:                     ; preds = %vector.memcheck874, %.lr.ph.i.i.i91.preheader, %middle.block897
  %.018.i.i.i.ph = phi i64 [ %i.mp, %vector.memcheck874 ], [ %i.mp, %.lr.ph.i.i.i91.preheader ], [ %i.mt, %middle.block897 ] ; 4 uses
  %.01417.i.i.i.ph = phi ptr [ %.sroa.0.0.i.ph, %vector.memcheck874 ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.i91.preheader ], [ %i.mv, %middle.block897 ] ; 2 uses
  %.sroa.0.016.i.i.i.ph = phi ptr [ %4, %vector.memcheck874 ], [ %4, %.lr.ph.i.i.i91.preheader ], [ %i.mw, %middle.block897 ] ; 2 uses
  %i.na = add i64 %.018.i.i.i.ph, -1
  %xtraiter1164 = and i64 %.018.i.i.i.ph, 3       ; 2 uses
  %lcmp.mod1165.not = icmp eq i64 %xtraiter1164, 0
  br i1 %lcmp.mod1165.not, label %.lr.ph.i.i.i91.prol.loopexit, label %.lr.ph.i.i.i91.prol

.lr.ph.i.i.i91.prol:                              ; preds = %.lr.ph.i.i.i91.preheader1079, %.lr.ph.i.i.i91.prol
  %.018.i.i.i.prol = phi i64 [ %i.nh, %.lr.ph.i.i.i91.prol ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i91.preheader1079 ]
  %.01417.i.i.i.prol = phi ptr [ %i.ng, %.lr.ph.i.i.i91.prol ], [ %.01417.i.i.i.ph, %.lr.ph.i.i.i91.preheader1079 ] ; 4 uses
  %.sroa.0.016.i.i.i.prol = phi ptr [ %i.nf, %.lr.ph.i.i.i91.prol ], [ %.sroa.0.016.i.i.i.ph, %.lr.ph.i.i.i91.preheader1079 ] ; 3 uses
  %prol.iter1166 = phi i64 [ %prol.iter1166.next, %.lr.ph.i.i.i91.prol ], [ 0, %.lr.ph.i.i.i91.preheader1079 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.prol) ]
  %i.nb = load i32, ptr %.sroa.0.016.i.i.i.prol, align 4, !tbaa !338
  store i32 %i.nb, ptr %.01417.i.i.i.prol, align 4, !tbaa !338
  %i.nc = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.prol, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.prol, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !338
  store i32 %i.ne, ptr %i.nc, align 4, !tbaa !338
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.prol, i64 8 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.prol, i64 8 ; 2 uses
  %i.nh = add i64 %.018.i.i.i.prol, -1            ; 2 uses
  %prol.iter1166.next = add i64 %prol.iter1166, 1 ; 2 uses
  %prol.iter1166.cmp.not = icmp eq i64 %prol.iter1166.next, %xtraiter1164
  br i1 %prol.iter1166.cmp.not, label %.lr.ph.i.i.i91.prol.loopexit, label %.lr.ph.i.i.i91.prol, !llvm.loop !21146

.lr.ph.i.i.i91.prol.loopexit:                     ; preds = %.lr.ph.i.i.i91.prol, %.lr.ph.i.i.i91.preheader1079
  %.lcssa1080.unr = phi ptr [ poison, %.lr.ph.i.i.i91.preheader1079 ], [ %i.nf, %.lr.ph.i.i.i91.prol ]
  %.018.i.i.i.unr = phi i64 [ %.018.i.i.i.ph, %.lr.ph.i.i.i91.preheader1079 ], [ %i.nh, %.lr.ph.i.i.i91.prol ]
  %.01417.i.i.i.unr = phi ptr [ %.01417.i.i.i.ph, %.lr.ph.i.i.i91.preheader1079 ], [ %i.ng, %.lr.ph.i.i.i91.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.ph, %.lr.ph.i.i.i91.preheader1079 ], [ %i.nf, %.lr.ph.i.i.i91.prol ]
  %i.ni = icmp ult i64 %i.na, 3
  br i1 %i.ni, label %.loopexit40.i, label %.lr.ph.i.i.i91

.lr.ph.i.i.i91:                                   ; preds = %.lr.ph.i.i.i91.prol.loopexit, %.lr.ph.i.i.i91
  %.018.i.i.i = phi i64 [ %i.oh, %.lr.ph.i.i.i91 ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i91.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.og, %.lr.ph.i.i.i91 ], [ %.01417.i.i.i.unr, %.lr.ph.i.i.i91.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.of, %.lr.ph.i.i.i91 ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i.i91.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.nj = load i32, ptr %.sroa.0.016.i.i.i, align 4, !tbaa !338
  store i32 %i.nj, ptr %.01417.i.i.i, align 4, !tbaa !338
  %i.nk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.nl = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 4
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !338
  store i32 %i.nm, ptr %i.nk, align 4, !tbaa !338
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 8
  %i.no = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.np = load i32, ptr %i.nn, align 4, !tbaa !338
  store i32 %i.np, ptr %i.no, align 4, !tbaa !338
  %i.nq = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 12
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 12
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !338
  store i32 %i.ns, ptr %i.nq, align 4, !tbaa !338
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  %i.nu = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 16
  %i.nv = load i32, ptr %i.nt, align 4, !tbaa !338
  store i32 %i.nv, ptr %i.nu, align 4, !tbaa !338
  %i.nw = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 20
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 20
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !338
  store i32 %i.ny, ptr %i.nw, align 4, !tbaa !338
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 24
  %i.ob = load i32, ptr %i.nz, align 4, !tbaa !338
  store i32 %i.ob, ptr %i.oa, align 4, !tbaa !338
  %i.oc = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 28
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 28
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !338
  store i32 %i.oe, ptr %i.oc, align 4, !tbaa !338
  %i.of = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 32 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 32
  %i.oh = add i64 %.018.i.i.i, -4                 ; 2 uses
  %.not.i.i.i92.3 = icmp eq i64 %i.oh, 0
  br i1 %.not.i.i.i92.3, label %.loopexit40.i, label %.lr.ph.i.i.i91, !llvm.loop !21147

.loopexit40.i:                                    ; preds = %.lr.ph.i.i.i91.prol.loopexit, %.lr.ph.i.i.i91, %middle.block897, %bb.ab
  %.promoted.i93 = phi ptr [ %4, %bb.ab ], [ %i.mw, %middle.block897 ], [ %.lcssa1080.unr, %.lr.ph.i.i.i91.prol.loopexit ], [ %i.of, %.lr.ph.i.i.i91 ] ; 2 uses
  %i.oi = sub i64 %i.lv, %i.mp                    ; 2 uses
  %.not2842.i = icmp eq i64 %i.oi, 0
  br i1 %.not2842.i, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE52priv_segmented_proxy_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.loopexit40.i, %.loopexit
  %.lcssa45.i = phi ptr [ %.lcssa669, %.loopexit ], [ %.promoted.i93, %.loopexit40.i ] ; 7 uses
  %.044.i = phi ptr [ %i.oj, %.loopexit ], [ %.sroa.6.1.i.ph, %.loopexit40.i ]
  %.02643.i = phi i64 [ %i.qc, %.loopexit ], [ %i.oi, %.loopexit40.i ] ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.044.i, i64 8 ; 2 uses
  %i.ok = tail call i64 @llvm.umin.i64(i64 %.02643.i, i64 128) ; 7 uses
  %i.ol = load ptr, ptr %i.oj, align 8, !tbaa !331 ; 7 uses
  %min.iters.check909 = icmp ult i64 %.02643.i, 4
  br i1 %min.iters.check909, label %.lr.ph.i.i31.i.preheader, label %vector.memcheck902

vector.memcheck902:                               ; preds = %.lr.ph.i94
  %i.om = shl nuw nsw i64 %i.ok, 3                ; 2 uses
  %scevgep903 = getelementptr i8, ptr %i.ol, i64 %i.om
  %scevgep904 = getelementptr i8, ptr %.lcssa45.i, i64 %i.om
  %bound0905 = icmp ult ptr %i.ol, %scevgep904
  %bound1906 = icmp ult ptr %.lcssa45.i, %scevgep903
  %found.conflict907 = and i1 %bound0905, %bound1906
  br i1 %found.conflict907, label %.lr.ph.i.i31.i.preheader, label %vector.ph910

vector.ph910:                                     ; preds = %vector.memcheck902
  %n.vec911 = and i64 %i.ok, 252                  ; 3 uses
  %i.on = and i64 %i.ok, 3
  %i.oo = shl nuw nsw i64 %n.vec911, 3            ; 2 uses
  %i.op = getelementptr i8, ptr %i.ol, i64 %i.oo
  %i.oq = getelementptr i8, ptr %.lcssa45.i, i64 %i.oo ; 2 uses
  br label %vector.body912

vector.body912:                                   ; preds = %vector.body912, %vector.ph910
  %index913 = phi i64 [ 0, %vector.ph910 ], [ %index.next928, %vector.body912 ] ; 2 uses
  %i.or = shl i64 %index913, 3                    ; 3 uses
  %i.os = or disjoint i64 %i.or, 16               ; 2 uses
  %next.gep914 = getelementptr i8, ptr %i.ol, i64 %i.or ; 2 uses
  %next.gep916 = getelementptr i8, ptr %i.ol, i64 %i.os ; 2 uses
  %next.gep918 = getelementptr i8, ptr %.lcssa45.i, i64 %i.or
  %next.gep919 = getelementptr i8, ptr %.lcssa45.i, i64 %i.os
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep914) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep916) ]
  %wide.vec920 = load <4 x i32>, ptr %next.gep918, align 4, !tbaa !338, !alias.scope !21242
  %wide.vec923 = load <4 x i32>, ptr %next.gep919, align 4, !tbaa !338, !alias.scope !21242
  store <4 x i32> %wide.vec920, ptr %next.gep914, align 4, !tbaa !338, !alias.scope !21243, !noalias !21242
  store <4 x i32> %wide.vec923, ptr %next.gep916, align 4, !tbaa !338, !alias.scope !21243, !noalias !21242
  %index.next928 = add nuw i64 %index913, 4       ; 2 uses
  %i.ot = icmp eq i64 %index.next928, %n.vec911
  br i1 %i.ot, label %middle.block929, label %vector.body912, !llvm.loop !21151

middle.block929:                                  ; preds = %vector.body912
  %cmp.n930 = icmp eq i64 %i.ok, %n.vec911
  br i1 %cmp.n930, label %.loopexit, label %.lr.ph.i.i31.i.preheader

.lr.ph.i.i31.i.preheader:                         ; preds = %vector.memcheck902, %.lr.ph.i94, %middle.block929
  %.018.i.i32.i.ph = phi i64 [ %i.ok, %vector.memcheck902 ], [ %i.ok, %.lr.ph.i94 ], [ %i.on, %middle.block929 ] ; 4 uses
  %.01417.i.i33.i.ph = phi ptr [ %i.ol, %vector.memcheck902 ], [ %i.ol, %.lr.ph.i94 ], [ %i.op, %middle.block929 ] ; 2 uses
  %.sroa.0.016.i.i34.i.ph = phi ptr [ %.lcssa45.i, %vector.memcheck902 ], [ %.lcssa45.i, %.lr.ph.i94 ], [ %i.oq, %middle.block929 ] ; 2 uses
  %i.ou = add nsw i64 %.018.i.i32.i.ph, -1
  %xtraiter1167 = and i64 %.018.i.i32.i.ph, 3     ; 2 uses
  %lcmp.mod1168.not = icmp eq i64 %xtraiter1167, 0
  br i1 %lcmp.mod1168.not, label %.lr.ph.i.i31.i.prol.loopexit, label %.lr.ph.i.i31.i.prol

.lr.ph.i.i31.i.prol:                              ; preds = %.lr.ph.i.i31.i.preheader, %.lr.ph.i.i31.i.prol
  %.018.i.i32.i.prol = phi i64 [ %i.pb, %.lr.ph.i.i31.i.prol ], [ %.018.i.i32.i.ph, %.lr.ph.i.i31.i.preheader ]
  %.01417.i.i33.i.prol = phi ptr [ %i.pa, %.lr.ph.i.i31.i.prol ], [ %.01417.i.i33.i.ph, %.lr.ph.i.i31.i.preheader ] ; 4 uses
  %.sroa.0.016.i.i34.i.prol = phi ptr [ %i.oz, %.lr.ph.i.i31.i.prol ], [ %.sroa.0.016.i.i34.i.ph, %.lr.ph.i.i31.i.preheader ] ; 3 uses
  %prol.iter1169 = phi i64 [ %prol.iter1169.next, %.lr.ph.i.i31.i.prol ], [ 0, %.lr.ph.i.i31.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i.prol) ]
  %i.ov = load i32, ptr %.sroa.0.016.i.i34.i.prol, align 4, !tbaa !338
  store i32 %i.ov, ptr %.01417.i.i33.i.prol, align 4, !tbaa !338
  %i.ow = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.prol, i64 4
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.prol, i64 4
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !338
  store i32 %i.oy, ptr %i.ow, align 4, !tbaa !338
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i.prol, i64 8 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i.prol, i64 8 ; 2 uses
  %i.pb = add i64 %.018.i.i32.i.prol, -1          ; 2 uses
  %prol.iter1169.next = add i64 %prol.iter1169, 1 ; 2 uses
  %prol.iter1169.cmp.not = icmp eq i64 %prol.iter1169.next, %xtraiter1167
  br i1 %prol.iter1169.cmp.not, label %.lr.ph.i.i31.i.prol.loopexit, label %.lr.ph.i.i31.i.prol, !llvm.loop !21152

.lr.ph.i.i31.i.prol.loopexit:                     ; preds = %.lr.ph.i.i31.i.prol, %.lr.ph.i.i31.i.preheader
  %.lcssa1078.unr = phi ptr [ poison, %.lr.ph.i.i31.i.preheader ], [ %i.oz, %.lr.ph.i.i31.i.prol ]
  %.018.i.i32.i.unr = phi i64 [ %.018.i.i32.i.ph, %.lr.ph.i.i31.i.preheader ], [ %i.pb, %.lr.ph.i.i31.i.prol ]
  %.01417.i.i33.i.unr = phi ptr [ %.01417.i.i33.i.ph, %.lr.ph.i.i31.i.preheader ], [ %i.pa, %.lr.ph.i.i31.i.prol ]
  %.sroa.0.016.i.i34.i.unr = phi ptr [ %.sroa.0.016.i.i34.i.ph, %.lr.ph.i.i31.i.preheader ], [ %i.oz, %.lr.ph.i.i31.i.prol ]
  %i.pc = icmp ult i64 %i.ou, 3
  br i1 %i.pc, label %.loopexit, label %.lr.ph.i.i31.i

.lr.ph.i.i31.i:                                   ; preds = %.lr.ph.i.i31.i.prol.loopexit, %.lr.ph.i.i31.i
  %.018.i.i32.i = phi i64 [ %i.qb, %.lr.ph.i.i31.i ], [ %.018.i.i32.i.unr, %.lr.ph.i.i31.i.prol.loopexit ]
  %.01417.i.i33.i = phi ptr [ %i.qa, %.lr.ph.i.i31.i ], [ %.01417.i.i33.i.unr, %.lr.ph.i.i31.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i34.i = phi ptr [ %i.pz, %.lr.ph.i.i31.i ], [ %.sroa.0.016.i.i34.i.unr, %.lr.ph.i.i31.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i) ]
  %i.pd = load i32, ptr %.sroa.0.016.i.i34.i, align 4, !tbaa !338
  store i32 %i.pd, ptr %.01417.i.i33.i, align 4, !tbaa !338
  %i.pe = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i, i64 4
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !338
  store i32 %i.pg, ptr %i.pe, align 4, !tbaa !338
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i, i64 8
  %i.pi = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i, i64 8
  %i.pj = load i32, ptr %i.ph, align 4, !tbaa !338
  store i32 %i.pj, ptr %i.pi, align 4, !tbaa !338
  %i.pk = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i, i64 12
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i, i64 12
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !338
  store i32 %i.pm, ptr %i.pk, align 4, !tbaa !338
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i, i64 16
  %i.po = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i, i64 16
  %i.pp = load i32, ptr %i.pn, align 4, !tbaa !338
  store i32 %i.pp, ptr %i.po, align 4, !tbaa !338
  %i.pq = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i, i64 20
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i, i64 20
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !338
  store i32 %i.ps, ptr %i.pq, align 4, !tbaa !338
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i, i64 24
  %i.pu = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i, i64 24
  %i.pv = load i32, ptr %i.pt, align 4, !tbaa !338
  store i32 %i.pv, ptr %i.pu, align 4, !tbaa !338
  %i.pw = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i, i64 28
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i, i64 28
  %i.py = load i32, ptr %i.px, align 4, !tbaa !338
  store i32 %i.py, ptr %i.pw, align 4, !tbaa !338
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i, i64 32 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i, i64 32
  %i.qb = add i64 %.018.i.i32.i, -4               ; 2 uses
  %.not.i.i35.i.3 = icmp eq i64 %i.qb, 0
  br i1 %.not.i.i35.i.3, label %.loopexit, label %.lr.ph.i.i31.i, !llvm.loop !21153

.loopexit:                                        ; preds = %.lr.ph.i.i31.i.prol.loopexit, %.lr.ph.i.i31.i, %middle.block929
  %.lcssa669 = phi ptr [ %i.oq, %middle.block929 ], [ %.lcssa1078.unr, %.lr.ph.i.i31.i.prol.loopexit ], [ %i.pz, %.lr.ph.i.i31.i ] ; 2 uses
  %i.qc = sub nuw i64 %.02643.i, %i.ok            ; 2 uses
  %.not28.i = icmp eq i64 %i.qc, 0
  br i1 %.not28.i, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE52priv_segmented_proxy_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit, label %.lr.ph.i94, !llvm.loop !216

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE52priv_segmented_proxy_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit: ; preds = %.loopexit, %.loopexit40.i
  %.sroa.0412.0 = phi ptr [ %.promoted.i93, %.loopexit40.i ], [ %.lcssa669, %.loopexit ] ; 8 uses
  %i.qd = sub i64 %i.m, %i.lv                     ; 2 uses
  store i64 %i.qd, ptr %i.c, align 8, !tbaa !520
  %.not.i96 = icmp eq i64 %2, 0
  br i1 %.not.i96, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit, label %bb.ac, !prof !344

bb.ac:                                            ; preds = %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE52priv_segmented_proxy_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit
  %i.qe = load ptr, ptr %i.p, align 8, !tbaa !331
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = sub i64 %i.u, %i.qf                     ; 2 uses
  %i.qh = ashr exact i64 %i.qg, 3
  %i.qi = sub nsw i64 128, %i.qh
  %i.qj = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.qi) ; 5 uses
  %.not12.i.i97 = icmp eq i64 %i.qg, 1024
  br i1 %.not12.i.i97, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i105, label %.lr.ph.i.preheader.i98

.lr.ph.i.preheader.i98:                           ; preds = %bb.ac
  %.pre.i99 = load ptr, ptr %.sroa.8.1, align 8, !tbaa !331, !noalias !21244 ; 3 uses
  %xtraiter1170 = and i64 %i.qj, 1
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1170, 0
  br i1 %lcmp.mod1171.not, label %.lr.ph.i.i100.prol.loopexit, label %.lr.ph.i.i100.prol

.lr.ph.i.i100.prol:                               ; preds = %.lr.ph.i.preheader.i98
  %i.qk = add nsw i64 %i.qj, -1                   ; 2 uses
  %i.ql = load i32, ptr %i.s, align 4, !tbaa !338, !noalias !21244
  store i32 %i.ql, ptr %.sroa.0390.0, align 4, !tbaa !338, !noalias !21244
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0390.0, i64 4
  %i.qn = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !338, !noalias !21244
  store i32 %i.qo, ptr %i.qm, align 4, !tbaa !338, !noalias !21244
  %i.qp = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0390.0, i64 8 ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.pre.i99, i64 1024
  %i.qs = icmp eq ptr %i.qq, %i.qr
  br i1 %i.qs, label %bb.ad, label %.lr.ph.i.i100.prol.loopexit, !prof !344

bb.ad:                                            ; preds = %.lr.ph.i.i100.prol
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.8.1, i64 8 ; 3 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !331, !noalias !21244 ; 3 uses
  br label %.lr.ph.i.i100.prol.loopexit

.lr.ph.i.i100.prol.loopexit:                      ; preds = %.lr.ph.i.i100.prol, %bb.ad, %.lr.ph.i.preheader.i98
  %.lcssa1077.unr = phi ptr [ poison, %.lr.ph.i.preheader.i98 ], [ %.sroa.8.1, %.lr.ph.i.i100.prol ], [ %i.qt, %bb.ad ]
  %.lcssa1076.unr = phi ptr [ poison, %.lr.ph.i.preheader.i98 ], [ %i.qq, %.lr.ph.i.i100.prol ], [ %i.qu, %bb.ad ]
  %.unr1173 = phi ptr [ %.pre.i99, %.lr.ph.i.preheader.i98 ], [ %.pre.i99, %.lr.ph.i.i100.prol ], [ %i.qu, %bb.ad ]
  %.unr1174 = phi ptr [ %.sroa.8.1, %.lr.ph.i.preheader.i98 ], [ %.sroa.8.1, %.lr.ph.i.i100.prol ], [ %i.qt, %bb.ad ]
  %.unr1175 = phi ptr [ %.sroa.0390.0, %.lr.ph.i.preheader.i98 ], [ %i.qq, %.lr.ph.i.i100.prol ], [ %i.qu, %bb.ad ]
  %.014.i.i101.unr = phi ptr [ %i.s, %.lr.ph.i.preheader.i98 ], [ %i.qp, %bb.ad ], [ %i.qp, %.lr.ph.i.i100.prol ]
  %.0813.i.i102.unr = phi i64 [ %i.qj, %.lr.ph.i.preheader.i98 ], [ %i.qk, %bb.ad ], [ %i.qk, %.lr.ph.i.i100.prol ]
  %i.qv = icmp eq i64 %i.qj, 1
  br i1 %i.qv, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i105, label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %.lr.ph.i.i100.prol.loopexit, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103.1
  %i.qw = phi ptr [ %i.rx, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103.1 ], [ %.unr1173, %.lr.ph.i.i100.prol.loopexit ] ; 2 uses
  %i.qx = phi ptr [ %i.ry, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103.1 ], [ %.unr1174, %.lr.ph.i.i100.prol.loopexit ] ; 2 uses
  %i.qy = phi ptr [ %i.rz, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103.1 ], [ %.unr1175, %.lr.ph.i.i100.prol.loopexit ] ; 3 uses
  %.014.i.i101 = phi ptr [ %i.rr, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103.1 ], [ %.014.i.i101.unr, %.lr.ph.i.i100.prol.loopexit ] ; 5 uses
  %.0813.i.i102 = phi i64 [ %i.rm, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103.1 ], [ %.0813.i.i102.unr, %.lr.ph.i.i100.prol.loopexit ]
  %i.qz = load i32, ptr %.014.i.i101, align 4, !tbaa !338, !noalias !21244
  store i32 %i.qz, ptr %i.qy, align 4, !tbaa !338, !noalias !21244
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 4
  %i.rb = getelementptr inbounds nuw i8, ptr %.014.i.i101, i64 4
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !338, !noalias !21244
  store i32 %i.rc, ptr %i.ra, align 4, !tbaa !338, !noalias !21244
  %i.rd = getelementptr inbounds nuw i8, ptr %.014.i.i101, i64 8
  %i.re = getelementptr inbounds nuw i8, ptr %i.qy, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qw, i64 1024
  %i.rg = icmp eq ptr %i.re, %i.rf
  br i1 %i.rg, label %bb.ae, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103, !prof !344

bb.ae:                                            ; preds = %.lr.ph.i.i100
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qx, i64 8 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !331, !noalias !21244 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103: ; preds = %bb.ae, %.lr.ph.i.i100
  %i.rj = phi ptr [ %i.qw, %.lr.ph.i.i100 ], [ %i.ri, %bb.ae ] ; 2 uses
  %i.rk = phi ptr [ %i.qx, %.lr.ph.i.i100 ], [ %i.rh, %bb.ae ] ; 2 uses
  %i.rl = phi ptr [ %i.re, %.lr.ph.i.i100 ], [ %i.ri, %bb.ae ] ; 3 uses
  %i.rm = add i64 %.0813.i.i102, -2               ; 2 uses
  %i.rn = load i32, ptr %i.rd, align 4, !tbaa !338, !noalias !21244
  store i32 %i.rn, ptr %i.rl, align 4, !tbaa !338, !noalias !21244
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 4
  %i.rp = getelementptr inbounds nuw i8, ptr %.014.i.i101, i64 12
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !338, !noalias !21244
  store i32 %i.rq, ptr %i.ro, align 4, !tbaa !338, !noalias !21244
  %i.rr = getelementptr inbounds nuw i8, ptr %.014.i.i101, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rl, i64 8 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rj, i64 1024
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %bb.af, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103.1, !prof !344

bb.af:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rk, i64 8 ; 2 uses
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !331, !noalias !21244 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103.1

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103.1: ; preds = %bb.af, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103
  %i.rx = phi ptr [ %i.rj, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103 ], [ %i.rw, %bb.af ]
  %i.ry = phi ptr [ %i.rk, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103 ], [ %i.rv, %bb.af ] ; 2 uses
  %i.rz = phi ptr [ %i.rs, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i103 ], [ %i.rw, %bb.af ] ; 2 uses
  %.not.i.i104.1 = icmp eq i64 %i.rm, 0
  br i1 %.not.i.i104.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_14deque_iteratorIS6_Lb0ELj0ELj0EmEEEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i105, label %.lr.ph.i.i100, !llvm.loop !217

end_hunk_5
begin_hunk_6_@_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE27priv_insert_middle_aux_implINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmmT_:bb.a
  %i.aqc = load i32, ptr %i.aqa, align 4, !tbaa !338
  store i32 %i.aqc, ptr %i.aqb, align 4, !tbaa !338
  %i.aqd = getelementptr inbounds nuw i8, ptr %.048.i.i.i270, i64 12
  %i.aqe = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i271, i64 12
  %i.aqf = load i32, ptr %i.aqe, align 4, !tbaa !338
  store i32 %i.aqf, ptr %i.aqd, align 4, !tbaa !338
  %i.aqg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i271, i64 16
  %i.aqh = getelementptr inbounds nuw i8, ptr %.048.i.i.i270, i64 16
  %i.aqi = load i32, ptr %i.aqg, align 4, !tbaa !338
  store i32 %i.aqi, ptr %i.aqh, align 4, !tbaa !338
  %i.aqj = getelementptr inbounds nuw i8, ptr %.048.i.i.i270, i64 20
  %i.aqk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i271, i64 20
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !338
  store i32 %i.aql, ptr %i.aqj, align 4, !tbaa !338
  %i.aqm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i271, i64 24
  %i.aqn = getelementptr inbounds nuw i8, ptr %.048.i.i.i270, i64 24
  %i.aqo = add i64 %.09.i.i.i269, -4              ; 2 uses
  %i.aqp = load i32, ptr %i.aqm, align 4, !tbaa !338
  store i32 %i.aqp, ptr %i.aqn, align 4, !tbaa !338
  %i.aqq = getelementptr inbounds nuw i8, ptr %.048.i.i.i270, i64 28
  %i.aqr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i271, i64 28
  %i.aqs = load i32, ptr %i.aqr, align 4, !tbaa !338
  store i32 %i.aqs, ptr %i.aqq, align 4, !tbaa !338
  %i.aqt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i271, i64 32 ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %.048.i.i.i270, i64 32
  %.not.i.i.i272.3 = icmp eq i64 %i.aqo, 0
  br i1 %.not.i.i.i272.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i273, label %.lr.ph.i.i.i268, !llvm.loop !21209

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i273: ; preds = %.lr.ph.i.i.i268.prol.loopexit, %.lr.ph.i.i.i268, %middle.block763, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS7_.exit
  %.promoted.i274 = phi ptr [ %4, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE41priv_segmented_uninitialized_move_alloc_nENS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmS7_.exit ], [ %i.apj, %middle.block763 ], [ %.lcssa1091.unr, %.lr.ph.i.i.i268.prol.loopexit ], [ %i.aqt, %.lr.ph.i.i.i268 ] ; 2 uses
  br i1 %.not2748.i250, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit288, label %.lr.ph.i276

.lr.ph.i276:                                      ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i273, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i285
  %.lcssa37.i277 = phi ptr [ %.lcssa678, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i285 ], [ %.promoted.i274, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i273 ] ; 7 uses
  %.036.i278 = phi ptr [ %i.aqv, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i285 ], [ %.sroa.6.1.i230, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i273 ]
  %.02135.i279 = phi i64 [ %i.aso, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i285 ], [ %i.ani, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i273 ] ; 3 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %.036.i278, i64 8 ; 2 uses
  %i.aqw = tail call i64 @llvm.umin.i64(i64 %.02135.i279, i64 128) ; 7 uses
  %i.aqx = load ptr, ptr %i.aqv, align 8, !tbaa !331 ; 7 uses
  %min.iters.check775 = icmp ult i64 %.02135.i279, 4
  br i1 %min.iters.check775, label %.lr.ph.i.i26.i280.preheader, label %vector.memcheck768

vector.memcheck768:                               ; preds = %.lr.ph.i276
  %i.aqy = shl nuw nsw i64 %i.aqw, 3              ; 2 uses
  %scevgep769 = getelementptr i8, ptr %i.aqx, i64 %i.aqy
  %scevgep770 = getelementptr i8, ptr %.lcssa37.i277, i64 %i.aqy
  %bound0771 = icmp ult ptr %i.aqx, %scevgep770
  %bound1772 = icmp ult ptr %.lcssa37.i277, %scevgep769
  %found.conflict773 = and i1 %bound0771, %bound1772
  br i1 %found.conflict773, label %.lr.ph.i.i26.i280.preheader, label %vector.ph776

vector.ph776:                                     ; preds = %vector.memcheck768
  %n.vec777 = and i64 %i.aqw, 252                 ; 3 uses
  %i.aqz = and i64 %i.aqw, 3
  %i.ara = shl nuw nsw i64 %n.vec777, 3           ; 2 uses
  %i.arb = getelementptr i8, ptr %i.aqx, i64 %i.ara
  %i.arc = getelementptr i8, ptr %.lcssa37.i277, i64 %i.ara ; 2 uses
  br label %vector.body778

vector.body778:                                   ; preds = %vector.body778, %vector.ph776
  %index779 = phi i64 [ 0, %vector.ph776 ], [ %index.next792, %vector.body778 ] ; 2 uses
  %i.ard = shl i64 %index779, 3                   ; 3 uses
  %i.are = or disjoint i64 %i.ard, 16             ; 2 uses
  %next.gep780 = getelementptr i8, ptr %i.aqx, i64 %i.ard
  %next.gep781 = getelementptr i8, ptr %i.aqx, i64 %i.are
  %next.gep782 = getelementptr i8, ptr %.lcssa37.i277, i64 %i.ard
  %next.gep783 = getelementptr i8, ptr %.lcssa37.i277, i64 %i.are
  %wide.vec784 = load <4 x i32>, ptr %next.gep782, align 4, !tbaa !338, !alias.scope !21267
  %wide.vec787 = load <4 x i32>, ptr %next.gep783, align 4, !tbaa !338, !alias.scope !21267
  store <4 x i32> %wide.vec784, ptr %next.gep780, align 4, !tbaa !338, !alias.scope !21268, !noalias !21267
  store <4 x i32> %wide.vec787, ptr %next.gep781, align 4, !tbaa !338, !alias.scope !21268, !noalias !21267
  %index.next792 = add nuw i64 %index779, 4       ; 2 uses
  %i.arf = icmp eq i64 %index.next792, %n.vec777
  br i1 %i.arf, label %middle.block793, label %vector.body778, !llvm.loop !21213

middle.block793:                                  ; preds = %vector.body778
  %cmp.n794 = icmp eq i64 %i.aqw, %n.vec777
  br i1 %cmp.n794, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i285, label %.lr.ph.i.i26.i280.preheader

.lr.ph.i.i26.i280.preheader:                      ; preds = %vector.memcheck768, %.lr.ph.i276, %middle.block793
  %.09.i.i27.i281.ph = phi i64 [ %i.aqw, %vector.memcheck768 ], [ %i.aqw, %.lr.ph.i276 ], [ %i.aqz, %middle.block793 ] ; 4 uses
  %.048.i.i28.i282.ph = phi ptr [ %i.aqx, %vector.memcheck768 ], [ %i.aqx, %.lr.ph.i276 ], [ %i.arb, %middle.block793 ] ; 2 uses
  %.sroa.0.07.i.i29.i283.ph = phi ptr [ %.lcssa37.i277, %vector.memcheck768 ], [ %.lcssa37.i277, %.lr.ph.i276 ], [ %i.arc, %middle.block793 ] ; 2 uses
  %i.arg = add nsw i64 %.09.i.i27.i281.ph, -1
  %xtraiter1143 = and i64 %.09.i.i27.i281.ph, 3   ; 2 uses
  %lcmp.mod1144.not = icmp eq i64 %xtraiter1143, 0
  br i1 %lcmp.mod1144.not, label %.lr.ph.i.i26.i280.prol.loopexit, label %.lr.ph.i.i26.i280.prol

.lr.ph.i.i26.i280.prol:                           ; preds = %.lr.ph.i.i26.i280.preheader, %.lr.ph.i.i26.i280.prol
  %.09.i.i27.i281.prol = phi i64 [ %i.arh, %.lr.ph.i.i26.i280.prol ], [ %.09.i.i27.i281.ph, %.lr.ph.i.i26.i280.preheader ]
  %.048.i.i28.i282.prol = phi ptr [ %i.arn, %.lr.ph.i.i26.i280.prol ], [ %.048.i.i28.i282.ph, %.lr.ph.i.i26.i280.preheader ] ; 3 uses
  %.sroa.0.07.i.i29.i283.prol = phi ptr [ %i.arm, %.lr.ph.i.i26.i280.prol ], [ %.sroa.0.07.i.i29.i283.ph, %.lr.ph.i.i26.i280.preheader ] ; 3 uses
  %prol.iter1145 = phi i64 [ %prol.iter1145.next, %.lr.ph.i.i26.i280.prol ], [ 0, %.lr.ph.i.i26.i280.preheader ]
  %i.arh = add i64 %.09.i.i27.i281.prol, -1       ; 2 uses
  %i.ari = load i32, ptr %.sroa.0.07.i.i29.i283.prol, align 4, !tbaa !338
  store i32 %i.ari, ptr %.048.i.i28.i282.prol, align 4, !tbaa !338
  %i.arj = getelementptr inbounds nuw i8, ptr %.048.i.i28.i282.prol, i64 4
  %i.ark = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i283.prol, i64 4
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !338
  store i32 %i.arl, ptr %i.arj, align 4, !tbaa !338
  %i.arm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i283.prol, i64 8 ; 3 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %.048.i.i28.i282.prol, i64 8 ; 2 uses
  %prol.iter1145.next = add i64 %prol.iter1145, 1 ; 2 uses
  %prol.iter1145.cmp.not = icmp eq i64 %prol.iter1145.next, %xtraiter1143
  br i1 %prol.iter1145.cmp.not, label %.lr.ph.i.i26.i280.prol.loopexit, label %.lr.ph.i.i26.i280.prol, !llvm.loop !21214

.lr.ph.i.i26.i280.prol.loopexit:                  ; preds = %.lr.ph.i.i26.i280.prol, %.lr.ph.i.i26.i280.preheader
  %.lcssa1089.unr = phi ptr [ poison, %.lr.ph.i.i26.i280.preheader ], [ %i.arm, %.lr.ph.i.i26.i280.prol ]
  %.09.i.i27.i281.unr = phi i64 [ %.09.i.i27.i281.ph, %.lr.ph.i.i26.i280.preheader ], [ %i.arh, %.lr.ph.i.i26.i280.prol ]
  %.048.i.i28.i282.unr = phi ptr [ %.048.i.i28.i282.ph, %.lr.ph.i.i26.i280.preheader ], [ %i.arn, %.lr.ph.i.i26.i280.prol ]
  %.sroa.0.07.i.i29.i283.unr = phi ptr [ %.sroa.0.07.i.i29.i283.ph, %.lr.ph.i.i26.i280.preheader ], [ %i.arm, %.lr.ph.i.i26.i280.prol ]
  %i.aro = icmp ult i64 %i.arg, 3
  br i1 %i.aro, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i285, label %.lr.ph.i.i26.i280

.lr.ph.i.i26.i280:                                ; preds = %.lr.ph.i.i26.i280.prol.loopexit, %.lr.ph.i.i26.i280
  %.09.i.i27.i281 = phi i64 [ %i.ash, %.lr.ph.i.i26.i280 ], [ %.09.i.i27.i281.unr, %.lr.ph.i.i26.i280.prol.loopexit ]
  %.048.i.i28.i282 = phi ptr [ %i.asn, %.lr.ph.i.i26.i280 ], [ %.048.i.i28.i282.unr, %.lr.ph.i.i26.i280.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i29.i283 = phi ptr [ %i.asm, %.lr.ph.i.i26.i280 ], [ %.sroa.0.07.i.i29.i283.unr, %.lr.ph.i.i26.i280.prol.loopexit ] ; 9 uses
  %i.arp = load i32, ptr %.sroa.0.07.i.i29.i283, align 4, !tbaa !338
  store i32 %i.arp, ptr %.048.i.i28.i282, align 4, !tbaa !338
  %i.arq = getelementptr inbounds nuw i8, ptr %.048.i.i28.i282, i64 4
  %i.arr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i283, i64 4
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !338
  store i32 %i.ars, ptr %i.arq, align 4, !tbaa !338
  %i.art = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i283, i64 8
  %i.aru = getelementptr inbounds nuw i8, ptr %.048.i.i28.i282, i64 8
  %i.arv = load i32, ptr %i.art, align 4, !tbaa !338
  store i32 %i.arv, ptr %i.aru, align 4, !tbaa !338
  %i.arw = getelementptr inbounds nuw i8, ptr %.048.i.i28.i282, i64 12
  %i.arx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i283, i64 12
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !338
  store i32 %i.ary, ptr %i.arw, align 4, !tbaa !338
  %i.arz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i283, i64 16
  %i.asa = getelementptr inbounds nuw i8, ptr %.048.i.i28.i282, i64 16
  %i.asb = load i32, ptr %i.arz, align 4, !tbaa !338
  store i32 %i.asb, ptr %i.asa, align 4, !tbaa !338
  %i.asc = getelementptr inbounds nuw i8, ptr %.048.i.i28.i282, i64 20
  %i.asd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i283, i64 20
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !338
  store i32 %i.ase, ptr %i.asc, align 4, !tbaa !338
  %i.asf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i283, i64 24
  %i.asg = getelementptr inbounds nuw i8, ptr %.048.i.i28.i282, i64 24
  %i.ash = add i64 %.09.i.i27.i281, -4            ; 2 uses
  %i.asi = load i32, ptr %i.asf, align 4, !tbaa !338
  store i32 %i.asi, ptr %i.asg, align 4, !tbaa !338
  %i.asj = getelementptr inbounds nuw i8, ptr %.048.i.i28.i282, i64 28
  %i.ask = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i283, i64 28
  %i.asl = load i32, ptr %i.ask, align 4, !tbaa !338
  store i32 %i.asl, ptr %i.asj, align 4, !tbaa !338
  %i.asm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i29.i283, i64 32 ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %.048.i.i28.i282, i64 32
  %.not.i.i30.i284.3 = icmp eq i64 %i.ash, 0
  br i1 %.not.i.i30.i284.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i285, label %.lr.ph.i.i26.i280, !llvm.loop !21215

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i285: ; preds = %.lr.ph.i.i26.i280.prol.loopexit, %.lr.ph.i.i26.i280, %middle.block793
  %.lcssa678 = phi ptr [ %i.arc, %middle.block793 ], [ %.lcssa1089.unr, %.lr.ph.i.i26.i280.prol.loopexit ], [ %i.asm, %.lr.ph.i.i26.i280 ] ; 2 uses
  %i.aso = sub nuw i64 %.02135.i279, %i.aqw       ; 2 uses
  %.not23.i286 = icmp eq i64 %i.aso, 0
  br i1 %.not23.i286, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit288, label %.lr.ph.i276, !llvm.loop !21139

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit288: ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i285, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i273, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit237
  %.sroa.0412.1 = phi ptr [ %4, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit237 ], [ %.promoted.i274, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i273 ], [ %.lcssa678, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i285 ] ; 8 uses
  %i.asp = load ptr, ptr %i.yg, align 8, !tbaa !331
  %i.asq = ptrtoint ptr %i.asp to i64
  %i.asr = sub i64 %.pre547, %i.asq               ; 2 uses
  %i.ass = ashr exact i64 %i.asr, 3
  %i.ast = sub nsw i64 128, %i.ass
  %i.asu = tail call i64 @llvm.umin.i64(i64 %i.akm, i64 %i.ast) ; 8 uses
  %.not15.i.i.i291 = icmp eq i64 %i.asr, 1024
  br i1 %.not15.i.i.i291, label %.loopexit40.i297, label %.lr.ph.i.i.i292.preheader

.lr.ph.i.i.i292.preheader:                        ; preds = %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit288
  %min.iters.check805 = icmp ult i64 %i.asu, 8
  br i1 %min.iters.check805, label %.lr.ph.i.i.i292.preheader1087, label %vector.memcheck806

vector.memcheck806:                               ; preds = %.lr.ph.i.i.i292.preheader
  %i.asv = shl i64 %i.asu, 3                      ; 2 uses
  %i.asw = getelementptr i8, ptr %i.yf, i64 %i.asv
  %i.asx = getelementptr i8, ptr %.sroa.0412.1, i64 %i.asv
  %bound0807 = icmp ult ptr %i.yf, %i.asx
  %bound1808 = icmp ult ptr %.sroa.0412.1, %i.asw
  %found.conflict809 = and i1 %bound0807, %bound1808
  br i1 %found.conflict809, label %.lr.ph.i.i.i292.preheader1087, label %vector.ph810

vector.ph810:                                     ; preds = %vector.memcheck806
  %n.vec811 = and i64 %i.asu, -4                  ; 3 uses
  %i.asy = and i64 %i.asu, 3
  %i.asz = shl i64 %n.vec811, 3                   ; 2 uses
  %i.ata = getelementptr i8, ptr %i.yf, i64 %i.asz
  %i.atb = getelementptr i8, ptr %.sroa.0412.1, i64 %i.asz ; 2 uses
  br label %vector.body812

vector.body812:                                   ; preds = %vector.body812, %vector.ph810
  %index813 = phi i64 [ 0, %vector.ph810 ], [ %index.next828, %vector.body812 ] ; 2 uses
  %i.atc = shl i64 %index813, 3                   ; 3 uses
  %i.atd = or disjoint i64 %i.atc, 16             ; 2 uses
  %next.gep814 = getelementptr i8, ptr %i.yf, i64 %i.atc ; 2 uses
  %next.gep816 = getelementptr i8, ptr %i.yf, i64 %i.atd ; 2 uses
  %next.gep818 = getelementptr i8, ptr %.sroa.0412.1, i64 %i.atc
  %next.gep819 = getelementptr i8, ptr %.sroa.0412.1, i64 %i.atd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep814) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep816) ]
  %wide.vec820 = load <4 x i32>, ptr %next.gep818, align 4, !tbaa !338, !alias.scope !21269
  %wide.vec823 = load <4 x i32>, ptr %next.gep819, align 4, !tbaa !338, !alias.scope !21269
  store <4 x i32> %wide.vec820, ptr %next.gep814, align 4, !tbaa !338, !alias.scope !21270, !noalias !21269
  store <4 x i32> %wide.vec823, ptr %next.gep816, align 4, !tbaa !338, !alias.scope !21270, !noalias !21269
  %index.next828 = add nuw i64 %index813, 4       ; 2 uses
  %i.ate = icmp eq i64 %index.next828, %n.vec811
  br i1 %i.ate, label %middle.block829, label %vector.body812, !llvm.loop !21219

middle.block829:                                  ; preds = %vector.body812
  %cmp.n830 = icmp eq i64 %i.asu, %n.vec811
  br i1 %cmp.n830, label %.loopexit40.i297, label %.lr.ph.i.i.i292.preheader1087

.lr.ph.i.i.i292.preheader1087:                    ; preds = %vector.memcheck806, %.lr.ph.i.i.i292.preheader, %middle.block829
  %.018.i.i.i293.ph = phi i64 [ %i.asu, %vector.memcheck806 ], [ %i.asu, %.lr.ph.i.i.i292.preheader ], [ %i.asy, %middle.block829 ] ; 4 uses
  %.01417.i.i.i294.ph = phi ptr [ %i.yf, %vector.memcheck806 ], [ %i.yf, %.lr.ph.i.i.i292.preheader ], [ %i.ata, %middle.block829 ] ; 2 uses
  %.sroa.0.016.i.i.i295.ph = phi ptr [ %.sroa.0412.1, %vector.memcheck806 ], [ %.sroa.0412.1, %.lr.ph.i.i.i292.preheader ], [ %i.atb, %middle.block829 ] ; 2 uses
  %i.atf = add i64 %.018.i.i.i293.ph, -1
  %xtraiter1146 = and i64 %.018.i.i.i293.ph, 3    ; 2 uses
  %lcmp.mod1147.not = icmp eq i64 %xtraiter1146, 0
  br i1 %lcmp.mod1147.not, label %.lr.ph.i.i.i292.prol.loopexit, label %.lr.ph.i.i.i292.prol

.lr.ph.i.i.i292.prol:                             ; preds = %.lr.ph.i.i.i292.preheader1087, %.lr.ph.i.i.i292.prol
  %.018.i.i.i293.prol = phi i64 [ %i.atm, %.lr.ph.i.i.i292.prol ], [ %.018.i.i.i293.ph, %.lr.ph.i.i.i292.preheader1087 ]
  %.01417.i.i.i294.prol = phi ptr [ %i.atl, %.lr.ph.i.i.i292.prol ], [ %.01417.i.i.i294.ph, %.lr.ph.i.i.i292.preheader1087 ] ; 4 uses
  %.sroa.0.016.i.i.i295.prol = phi ptr [ %i.atk, %.lr.ph.i.i.i292.prol ], [ %.sroa.0.016.i.i.i295.ph, %.lr.ph.i.i.i292.preheader1087 ] ; 3 uses
  %prol.iter1148 = phi i64 [ %prol.iter1148.next, %.lr.ph.i.i.i292.prol ], [ 0, %.lr.ph.i.i.i292.preheader1087 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i294.prol) ]
  %i.atg = load i32, ptr %.sroa.0.016.i.i.i295.prol, align 4, !tbaa !338
  store i32 %i.atg, ptr %.01417.i.i.i294.prol, align 4, !tbaa !338
  %i.ath = getelementptr inbounds nuw i8, ptr %.01417.i.i.i294.prol, i64 4
  %i.ati = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i295.prol, i64 4
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !338
  store i32 %i.atj, ptr %i.ath, align 4, !tbaa !338
  %i.atk = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i295.prol, i64 8 ; 3 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %.01417.i.i.i294.prol, i64 8 ; 2 uses
  %i.atm = add i64 %.018.i.i.i293.prol, -1        ; 2 uses
  %prol.iter1148.next = add i64 %prol.iter1148, 1 ; 2 uses
  %prol.iter1148.cmp.not = icmp eq i64 %prol.iter1148.next, %xtraiter1146
  br i1 %prol.iter1148.cmp.not, label %.lr.ph.i.i.i292.prol.loopexit, label %.lr.ph.i.i.i292.prol, !llvm.loop !21220

.lr.ph.i.i.i292.prol.loopexit:                    ; preds = %.lr.ph.i.i.i292.prol, %.lr.ph.i.i.i292.preheader1087
  %.lcssa1088.unr = phi ptr [ poison, %.lr.ph.i.i.i292.preheader1087 ], [ %i.atk, %.lr.ph.i.i.i292.prol ]
  %.018.i.i.i293.unr = phi i64 [ %.018.i.i.i293.ph, %.lr.ph.i.i.i292.preheader1087 ], [ %i.atm, %.lr.ph.i.i.i292.prol ]
  %.01417.i.i.i294.unr = phi ptr [ %.01417.i.i.i294.ph, %.lr.ph.i.i.i292.preheader1087 ], [ %i.atl, %.lr.ph.i.i.i292.prol ]
  %.sroa.0.016.i.i.i295.unr = phi ptr [ %.sroa.0.016.i.i.i295.ph, %.lr.ph.i.i.i292.preheader1087 ], [ %i.atk, %.lr.ph.i.i.i292.prol ]
  %i.atn = icmp ult i64 %i.atf, 3
  br i1 %i.atn, label %.loopexit40.i297, label %.lr.ph.i.i.i292

.lr.ph.i.i.i292:                                  ; preds = %.lr.ph.i.i.i292.prol.loopexit, %.lr.ph.i.i.i292
  %.018.i.i.i293 = phi i64 [ %i.aum, %.lr.ph.i.i.i292 ], [ %.018.i.i.i293.unr, %.lr.ph.i.i.i292.prol.loopexit ]
  %.01417.i.i.i294 = phi ptr [ %i.aul, %.lr.ph.i.i.i292 ], [ %.01417.i.i.i294.unr, %.lr.ph.i.i.i292.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i295 = phi ptr [ %i.auk, %.lr.ph.i.i.i292 ], [ %.sroa.0.016.i.i.i295.unr, %.lr.ph.i.i.i292.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i294) ]
  %i.ato = load i32, ptr %.sroa.0.016.i.i.i295, align 4, !tbaa !338
  store i32 %i.ato, ptr %.01417.i.i.i294, align 4, !tbaa !338
  %i.atp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i294, i64 4
  %i.atq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i295, i64 4
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !338
  store i32 %i.atr, ptr %i.atp, align 4, !tbaa !338
  %i.ats = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i295, i64 8
  %i.att = getelementptr inbounds nuw i8, ptr %.01417.i.i.i294, i64 8
  %i.atu = load i32, ptr %i.ats, align 4, !tbaa !338
  store i32 %i.atu, ptr %i.att, align 4, !tbaa !338
  %i.atv = getelementptr inbounds nuw i8, ptr %.01417.i.i.i294, i64 12
  %i.atw = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i295, i64 12
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !338
  store i32 %i.atx, ptr %i.atv, align 4, !tbaa !338
  %i.aty = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i295, i64 16
  %i.atz = getelementptr inbounds nuw i8, ptr %.01417.i.i.i294, i64 16
  %i.aua = load i32, ptr %i.aty, align 4, !tbaa !338
  store i32 %i.aua, ptr %i.atz, align 4, !tbaa !338
  %i.aub = getelementptr inbounds nuw i8, ptr %.01417.i.i.i294, i64 20
  %i.auc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i295, i64 20
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !338
  store i32 %i.aud, ptr %i.aub, align 4, !tbaa !338
  %i.aue = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i295, i64 24
  %i.auf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i294, i64 24
  %i.aug = load i32, ptr %i.aue, align 4, !tbaa !338
  store i32 %i.aug, ptr %i.auf, align 4, !tbaa !338
  %i.auh = getelementptr inbounds nuw i8, ptr %.01417.i.i.i294, i64 28
  %i.aui = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i295, i64 28
  %i.auj = load i32, ptr %i.aui, align 4, !tbaa !338
  store i32 %i.auj, ptr %i.auh, align 4, !tbaa !338
  %i.auk = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i295, i64 32 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %.01417.i.i.i294, i64 32
  %i.aum = add i64 %.018.i.i.i293, -4             ; 2 uses
  %.not.i.i.i296.3 = icmp eq i64 %i.aum, 0
  br i1 %.not.i.i.i296.3, label %.loopexit40.i297, label %.lr.ph.i.i.i292, !llvm.loop !21221

.loopexit40.i297:                                 ; preds = %.lr.ph.i.i.i292.prol.loopexit, %.lr.ph.i.i.i292, %middle.block829, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit288
  %.promoted.i298 = phi ptr [ %.sroa.0412.1, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit288 ], [ %i.atb, %middle.block829 ], [ %.lcssa1088.unr, %.lr.ph.i.i.i292.prol.loopexit ], [ %i.auk, %.lr.ph.i.i.i292 ]
  %i.aun = sub i64 %i.akm, %i.asu                 ; 2 uses
  %.not2842.i299 = icmp eq i64 %i.aun, 0
  br i1 %.not2842.i299, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE52priv_segmented_proxy_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit311, label %.lr.ph.i300

.lr.ph.i300:                                      ; preds = %.loopexit40.i297, %.loopexit1062
  %.lcssa45.i301 = phi ptr [ %.lcssa676, %.loopexit1062 ], [ %.promoted.i298, %.loopexit40.i297 ] ; 7 uses
  %.044.i302 = phi ptr [ %i.auo, %.loopexit1062 ], [ %i.yg, %.loopexit40.i297 ]
  %.02643.i303 = phi i64 [ %i.awh, %.loopexit1062 ], [ %i.aun, %.loopexit40.i297 ] ; 3 uses
  %i.auo = getelementptr inbounds nuw i8, ptr %.044.i302, i64 8 ; 2 uses
  %i.aup = tail call i64 @llvm.umin.i64(i64 %.02643.i303, i64 128) ; 7 uses
  %i.auq = load ptr, ptr %i.auo, align 8, !tbaa !331 ; 7 uses
  %min.iters.check841 = icmp ult i64 %.02643.i303, 4
  br i1 %min.iters.check841, label %.lr.ph.i.i31.i304.preheader, label %vector.memcheck834

vector.memcheck834:                               ; preds = %.lr.ph.i300
  %i.aur = shl nuw nsw i64 %i.aup, 3              ; 2 uses
  %scevgep835 = getelementptr i8, ptr %i.auq, i64 %i.aur
  %scevgep836 = getelementptr i8, ptr %.lcssa45.i301, i64 %i.aur
  %bound0837 = icmp ult ptr %i.auq, %scevgep836
  %bound1838 = icmp ult ptr %.lcssa45.i301, %scevgep835
  %found.conflict839 = and i1 %bound0837, %bound1838
  br i1 %found.conflict839, label %.lr.ph.i.i31.i304.preheader, label %vector.ph842

vector.ph842:                                     ; preds = %vector.memcheck834
  %n.vec843 = and i64 %i.aup, 252                 ; 3 uses
  %i.aus = and i64 %i.aup, 3
  %i.aut = shl nuw nsw i64 %n.vec843, 3           ; 2 uses
  %i.auu = getelementptr i8, ptr %i.auq, i64 %i.aut
  %i.auv = getelementptr i8, ptr %.lcssa45.i301, i64 %i.aut ; 2 uses
  br label %vector.body844

vector.body844:                                   ; preds = %vector.body844, %vector.ph842
  %index845 = phi i64 [ 0, %vector.ph842 ], [ %index.next860, %vector.body844 ] ; 2 uses
  %i.auw = shl i64 %index845, 3                   ; 3 uses
  %i.aux = or disjoint i64 %i.auw, 16             ; 2 uses
  %next.gep846 = getelementptr i8, ptr %i.auq, i64 %i.auw ; 2 uses
  %next.gep848 = getelementptr i8, ptr %i.auq, i64 %i.aux ; 2 uses
  %next.gep850 = getelementptr i8, ptr %.lcssa45.i301, i64 %i.auw
  %next.gep851 = getelementptr i8, ptr %.lcssa45.i301, i64 %i.aux
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep846) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep848) ]
  %wide.vec852 = load <4 x i32>, ptr %next.gep850, align 4, !tbaa !338, !alias.scope !21271
  %wide.vec855 = load <4 x i32>, ptr %next.gep851, align 4, !tbaa !338, !alias.scope !21271
  store <4 x i32> %wide.vec852, ptr %next.gep846, align 4, !tbaa !338, !alias.scope !21272, !noalias !21271
  store <4 x i32> %wide.vec855, ptr %next.gep848, align 4, !tbaa !338, !alias.scope !21272, !noalias !21271
  %index.next860 = add nuw i64 %index845, 4       ; 2 uses
  %i.auy = icmp eq i64 %index.next860, %n.vec843
  br i1 %i.auy, label %middle.block861, label %vector.body844, !llvm.loop !21225

middle.block861:                                  ; preds = %vector.body844
  %cmp.n862 = icmp eq i64 %i.aup, %n.vec843
  br i1 %cmp.n862, label %.loopexit1062, label %.lr.ph.i.i31.i304.preheader

.lr.ph.i.i31.i304.preheader:                      ; preds = %vector.memcheck834, %.lr.ph.i300, %middle.block861
  %.018.i.i32.i305.ph = phi i64 [ %i.aup, %vector.memcheck834 ], [ %i.aup, %.lr.ph.i300 ], [ %i.aus, %middle.block861 ] ; 4 uses
  %.01417.i.i33.i306.ph = phi ptr [ %i.auq, %vector.memcheck834 ], [ %i.auq, %.lr.ph.i300 ], [ %i.auu, %middle.block861 ] ; 2 uses
  %.sroa.0.016.i.i34.i307.ph = phi ptr [ %.lcssa45.i301, %vector.memcheck834 ], [ %.lcssa45.i301, %.lr.ph.i300 ], [ %i.auv, %middle.block861 ] ; 2 uses
  %i.auz = add nsw i64 %.018.i.i32.i305.ph, -1
  %xtraiter1149 = and i64 %.018.i.i32.i305.ph, 3  ; 2 uses
  %lcmp.mod1150.not = icmp eq i64 %xtraiter1149, 0
  br i1 %lcmp.mod1150.not, label %.lr.ph.i.i31.i304.prol.loopexit, label %.lr.ph.i.i31.i304.prol

.lr.ph.i.i31.i304.prol:                           ; preds = %.lr.ph.i.i31.i304.preheader, %.lr.ph.i.i31.i304.prol
  %.018.i.i32.i305.prol = phi i64 [ %i.avg, %.lr.ph.i.i31.i304.prol ], [ %.018.i.i32.i305.ph, %.lr.ph.i.i31.i304.preheader ]
  %.01417.i.i33.i306.prol = phi ptr [ %i.avf, %.lr.ph.i.i31.i304.prol ], [ %.01417.i.i33.i306.ph, %.lr.ph.i.i31.i304.preheader ] ; 4 uses
  %.sroa.0.016.i.i34.i307.prol = phi ptr [ %i.ave, %.lr.ph.i.i31.i304.prol ], [ %.sroa.0.016.i.i34.i307.ph, %.lr.ph.i.i31.i304.preheader ] ; 3 uses
  %prol.iter1151 = phi i64 [ %prol.iter1151.next, %.lr.ph.i.i31.i304.prol ], [ 0, %.lr.ph.i.i31.i304.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i306.prol) ]
  %i.ava = load i32, ptr %.sroa.0.016.i.i34.i307.prol, align 4, !tbaa !338
  store i32 %i.ava, ptr %.01417.i.i33.i306.prol, align 4, !tbaa !338
  %i.avb = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i306.prol, i64 4
  %i.avc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i307.prol, i64 4
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !338
  store i32 %i.avd, ptr %i.avb, align 4, !tbaa !338
  %i.ave = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i307.prol, i64 8 ; 3 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i306.prol, i64 8 ; 2 uses
  %i.avg = add i64 %.018.i.i32.i305.prol, -1      ; 2 uses
  %prol.iter1151.next = add i64 %prol.iter1151, 1 ; 2 uses
  %prol.iter1151.cmp.not = icmp eq i64 %prol.iter1151.next, %xtraiter1149
  br i1 %prol.iter1151.cmp.not, label %.lr.ph.i.i31.i304.prol.loopexit, label %.lr.ph.i.i31.i304.prol, !llvm.loop !21226

.lr.ph.i.i31.i304.prol.loopexit:                  ; preds = %.lr.ph.i.i31.i304.prol, %.lr.ph.i.i31.i304.preheader
  %.lcssa1086.unr = phi ptr [ poison, %.lr.ph.i.i31.i304.preheader ], [ %i.ave, %.lr.ph.i.i31.i304.prol ]
  %.018.i.i32.i305.unr = phi i64 [ %.018.i.i32.i305.ph, %.lr.ph.i.i31.i304.preheader ], [ %i.avg, %.lr.ph.i.i31.i304.prol ]
  %.01417.i.i33.i306.unr = phi ptr [ %.01417.i.i33.i306.ph, %.lr.ph.i.i31.i304.preheader ], [ %i.avf, %.lr.ph.i.i31.i304.prol ]
  %.sroa.0.016.i.i34.i307.unr = phi ptr [ %.sroa.0.016.i.i34.i307.ph, %.lr.ph.i.i31.i304.preheader ], [ %i.ave, %.lr.ph.i.i31.i304.prol ]
  %i.avh = icmp ult i64 %i.auz, 3
  br i1 %i.avh, label %.loopexit1062, label %.lr.ph.i.i31.i304

.lr.ph.i.i31.i304:                                ; preds = %.lr.ph.i.i31.i304.prol.loopexit, %.lr.ph.i.i31.i304
  %.018.i.i32.i305 = phi i64 [ %i.awg, %.lr.ph.i.i31.i304 ], [ %.018.i.i32.i305.unr, %.lr.ph.i.i31.i304.prol.loopexit ]
  %.01417.i.i33.i306 = phi ptr [ %i.awf, %.lr.ph.i.i31.i304 ], [ %.01417.i.i33.i306.unr, %.lr.ph.i.i31.i304.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i34.i307 = phi ptr [ %i.awe, %.lr.ph.i.i31.i304 ], [ %.sroa.0.016.i.i34.i307.unr, %.lr.ph.i.i31.i304.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i33.i306) ]
  %i.avi = load i32, ptr %.sroa.0.016.i.i34.i307, align 4, !tbaa !338
  store i32 %i.avi, ptr %.01417.i.i33.i306, align 4, !tbaa !338
  %i.avj = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i306, i64 4
  %i.avk = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i307, i64 4
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !338
  store i32 %i.avl, ptr %i.avj, align 4, !tbaa !338
  %i.avm = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i307, i64 8
  %i.avn = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i306, i64 8
  %i.avo = load i32, ptr %i.avm, align 4, !tbaa !338
  store i32 %i.avo, ptr %i.avn, align 4, !tbaa !338
  %i.avp = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i306, i64 12
  %i.avq = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i307, i64 12
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !338
  store i32 %i.avr, ptr %i.avp, align 4, !tbaa !338
  %i.avs = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i307, i64 16
  %i.avt = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i306, i64 16
  %i.avu = load i32, ptr %i.avs, align 4, !tbaa !338
  store i32 %i.avu, ptr %i.avt, align 4, !tbaa !338
  %i.avv = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i306, i64 20
  %i.avw = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i307, i64 20
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !338
  store i32 %i.avx, ptr %i.avv, align 4, !tbaa !338
  %i.avy = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i307, i64 24
  %i.avz = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i306, i64 24
  %i.awa = load i32, ptr %i.avy, align 4, !tbaa !338
  store i32 %i.awa, ptr %i.avz, align 4, !tbaa !338
  %i.awb = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i306, i64 28
  %i.awc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i307, i64 28
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !338
  store i32 %i.awd, ptr %i.awb, align 4, !tbaa !338
  %i.awe = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i34.i307, i64 32 ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %.01417.i.i33.i306, i64 32
  %i.awg = add i64 %.018.i.i32.i305, -4           ; 2 uses
  %.not.i.i35.i308.3 = icmp eq i64 %i.awg, 0
  br i1 %.not.i.i35.i308.3, label %.loopexit1062, label %.lr.ph.i.i31.i304, !llvm.loop !21227

.loopexit1062:                                    ; preds = %.lr.ph.i.i31.i304.prol.loopexit, %.lr.ph.i.i31.i304, %middle.block861
  %.lcssa676 = phi ptr [ %i.auv, %middle.block861 ], [ %.lcssa1086.unr, %.lr.ph.i.i31.i304.prol.loopexit ], [ %i.awe, %.lr.ph.i.i31.i304 ]
  %i.awh = sub nuw i64 %.02643.i303, %i.aup       ; 2 uses
  %.not28.i309 = icmp eq i64 %i.awh, 0
  br i1 %.not28.i309, label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE52priv_segmented_proxy_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit311, label %.lr.ph.i300, !llvm.loop !216

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE52priv_segmented_proxy_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit311: ; preds = %.loopexit1062, %.loopexit40.i297
  %i.awi = add i64 %i.xy, %3
  store i64 %i.awi, ptr %i.a, align 8, !tbaa !521
  br label %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit

_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE38priv_segmented_proxy_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit: ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i224, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i146, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit32.i, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE52priv_segmented_proxy_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE52priv_segmented_proxy_uninitialized_copy_n_and_updateINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEvNS0_14deque_iteratorIPS3_Lb0ELj0ELj0EmEEmRT_.exit311, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmIEl.exit203, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i212, %_ZN5boost9container10deque_implISt4pairIiiEvLb0EvE21priv_segmented_move_nENS0_14deque_iteratorIPS3_Lb1ELj0ELj0EmEEmNS5_IS6_Lb0ELj0ELj0EmEE.exit, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit.i134
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE29prot_reallocate_map_and_nodesENS_11move_detail5bool_ILb0EEESB_mb(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = lshr i64 %i.a, 7                         ; 5 uses
  %i.c = add nuw nsw i64 %i.b, 1                  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !520  ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !519    ; 6 uses
  %i.g = lshr i64 %i.e, 7                         ; 2 uses
  %.idx78 = shl nuw nsw i64 %i.g, 3               ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx78 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !521  ; 2 uses
  %i.k = lshr i64 %i.j, 7                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !522  ; 5 uses
  %i.n = xor i64 %i.k, -1
  %i.o = add i64 %i.m, %i.n
  %i.p = select i1 %2, i64 %i.g, i64 %i.o
  %.not77 = icmp ult i64 %i.b, %i.p
  br i1 %.not77, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %i.k, 3
  %i.q = add nuw nsw i64 %.idx, 8                 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.q
  %gepdiff = sub nsw i64 %i.q, %.idx78            ; 6 uses
  %i.s = ashr exact i64 %gepdiff, 3               ; 2 uses
  %i.t = add nsw i64 %i.s, %i.c                   ; 4 uses
  %i.u = lshr i64 %i.m, 1
  %.not = icmp ult i64 %i.u, %i.t
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = sub nuw i64 %i.m, %i.t
  %i.w = lshr i64 %i.v, 1
  %i.x = select i1 %2, i64 %i.c, i64 0
  %i.y = getelementptr [8 x i8], ptr %i.f, i64 %i.w
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %i.x ; 8 uses
  %i.aa = icmp ult ptr %i.z, %i.h
  %.not.i.i = icmp eq i64 %i.q, %.idx78           ; 2 uses
  br i1 %i.aa, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %_ZN5boost9container6move_nIPPSt4pairIiiES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit, label %bb.e, !prof !344

bb.e:                                             ; preds = %bb.d
  %.not79 = icmp eq ptr %i.z, null
  br i1 %.not79, label %_ZN5boost9container6move_nIPPSt4pairIiiES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.h, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container6move_nIPPSt4pairIiiES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit

bb.g:                                             ; preds = %bb.c
  br i1 %.not.i.i, label %_ZN5boost9container6move_nIPPSt4pairIiiES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit, label %bb.h, !prof !344

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 %gepdiff
  %i.ac = sub nsw i64 0, %i.s                     ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ae, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container6move_nIPPSt4pairIiiES5_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES8_mS9_.exit

bb.i:                                             ; preds = %bb.b
  %i.af = shl i64 %i.m, 1
  %i.ag = add nsw i64 %i.t, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ag) ; 5 uses
  %i.ah = shl i64 %.sroa.speculated, 7
  %i.ai = add i64 %i.ah, -1152921504606847104
  %i.aj = icmp ult i64 %i.ai, -1152921504606846976
  br i1 %i.aj, label %bb.j, label %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE21test_size_against_maxEm.exit, !prof !344

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.6) #22
  unreachable

_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE21test_size_against_maxEm.exit: ; preds = %bb.i
  %i.ak = icmp ugt i64 %.sroa.speculated, 1152921504606846975
  br i1 %i.ak, label %bb.k, label %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE17prot_allocate_mapEm.exit, !prof !344

bb.k:                                             ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE21test_size_against_maxEm.exit
  tail call void @_ZN5boost9container15throw_bad_allocEv() #22
  unreachable

_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE17prot_allocate_mapEm.exit: ; preds = %_ZN5boost9container10deque_baseINS0_13new_allocatorISt4pairIiiEEENS0_9deque_optILm0ELm0EmLb0EEELb0EE21test_size_against_maxEm.exit
  %i.al = shl nuw nsw i64 %.sroa.speculated, 3
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #28 ; 2 uses
  %i.an = sub nsw i64 %.sroa.speculated, %i.t
  %i.ao = lshr i64 %i.an, 1
  %i.ap = select i1 %2, i64 %i.c, i64 0
  %i.aq = getelementptr [8 x i8], ptr %i.am, i64 %i.ao
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %i.ap ; 2 uses
  %.not.i.i58 = icmp ne i64 %i.q, %.idx78
end_hunk_6
begin_hunk_7_@_ZN5boost9container8devectorISt4pairIiiEvvE12insert_rangeINS_13move_iteratorIPNS0_3dtl4pairIiiEEEEEEPS3_PKS3_T_SF_:bb.a
  %i.bx = icmp ult i64 %i.bp, 3
  br i1 %i.bx, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.by = load i32, ptr %.sroa.0.07.i.i.i, align 4, !tbaa !338
  store i32 %i.by, ptr %.048.i.i.i, align 4, !tbaa !338
  %i.bz = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !338
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !338
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !338
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !338
  %i.cf = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !338
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !338
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !338
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !338
  %i.cl = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 20
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !338
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !338
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 24
  %i.cq = add i64 %.09.i.i.i, -4                  ; 2 uses
  %i.cr = load i32, ptr %i.co, align 4, !tbaa !338
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !338
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 28
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 28
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !338
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !338
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 32
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 32
  %.not.i.i35.i.3 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i35.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, label %.lr.ph.i.i.i, !llvm.loop !30261

bb.n:                                             ; preds = %bb.j
  %.not79 = icmp eq ptr %1, null
  br i1 %.not79, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %bb.o, !prof !344

bb.o:                                             ; preds = %bb.n
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr nonnull align 4 %1, i64 %i.ay, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.o, %bb.n
  %min.iters.check122 = icmp ult i64 %i.az, 6
  br i1 %min.iters.check122, label %.lr.ph.i.i40.i.preheader, label %vector.memcheck123

vector.memcheck123:                               ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.cy = getelementptr i8, ptr %2, i64 %i.ay
  %bound0124 = icmp ult ptr %1, %i.cy
  %bound1125 = icmp ult ptr %2, %i.o
  %found.conflict126 = and i1 %bound0124, %bound1125
  br i1 %found.conflict126, label %.lr.ph.i.i40.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %vector.memcheck123
  %n.vec128 = and i64 %i.az, -4                   ; 3 uses
  %i.cz = and i64 %i.az, 3
  %i.da = shl nsw i64 %n.vec128, 3                ; 2 uses
  %i.db = getelementptr i8, ptr %1, i64 %i.da
  %i.dc = getelementptr i8, ptr %2, i64 %i.da     ; 2 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next143, %vector.body129 ] ; 2 uses
  %i.dd = shl i64 %index130, 3                    ; 3 uses
  %i.de = or disjoint i64 %i.dd, 16               ; 2 uses
  %next.gep131 = getelementptr i8, ptr %1, i64 %i.dd
  %next.gep132 = getelementptr i8, ptr %1, i64 %i.de
  %next.gep133 = getelementptr i8, ptr %2, i64 %i.dd
  %next.gep134 = getelementptr i8, ptr %2, i64 %i.de
  %wide.vec135 = load <4 x i32>, ptr %next.gep133, align 4, !tbaa !338, !alias.scope !30294
  %wide.vec138 = load <4 x i32>, ptr %next.gep134, align 4, !tbaa !338, !alias.scope !30294
  store <4 x i32> %wide.vec135, ptr %next.gep131, align 4, !tbaa !338, !alias.scope !30295, !noalias !30294
  store <4 x i32> %wide.vec138, ptr %next.gep132, align 4, !tbaa !338, !alias.scope !30295, !noalias !30294
  %index.next143 = add nuw i64 %index130, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next143, %n.vec128
  br i1 %i.df, label %middle.block144, label %vector.body129, !llvm.loop !30265

middle.block144:                                  ; preds = %vector.body129
  %cmp.n145 = icmp eq i64 %i.az, %n.vec128
  br i1 %cmp.n145, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit46.i, label %.lr.ph.i.i40.i.preheader

.lr.ph.i.i40.i.preheader:                         ; preds = %vector.memcheck123, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, %middle.block144
  %.09.i.i41.i.ph = phi i64 [ %i.az, %vector.memcheck123 ], [ %i.az, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.cz, %middle.block144 ] ; 4 uses
  %.048.i.i42.i.ph = phi ptr [ %1, %vector.memcheck123 ], [ %1, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.db, %middle.block144 ] ; 2 uses
  %.sroa.0.07.i.i43.i.ph = phi ptr [ %2, %vector.memcheck123 ], [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.dc, %middle.block144 ] ; 2 uses
  %i.dg = add nsw i64 %.09.i.i41.i.ph, -1
  %xtraiter290 = and i64 %.09.i.i41.i.ph, 3       ; 2 uses
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %.lr.ph.i.i40.i.prol.loopexit, label %.lr.ph.i.i40.i.prol

.lr.ph.i.i40.i.prol:                              ; preds = %.lr.ph.i.i40.i.preheader, %.lr.ph.i.i40.i.prol
  %.09.i.i41.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i40.i.prol ], [ %.09.i.i41.i.ph, %.lr.ph.i.i40.i.preheader ]
  %.048.i.i42.i.prol = phi ptr [ %i.dn, %.lr.ph.i.i40.i.prol ], [ %.048.i.i42.i.ph, %.lr.ph.i.i40.i.preheader ] ; 3 uses
  %.sroa.0.07.i.i43.i.prol = phi ptr [ %i.dm, %.lr.ph.i.i40.i.prol ], [ %.sroa.0.07.i.i43.i.ph, %.lr.ph.i.i40.i.preheader ] ; 3 uses
  %prol.iter292 = phi i64 [ %prol.iter292.next, %.lr.ph.i.i40.i.prol ], [ 0, %.lr.ph.i.i40.i.preheader ]
  %i.dh = add i64 %.09.i.i41.i.prol, -1           ; 2 uses
  %i.di = load i32, ptr %.sroa.0.07.i.i43.i.prol, align 4, !tbaa !338
  store i32 %i.di, ptr %.048.i.i42.i.prol, align 4, !tbaa !338
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i42.i.prol, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i.prol, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !338
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !338
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i.prol, i64 8 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i42.i.prol, i64 8 ; 2 uses
  %prol.iter292.next = add i64 %prol.iter292, 1   ; 2 uses
  %prol.iter292.cmp.not = icmp eq i64 %prol.iter292.next, %xtraiter290
  br i1 %prol.iter292.cmp.not, label %.lr.ph.i.i40.i.prol.loopexit, label %.lr.ph.i.i40.i.prol, !llvm.loop !30266

.lr.ph.i.i40.i.prol.loopexit:                     ; preds = %.lr.ph.i.i40.i.prol, %.lr.ph.i.i40.i.preheader
  %.lcssa288.unr = phi ptr [ poison, %.lr.ph.i.i40.i.preheader ], [ %i.dm, %.lr.ph.i.i40.i.prol ]
  %.09.i.i41.i.unr = phi i64 [ %.09.i.i41.i.ph, %.lr.ph.i.i40.i.preheader ], [ %i.dh, %.lr.ph.i.i40.i.prol ]
  %.048.i.i42.i.unr = phi ptr [ %.048.i.i42.i.ph, %.lr.ph.i.i40.i.preheader ], [ %i.dn, %.lr.ph.i.i40.i.prol ]
  %.sroa.0.07.i.i43.i.unr = phi ptr [ %.sroa.0.07.i.i43.i.ph, %.lr.ph.i.i40.i.preheader ], [ %i.dm, %.lr.ph.i.i40.i.prol ]
  %i.do = icmp ult i64 %i.dg, 3
  br i1 %i.do, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit46.i, label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i.prol.loopexit, %.lr.ph.i.i40.i
  %.09.i.i41.i = phi i64 [ %i.eh, %.lr.ph.i.i40.i ], [ %.09.i.i41.i.unr, %.lr.ph.i.i40.i.prol.loopexit ]
  %.048.i.i42.i = phi ptr [ %i.en, %.lr.ph.i.i40.i ], [ %.048.i.i42.i.unr, %.lr.ph.i.i40.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i43.i = phi ptr [ %i.em, %.lr.ph.i.i40.i ], [ %.sroa.0.07.i.i43.i.unr, %.lr.ph.i.i40.i.prol.loopexit ] ; 9 uses
  %i.dp = load i32, ptr %.sroa.0.07.i.i43.i, align 4, !tbaa !338
  store i32 %i.dp, ptr %.048.i.i42.i, align 4, !tbaa !338
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !338
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !338
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 8
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !338
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !338
  %i.dw = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 12
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !338
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !338
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 16
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !338
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !338
  %i.ec = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 20
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i, i64 20
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !338
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !338
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 24
  %i.eh = add i64 %.09.i.i41.i, -4                ; 2 uses
  %i.ei = load i32, ptr %i.ef, align 4, !tbaa !338
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !338
  %i.ej = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 28
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i, i64 28
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !338
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !338
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i, i64 32 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 32
  %.not.i.i44.i.3 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i44.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit46.i, label %.lr.ph.i.i40.i, !llvm.loop !30267

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit46.i: ; preds = %.lr.ph.i.i40.i.prol.loopexit, %.lr.ph.i.i40.i, %middle.block144
  %.lcssa104 = phi ptr [ %i.dc, %middle.block144 ], [ %.lcssa288.unr, %.lr.ph.i.i40.i.prol.loopexit ], [ %i.em, %.lr.ph.i.i40.i ] ; 7 uses
  %i.eo = sub nsw i64 %i.d, %i.az                 ; 6 uses
  %min.iters.check155 = icmp ult i64 %i.eo, 12
  br i1 %min.iters.check155, label %.lr.ph.i.i48.i.preheader, label %vector.memcheck156

vector.memcheck156:                               ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit46.i
  %i.ep = add i64 %i.n, %i.d
  %i.eq = shl i64 %i.ep, 3
  %i.er = sub i64 %i.eq, %i.ay
  %i.es = getelementptr i8, ptr %i.e, i64 %i.er
  %i.et = sub i64 %i.c, %i.ay
  %i.eu = getelementptr i8, ptr %.lcssa104, i64 %i.et
  %bound0157 = icmp ult ptr %i.o, %i.eu
  %bound1158 = icmp ult ptr %.lcssa104, %i.es
  %found.conflict159 = and i1 %bound0157, %bound1158
  br i1 %found.conflict159, label %.lr.ph.i.i48.i.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %vector.memcheck156
  %n.vec161 = and i64 %i.eo, -4                   ; 3 uses
  %i.ev = and i64 %i.eo, 3
  %i.ew = shl i64 %n.vec161, 3                    ; 2 uses
  %i.ex = getelementptr i8, ptr %i.o, i64 %i.ew
  %i.ey = getelementptr i8, ptr %.lcssa104, i64 %i.ew
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next178, %vector.body162 ] ; 2 uses
  %i.ez = shl i64 %index163, 3                    ; 3 uses
  %i.fa = or disjoint i64 %i.ez, 16               ; 2 uses
  %next.gep164 = getelementptr i8, ptr %i.o, i64 %i.ez ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.o, i64 %i.fa ; 2 uses
  %next.gep168 = getelementptr i8, ptr %.lcssa104, i64 %i.ez
  %next.gep169 = getelementptr i8, ptr %.lcssa104, i64 %i.fa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep164) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep166) ]
  %wide.vec170 = load <4 x i32>, ptr %next.gep168, align 4, !tbaa !338, !alias.scope !30296
  %wide.vec173 = load <4 x i32>, ptr %next.gep169, align 4, !tbaa !338, !alias.scope !30296
  store <4 x i32> %wide.vec170, ptr %next.gep164, align 4, !tbaa !338, !alias.scope !30297, !noalias !30296
  store <4 x i32> %wide.vec173, ptr %next.gep166, align 4, !tbaa !338, !alias.scope !30297, !noalias !30296
  %index.next178 = add nuw i64 %index163, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next178, %n.vec161
  br i1 %i.fb, label %middle.block179, label %vector.body162, !llvm.loop !30271

middle.block179:                                  ; preds = %vector.body162
  %cmp.n180 = icmp eq i64 %i.eo, %n.vec161
  br i1 %cmp.n180, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, label %.lr.ph.i.i48.i.preheader

.lr.ph.i.i48.i.preheader:                         ; preds = %vector.memcheck156, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit46.i, %middle.block179
  %.018.i.i.i.ph = phi i64 [ %i.eo, %vector.memcheck156 ], [ %i.eo, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit46.i ], [ %i.ev, %middle.block179 ] ; 4 uses
  %.01417.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck156 ], [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit46.i ], [ %i.ex, %middle.block179 ] ; 2 uses
  %.sroa.0.016.i.i.i.ph = phi ptr [ %.lcssa104, %vector.memcheck156 ], [ %.lcssa104, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit46.i ], [ %i.ey, %middle.block179 ] ; 2 uses
  %i.fc = add nsw i64 %.018.i.i.i.ph, -1
  %xtraiter293 = and i64 %.018.i.i.i.ph, 3        ; 2 uses
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %.lr.ph.i.i48.i.prol.loopexit, label %.lr.ph.i.i48.i.prol

.lr.ph.i.i48.i.prol:                              ; preds = %.lr.ph.i.i48.i.preheader, %.lr.ph.i.i48.i.prol
  %.018.i.i.i.prol = phi i64 [ %i.fj, %.lr.ph.i.i48.i.prol ], [ %.018.i.i.i.ph, %.lr.ph.i.i48.i.preheader ]
  %.01417.i.i.i.prol = phi ptr [ %i.fi, %.lr.ph.i.i48.i.prol ], [ %.01417.i.i.i.ph, %.lr.ph.i.i48.i.preheader ] ; 4 uses
  %.sroa.0.016.i.i.i.prol = phi ptr [ %i.fh, %.lr.ph.i.i48.i.prol ], [ %.sroa.0.016.i.i.i.ph, %.lr.ph.i.i48.i.preheader ] ; 3 uses
  %prol.iter295 = phi i64 [ %prol.iter295.next, %.lr.ph.i.i48.i.prol ], [ 0, %.lr.ph.i.i48.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.prol) ]
  %i.fd = load i32, ptr %.sroa.0.016.i.i.i.prol, align 4, !tbaa !338
  store i32 %i.fd, ptr %.01417.i.i.i.prol, align 4, !tbaa !338
  %i.fe = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.prol, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.prol, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !338
  store i32 %i.fg, ptr %i.fe, align 4, !tbaa !338
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.prol, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.prol, i64 8 ; 2 uses
  %i.fj = add i64 %.018.i.i.i.prol, -1            ; 2 uses
  %prol.iter295.next = add i64 %prol.iter295, 1   ; 2 uses
  %prol.iter295.cmp.not = icmp eq i64 %prol.iter295.next, %xtraiter293
  br i1 %prol.iter295.cmp.not, label %.lr.ph.i.i48.i.prol.loopexit, label %.lr.ph.i.i48.i.prol, !llvm.loop !30272

.lr.ph.i.i48.i.prol.loopexit:                     ; preds = %.lr.ph.i.i48.i.prol, %.lr.ph.i.i48.i.preheader
  %.018.i.i.i.unr = phi i64 [ %.018.i.i.i.ph, %.lr.ph.i.i48.i.preheader ], [ %i.fj, %.lr.ph.i.i48.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %.01417.i.i.i.ph, %.lr.ph.i.i48.i.preheader ], [ %i.fi, %.lr.ph.i.i48.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.sroa.0.016.i.i.i.ph, %.lr.ph.i.i48.i.preheader ], [ %i.fh, %.lr.ph.i.i48.i.prol ]
  %i.fk = icmp ult i64 %i.fc, 3
  br i1 %i.fk, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, label %.lr.ph.i.i48.i

.lr.ph.i.i48.i:                                   ; preds = %.lr.ph.i.i48.i.prol.loopexit, %.lr.ph.i.i48.i
  %.018.i.i.i = phi i64 [ %i.gj, %.lr.ph.i.i48.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i48.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.gi, %.lr.ph.i.i48.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i48.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i48.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i48.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fl = load i32, ptr %.sroa.0.016.i.i.i, align 4, !tbaa !338
  store i32 %i.fl, ptr %.01417.i.i.i, align 4, !tbaa !338
  %i.fm = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 4
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !338
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !338
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !338
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !338
  %i.fs = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 12
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 12
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !338
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !338
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 16
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !338
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !338
  %i.fy = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 20
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 20
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !338
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !338
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 24
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !338
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !338
  %i.ge = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 28
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 28
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !338
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !338
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 32
  %i.gj = add i64 %.018.i.i.i, -4                 ; 2 uses
  %.not.i.i49.i.3 = icmp eq i64 %i.gj, 0
  br i1 %.not.i.i49.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, label %.lr.ph.i.i48.i, !llvm.loop !30273

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.lr.ph.i.i48.i.prol.loopexit, %.lr.ph.i.i48.i, %middle.block, %middle.block179
  %i.gk = load i64, ptr %i.m, align 8, !tbaa !550
  %i.gl = add i64 %i.gk, %i.d
  store i64 %i.gl, ptr %i.m, align 8, !tbaa !554
  br label %bb.v

bb.p:                                             ; preds = %bb.h
  %.not46 = icmp ult i64 %i.ab, %i.d
  br i1 %.not46, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i58 = icmp ult i64 %i.ar, %i.d
  %i.gm = sub nsw i64 0, %i.d                     ; 2 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.gm ; 4 uses
  %.not77 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %.not.i58, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.not77, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %bb.r
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gn, ptr nonnull align 1 %i.ac, i64 %i.c, i1 false)
  %i.go = getelementptr inbounds i8, ptr %i.ac, i64 %i.c ; 3 uses
  %.not76 = icmp eq ptr %i.go, %1
  br i1 %.not76, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, label %bb.s, !prof !445

bb.s:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = sub i64 %i.ao, %i.gp                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 4 %i.go, i64 %i.gq, i1 false)
  %i.gr = getelementptr inbounds i8, ptr %i.ac, i64 %i.gq
  br label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i: ; preds = %bb.r, %bb.s, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.0.i.i36.i = phi ptr [ %i.gr, %bb.s ], [ %i.ac, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ null, %bb.r ] ; 7 uses
  %min.iters.check190 = icmp ult i64 %i.d, 6
  br i1 %min.iters.check190, label %.lr.ph.i.i.i61.preheader, label %vector.memcheck191

vector.memcheck191:                               ; preds = %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i
  %i.gs = getelementptr i8, ptr %.0.i.i36.i, i64 %i.c
  %bound0192 = icmp ult ptr %.0.i.i36.i, %3
  %bound1193 = icmp ult ptr %2, %i.gs
  %found.conflict194 = and i1 %bound0192, %bound1193
  br i1 %found.conflict194, label %.lr.ph.i.i.i61.preheader, label %vector.ph195

vector.ph195:                                     ; preds = %vector.memcheck191
  %n.vec196 = and i64 %i.d, -4                    ; 3 uses
  %i.gt = and i64 %i.d, 3
  %i.gu = shl nsw i64 %n.vec196, 3                ; 2 uses
  %i.gv = getelementptr i8, ptr %.0.i.i36.i, i64 %i.gu
  %i.gw = getelementptr i8, ptr %2, i64 %i.gu
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph195
  %index198 = phi i64 [ 0, %vector.ph195 ], [ %index.next211, %vector.body197 ] ; 2 uses
  %i.gx = shl i64 %index198, 3                    ; 3 uses
  %i.gy = or disjoint i64 %i.gx, 16               ; 2 uses
  %next.gep199 = getelementptr i8, ptr %.0.i.i36.i, i64 %i.gx
  %next.gep200 = getelementptr i8, ptr %.0.i.i36.i, i64 %i.gy
  %next.gep201 = getelementptr i8, ptr %2, i64 %i.gx
  %next.gep202 = getelementptr i8, ptr %2, i64 %i.gy
  %wide.vec203 = load <4 x i32>, ptr %next.gep201, align 4, !tbaa !338, !alias.scope !30298
  %wide.vec206 = load <4 x i32>, ptr %next.gep202, align 4, !tbaa !338, !alias.scope !30298
  store <4 x i32> %wide.vec203, ptr %next.gep199, align 4, !tbaa !338, !alias.scope !30299, !noalias !30298
  store <4 x i32> %wide.vec206, ptr %next.gep200, align 4, !tbaa !338, !alias.scope !30299, !noalias !30298
  %index.next211 = add nuw i64 %index198, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next211, %n.vec196
  br i1 %i.gz, label %middle.block212, label %vector.body197, !llvm.loop !30277

middle.block212:                                  ; preds = %vector.body197
  %cmp.n213 = icmp eq i64 %i.d, %n.vec196
  br i1 %cmp.n213, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, label %.lr.ph.i.i.i61.preheader

.lr.ph.i.i.i61.preheader:                         ; preds = %vector.memcheck191, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i, %middle.block212
  %.09.i.i.i62.ph = phi i64 [ %i.d, %vector.memcheck191 ], [ %i.d, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.gt, %middle.block212 ] ; 4 uses
  %.048.i.i.i63.ph = phi ptr [ %.0.i.i36.i, %vector.memcheck191 ], [ %.0.i.i36.i, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.gv, %middle.block212 ] ; 2 uses
  %.sroa.0.07.i.i.i64.ph = phi ptr [ %2, %vector.memcheck191 ], [ %2, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i ], [ %i.gw, %middle.block212 ] ; 2 uses
  %i.ha = add nsw i64 %.09.i.i.i62.ph, -1
  %xtraiter296 = and i64 %.09.i.i.i62.ph, 3       ; 2 uses
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %.lr.ph.i.i.i61.prol.loopexit, label %.lr.ph.i.i.i61.prol

.lr.ph.i.i.i61.prol:                              ; preds = %.lr.ph.i.i.i61.preheader, %.lr.ph.i.i.i61.prol
  %.09.i.i.i62.prol = phi i64 [ %i.hb, %.lr.ph.i.i.i61.prol ], [ %.09.i.i.i62.ph, %.lr.ph.i.i.i61.preheader ]
  %.048.i.i.i63.prol = phi ptr [ %i.hh, %.lr.ph.i.i.i61.prol ], [ %.048.i.i.i63.ph, %.lr.ph.i.i.i61.preheader ] ; 3 uses
  %.sroa.0.07.i.i.i64.prol = phi ptr [ %i.hg, %.lr.ph.i.i.i61.prol ], [ %.sroa.0.07.i.i.i64.ph, %.lr.ph.i.i.i61.preheader ] ; 3 uses
  %prol.iter298 = phi i64 [ %prol.iter298.next, %.lr.ph.i.i.i61.prol ], [ 0, %.lr.ph.i.i.i61.preheader ]
  %i.hb = add i64 %.09.i.i.i62.prol, -1           ; 2 uses
  %i.hc = load i32, ptr %.sroa.0.07.i.i.i64.prol, align 4, !tbaa !338
  store i32 %i.hc, ptr %.048.i.i.i63.prol, align 4, !tbaa !338
  %i.hd = getelementptr inbounds nuw i8, ptr %.048.i.i.i63.prol, i64 4
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i64.prol, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !338
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !338
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i64.prol, i64 8 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.048.i.i.i63.prol, i64 8 ; 2 uses
  %prol.iter298.next = add i64 %prol.iter298, 1   ; 2 uses
  %prol.iter298.cmp.not = icmp eq i64 %prol.iter298.next, %xtraiter296
  br i1 %prol.iter298.cmp.not, label %.lr.ph.i.i.i61.prol.loopexit, label %.lr.ph.i.i.i61.prol, !llvm.loop !30278

.lr.ph.i.i.i61.prol.loopexit:                     ; preds = %.lr.ph.i.i.i61.prol, %.lr.ph.i.i.i61.preheader
  %.09.i.i.i62.unr = phi i64 [ %.09.i.i.i62.ph, %.lr.ph.i.i.i61.preheader ], [ %i.hb, %.lr.ph.i.i.i61.prol ]
  %.048.i.i.i63.unr = phi ptr [ %.048.i.i.i63.ph, %.lr.ph.i.i.i61.preheader ], [ %i.hh, %.lr.ph.i.i.i61.prol ]
  %.sroa.0.07.i.i.i64.unr = phi ptr [ %.sroa.0.07.i.i.i64.ph, %.lr.ph.i.i.i61.preheader ], [ %i.hg, %.lr.ph.i.i.i61.prol ]
  %i.hi = icmp ult i64 %i.ha, 3
  br i1 %i.hi, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, label %.lr.ph.i.i.i61

.lr.ph.i.i.i61:                                   ; preds = %.lr.ph.i.i.i61.prol.loopexit, %.lr.ph.i.i.i61
  %.09.i.i.i62 = phi i64 [ %i.ib, %.lr.ph.i.i.i61 ], [ %.09.i.i.i62.unr, %.lr.ph.i.i.i61.prol.loopexit ]
  %.048.i.i.i63 = phi ptr [ %i.ih, %.lr.ph.i.i.i61 ], [ %.048.i.i.i63.unr, %.lr.ph.i.i.i61.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i64 = phi ptr [ %i.ig, %.lr.ph.i.i.i61 ], [ %.sroa.0.07.i.i.i64.unr, %.lr.ph.i.i.i61.prol.loopexit ] ; 9 uses
  %i.hj = load i32, ptr %.sroa.0.07.i.i.i64, align 4, !tbaa !338
  store i32 %i.hj, ptr %.048.i.i.i63, align 4, !tbaa !338
  %i.hk = getelementptr inbounds nuw i8, ptr %.048.i.i.i63, i64 4
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i64, i64 4
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !338
  store i32 %i.hm, ptr %i.hk, align 4, !tbaa !338
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i64, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %.048.i.i.i63, i64 8
  %i.hp = load i32, ptr %i.hn, align 4, !tbaa !338
  store i32 %i.hp, ptr %i.ho, align 4, !tbaa !338
  %i.hq = getelementptr inbounds nuw i8, ptr %.048.i.i.i63, i64 12
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i64, i64 12
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !338
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !338
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i64, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %.048.i.i.i63, i64 16
  %i.hv = load i32, ptr %i.ht, align 4, !tbaa !338
  store i32 %i.hv, ptr %i.hu, align 4, !tbaa !338
  %i.hw = getelementptr inbounds nuw i8, ptr %.048.i.i.i63, i64 20
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i64, i64 20
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !338
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !338
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i64, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %.048.i.i.i63, i64 24
  %i.ib = add i64 %.09.i.i.i62, -4                ; 2 uses
  %i.ic = load i32, ptr %i.hz, align 4, !tbaa !338
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !338
  %i.id = getelementptr inbounds nuw i8, ptr %.048.i.i.i63, i64 28
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i64, i64 28
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !338
  store i32 %i.if, ptr %i.id, align 4, !tbaa !338
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i64, i64 32
  %i.ih = getelementptr inbounds nuw i8, ptr %.048.i.i.i63, i64 32
  %.not.i.i37.i.3 = icmp eq i64 %i.ib, 0
  br i1 %.not.i.i37.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, label %.lr.ph.i.i.i61, !llvm.loop !30279

bb.t:                                             ; preds = %bb.q
  br i1 %.not77, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i65, label %bb.u, !prof !344

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gn, ptr nonnull align 4 %i.ac, i64 %i.aq, i1 false)
  %i.ii = getelementptr inbounds i8, ptr %i.gn, i64 %i.aq
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i65

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i65: ; preds = %bb.u, %bb.t
  %.0.i.i40.i = phi ptr [ %i.ii, %bb.u ], [ %i.gn, %bb.t ] ; 7 uses
  %i.ij = sub nsw i64 %i.d, %i.ar                 ; 6 uses
  %min.iters.check223 = icmp ult i64 %i.ij, 8
  br i1 %min.iters.check223, label %.lr.ph.i.i42.i.preheader, label %vector.memcheck224

vector.memcheck224:                               ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i65
  %i.ik = sub i64 %i.c, %i.aq                     ; 2 uses
  %i.il = getelementptr i8, ptr %.0.i.i40.i, i64 %i.ik
  %i.im = getelementptr i8, ptr %2, i64 %i.ik
  %bound0225 = icmp ult ptr %.0.i.i40.i, %i.im
  %bound1226 = icmp ult ptr %2, %i.il
  %found.conflict227 = and i1 %bound0225, %bound1226
  br i1 %found.conflict227, label %.lr.ph.i.i42.i.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck224
  %n.vec229 = and i64 %i.ij, -4                   ; 3 uses
  %i.in = and i64 %i.ij, 3
  %i.io = shl i64 %n.vec229, 3                    ; 2 uses
  %i.ip = getelementptr i8, ptr %.0.i.i40.i, i64 %i.io
  %i.iq = getelementptr i8, ptr %2, i64 %i.io     ; 2 uses
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next246, %vector.body230 ] ; 2 uses
  %i.ir = shl i64 %index231, 3                    ; 3 uses
  %i.is = or disjoint i64 %i.ir, 16               ; 2 uses
  %next.gep232 = getelementptr i8, ptr %.0.i.i40.i, i64 %i.ir ; 2 uses
  %next.gep234 = getelementptr i8, ptr %.0.i.i40.i, i64 %i.is ; 2 uses
  %next.gep236 = getelementptr i8, ptr %2, i64 %i.ir
  %next.gep237 = getelementptr i8, ptr %2, i64 %i.is
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep232) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep234) ]
  %wide.vec238 = load <4 x i32>, ptr %next.gep236, align 4, !tbaa !338, !alias.scope !30300
  %wide.vec241 = load <4 x i32>, ptr %next.gep237, align 4, !tbaa !338, !alias.scope !30300
  store <4 x i32> %wide.vec238, ptr %next.gep232, align 4, !tbaa !338, !alias.scope !30301, !noalias !30300
  store <4 x i32> %wide.vec241, ptr %next.gep234, align 4, !tbaa !338, !alias.scope !30301, !noalias !30300
  %index.next246 = add nuw i64 %index231, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next246, %n.vec229
  br i1 %i.it, label %middle.block247, label %vector.body230, !llvm.loop !30283

middle.block247:                                  ; preds = %vector.body230
  %cmp.n248 = icmp eq i64 %i.ij, %n.vec229
  br i1 %cmp.n248, label %.lr.ph.i.i47.i.preheader, label %.lr.ph.i.i42.i.preheader

.lr.ph.i.i42.i.preheader:                         ; preds = %vector.memcheck224, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i65, %middle.block247
  %.018.i.i.i66.ph = phi i64 [ %i.ij, %vector.memcheck224 ], [ %i.ij, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i65 ], [ %i.in, %middle.block247 ] ; 4 uses
  %.01417.i.i.i67.ph = phi ptr [ %.0.i.i40.i, %vector.memcheck224 ], [ %.0.i.i40.i, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i65 ], [ %i.ip, %middle.block247 ] ; 2 uses
  %.sroa.0.016.i.i.i68.ph = phi ptr [ %2, %vector.memcheck224 ], [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i65 ], [ %i.iq, %middle.block247 ] ; 2 uses
  %i.iu = add nsw i64 %.018.i.i.i66.ph, -1
  %xtraiter299 = and i64 %.018.i.i.i66.ph, 3      ; 2 uses
  %lcmp.mod300.not = icmp eq i64 %xtraiter299, 0
  br i1 %lcmp.mod300.not, label %.lr.ph.i.i42.i.prol.loopexit, label %.lr.ph.i.i42.i.prol

.lr.ph.i.i42.i.prol:                              ; preds = %.lr.ph.i.i42.i.preheader, %.lr.ph.i.i42.i.prol
  %.018.i.i.i66.prol = phi i64 [ %i.jb, %.lr.ph.i.i42.i.prol ], [ %.018.i.i.i66.ph, %.lr.ph.i.i42.i.preheader ]
  %.01417.i.i.i67.prol = phi ptr [ %i.ja, %.lr.ph.i.i42.i.prol ], [ %.01417.i.i.i67.ph, %.lr.ph.i.i42.i.preheader ] ; 4 uses
  %.sroa.0.016.i.i.i68.prol = phi ptr [ %i.iz, %.lr.ph.i.i42.i.prol ], [ %.sroa.0.016.i.i.i68.ph, %.lr.ph.i.i42.i.preheader ] ; 3 uses
  %prol.iter301 = phi i64 [ %prol.iter301.next, %.lr.ph.i.i42.i.prol ], [ 0, %.lr.ph.i.i42.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i67.prol) ]
  %i.iv = load i32, ptr %.sroa.0.016.i.i.i68.prol, align 4, !tbaa !338
  store i32 %i.iv, ptr %.01417.i.i.i67.prol, align 4, !tbaa !338
  %i.iw = getelementptr inbounds nuw i8, ptr %.01417.i.i.i67.prol, i64 4
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i68.prol, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !338
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !338
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i68.prol, i64 8 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.01417.i.i.i67.prol, i64 8 ; 2 uses
  %i.jb = add i64 %.018.i.i.i66.prol, -1          ; 2 uses
  %prol.iter301.next = add i64 %prol.iter301, 1   ; 2 uses
  %prol.iter301.cmp.not = icmp eq i64 %prol.iter301.next, %xtraiter299
  br i1 %prol.iter301.cmp.not, label %.lr.ph.i.i42.i.prol.loopexit, label %.lr.ph.i.i42.i.prol, !llvm.loop !30284

.lr.ph.i.i42.i.prol.loopexit:                     ; preds = %.lr.ph.i.i42.i.prol, %.lr.ph.i.i42.i.preheader
  %.lcssa286.unr = phi ptr [ poison, %.lr.ph.i.i42.i.preheader ], [ %i.iz, %.lr.ph.i.i42.i.prol ]
  %.018.i.i.i66.unr = phi i64 [ %.018.i.i.i66.ph, %.lr.ph.i.i42.i.preheader ], [ %i.jb, %.lr.ph.i.i42.i.prol ]
  %.01417.i.i.i67.unr = phi ptr [ %.01417.i.i.i67.ph, %.lr.ph.i.i42.i.preheader ], [ %i.ja, %.lr.ph.i.i42.i.prol ]
  %.sroa.0.016.i.i.i68.unr = phi ptr [ %.sroa.0.016.i.i.i68.ph, %.lr.ph.i.i42.i.preheader ], [ %i.iz, %.lr.ph.i.i42.i.prol ]
  %i.jc = icmp ult i64 %i.iu, 3
  br i1 %i.jc, label %.lr.ph.i.i47.i.preheader, label %.lr.ph.i.i42.i

.lr.ph.i.i42.i:                                   ; preds = %.lr.ph.i.i42.i.prol.loopexit, %.lr.ph.i.i42.i
  %.018.i.i.i66 = phi i64 [ %i.kb, %.lr.ph.i.i42.i ], [ %.018.i.i.i66.unr, %.lr.ph.i.i42.i.prol.loopexit ]
  %.01417.i.i.i67 = phi ptr [ %i.ka, %.lr.ph.i.i42.i ], [ %.01417.i.i.i67.unr, %.lr.ph.i.i42.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i.i68 = phi ptr [ %i.jz, %.lr.ph.i.i42.i ], [ %.sroa.0.016.i.i.i68.unr, %.lr.ph.i.i42.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i67) ]
  %i.jd = load i32, ptr %.sroa.0.016.i.i.i68, align 4, !tbaa !338
  store i32 %i.jd, ptr %.01417.i.i.i67, align 4, !tbaa !338
  %i.je = getelementptr inbounds nuw i8, ptr %.01417.i.i.i67, i64 4
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i68, i64 4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !338
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !338
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i68, i64 8
  %i.ji = getelementptr inbounds nuw i8, ptr %.01417.i.i.i67, i64 8
  %i.jj = load i32, ptr %i.jh, align 4, !tbaa !338
  store i32 %i.jj, ptr %i.ji, align 4, !tbaa !338
  %i.jk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i67, i64 12
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i68, i64 12
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !338
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !338
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i68, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %.01417.i.i.i67, i64 16
  %i.jp = load i32, ptr %i.jn, align 4, !tbaa !338
  store i32 %i.jp, ptr %i.jo, align 4, !tbaa !338
  %i.jq = getelementptr inbounds nuw i8, ptr %.01417.i.i.i67, i64 20
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i68, i64 20
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !338
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !338
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i68, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %.01417.i.i.i67, i64 24
  %i.jv = load i32, ptr %i.jt, align 4, !tbaa !338
  store i32 %i.jv, ptr %i.ju, align 4, !tbaa !338
  %i.jw = getelementptr inbounds nuw i8, ptr %.01417.i.i.i67, i64 28
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i68, i64 28
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !338
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !338
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i68, i64 32 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.01417.i.i.i67, i64 32
  %i.kb = add i64 %.018.i.i.i66, -4               ; 2 uses
  %.not.i.i43.i.3 = icmp eq i64 %i.kb, 0
  br i1 %.not.i.i43.i.3, label %.lr.ph.i.i47.i.preheader, label %.lr.ph.i.i42.i, !llvm.loop !30285

.lr.ph.i.i47.i.preheader:                         ; preds = %.lr.ph.i.i42.i.prol.loopexit, %.lr.ph.i.i42.i, %middle.block247
  %.lcssa = phi ptr [ %i.iq, %middle.block247 ], [ %.lcssa286.unr, %.lr.ph.i.i42.i.prol.loopexit ], [ %i.jz, %.lr.ph.i.i42.i ] ; 7 uses
  %min.iters.check258 = icmp ult i64 %i.ar, 10
  br i1 %min.iters.check258, label %.lr.ph.i.i47.i.preheader285, label %vector.memcheck259

vector.memcheck259:                               ; preds = %.lr.ph.i.i47.i.preheader
  %i.kc = shl nuw nsw i64 %i.ab, 3
  %i.kd = getelementptr i8, ptr %i.e, i64 %i.kc
  %i.ke = getelementptr i8, ptr %i.kd, i64 %i.aq
  %i.kf = getelementptr i8, ptr %.lcssa, i64 %i.aq
  %bound0260 = icmp ult ptr %i.ac, %i.kf
  %bound1261 = icmp ult ptr %.lcssa, %i.ke
  %found.conflict262 = and i1 %bound0260, %bound1261
  br i1 %found.conflict262, label %.lr.ph.i.i47.i.preheader285, label %vector.ph263

vector.ph263:                                     ; preds = %vector.memcheck259
  %n.vec264 = and i64 %i.ar, -4                   ; 3 uses
  %i.kg = and i64 %i.ar, 3
  %i.kh = shl nsw i64 %n.vec264, 3                ; 2 uses
  %i.ki = getelementptr i8, ptr %i.ac, i64 %i.kh
  %i.kj = getelementptr i8, ptr %.lcssa, i64 %i.kh
  br label %vector.body265

vector.body265:                                   ; preds = %vector.body265, %vector.ph263
  %index266 = phi i64 [ 0, %vector.ph263 ], [ %index.next279, %vector.body265 ] ; 2 uses
  %i.kk = shl i64 %index266, 3                    ; 3 uses
  %i.kl = or disjoint i64 %i.kk, 16               ; 2 uses
  %next.gep267 = getelementptr i8, ptr %i.ac, i64 %i.kk
  %next.gep268 = getelementptr i8, ptr %i.ac, i64 %i.kl
  %next.gep269 = getelementptr i8, ptr %.lcssa, i64 %i.kk
  %next.gep270 = getelementptr i8, ptr %.lcssa, i64 %i.kl
  %wide.vec271 = load <4 x i32>, ptr %next.gep269, align 4, !tbaa !338, !alias.scope !30302
  %wide.vec274 = load <4 x i32>, ptr %next.gep270, align 4, !tbaa !338, !alias.scope !30302
  store <4 x i32> %wide.vec271, ptr %next.gep267, align 4, !tbaa !338, !alias.scope !30303, !noalias !30302
  store <4 x i32> %wide.vec274, ptr %next.gep268, align 4, !tbaa !338, !alias.scope !30303, !noalias !30302
  %index.next279 = add nuw i64 %index266, 4       ; 2 uses
  %i.km = icmp eq i64 %index.next279, %n.vec264
  br i1 %i.km, label %middle.block280, label %vector.body265, !llvm.loop !30289

middle.block280:                                  ; preds = %vector.body265
  %cmp.n281 = icmp eq i64 %i.ar, %n.vec264
  br i1 %cmp.n281, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, label %.lr.ph.i.i47.i.preheader285

.lr.ph.i.i47.i.preheader285:                      ; preds = %vector.memcheck259, %.lr.ph.i.i47.i.preheader, %middle.block280
  %.09.i.i48.i.ph = phi i64 [ %i.ar, %vector.memcheck259 ], [ %i.ar, %.lr.ph.i.i47.i.preheader ], [ %i.kg, %middle.block280 ] ; 4 uses
  %.048.i.i49.i.ph = phi ptr [ %i.ac, %vector.memcheck259 ], [ %i.ac, %.lr.ph.i.i47.i.preheader ], [ %i.ki, %middle.block280 ] ; 2 uses
  %.sroa.0.07.i.i50.i.ph = phi ptr [ %.lcssa, %vector.memcheck259 ], [ %.lcssa, %.lr.ph.i.i47.i.preheader ], [ %i.kj, %middle.block280 ] ; 2 uses
  %i.kn = add nsw i64 %.09.i.i48.i.ph, -1
  %xtraiter302 = and i64 %.09.i.i48.i.ph, 3       ; 2 uses
  %lcmp.mod303.not = icmp eq i64 %xtraiter302, 0
  br i1 %lcmp.mod303.not, label %.lr.ph.i.i47.i.prol.loopexit, label %.lr.ph.i.i47.i.prol

.lr.ph.i.i47.i.prol:                              ; preds = %.lr.ph.i.i47.i.preheader285, %.lr.ph.i.i47.i.prol
  %.09.i.i48.i.prol = phi i64 [ %i.ko, %.lr.ph.i.i47.i.prol ], [ %.09.i.i48.i.ph, %.lr.ph.i.i47.i.preheader285 ]
  %.048.i.i49.i.prol = phi ptr [ %i.ku, %.lr.ph.i.i47.i.prol ], [ %.048.i.i49.i.ph, %.lr.ph.i.i47.i.preheader285 ] ; 3 uses
  %.sroa.0.07.i.i50.i.prol = phi ptr [ %i.kt, %.lr.ph.i.i47.i.prol ], [ %.sroa.0.07.i.i50.i.ph, %.lr.ph.i.i47.i.preheader285 ] ; 3 uses
  %prol.iter304 = phi i64 [ %prol.iter304.next, %.lr.ph.i.i47.i.prol ], [ 0, %.lr.ph.i.i47.i.preheader285 ]
  %i.ko = add i64 %.09.i.i48.i.prol, -1           ; 2 uses
  %i.kp = load i32, ptr %.sroa.0.07.i.i50.i.prol, align 4, !tbaa !338
  store i32 %i.kp, ptr %.048.i.i49.i.prol, align 4, !tbaa !338
  %i.kq = getelementptr inbounds nuw i8, ptr %.048.i.i49.i.prol, i64 4
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i.prol, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !338
  store i32 %i.ks, ptr %i.kq, align 4, !tbaa !338
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i.prol, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.048.i.i49.i.prol, i64 8 ; 2 uses
  %prol.iter304.next = add i64 %prol.iter304, 1   ; 2 uses
  %prol.iter304.cmp.not = icmp eq i64 %prol.iter304.next, %xtraiter302
  br i1 %prol.iter304.cmp.not, label %.lr.ph.i.i47.i.prol.loopexit, label %.lr.ph.i.i47.i.prol, !llvm.loop !30290

.lr.ph.i.i47.i.prol.loopexit:                     ; preds = %.lr.ph.i.i47.i.prol, %.lr.ph.i.i47.i.preheader285
  %.09.i.i48.i.unr = phi i64 [ %.09.i.i48.i.ph, %.lr.ph.i.i47.i.preheader285 ], [ %i.ko, %.lr.ph.i.i47.i.prol ]
  %.048.i.i49.i.unr = phi ptr [ %.048.i.i49.i.ph, %.lr.ph.i.i47.i.preheader285 ], [ %i.ku, %.lr.ph.i.i47.i.prol ]
  %.sroa.0.07.i.i50.i.unr = phi ptr [ %.sroa.0.07.i.i50.i.ph, %.lr.ph.i.i47.i.preheader285 ], [ %i.kt, %.lr.ph.i.i47.i.prol ]
  %i.kv = icmp ult i64 %i.kn, 3
  br i1 %i.kv, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, label %.lr.ph.i.i47.i

.lr.ph.i.i47.i:                                   ; preds = %.lr.ph.i.i47.i.prol.loopexit, %.lr.ph.i.i47.i
  %.09.i.i48.i = phi i64 [ %i.lo, %.lr.ph.i.i47.i ], [ %.09.i.i48.i.unr, %.lr.ph.i.i47.i.prol.loopexit ]
  %.048.i.i49.i = phi ptr [ %i.lu, %.lr.ph.i.i47.i ], [ %.048.i.i49.i.unr, %.lr.ph.i.i47.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i50.i = phi ptr [ %i.lt, %.lr.ph.i.i47.i ], [ %.sroa.0.07.i.i50.i.unr, %.lr.ph.i.i47.i.prol.loopexit ] ; 9 uses
  %i.kw = load i32, ptr %.sroa.0.07.i.i50.i, align 4, !tbaa !338
  store i32 %i.kw, ptr %.048.i.i49.i, align 4, !tbaa !338
  %i.kx = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 4
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i, i64 4
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !338
  store i32 %i.kz, ptr %i.kx, align 4, !tbaa !338
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 8
  %i.lc = load i32, ptr %i.la, align 4, !tbaa !338
  store i32 %i.lc, ptr %i.lb, align 4, !tbaa !338
  %i.ld = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 12
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i, i64 12
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !338
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !338
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i, i64 16
  %i.lh = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 16
  %i.li = load i32, ptr %i.lg, align 4, !tbaa !338
  store i32 %i.li, ptr %i.lh, align 4, !tbaa !338
  %i.lj = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 20
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i, i64 20
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !338
  store i32 %i.ll, ptr %i.lj, align 4, !tbaa !338
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i, i64 24
  %i.ln = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 24
  %i.lo = add i64 %.09.i.i48.i, -4                ; 2 uses
  %i.lp = load i32, ptr %i.lm, align 4, !tbaa !338
  store i32 %i.lp, ptr %i.ln, align 4, !tbaa !338
  %i.lq = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 28
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i, i64 28
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !338
  store i32 %i.ls, ptr %i.lq, align 4, !tbaa !338
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i, i64 32
  %i.lu = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 32
  %.not.i.i51.i.3 = icmp eq i64 %i.lo, 0
  br i1 %.not.i.i51.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, label %.lr.ph.i.i47.i, !llvm.loop !30291

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit: ; preds = %.lr.ph.i.i.i61.prol.loopexit, %.lr.ph.i.i.i61, %.lr.ph.i.i47.i.prol.loopexit, %.lr.ph.i.i47.i, %middle.block212, %middle.block280
  %i.lv = load i64, ptr %i.aa, align 8, !tbaa !551
  %i.lw = sub i64 %i.lv, %i.d
  store i64 %i.lw, ptr %i.aa, align 8, !tbaa !553
  %i.lx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gm
  br label %bb.v

.thread:                                          ; preds = %bb.i, %bb.p, %bb.f, %bb.d
  %i.ly = tail call noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %i.d, ptr %2)
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS0_3dtl4pairIiiEEEEPS4_EENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SF_E4typeERT_SE_SE_SF_.exit56, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS0_3dtl4pairIiiEEEEPS4_EENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SF_E4typeERT_SE_SE_SF_.exit, %bb.b
  %.1 = phi ptr [ %i.l, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS0_3dtl4pairIiiEEEEPS4_EENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SF_E4typeERT_SE_SE_SF_.exit ], [ %i.ly, %.thread ], [ %i.an, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS0_3dtl4pairIiiEEEEPS4_EENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SF_E4typeERT_SE_SE_SF_.exit56 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit ], [ %i.lx, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorISt4pairIiiEvvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS6_4pairIiiEEEEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !549  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !550  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !551  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !548    ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS5_4pairIiiEEEEEES8_EEvT_mSF_SF_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS5_4pairIiiEEEEEES8_EEvT_mSF_SF_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvT0_mSF_SF_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS5_4pairIiiEEEEEES8_EEvT_mSF_SF_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS5_4pairIiiEEEEEES8_EEvT_mSF_SF_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !553
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !554
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !548
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 1152921504606846975, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.18) #22
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 1152921504606846975
  br i1 %i.ad, label %bb.l, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i, !prof !344

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #22
  unreachable

_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i: ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28
  %.pre = load i64, ptr %i.c, align 8, !tbaa !550
  %.pre60 = load i64, ptr %i.f, align 8, !tbaa !551
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !548
  br label %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit

_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i
  %i.ag = phi ptr [ %.pre61, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.ah = phi i64 [ %.pre60, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %i.ai = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 2 uses
  %.0.i.i52 = phi ptr [ %i.af, %_ZN5boost9container16allocator_traitsINS0_13new_allocatorISt4pairIiiEEEE8allocateERS5_m.exit.i.i ], [ null, %_ZN5boost9container8devectorISt4pairIiiEvvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = add i64 %2, %i.aj                       ; 2 uses
  %i.al = sub i64 %i.ac, %i.ak
  %i.am = lshr i64 %i.al, 1                       ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i52, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.aq = icmp ne ptr %i.ao, %1
  %i.ar = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.ar, %i.aq
  %i.as = icmp ne ptr %i.ag, null                 ; 2 uses
  %spec.select.i.i.i = and i1 %i.as, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.m, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, !prof !367

bb.m:                                             ; preds = %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %i.at = ptrtoint ptr %1 to i64
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 4 %i.ao, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %i.an, i64 %i.av
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %bb.m, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit
  %.0.i.i.i = phi ptr [ %i.aw, %bb.m ], [ %i.an, %_ZN5boost9container8devectorISt4pairIiiEvvE8allocateEm.exit ] ; 6 uses
  %.not15.i.i.i = icmp eq i64 %2, 0
  br i1 %.not15.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %2, -4                         ; 3 uses
  %i.ax = and i64 %2, 3
  %i.ay = shl i64 %n.vec, 3                       ; 2 uses
  %i.az = getelementptr i8, ptr %.0.i.i.i, i64 %i.ay
  %i.ba = getelementptr i8, ptr %3, i64 %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3                       ; 3 uses
  %i.bc = or disjoint i64 %i.bb, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i, i64 %i.bb ; 2 uses
  %next.gep72 = getelementptr i8, ptr %.0.i.i.i, i64 %i.bc ; 2 uses
  %next.gep74 = getelementptr i8, ptr %3, i64 %i.bb
  %next.gep75 = getelementptr i8, ptr %3, i64 %i.bc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep72) ]
  %wide.vec = load <4 x i32>, ptr %next.gep74, align 4, !tbaa !338
  %wide.vec77 = load <4 x i32>, ptr %next.gep75, align 4, !tbaa !338
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338
  store <4 x i32> %wide.vec77, ptr %next.gep72, align 4, !tbaa !338
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !30304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i.preheader83

.lr.ph.i.i.i.preheader83:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.018.i.i.i.ph = phi i64 [ %2, %.lr.ph.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.01417.i.i.i.ph = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.az, %middle.block ]
  %.sroa.0.016.i.i.i.ph = phi ptr [ %3, %.lr.ph.i.i.i.preheader ], [ %i.ba, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader83, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader83 ]
  %.01417.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i ], [ %.01417.i.i.i.ph, %.lr.ph.i.i.i.preheader83 ] ; 3 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %.lr.ph.i.i.i.preheader83 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.be = load <2 x i32>, ptr %.sroa.0.016.i.i.i, align 4, !tbaa !338
  store <2 x i32> %i.be, ptr %.01417.i.i.i, align 4, !tbaa !338
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.bh = add i64 %.018.i.i.i, -1                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !30305

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.bi = icmp ne ptr %1, %i.ap
  %i.bj = icmp ne ptr %.0.i.i.i, null
  %or.cond.i.i17.i = and i1 %i.bi, %i.bj
  %i.bk = icmp ne ptr %1, null
  %spec.select.i.i18.i = and i1 %i.bk, %or.cond.i.i17.i
  br i1 %spec.select.i.i18.i, label %bb.n, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit, !prof !367

bb.n:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %2
  %i.bm = ptrtoint ptr %i.ap to i64
  %i.bn = ptrtoint ptr %1 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 4 %1, i64 %i.bo, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit: ; preds = %bb.n, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i
  br i1 %i.as, label %bb.o, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

bb.o:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !549
  %i.bq = shl i64 %i.bp, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.bq) #23
  br label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit: ; preds = %bb.o, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvRT_T0_SH_SH_T1_mT2_.exit
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !555
  store ptr %.0.i.i52, ptr %0, align 8, !tbaa !548
  %i.br = add i64 %i.ak, %i.am
  store i64 %i.br, ptr %i.c, align 8, !tbaa !554
  store i64 %i.am, ptr %i.f, align 8, !tbaa !553
  br label %bb.p

bb.p:                                             ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS5_4pairIiiEEEEEES8_EEvT_mSF_SF_mT0_RT1_.exit
  %i.bs = phi i64 [ %i.am, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit ], [ %i.p, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS5_4pairIiiEEEEEES8_EEvT_mSF_SF_mT0_RT1_.exit ]
  %i.bt = phi ptr [ %.0.i.i52, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorISt4pairIiiEEEED2Ev.exit ], [ %.pre63, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS5_4pairIiiEEEEEES8_EEvT_mSF_SF_mT0_RT1_.exit ]
  %i.bu = ptrtoint ptr %1 to i64
  %i.bv = ptrtoint ptr %i.j to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  ret ptr %i.by
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS5_4pairIiiEEEEEES8_EEvT_mSF_SF_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr [8 x i8], ptr %0, i64 %1   ; 17 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 8 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 11 uses
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.c, %i.f                       ; 7 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 8 uses
  %i.i = add i64 %i.e, %4                         ; 6 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %0, %3
  %i.k = icmp ne ptr %2, null                     ; 3 uses
  %i.l = icmp ne ptr %0, null
  %i.m = and i1 %i.j, %i.l
  %spec.select.i.i = and i1 %i.m, %i.k
  br i1 %spec.select.i.i, label %bb.c, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, !prof !367

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 4 %0, i64 %i.d, i1 false)
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.d
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %2, %bb.b ] ; 7 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %min.iters.check = icmp ult i64 %4, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader545, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.o = shl i64 %4, 3                            ; 2 uses
  %i.p = getelementptr i8, ptr %.0.i.i, i64 %i.o
  %i.q = getelementptr i8, ptr %5, i64 %i.o
  %bound0 = icmp ult ptr %.0.i.i, %i.q
  %bound1 = icmp ult ptr %5, %i.p
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader545, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.r = and i64 %4, 3
  %i.s = shl i64 %n.vec, 3                        ; 2 uses
  %i.t = getelementptr i8, ptr %.0.i.i, i64 %i.s
  %i.u = getelementptr i8, ptr %5, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 3                        ; 3 uses
  %i.w = or disjoint i64 %i.v, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i, i64 %i.v ; 2 uses
  %next.gep287 = getelementptr i8, ptr %.0.i.i, i64 %i.w ; 2 uses
  %next.gep289 = getelementptr i8, ptr %5, i64 %i.v
  %next.gep290 = getelementptr i8, ptr %5, i64 %i.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep287) ]
  %wide.vec = load <4 x i32>, ptr %next.gep289, align 4, !tbaa !338, !alias.scope !30354
  %wide.vec292 = load <4 x i32>, ptr %next.gep290, align 4, !tbaa !338, !alias.scope !30354
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !30355, !noalias !30354
  store <4 x i32> %wide.vec292, ptr %next.gep287, align 4, !tbaa !338, !alias.scope !30355, !noalias !30354
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !30309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader545

.lr.ph.i.i.preheader545:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.018.i.i.ph = phi i64 [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ] ; 4 uses
  %.01417.i.i.ph = phi ptr [ %.0.i.i, %vector.memcheck ], [ %.0.i.i, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block ] ; 2 uses
  %i.y = add i64 %.018.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader545, %.lr.ph.i.i.prol
  %.018.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.prol ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader545 ]
  %.01417.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.prol ], [ %.01417.i.i.ph, %.lr.ph.i.i.preheader545 ] ; 4 uses
  %.sroa.0.016.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i.i.prol ], [ %.sroa.0.016.i.i.ph, %.lr.ph.i.i.preheader545 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader545 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.prol) ]
  %i.z = load i32, ptr %.sroa.0.016.i.i.prol, align 4, !tbaa !338
  store i32 %i.z, ptr %.01417.i.i.prol, align 4, !tbaa !338
  %i.aa = getelementptr inbounds nuw i8, ptr %.01417.i.i.prol, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.prol, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !338
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !338
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.prol, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01417.i.i.prol, i64 8 ; 2 uses
  %i.af = add i64 %.018.i.i.prol, -1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !30310

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader545
  %.018.i.i.unr = phi i64 [ %.018.i.i.ph, %.lr.ph.i.i.preheader545 ], [ %i.af, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.01417.i.i.ph, %.lr.ph.i.i.preheader545 ], [ %i.ae, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %.sroa.0.016.i.i.ph, %.lr.ph.i.i.preheader545 ], [ %i.ad, %.lr.ph.i.i.prol ]
  %i.ag = icmp ult i64 %i.y, 3
  br i1 %i.ag, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.bf, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.be, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.ah = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !338
  store i32 %i.ah, ptr %.01417.i.i, align 4, !tbaa !338
  %i.ai = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !338
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !338
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.an = load i32, ptr %i.al, align 4, !tbaa !338
  store i32 %i.an, ptr %i.am, align 4, !tbaa !338
  %i.ao = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !338
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !338
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !338
  store i32 %i.at, ptr %i.as, align 4, !tbaa !338
  %i.au = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 20
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !338
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !338
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 24
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !338
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !338
  %i.ba = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 28
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !338
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !338
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 32
  %i.bf = add i64 %.018.i.i, -4                   ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !30311

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.bg = add i64 %4, %1
  %.not145 = icmp ult i64 %i.h, %i.bg
  br i1 %.not145, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.not146 = icmp eq i64 %i.e, %1
  br i1 %.not146, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = icmp ne ptr %3, %i.a
  %i.bi = icmp ne ptr %3, null
  %i.bj = and i1 %i.bh, %i.bi
  %spec.select.i.i148 = and i1 %i.bj, %i.k
  br i1 %spec.select.i.i148, label %bb.f, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150, !prof !367

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150.sink.split

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.not.i.i151 = icmp ne ptr %i.a, %3
  %i.bl = icmp ne ptr %3, null
  %i.bm = and i1 %i.bl, %.not.i.i151
  %or.cond = and i1 %i.bm, %i.k
  br i1 %or.cond, label %bb.h, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150, !prof !412

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150.sink.split

bb.i:                                             ; preds = %bb.a
  %i.bo = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not143 = icmp ugt i64 %i.h, %i.e
  br i1 %.not143, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i154 = icmp eq ptr %0, %2
  br i1 %.not.i.i154, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit157, label %bb.k, !prof !344

bb.k:                                             ; preds = %bb.j
  %i.bp = icmp ne ptr %2, null
  %i.bq = icmp ne ptr %0, null
  %or.cond.i.i155 = and i1 %i.bq, %i.bp
  br i1 %or.cond.i.i155, label %bb.l, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit157

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %0, i64 %i.g, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit157

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit157: ; preds = %bb.k, %bb.l, %bb.j
  %i.br = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 9 uses
  %i.bs = getelementptr inbounds i8, ptr %0, i64 %i.g ; 3 uses
  %i.bt = icmp ne ptr %i.bs, %3
  %i.bu = icmp ne ptr %0, null
  %or.cond.i.i158 = and i1 %i.bu, %i.bt
  br i1 %or.cond.i.i158, label %bb.m, label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, !prof !367

bb.m:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit157
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = sub i64 %i.b, %i.bv                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 4 %i.bs, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %i.bw
  br label %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit

_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit157, %bb.m
  %.0.i.i160 = phi ptr [ %i.bx, %bb.m ], [ %0, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit157 ] ; 9 uses
  %.not6.i.i = icmp eq i64 %i.br, 0
  br i1 %.not6.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i162.preheader

.lr.ph.i.i162.preheader:                          ; preds = %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %min.iters.check304 = icmp ult i64 %i.br, 8
  br i1 %min.iters.check304, label %.lr.ph.i.i162.preheader543, label %vector.memcheck305

vector.memcheck305:                               ; preds = %.lr.ph.i.i162.preheader
  %i.by = shl i64 %i.br, 3                        ; 2 uses
  %i.bz = getelementptr i8, ptr %.0.i.i160, i64 %i.by
  %i.ca = getelementptr i8, ptr %5, i64 %i.by
  %bound0306 = icmp ult ptr %.0.i.i160, %i.ca
  %bound1307 = icmp ult ptr %5, %i.bz
  %found.conflict308 = and i1 %bound0306, %bound1307
  br i1 %found.conflict308, label %.lr.ph.i.i162.preheader543, label %vector.ph309

vector.ph309:                                     ; preds = %vector.memcheck305
  %n.vec310 = and i64 %i.br, -4                   ; 3 uses
  %i.cb = and i64 %i.br, 3
  %i.cc = shl i64 %n.vec310, 3                    ; 2 uses
  %i.cd = getelementptr i8, ptr %.0.i.i160, i64 %i.cc
  %i.ce = getelementptr i8, ptr %5, i64 %i.cc     ; 2 uses
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next325, %vector.body311 ] ; 2 uses
  %i.cf = shl i64 %index312, 3                    ; 3 uses
  %i.cg = or disjoint i64 %i.cf, 16               ; 2 uses
  %next.gep313 = getelementptr i8, ptr %.0.i.i160, i64 %i.cf
  %next.gep314 = getelementptr i8, ptr %.0.i.i160, i64 %i.cg
  %next.gep315 = getelementptr i8, ptr %5, i64 %i.cf
  %next.gep316 = getelementptr i8, ptr %5, i64 %i.cg
  %wide.vec317 = load <4 x i32>, ptr %next.gep315, align 4, !tbaa !338, !alias.scope !30356
  %wide.vec320 = load <4 x i32>, ptr %next.gep316, align 4, !tbaa !338, !alias.scope !30356
  store <4 x i32> %wide.vec317, ptr %next.gep313, align 4, !tbaa !338, !alias.scope !30357, !noalias !30356
  store <4 x i32> %wide.vec320, ptr %next.gep314, align 4, !tbaa !338, !alias.scope !30357, !noalias !30356
  %index.next325 = add nuw i64 %index312, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next325, %n.vec310
  br i1 %i.ch, label %middle.block326, label %vector.body311, !llvm.loop !30315

middle.block326:                                  ; preds = %vector.body311
  %cmp.n327 = icmp eq i64 %i.br, %n.vec310
  br i1 %cmp.n327, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i162.preheader543

.lr.ph.i.i162.preheader543:                       ; preds = %vector.memcheck305, %.lr.ph.i.i162.preheader, %middle.block326
  %.09.i.i.ph = phi i64 [ %i.br, %vector.memcheck305 ], [ %i.br, %.lr.ph.i.i162.preheader ], [ %i.cb, %middle.block326 ] ; 4 uses
  %.048.i.i.ph = phi ptr [ %.0.i.i160, %vector.memcheck305 ], [ %.0.i.i160, %.lr.ph.i.i162.preheader ], [ %i.cd, %middle.block326 ] ; 2 uses
  %.sroa.0.07.i.i.ph = phi ptr [ %5, %vector.memcheck305 ], [ %5, %.lr.ph.i.i162.preheader ], [ %i.ce, %middle.block326 ] ; 2 uses
  %i.ci = add i64 %.09.i.i.ph, -1
  %xtraiter546 = and i64 %.09.i.i.ph, 3           ; 2 uses
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %.lr.ph.i.i162.prol.loopexit, label %.lr.ph.i.i162.prol

.lr.ph.i.i162.prol:                               ; preds = %.lr.ph.i.i162.preheader543, %.lr.ph.i.i162.prol
  %.09.i.i.prol = phi i64 [ %i.cj, %.lr.ph.i.i162.prol ], [ %.09.i.i.ph, %.lr.ph.i.i162.preheader543 ]
  %.048.i.i.prol = phi ptr [ %i.cp, %.lr.ph.i.i162.prol ], [ %.048.i.i.ph, %.lr.ph.i.i162.preheader543 ] ; 3 uses
  %.sroa.0.07.i.i.prol = phi ptr [ %i.co, %.lr.ph.i.i162.prol ], [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i162.preheader543 ] ; 3 uses
  %prol.iter548 = phi i64 [ %prol.iter548.next, %.lr.ph.i.i162.prol ], [ 0, %.lr.ph.i.i162.preheader543 ]
  %i.cj = add i64 %.09.i.i.prol, -1               ; 2 uses
  %i.ck = load i32, ptr %.sroa.0.07.i.i.prol, align 4, !tbaa !338
  store i32 %i.ck, ptr %.048.i.i.prol, align 4, !tbaa !338
  %i.cl = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 4
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !338
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !338
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 8 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 8 ; 2 uses
  %prol.iter548.next = add i64 %prol.iter548, 1   ; 2 uses
  %prol.iter548.cmp.not = icmp eq i64 %prol.iter548.next, %xtraiter546
  br i1 %prol.iter548.cmp.not, label %.lr.ph.i.i162.prol.loopexit, label %.lr.ph.i.i162.prol, !llvm.loop !30316

.lr.ph.i.i162.prol.loopexit:                      ; preds = %.lr.ph.i.i162.prol, %.lr.ph.i.i162.preheader543
  %.lcssa544.unr = phi ptr [ poison, %.lr.ph.i.i162.preheader543 ], [ %i.co, %.lr.ph.i.i162.prol ]
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %.lr.ph.i.i162.preheader543 ], [ %i.cj, %.lr.ph.i.i162.prol ]
  %.048.i.i.unr = phi ptr [ %.048.i.i.ph, %.lr.ph.i.i162.preheader543 ], [ %i.cp, %.lr.ph.i.i162.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i162.preheader543 ], [ %i.co, %.lr.ph.i.i162.prol ]
  %i.cq = icmp ult i64 %i.ci, 3
  br i1 %i.cq, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i162

.lr.ph.i.i162:                                    ; preds = %.lr.ph.i.i162.prol.loopexit, %.lr.ph.i.i162
  %.09.i.i = phi i64 [ %i.dj, %.lr.ph.i.i162 ], [ %.09.i.i.unr, %.lr.ph.i.i162.prol.loopexit ]
  %.048.i.i = phi ptr [ %i.dp, %.lr.ph.i.i162 ], [ %.048.i.i.unr, %.lr.ph.i.i162.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i = phi ptr [ %i.do, %.lr.ph.i.i162 ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i.i162.prol.loopexit ] ; 9 uses
  %i.cr = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !338
  store i32 %i.cr, ptr %.048.i.i, align 4, !tbaa !338
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !338
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !338
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !338
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !338
  %i.cy = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 12
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !338
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !338
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 16
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !338
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !338
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 20
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 20
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !338
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !338
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.dj = add i64 %.09.i.i, -4                    ; 2 uses
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !338
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !338
  %i.dl = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 28
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 28
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !338
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !338
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 32 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 32
  %.not.i.i163.3 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i163.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i162, !llvm.loop !30317

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i162.prol.loopexit, %.lr.ph.i.i162, %middle.block326, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %.sroa.0.0.lcssa.i.i164 = phi ptr [ %5, %_ZN5boost9container4moveIPSt4pairIiiES4_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit ], [ %i.ce, %middle.block326 ], [ %.lcssa544.unr, %.lr.ph.i.i162.prol.loopexit ], [ %i.do, %.lr.ph.i.i162 ]
  br i1 %i.bo, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0.i.i160, i64 %i.br ; 2 uses
  %.not.i = icmp eq ptr %3, %i.dq
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = icmp ne ptr %3, %i.a
  %i.ds = icmp ne ptr %.0.i.i160, null
  %or.cond.i.i.i = and i1 %i.dr, %i.ds
  %i.dt = icmp ne ptr %3, null
  %spec.select.i.i.i = and i1 %i.dt, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150.sink.split, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150, !prof !367

bb.p:                                             ; preds = %bb.i
  %i.du = icmp ne ptr %0, %3                      ; 2 uses
  %i.dv = icmp ne ptr %2, null
  %or.cond.i.i165 = and i1 %i.dv, %i.du
  %i.dw = icmp ne ptr %0, null                    ; 2 uses
  %spec.select.i.i166 = and i1 %i.dw, %or.cond.i.i165
  br i1 %spec.select.i.i166, label %bb.q, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit168, !prof !367

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 4 %0, i64 %i.d, i1 false)
  %i.dx = getelementptr inbounds i8, ptr %2, i64 %i.d
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit168

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit168: ; preds = %bb.p, %bb.q
  %.0.i.i167 = phi ptr [ %i.dx, %bb.q ], [ %2, %bb.p ] ; 7 uses
  %i.dy = sub nsw i64 %i.h, %i.e                  ; 7 uses
  %min.iters.check337 = icmp ult i64 %i.dy, 8
  br i1 %min.iters.check337, label %.lr.ph.i.i171.preheader, label %vector.memcheck338

vector.memcheck338:                               ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit168
  %i.dz = sub i64 %i.g, %i.d                      ; 2 uses
  %i.ea = getelementptr i8, ptr %.0.i.i167, i64 %i.dz
  %i.eb = getelementptr i8, ptr %5, i64 %i.dz
  %bound0339 = icmp ult ptr %.0.i.i167, %i.eb
  %bound1340 = icmp ult ptr %5, %i.ea
  %found.conflict341 = and i1 %bound0339, %bound1340
  br i1 %found.conflict341, label %.lr.ph.i.i171.preheader, label %vector.ph342

vector.ph342:                                     ; preds = %vector.memcheck338
  %n.vec343 = and i64 %i.dy, -4                   ; 3 uses
  %i.ec = and i64 %i.dy, 3
  %i.ed = shl i64 %n.vec343, 3                    ; 2 uses
  %i.ee = getelementptr i8, ptr %.0.i.i167, i64 %i.ed
  %i.ef = getelementptr i8, ptr %5, i64 %i.ed     ; 2 uses
  br label %vector.body344

vector.body344:                                   ; preds = %vector.body344, %vector.ph342
  %index345 = phi i64 [ 0, %vector.ph342 ], [ %index.next360, %vector.body344 ] ; 2 uses
  %i.eg = shl i64 %index345, 3                    ; 3 uses
  %i.eh = or disjoint i64 %i.eg, 16               ; 2 uses
  %next.gep346 = getelementptr i8, ptr %.0.i.i167, i64 %i.eg ; 2 uses
  %next.gep348 = getelementptr i8, ptr %.0.i.i167, i64 %i.eh ; 2 uses
  %next.gep350 = getelementptr i8, ptr %5, i64 %i.eg
  %next.gep351 = getelementptr i8, ptr %5, i64 %i.eh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep346) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep348) ]
  %wide.vec352 = load <4 x i32>, ptr %next.gep350, align 4, !tbaa !338, !alias.scope !30358
  %wide.vec355 = load <4 x i32>, ptr %next.gep351, align 4, !tbaa !338, !alias.scope !30358
  store <4 x i32> %wide.vec352, ptr %next.gep346, align 4, !tbaa !338, !alias.scope !30359, !noalias !30358
  store <4 x i32> %wide.vec355, ptr %next.gep348, align 4, !tbaa !338, !alias.scope !30359, !noalias !30358
  %index.next360 = add nuw i64 %index345, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next360, %n.vec343
  br i1 %i.ei, label %middle.block361, label %vector.body344, !llvm.loop !30321

middle.block361:                                  ; preds = %vector.body344
  %cmp.n362 = icmp eq i64 %i.dy, %n.vec343
  br i1 %cmp.n362, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177, label %.lr.ph.i.i171.preheader

.lr.ph.i.i171.preheader:                          ; preds = %vector.memcheck338, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit168, %middle.block361
  %.018.i.i172.ph = phi i64 [ %i.dy, %vector.memcheck338 ], [ %i.dy, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit168 ], [ %i.ec, %middle.block361 ] ; 4 uses
  %.01417.i.i173.ph = phi ptr [ %.0.i.i167, %vector.memcheck338 ], [ %.0.i.i167, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit168 ], [ %i.ee, %middle.block361 ] ; 2 uses
  %.sroa.0.016.i.i174.ph = phi ptr [ %5, %vector.memcheck338 ], [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit168 ], [ %i.ef, %middle.block361 ] ; 2 uses
  %i.ej = add nsw i64 %.018.i.i172.ph, -1
  %xtraiter549 = and i64 %.018.i.i172.ph, 3       ; 2 uses
  %lcmp.mod550.not = icmp eq i64 %xtraiter549, 0
  br i1 %lcmp.mod550.not, label %.lr.ph.i.i171.prol.loopexit, label %.lr.ph.i.i171.prol

.lr.ph.i.i171.prol:                               ; preds = %.lr.ph.i.i171.preheader, %.lr.ph.i.i171.prol
  %.018.i.i172.prol = phi i64 [ %i.eq, %.lr.ph.i.i171.prol ], [ %.018.i.i172.ph, %.lr.ph.i.i171.preheader ]
  %.01417.i.i173.prol = phi ptr [ %i.ep, %.lr.ph.i.i171.prol ], [ %.01417.i.i173.ph, %.lr.ph.i.i171.preheader ] ; 4 uses
  %.sroa.0.016.i.i174.prol = phi ptr [ %i.eo, %.lr.ph.i.i171.prol ], [ %.sroa.0.016.i.i174.ph, %.lr.ph.i.i171.preheader ] ; 3 uses
  %prol.iter551 = phi i64 [ %prol.iter551.next, %.lr.ph.i.i171.prol ], [ 0, %.lr.ph.i.i171.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i173.prol) ]
  %i.ek = load i32, ptr %.sroa.0.016.i.i174.prol, align 4, !tbaa !338
  store i32 %i.ek, ptr %.01417.i.i173.prol, align 4, !tbaa !338
  %i.el = getelementptr inbounds nuw i8, ptr %.01417.i.i173.prol, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174.prol, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !338
  store i32 %i.en, ptr %i.el, align 4, !tbaa !338
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174.prol, i64 8 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01417.i.i173.prol, i64 8 ; 2 uses
  %i.eq = add i64 %.018.i.i172.prol, -1           ; 2 uses
  %prol.iter551.next = add i64 %prol.iter551, 1   ; 2 uses
  %prol.iter551.cmp.not = icmp eq i64 %prol.iter551.next, %xtraiter549
  br i1 %prol.iter551.cmp.not, label %.lr.ph.i.i171.prol.loopexit, label %.lr.ph.i.i171.prol, !llvm.loop !30322

.lr.ph.i.i171.prol.loopexit:                      ; preds = %.lr.ph.i.i171.prol, %.lr.ph.i.i171.preheader
  %.lcssa542.unr = phi ptr [ poison, %.lr.ph.i.i171.preheader ], [ %i.eo, %.lr.ph.i.i171.prol ]
  %.018.i.i172.unr = phi i64 [ %.018.i.i172.ph, %.lr.ph.i.i171.preheader ], [ %i.eq, %.lr.ph.i.i171.prol ]
  %.01417.i.i173.unr = phi ptr [ %.01417.i.i173.ph, %.lr.ph.i.i171.preheader ], [ %i.ep, %.lr.ph.i.i171.prol ]
  %.sroa.0.016.i.i174.unr = phi ptr [ %.sroa.0.016.i.i174.ph, %.lr.ph.i.i171.preheader ], [ %i.eo, %.lr.ph.i.i171.prol ]
  %i.er = icmp ult i64 %i.ej, 3
  br i1 %i.er, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171
  %.018.i.i172 = phi i64 [ %i.fq, %.lr.ph.i.i171 ], [ %.018.i.i172.unr, %.lr.ph.i.i171.prol.loopexit ]
  %.01417.i.i173 = phi ptr [ %i.fp, %.lr.ph.i.i171 ], [ %.01417.i.i173.unr, %.lr.ph.i.i171.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i174 = phi ptr [ %i.fo, %.lr.ph.i.i171 ], [ %.sroa.0.016.i.i174.unr, %.lr.ph.i.i171.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i173) ]
  %i.es = load i32, ptr %.sroa.0.016.i.i174, align 4, !tbaa !338
  store i32 %i.es, ptr %.01417.i.i173, align 4, !tbaa !338
  %i.et = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !338
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !338
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 8
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !338
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !338
  %i.ez = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !338
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !338
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 16
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !338
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !338
  %i.ff = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 20
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 20
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !338
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !338
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 24
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !338
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !338
  %i.fl = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 28
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 28
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !338
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !338
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 32
  %i.fq = add i64 %.018.i.i172, -4                ; 2 uses
  %.not.i.i175.3 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i175.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177, label %.lr.ph.i.i171, !llvm.loop !30323

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177: ; preds = %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171, %middle.block361
  %.lcssa283 = phi ptr [ %i.ef, %middle.block361 ], [ %.lcssa542.unr, %.lr.ph.i.i171.prol.loopexit ], [ %i.fo, %.lr.ph.i.i171 ] ; 15 uses
  br i1 %i.bo, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit177
  br i1 %i.du, label %.lr.ph.i.i180.preheader, label %.critedge

.lr.ph.i.i180.preheader:                          ; preds = %bb.r
  %min.iters.check405 = icmp ult i64 %i.e, 6
  br i1 %min.iters.check405, label %.lr.ph.i.i180.preheader539, label %vector.memcheck406

vector.memcheck406:                               ; preds = %.lr.ph.i.i180.preheader
  %i.fr = getelementptr i8, ptr %.lcssa283, i64 %i.d
  %bound0407 = icmp ult ptr %0, %i.fr
  %bound1408 = icmp ult ptr %.lcssa283, %3
  %found.conflict409 = and i1 %bound0407, %bound1408
  br i1 %found.conflict409, label %.lr.ph.i.i180.preheader539, label %vector.ph410

vector.ph410:                                     ; preds = %vector.memcheck406
  %n.vec411 = and i64 %i.e, -4                    ; 3 uses
  %i.fs = and i64 %i.e, 3
  %i.ft = shl nsw i64 %n.vec411, 3                ; 2 uses
  %i.fu = getelementptr i8, ptr %0, i64 %i.ft
  %i.fv = getelementptr i8, ptr %.lcssa283, i64 %i.ft ; 2 uses
  br label %vector.body412

vector.body412:                                   ; preds = %vector.body412, %vector.ph410
  %index413 = phi i64 [ 0, %vector.ph410 ], [ %index.next426, %vector.body412 ] ; 2 uses
  %i.fw = shl i64 %index413, 3                    ; 3 uses
  %i.fx = or disjoint i64 %i.fw, 16               ; 2 uses
  %next.gep414 = getelementptr i8, ptr %0, i64 %i.fw
  %next.gep415 = getelementptr i8, ptr %0, i64 %i.fx
  %next.gep416 = getelementptr i8, ptr %.lcssa283, i64 %i.fw
  %next.gep417 = getelementptr i8, ptr %.lcssa283, i64 %i.fx
  %wide.vec418 = load <4 x i32>, ptr %next.gep416, align 4, !tbaa !338, !alias.scope !30360
  %wide.vec421 = load <4 x i32>, ptr %next.gep417, align 4, !tbaa !338, !alias.scope !30360
  store <4 x i32> %wide.vec418, ptr %next.gep414, align 4, !tbaa !338, !alias.scope !30361, !noalias !30360
  store <4 x i32> %wide.vec421, ptr %next.gep415, align 4, !tbaa !338, !alias.scope !30361, !noalias !30360
  %index.next426 = add nuw i64 %index413, 4       ; 2 uses
  %i.fy = icmp eq i64 %index.next426, %n.vec411
  br i1 %i.fy, label %middle.block427, label %vector.body412, !llvm.loop !30327

middle.block427:                                  ; preds = %vector.body412
  %cmp.n428 = icmp eq i64 %i.e, %n.vec411
  br i1 %cmp.n428, label %.critedge, label %.lr.ph.i.i180.preheader539

.lr.ph.i.i180.preheader539:                       ; preds = %vector.memcheck406, %.lr.ph.i.i180.preheader, %middle.block427
  %.09.i.i181.ph = phi i64 [ %i.e, %vector.memcheck406 ], [ %i.e, %.lr.ph.i.i180.preheader ], [ %i.fs, %middle.block427 ] ; 4 uses
  %.048.i.i182.ph = phi ptr [ %0, %vector.memcheck406 ], [ %0, %.lr.ph.i.i180.preheader ], [ %i.fu, %middle.block427 ] ; 2 uses
  %.sroa.0.07.i.i183.ph = phi ptr [ %.lcssa283, %vector.memcheck406 ], [ %.lcssa283, %.lr.ph.i.i180.preheader ], [ %i.fv, %middle.block427 ] ; 2 uses
  %i.fz = add nsw i64 %.09.i.i181.ph, -1
  %xtraiter555 = and i64 %.09.i.i181.ph, 3        ; 2 uses
  %lcmp.mod556.not = icmp eq i64 %xtraiter555, 0
  br i1 %lcmp.mod556.not, label %.lr.ph.i.i180.prol.loopexit, label %.lr.ph.i.i180.prol

.lr.ph.i.i180.prol:                               ; preds = %.lr.ph.i.i180.preheader539, %.lr.ph.i.i180.prol
  %.09.i.i181.prol = phi i64 [ %i.ga, %.lr.ph.i.i180.prol ], [ %.09.i.i181.ph, %.lr.ph.i.i180.preheader539 ]
  %.048.i.i182.prol = phi ptr [ %i.gg, %.lr.ph.i.i180.prol ], [ %.048.i.i182.ph, %.lr.ph.i.i180.preheader539 ] ; 3 uses
  %.sroa.0.07.i.i183.prol = phi ptr [ %i.gf, %.lr.ph.i.i180.prol ], [ %.sroa.0.07.i.i183.ph, %.lr.ph.i.i180.preheader539 ] ; 3 uses
  %prol.iter557 = phi i64 [ %prol.iter557.next, %.lr.ph.i.i180.prol ], [ 0, %.lr.ph.i.i180.preheader539 ]
  %i.ga = add i64 %.09.i.i181.prol, -1            ; 2 uses
  %i.gb = load i32, ptr %.sroa.0.07.i.i183.prol, align 4, !tbaa !338
  store i32 %i.gb, ptr %.048.i.i182.prol, align 4, !tbaa !338
  %i.gc = getelementptr inbounds nuw i8, ptr %.048.i.i182.prol, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i183.prol, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !338
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !338
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i183.prol, i64 8 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.048.i.i182.prol, i64 8 ; 2 uses
  %prol.iter557.next = add i64 %prol.iter557, 1   ; 2 uses
  %prol.iter557.cmp.not = icmp eq i64 %prol.iter557.next, %xtraiter555
  br i1 %prol.iter557.cmp.not, label %.lr.ph.i.i180.prol.loopexit, label %.lr.ph.i.i180.prol, !llvm.loop !30328

.lr.ph.i.i180.prol.loopexit:                      ; preds = %.lr.ph.i.i180.prol, %.lr.ph.i.i180.preheader539
  %.lcssa540.unr = phi ptr [ poison, %.lr.ph.i.i180.preheader539 ], [ %i.gf, %.lr.ph.i.i180.prol ]
  %.09.i.i181.unr = phi i64 [ %.09.i.i181.ph, %.lr.ph.i.i180.preheader539 ], [ %i.ga, %.lr.ph.i.i180.prol ]
  %.048.i.i182.unr = phi ptr [ %.048.i.i182.ph, %.lr.ph.i.i180.preheader539 ], [ %i.gg, %.lr.ph.i.i180.prol ]
  %.sroa.0.07.i.i183.unr = phi ptr [ %.sroa.0.07.i.i183.ph, %.lr.ph.i.i180.preheader539 ], [ %i.gf, %.lr.ph.i.i180.prol ]
  %i.gh = icmp ult i64 %i.fz, 3
  br i1 %i.gh, label %.critedge, label %.lr.ph.i.i180

.lr.ph.i.i180:                                    ; preds = %.lr.ph.i.i180.prol.loopexit, %.lr.ph.i.i180
  %.09.i.i181 = phi i64 [ %i.ha, %.lr.ph.i.i180 ], [ %.09.i.i181.unr, %.lr.ph.i.i180.prol.loopexit ]
  %.048.i.i182 = phi ptr [ %i.hg, %.lr.ph.i.i180 ], [ %.048.i.i182.unr, %.lr.ph.i.i180.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i183 = phi ptr [ %i.hf, %.lr.ph.i.i180 ], [ %.sroa.0.07.i.i183.unr, %.lr.ph.i.i180.prol.loopexit ] ; 9 uses
  %i.gi = load i32, ptr %.sroa.0.07.i.i183, align 4, !tbaa !338
  store i32 %i.gi, ptr %.048.i.i182, align 4, !tbaa !338
  %i.gj = getelementptr inbounds nuw i8, ptr %.048.i.i182, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i183, i64 4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !338
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !338
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i183, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.048.i.i182, i64 8
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !338
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !338
  %i.gp = getelementptr inbounds nuw i8, ptr %.048.i.i182, i64 12
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i183, i64 12
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !338
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !338
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i183, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %.048.i.i182, i64 16
  %i.gu = load i32, ptr %i.gs, align 4, !tbaa !338
  store i32 %i.gu, ptr %i.gt, align 4, !tbaa !338
  %i.gv = getelementptr inbounds nuw i8, ptr %.048.i.i182, i64 20
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i183, i64 20
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !338
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !338
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i183, i64 24
  %i.gz = getelementptr inbounds nuw i8, ptr %.048.i.i182, i64 24
  %i.ha = add i64 %.09.i.i181, -4                 ; 2 uses
  %i.hb = load i32, ptr %i.gy, align 4, !tbaa !338
end_hunk_7
begin_hunk_8_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPSt4pairIiiENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EENS_13move_iteratorIPNS5_4pairIiiEEEEEES8_EEvT_mSF_SF_mT0_RT1_:bb.a
  %i.ko = getelementptr inbounds nuw i8, ptr %.048.i.i210, i64 8
  %i.kp = load i32, ptr %i.kn, align 4, !tbaa !338
  store i32 %i.kp, ptr %i.ko, align 4, !tbaa !338
  %i.kq = getelementptr inbounds nuw i8, ptr %.048.i.i210, i64 12
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i211, i64 12
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !338
  store i32 %i.ks, ptr %i.kq, align 4, !tbaa !338
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i211, i64 16
  %i.ku = getelementptr inbounds nuw i8, ptr %.048.i.i210, i64 16
  %i.kv = load i32, ptr %i.kt, align 4, !tbaa !338
  store i32 %i.kv, ptr %i.ku, align 4, !tbaa !338
  %i.kw = getelementptr inbounds nuw i8, ptr %.048.i.i210, i64 20
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i211, i64 20
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !338
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !338
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i211, i64 24
  %i.la = getelementptr inbounds nuw i8, ptr %.048.i.i210, i64 24
  %i.lb = add i64 %.09.i.i209, -4                 ; 2 uses
  %i.lc = load i32, ptr %i.kz, align 4, !tbaa !338
  store i32 %i.lc, ptr %i.la, align 4, !tbaa !338
  %i.ld = getelementptr inbounds nuw i8, ptr %.048.i.i210, i64 28
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i211, i64 28
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !338
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !338
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i211, i64 32
  %i.lh = getelementptr inbounds nuw i8, ptr %.048.i.i210, i64 32
  %.not.i.i212.3 = icmp eq i64 %i.lb, 0
  br i1 %.not.i.i212.3, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150, label %.lr.ph.i.i208, !llvm.loop !30341

bb.x:                                             ; preds = %.critedge
  %i.li = sub nuw i64 %i.jf, %i.jg                ; 7 uses
  %i.lj = icmp ne ptr %3, %i.a
  %i.lk = icmp ne ptr %0, null
  %or.cond.i.i215 = and i1 %i.lk, %i.lj
  %i.ll = icmp ne ptr %3, null
  %spec.select.i.i216 = and i1 %i.ll, %or.cond.i.i215
  br i1 %spec.select.i.i216, label %bb.y, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit218, !prof !367

bb.y:                                             ; preds = %bb.x
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.li
  %i.ln = ptrtoint ptr %i.a to i64
  %i.lo = sub i64 %i.ln, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lm, ptr nonnull align 4 %3, i64 %i.lo, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit218

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit218: ; preds = %bb.x, %bb.y
  %.not6.i.i220 = icmp eq i64 %i.jg, 0
  br i1 %.not6.i.i220, label %.lr.ph.i.i230.preheader, label %.lr.ph.i.i221.preheader

.lr.ph.i.i221.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit218
  %min.iters.check471 = icmp ult i64 %i.jg, 10
  br i1 %min.iters.check471, label %.lr.ph.i.i221.preheader536, label %vector.memcheck472

vector.memcheck472:                               ; preds = %.lr.ph.i.i221.preheader
  %i.lp = shl i64 %1, 3
  %i.lq = sub i64 %i.lp, %i.d                     ; 2 uses
  %i.lr = getelementptr i8, ptr %3, i64 %i.lq
  %i.ls = getelementptr i8, ptr %.sroa.0241.2, i64 %i.lq
  %bound0473 = icmp ult ptr %3, %i.ls
  %bound1474 = icmp ult ptr %.sroa.0241.2, %i.lr
  %found.conflict475 = and i1 %bound0473, %bound1474
  br i1 %found.conflict475, label %.lr.ph.i.i221.preheader536, label %vector.ph476

vector.ph476:                                     ; preds = %vector.memcheck472
  %n.vec477 = and i64 %i.jg, -4                   ; 3 uses
  %i.lt = and i64 %i.jg, 3
  %i.lu = shl i64 %n.vec477, 3                    ; 2 uses
  %i.lv = getelementptr i8, ptr %3, i64 %i.lu
  %i.lw = getelementptr i8, ptr %.sroa.0241.2, i64 %i.lu ; 2 uses
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph476
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next492, %vector.body478 ] ; 2 uses
  %i.lx = shl i64 %index479, 3                    ; 3 uses
  %i.ly = or disjoint i64 %i.lx, 16               ; 2 uses
  %next.gep480 = getelementptr i8, ptr %3, i64 %i.lx
  %next.gep481 = getelementptr i8, ptr %3, i64 %i.ly
  %next.gep482 = getelementptr i8, ptr %.sroa.0241.2, i64 %i.lx
  %next.gep483 = getelementptr i8, ptr %.sroa.0241.2, i64 %i.ly
  %wide.vec484 = load <4 x i32>, ptr %next.gep482, align 4, !tbaa !338, !alias.scope !30366
  %wide.vec487 = load <4 x i32>, ptr %next.gep483, align 4, !tbaa !338, !alias.scope !30366
  store <4 x i32> %wide.vec484, ptr %next.gep480, align 4, !tbaa !338, !alias.scope !30367, !noalias !30366
  store <4 x i32> %wide.vec487, ptr %next.gep481, align 4, !tbaa !338, !alias.scope !30367, !noalias !30366
  %index.next492 = add nuw i64 %index479, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next492, %n.vec477
  br i1 %i.lz, label %middle.block493, label %vector.body478, !llvm.loop !30345

middle.block493:                                  ; preds = %vector.body478
  %cmp.n494 = icmp eq i64 %i.jg, %n.vec477
  br i1 %cmp.n494, label %.lr.ph.i.i230.preheader, label %.lr.ph.i.i221.preheader536

.lr.ph.i.i221.preheader536:                       ; preds = %vector.memcheck472, %.lr.ph.i.i221.preheader, %middle.block493
  %.09.i.i222.ph = phi i64 [ %i.jg, %vector.memcheck472 ], [ %i.jg, %.lr.ph.i.i221.preheader ], [ %i.lt, %middle.block493 ] ; 4 uses
  %.048.i.i223.ph = phi ptr [ %3, %vector.memcheck472 ], [ %3, %.lr.ph.i.i221.preheader ], [ %i.lv, %middle.block493 ] ; 2 uses
  %.sroa.0.07.i.i224.ph = phi ptr [ %.sroa.0241.2, %vector.memcheck472 ], [ %.sroa.0241.2, %.lr.ph.i.i221.preheader ], [ %i.lw, %middle.block493 ] ; 2 uses
  %i.ma = add i64 %.09.i.i222.ph, -1
  %xtraiter561 = and i64 %.09.i.i222.ph, 3        ; 2 uses
  %lcmp.mod562.not = icmp eq i64 %xtraiter561, 0
  br i1 %lcmp.mod562.not, label %.lr.ph.i.i221.prol.loopexit, label %.lr.ph.i.i221.prol

.lr.ph.i.i221.prol:                               ; preds = %.lr.ph.i.i221.preheader536, %.lr.ph.i.i221.prol
  %.09.i.i222.prol = phi i64 [ %i.mb, %.lr.ph.i.i221.prol ], [ %.09.i.i222.ph, %.lr.ph.i.i221.preheader536 ]
  %.048.i.i223.prol = phi ptr [ %i.mh, %.lr.ph.i.i221.prol ], [ %.048.i.i223.ph, %.lr.ph.i.i221.preheader536 ] ; 3 uses
  %.sroa.0.07.i.i224.prol = phi ptr [ %i.mg, %.lr.ph.i.i221.prol ], [ %.sroa.0.07.i.i224.ph, %.lr.ph.i.i221.preheader536 ] ; 3 uses
  %prol.iter563 = phi i64 [ %prol.iter563.next, %.lr.ph.i.i221.prol ], [ 0, %.lr.ph.i.i221.preheader536 ]
  %i.mb = add i64 %.09.i.i222.prol, -1            ; 2 uses
  %i.mc = load i32, ptr %.sroa.0.07.i.i224.prol, align 4, !tbaa !338
  store i32 %i.mc, ptr %.048.i.i223.prol, align 4, !tbaa !338
  %i.md = getelementptr inbounds nuw i8, ptr %.048.i.i223.prol, i64 4
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i224.prol, i64 4
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !338
  store i32 %i.mf, ptr %i.md, align 4, !tbaa !338
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i224.prol, i64 8 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.048.i.i223.prol, i64 8 ; 2 uses
  %prol.iter563.next = add i64 %prol.iter563, 1   ; 2 uses
  %prol.iter563.cmp.not = icmp eq i64 %prol.iter563.next, %xtraiter561
  br i1 %prol.iter563.cmp.not, label %.lr.ph.i.i221.prol.loopexit, label %.lr.ph.i.i221.prol, !llvm.loop !30346

.lr.ph.i.i221.prol.loopexit:                      ; preds = %.lr.ph.i.i221.prol, %.lr.ph.i.i221.preheader536
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i221.preheader536 ], [ %i.mg, %.lr.ph.i.i221.prol ]
  %.09.i.i222.unr = phi i64 [ %.09.i.i222.ph, %.lr.ph.i.i221.preheader536 ], [ %i.mb, %.lr.ph.i.i221.prol ]
  %.048.i.i223.unr = phi ptr [ %.048.i.i223.ph, %.lr.ph.i.i221.preheader536 ], [ %i.mh, %.lr.ph.i.i221.prol ]
  %.sroa.0.07.i.i224.unr = phi ptr [ %.sroa.0.07.i.i224.ph, %.lr.ph.i.i221.preheader536 ], [ %i.mg, %.lr.ph.i.i221.prol ]
  %i.mi = icmp ult i64 %i.ma, 3
  br i1 %i.mi, label %.lr.ph.i.i230.preheader, label %.lr.ph.i.i221

.lr.ph.i.i221:                                    ; preds = %.lr.ph.i.i221.prol.loopexit, %.lr.ph.i.i221
  %.09.i.i222 = phi i64 [ %i.nb, %.lr.ph.i.i221 ], [ %.09.i.i222.unr, %.lr.ph.i.i221.prol.loopexit ]
  %.048.i.i223 = phi ptr [ %i.nh, %.lr.ph.i.i221 ], [ %.048.i.i223.unr, %.lr.ph.i.i221.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i224 = phi ptr [ %i.ng, %.lr.ph.i.i221 ], [ %.sroa.0.07.i.i224.unr, %.lr.ph.i.i221.prol.loopexit ] ; 9 uses
  %i.mj = load i32, ptr %.sroa.0.07.i.i224, align 4, !tbaa !338
  store i32 %i.mj, ptr %.048.i.i223, align 4, !tbaa !338
  %i.mk = getelementptr inbounds nuw i8, ptr %.048.i.i223, i64 4
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i224, i64 4
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !338
  store i32 %i.mm, ptr %i.mk, align 4, !tbaa !338
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i224, i64 8
  %i.mo = getelementptr inbounds nuw i8, ptr %.048.i.i223, i64 8
  %i.mp = load i32, ptr %i.mn, align 4, !tbaa !338
  store i32 %i.mp, ptr %i.mo, align 4, !tbaa !338
  %i.mq = getelementptr inbounds nuw i8, ptr %.048.i.i223, i64 12
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i224, i64 12
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !338
  store i32 %i.ms, ptr %i.mq, align 4, !tbaa !338
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i224, i64 16
  %i.mu = getelementptr inbounds nuw i8, ptr %.048.i.i223, i64 16
  %i.mv = load i32, ptr %i.mt, align 4, !tbaa !338
  store i32 %i.mv, ptr %i.mu, align 4, !tbaa !338
  %i.mw = getelementptr inbounds nuw i8, ptr %.048.i.i223, i64 20
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i224, i64 20
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !338
  store i32 %i.my, ptr %i.mw, align 4, !tbaa !338
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i224, i64 24
  %i.na = getelementptr inbounds nuw i8, ptr %.048.i.i223, i64 24
  %i.nb = add i64 %.09.i.i222, -4                 ; 2 uses
  %i.nc = load i32, ptr %i.mz, align 4, !tbaa !338
  store i32 %i.nc, ptr %i.na, align 4, !tbaa !338
  %i.nd = getelementptr inbounds nuw i8, ptr %.048.i.i223, i64 28
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i224, i64 28
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !338
  store i32 %i.nf, ptr %i.nd, align 4, !tbaa !338
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i224, i64 32 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.048.i.i223, i64 32
  %.not.i.i225.3 = icmp eq i64 %i.nb, 0
  br i1 %.not.i.i225.3, label %.lr.ph.i.i230.preheader, label %.lr.ph.i.i221, !llvm.loop !30347

.lr.ph.i.i230.preheader:                          ; preds = %.lr.ph.i.i221.prol.loopexit, %.lr.ph.i.i221, %middle.block493, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit218
  %.sroa.0.0.lcssa.i.i226 = phi ptr [ %.sroa.0241.2, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit218 ], [ %i.lw, %middle.block493 ], [ %.lcssa.unr, %.lr.ph.i.i221.prol.loopexit ], [ %i.ng, %.lr.ph.i.i221 ] ; 7 uses
  %min.iters.check504 = icmp ult i64 %i.li, 14
  br i1 %min.iters.check504, label %.lr.ph.i.i230.preheader535, label %vector.memcheck505

vector.memcheck505:                               ; preds = %.lr.ph.i.i230.preheader
  %i.ni = shl i64 %i.i, 3
  %i.nj = sub i64 %i.ni, %i.g
  %i.nk = getelementptr i8, ptr %0, i64 %i.nj
  %i.nl = add i64 %i.h, %1
  %i.nm = sub i64 %i.i, %i.nl
  %i.nn = shl i64 %i.nm, 3
  %i.no = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i226, i64 %i.nn
  %bound0506 = icmp ult ptr %i.a, %i.no
  %bound1507 = icmp ult ptr %.sroa.0.0.lcssa.i.i226, %i.nk
  %found.conflict508 = and i1 %bound0506, %bound1507
  br i1 %found.conflict508, label %.lr.ph.i.i230.preheader535, label %vector.ph509

vector.ph509:                                     ; preds = %vector.memcheck505
  %n.vec510 = and i64 %i.li, -4                   ; 3 uses
  %i.np = and i64 %i.li, 3
  %i.nq = shl i64 %n.vec510, 3                    ; 2 uses
  %i.nr = getelementptr i8, ptr %i.a, i64 %i.nq
  %i.ns = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i226, i64 %i.nq
  br label %vector.body511

vector.body511:                                   ; preds = %vector.body511, %vector.ph509
  %index512 = phi i64 [ 0, %vector.ph509 ], [ %index.next527, %vector.body511 ] ; 2 uses
  %i.nt = shl i64 %index512, 3                    ; 3 uses
  %i.nu = or disjoint i64 %i.nt, 16               ; 2 uses
  %next.gep513 = getelementptr i8, ptr %i.a, i64 %i.nt ; 2 uses
  %next.gep515 = getelementptr i8, ptr %i.a, i64 %i.nu ; 2 uses
  %next.gep517 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i226, i64 %i.nt
  %next.gep518 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i226, i64 %i.nu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep513) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep515) ]
  %wide.vec519 = load <4 x i32>, ptr %next.gep517, align 4, !tbaa !338, !alias.scope !30368
  %wide.vec522 = load <4 x i32>, ptr %next.gep518, align 4, !tbaa !338, !alias.scope !30368
  store <4 x i32> %wide.vec519, ptr %next.gep513, align 4, !tbaa !338, !alias.scope !30369, !noalias !30368
  store <4 x i32> %wide.vec522, ptr %next.gep515, align 4, !tbaa !338, !alias.scope !30369, !noalias !30368
  %index.next527 = add nuw i64 %index512, 4       ; 2 uses
  %i.nv = icmp eq i64 %index.next527, %n.vec510
  br i1 %i.nv, label %middle.block528, label %vector.body511, !llvm.loop !30351

middle.block528:                                  ; preds = %vector.body511
  %cmp.n529 = icmp eq i64 %i.li, %n.vec510
  br i1 %cmp.n529, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150, label %.lr.ph.i.i230.preheader535

.lr.ph.i.i230.preheader535:                       ; preds = %vector.memcheck505, %.lr.ph.i.i230.preheader, %middle.block528
  %.018.i.i231.ph = phi i64 [ %i.li, %vector.memcheck505 ], [ %i.li, %.lr.ph.i.i230.preheader ], [ %i.np, %middle.block528 ] ; 4 uses
  %.01417.i.i232.ph = phi ptr [ %i.a, %vector.memcheck505 ], [ %i.a, %.lr.ph.i.i230.preheader ], [ %i.nr, %middle.block528 ] ; 2 uses
  %.sroa.0.016.i.i233.ph = phi ptr [ %.sroa.0.0.lcssa.i.i226, %vector.memcheck505 ], [ %.sroa.0.0.lcssa.i.i226, %.lr.ph.i.i230.preheader ], [ %i.ns, %middle.block528 ] ; 2 uses
  %i.nw = add i64 %.018.i.i231.ph, -1
  %xtraiter564 = and i64 %.018.i.i231.ph, 3       ; 2 uses
  %lcmp.mod565.not = icmp eq i64 %xtraiter564, 0
  br i1 %lcmp.mod565.not, label %.lr.ph.i.i230.prol.loopexit, label %.lr.ph.i.i230.prol

.lr.ph.i.i230.prol:                               ; preds = %.lr.ph.i.i230.preheader535, %.lr.ph.i.i230.prol
  %.018.i.i231.prol = phi i64 [ %i.od, %.lr.ph.i.i230.prol ], [ %.018.i.i231.ph, %.lr.ph.i.i230.preheader535 ]
  %.01417.i.i232.prol = phi ptr [ %i.oc, %.lr.ph.i.i230.prol ], [ %.01417.i.i232.ph, %.lr.ph.i.i230.preheader535 ] ; 4 uses
  %.sroa.0.016.i.i233.prol = phi ptr [ %i.ob, %.lr.ph.i.i230.prol ], [ %.sroa.0.016.i.i233.ph, %.lr.ph.i.i230.preheader535 ] ; 3 uses
  %prol.iter566 = phi i64 [ %prol.iter566.next, %.lr.ph.i.i230.prol ], [ 0, %.lr.ph.i.i230.preheader535 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i232.prol) ]
  %i.nx = load i32, ptr %.sroa.0.016.i.i233.prol, align 4, !tbaa !338
  store i32 %i.nx, ptr %.01417.i.i232.prol, align 4, !tbaa !338
  %i.ny = getelementptr inbounds nuw i8, ptr %.01417.i.i232.prol, i64 4
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i233.prol, i64 4
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !338
  store i32 %i.oa, ptr %i.ny, align 4, !tbaa !338
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i233.prol, i64 8 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.01417.i.i232.prol, i64 8 ; 2 uses
  %i.od = add i64 %.018.i.i231.prol, -1           ; 2 uses
  %prol.iter566.next = add i64 %prol.iter566, 1   ; 2 uses
  %prol.iter566.cmp.not = icmp eq i64 %prol.iter566.next, %xtraiter564
  br i1 %prol.iter566.cmp.not, label %.lr.ph.i.i230.prol.loopexit, label %.lr.ph.i.i230.prol, !llvm.loop !30352

.lr.ph.i.i230.prol.loopexit:                      ; preds = %.lr.ph.i.i230.prol, %.lr.ph.i.i230.preheader535
  %.018.i.i231.unr = phi i64 [ %.018.i.i231.ph, %.lr.ph.i.i230.preheader535 ], [ %i.od, %.lr.ph.i.i230.prol ]
  %.01417.i.i232.unr = phi ptr [ %.01417.i.i232.ph, %.lr.ph.i.i230.preheader535 ], [ %i.oc, %.lr.ph.i.i230.prol ]
  %.sroa.0.016.i.i233.unr = phi ptr [ %.sroa.0.016.i.i233.ph, %.lr.ph.i.i230.preheader535 ], [ %i.ob, %.lr.ph.i.i230.prol ]
  %i.oe = icmp ult i64 %i.nw, 3
  br i1 %i.oe, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150, label %.lr.ph.i.i230

.lr.ph.i.i230:                                    ; preds = %.lr.ph.i.i230.prol.loopexit, %.lr.ph.i.i230
  %.018.i.i231 = phi i64 [ %i.pd, %.lr.ph.i.i230 ], [ %.018.i.i231.unr, %.lr.ph.i.i230.prol.loopexit ]
  %.01417.i.i232 = phi ptr [ %i.pc, %.lr.ph.i.i230 ], [ %.01417.i.i232.unr, %.lr.ph.i.i230.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i233 = phi ptr [ %i.pb, %.lr.ph.i.i230 ], [ %.sroa.0.016.i.i233.unr, %.lr.ph.i.i230.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i232) ]
  %i.of = load i32, ptr %.sroa.0.016.i.i233, align 4, !tbaa !338
  store i32 %i.of, ptr %.01417.i.i232, align 4, !tbaa !338
  %i.og = getelementptr inbounds nuw i8, ptr %.01417.i.i232, i64 4
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i233, i64 4
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !338
  store i32 %i.oi, ptr %i.og, align 4, !tbaa !338
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i233, i64 8
  %i.ok = getelementptr inbounds nuw i8, ptr %.01417.i.i232, i64 8
  %i.ol = load i32, ptr %i.oj, align 4, !tbaa !338
  store i32 %i.ol, ptr %i.ok, align 4, !tbaa !338
  %i.om = getelementptr inbounds nuw i8, ptr %.01417.i.i232, i64 12
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i233, i64 12
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !338
  store i32 %i.oo, ptr %i.om, align 4, !tbaa !338
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i233, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %.01417.i.i232, i64 16
  %i.or = load i32, ptr %i.op, align 4, !tbaa !338
  store i32 %i.or, ptr %i.oq, align 4, !tbaa !338
  %i.os = getelementptr inbounds nuw i8, ptr %.01417.i.i232, i64 20
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i233, i64 20
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !338
  store i32 %i.ou, ptr %i.os, align 4, !tbaa !338
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i233, i64 24
  %i.ow = getelementptr inbounds nuw i8, ptr %.01417.i.i232, i64 24
  %i.ox = load i32, ptr %i.ov, align 4, !tbaa !338
  store i32 %i.ox, ptr %i.ow, align 4, !tbaa !338
  %i.oy = getelementptr inbounds nuw i8, ptr %.01417.i.i232, i64 28
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i233, i64 28
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !338
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !338
  %i.pb = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i233, i64 32
  %i.pc = getelementptr inbounds nuw i8, ptr %.01417.i.i232, i64 32
  %i.pd = add i64 %.018.i.i231, -4                ; 2 uses
  %.not.i.i234.3 = icmp eq i64 %i.pd, 0
  br i1 %.not.i.i234.3, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150, label %.lr.ph.i.i230, !llvm.loop !30353

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150.sink.split: ; preds = %bb.t, %bb.o, %bb.h, %bb.f
  %.sink = phi ptr [ %i.bn, %bb.h ], [ %i.dq, %bb.o ], [ %i.bk, %bb.f ], [ %i.jb, %bb.t ]
  %i.pe = ptrtoint ptr %i.a to i64
  %i.pf = sub i64 %i.pe, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull align 1 %3, i64 %i.pf, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150: ; preds = %.lr.ph.i.i208.prol.loopexit, %.lr.ph.i.i208, %.lr.ph.i.i230.prol.loopexit, %.lr.ph.i.i230, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit150.sink.split, %middle.block460, %middle.block528, %bb.n, %bb.o, %bb.t, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit195, %_ZN5boost9container25move_backward_overlappingIPSt4pairIiiEEET_S5_S5_S5_.exit, %bb.e, %bb.d, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorISt4pairIiiEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPNS7_4pairIiiEEEEEEEEvT0_mSF_SF_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [8 x i8], ptr %0, i64 %1 ; 19 uses
  %i.b = add i64 %4, %1                           ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %2, i64 %i.b ; 4 uses
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.h, %i.d                       ; 5 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 7 uses
  %i.k = add i64 %i.g, %4                         ; 5 uses
  %.not = icmp ult i64 %i.j, %i.k
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub i64 0, %i.k
  %i.m = getelementptr [8 x i8], ptr %i.c, i64 %i.l ; 7 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %min.iters.check = icmp ult i64 %4, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader286, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.n = shl i64 %4, 3
  %i.o = add i64 %4, %1
  %i.p = shl i64 %i.o, 3
  %i.q = sub i64 %i.p, %i.f
  %i.r = getelementptr i8, ptr %2, i64 %i.q
  %i.s = getelementptr i8, ptr %5, i64 %i.n
  %bound0 = icmp ult ptr %i.m, %i.s
  %bound1 = icmp ult ptr %5, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader286, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.t = and i64 %4, 3
  %i.u = shl i64 %n.vec, 3                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.m, i64 %i.u
  %i.w = getelementptr i8, ptr %5, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 3                        ; 3 uses
  %i.y = or disjoint i64 %i.x, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.x ; 2 uses
  %next.gep173 = getelementptr i8, ptr %i.m, i64 %i.y ; 2 uses
  %next.gep175 = getelementptr i8, ptr %5, i64 %i.x
  %next.gep176 = getelementptr i8, ptr %5, i64 %i.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep173) ]
  %wide.vec = load <4 x i32>, ptr %next.gep175, align 4, !tbaa !338, !alias.scope !30394
  %wide.vec178 = load <4 x i32>, ptr %next.gep176, align 4, !tbaa !338, !alias.scope !30394
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !30395, !noalias !30394
  store <4 x i32> %wide.vec178, ptr %next.gep173, align 4, !tbaa !338, !alias.scope !30395, !noalias !30394
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !30373

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader286

.lr.ph.i.i.preheader286:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.018.i.i.ph = phi i64 [ %4, %vector.memcheck ], [ %4, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block ] ; 4 uses
  %.01417.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %.lr.ph.i.i.preheader ], [ %i.v, %middle.block ] ; 2 uses
  %.sroa.0.016.i.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ] ; 2 uses
  %i.aa = add i64 %.018.i.i.ph, -1
  %xtraiter = and i64 %.018.i.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader286, %.lr.ph.i.i.prol
  %.018.i.i.prol = phi i64 [ %i.ah, %.lr.ph.i.i.prol ], [ %.018.i.i.ph, %.lr.ph.i.i.preheader286 ]
  %.01417.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.prol ], [ %.01417.i.i.ph, %.lr.ph.i.i.preheader286 ] ; 4 uses
  %.sroa.0.016.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.prol ], [ %.sroa.0.016.i.i.ph, %.lr.ph.i.i.preheader286 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader286 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.prol) ]
  %i.ab = load i32, ptr %.sroa.0.016.i.i.prol, align 4, !tbaa !338
  store i32 %i.ab, ptr %.01417.i.i.prol, align 4, !tbaa !338
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.prol, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.prol, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !338
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !338
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.prol, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.01417.i.i.prol, i64 8 ; 2 uses
  %i.ah = add i64 %.018.i.i.prol, -1              ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !30374

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader286
  %.018.i.i.unr = phi i64 [ %.018.i.i.ph, %.lr.ph.i.i.preheader286 ], [ %i.ah, %.lr.ph.i.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.01417.i.i.ph, %.lr.ph.i.i.preheader286 ], [ %i.ag, %.lr.ph.i.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %.sroa.0.016.i.i.ph, %.lr.ph.i.i.preheader286 ], [ %i.af, %.lr.ph.i.i.prol ]
  %i.ai = icmp ult i64 %i.aa, 3
  br i1 %i.ai, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.018.i.i = phi i64 [ %i.bh, %.lr.ph.i.i ], [ %.018.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %.01417.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.aj = load i32, ptr %.sroa.0.016.i.i, align 4, !tbaa !338
  store i32 %i.aj, ptr %.01417.i.i, align 4, !tbaa !338
  %i.ak = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !338
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !338
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !338
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !338
  %i.aq = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 12
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !338
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !338
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16
  %i.av = load i32, ptr %i.at, align 4, !tbaa !338
  store i32 %i.av, ptr %i.au, align 4, !tbaa !338
  %i.aw = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 20
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !338
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !338
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 24
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !338
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 28
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !338
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !338
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 32
  %i.bh = add i64 %.018.i.i, -4                   ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !30375

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.b
  %i.bi = icmp ne ptr %3, %i.a
  %i.bj = icmp ne ptr %2, null                    ; 2 uses
  %i.bk = icmp ne ptr %3, null
  %i.bl = and i1 %i.bi, %i.bk
  %spec.select.i.i = and i1 %i.bl, %i.bj
  br i1 %spec.select.i.i, label %bb.c, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, !prof !367

bb.c:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 4 %3, i64 %i.f, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, %bb.c
  %.not98 = icmp ult i64 %i.j, %i.b
  br i1 %.not98, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.bn = icmp ne ptr %0, %3
  %i.bo = icmp ne ptr %0, null
  %i.bp = and i1 %i.bn, %i.bo
  %spec.select.i.i100 = and i1 %i.bp, %i.bj
  br i1 %spec.select.i.i100, label %bb.e, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit102, !prof !367

bb.e:                                             ; preds = %bb.d
  %i.bq = ptrtoint ptr %0 to i64
  %i.br = sub i64 %i.e, %i.bq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 4 %0, i64 %i.br, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit102

bb.f:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.bs = sub nuw i64 %i.j, %i.k                  ; 2 uses
  %i.bt = sub i64 0, %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bt ; 4 uses
  %.not.i.i103 = icmp ne i64 %i.j, %i.k
  %i.bv = icmp ne ptr %0, null
  %or.cond = and i1 %i.bv, %.not.i.i103
  br i1 %or.cond, label %bb.g, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, !prof !412

bb.g:                                             ; preds = %bb.f
  %i.bw = shl i64 %i.bs, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.bu, i64 %i.bw, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %bb.g, %bb.f
  %.not.i = icmp eq ptr %i.bu, %i.a
  %.not.i.i106 = icmp eq ptr %i.bu, %0
  %or.cond150 = or i1 %.not.i, %.not.i.i106
  br i1 %or.cond150, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit102, label %bb.h, !prof !433

bb.h:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bx = ptrtoint ptr %0 to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.by, %i.bx                    ; 2 uses
  %i.ca = ashr exact i64 %i.bz, 3
  %i.cb = sub nsw i64 0, %i.ca
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cc, ptr align 4 %0, i64 %i.bz, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit102

bb.i:                                             ; preds = %bb.a
  %i.cd = icmp ugt i64 %i.j, %i.g
  br i1 %i.cd, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ce = icmp ne ptr %3, %i.a
  %i.cf = icmp ne ptr %2, null
  %or.cond.i.i107 = and i1 %i.cf, %i.ce
  %i.cg = icmp ne ptr %3, null
  %spec.select.i.i108 = and i1 %i.cg, %or.cond.i.i107
  br i1 %spec.select.i.i108, label %bb.k, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit110, !prof !367

bb.k:                                             ; preds = %bb.j
  %i.ch = sub nsw i64 0, %i.g
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ch
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr nonnull align 4 %3, i64 %i.f, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit110

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit110: ; preds = %bb.j, %bb.k
  %i.cj = sub nuw nsw i64 %i.j, %i.g              ; 7 uses
  %i.ck = sub i64 %4, %i.cj                       ; 8 uses
  %i.cl = sub i64 0, %i.ck
  %i.cm = getelementptr [8 x i8], ptr %i.a, i64 %i.cl ; 8 uses
  %.not6.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not6.i.i, label %.lr.ph.i.i117.preheader, label %.lr.ph.i.i112.preheader

.lr.ph.i.i112.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit110
  %min.iters.check221 = icmp ult i64 %i.ck, 10
  br i1 %min.iters.check221, label %.lr.ph.i.i112.preheader284, label %vector.memcheck222

vector.memcheck222:                               ; preds = %.lr.ph.i.i112.preheader
  %i.cn = shl i64 %i.k, 3
  %i.co = sub i64 %i.cn, %i.i
  %i.cp = getelementptr i8, ptr %5, i64 %i.co
  %bound0223 = icmp ult ptr %i.cm, %i.cp
  %bound1224 = icmp ult ptr %5, %i.a
  %found.conflict225 = and i1 %bound0223, %bound1224
  br i1 %found.conflict225, label %.lr.ph.i.i112.preheader284, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck222
  %n.vec227 = and i64 %i.ck, -4                   ; 3 uses
  %i.cq = and i64 %i.ck, 3
  %i.cr = shl i64 %n.vec227, 3                    ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cm, i64 %i.cr
  %i.ct = getelementptr i8, ptr %5, i64 %i.cr     ; 2 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next242, %vector.body228 ] ; 2 uses
  %i.cu = shl i64 %index229, 3                    ; 3 uses
  %i.cv = or disjoint i64 %i.cu, 16               ; 2 uses
  %next.gep230 = getelementptr i8, ptr %i.cm, i64 %i.cu
  %next.gep231 = getelementptr i8, ptr %i.cm, i64 %i.cv
  %next.gep232 = getelementptr i8, ptr %5, i64 %i.cu
  %next.gep233 = getelementptr i8, ptr %5, i64 %i.cv
  %wide.vec234 = load <4 x i32>, ptr %next.gep232, align 4, !tbaa !338, !alias.scope !30396
  %wide.vec237 = load <4 x i32>, ptr %next.gep233, align 4, !tbaa !338, !alias.scope !30396
  store <4 x i32> %wide.vec234, ptr %next.gep230, align 4, !tbaa !338, !alias.scope !30397, !noalias !30396
  store <4 x i32> %wide.vec237, ptr %next.gep231, align 4, !tbaa !338, !alias.scope !30397, !noalias !30396
  %index.next242 = add nuw i64 %index229, 4       ; 2 uses
  %i.cw = icmp eq i64 %index.next242, %n.vec227
  br i1 %i.cw, label %middle.block243, label %vector.body228, !llvm.loop !30379

middle.block243:                                  ; preds = %vector.body228
  %cmp.n244 = icmp eq i64 %i.ck, %n.vec227
  br i1 %cmp.n244, label %.lr.ph.i.i117.preheader, label %.lr.ph.i.i112.preheader284

.lr.ph.i.i112.preheader284:                       ; preds = %vector.memcheck222, %.lr.ph.i.i112.preheader, %middle.block243
  %.09.i.i.ph = phi i64 [ %i.ck, %vector.memcheck222 ], [ %i.ck, %.lr.ph.i.i112.preheader ], [ %i.cq, %middle.block243 ] ; 4 uses
  %.048.i.i.ph = phi ptr [ %i.cm, %vector.memcheck222 ], [ %i.cm, %.lr.ph.i.i112.preheader ], [ %i.cs, %middle.block243 ] ; 2 uses
  %.sroa.0.07.i.i.ph = phi ptr [ %5, %vector.memcheck222 ], [ %5, %.lr.ph.i.i112.preheader ], [ %i.ct, %middle.block243 ] ; 2 uses
  %i.cx = add i64 %.09.i.i.ph, -1
  %xtraiter290 = and i64 %.09.i.i.ph, 3           ; 2 uses
  %lcmp.mod291.not = icmp eq i64 %xtraiter290, 0
  br i1 %lcmp.mod291.not, label %.lr.ph.i.i112.prol.loopexit, label %.lr.ph.i.i112.prol

.lr.ph.i.i112.prol:                               ; preds = %.lr.ph.i.i112.preheader284, %.lr.ph.i.i112.prol
  %.09.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i112.prol ], [ %.09.i.i.ph, %.lr.ph.i.i112.preheader284 ]
  %.048.i.i.prol = phi ptr [ %i.de, %.lr.ph.i.i112.prol ], [ %.048.i.i.ph, %.lr.ph.i.i112.preheader284 ] ; 3 uses
  %.sroa.0.07.i.i.prol = phi ptr [ %i.dd, %.lr.ph.i.i112.prol ], [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i112.preheader284 ] ; 3 uses
  %prol.iter292 = phi i64 [ %prol.iter292.next, %.lr.ph.i.i112.prol ], [ 0, %.lr.ph.i.i112.preheader284 ]
  %i.cy = add i64 %.09.i.i.prol, -1               ; 2 uses
  %i.cz = load i32, ptr %.sroa.0.07.i.i.prol, align 4, !tbaa !338
  store i32 %i.cz, ptr %.048.i.i.prol, align 4, !tbaa !338
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !338
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !338
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 8 ; 2 uses
  %prol.iter292.next = add i64 %prol.iter292, 1   ; 2 uses
  %prol.iter292.cmp.not = icmp eq i64 %prol.iter292.next, %xtraiter290
  br i1 %prol.iter292.cmp.not, label %.lr.ph.i.i112.prol.loopexit, label %.lr.ph.i.i112.prol, !llvm.loop !30380

.lr.ph.i.i112.prol.loopexit:                      ; preds = %.lr.ph.i.i112.prol, %.lr.ph.i.i112.preheader284
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i112.preheader284 ], [ %i.dd, %.lr.ph.i.i112.prol ]
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %.lr.ph.i.i112.preheader284 ], [ %i.cy, %.lr.ph.i.i112.prol ]
  %.048.i.i.unr = phi ptr [ %.048.i.i.ph, %.lr.ph.i.i112.preheader284 ], [ %i.de, %.lr.ph.i.i112.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i112.preheader284 ], [ %i.dd, %.lr.ph.i.i112.prol ]
  %i.df = icmp ult i64 %i.cx, 3
  br i1 %i.df, label %.lr.ph.i.i117.preheader, label %.lr.ph.i.i112

.lr.ph.i.i112:                                    ; preds = %.lr.ph.i.i112.prol.loopexit, %.lr.ph.i.i112
  %.09.i.i = phi i64 [ %i.dy, %.lr.ph.i.i112 ], [ %.09.i.i.unr, %.lr.ph.i.i112.prol.loopexit ]
  %.048.i.i = phi ptr [ %i.ee, %.lr.ph.i.i112 ], [ %.048.i.i.unr, %.lr.ph.i.i112.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i = phi ptr [ %i.ed, %.lr.ph.i.i112 ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i.i112.prol.loopexit ] ; 9 uses
  %i.dg = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !338
  store i32 %i.dg, ptr %.048.i.i, align 4, !tbaa !338
  %i.dh = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !338
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !338
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !338
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !338
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !338
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !338
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 16
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !338
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !338
  %i.dt = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 20
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !338
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !338
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.dy = add i64 %.09.i.i, -4                    ; 2 uses
  %i.dz = load i32, ptr %i.dw, align 4, !tbaa !338
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !338
  %i.ea = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 28
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !338
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !338
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 32
  %.not.i.i113.3 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i113.3, label %.lr.ph.i.i117.preheader, label %.lr.ph.i.i112, !llvm.loop !30381

.lr.ph.i.i117.preheader:                          ; preds = %.lr.ph.i.i112.prol.loopexit, %.lr.ph.i.i112, %middle.block243, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit110
  %.sroa.0.0.lcssa.i.i114 = phi ptr [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit110 ], [ %i.ct, %middle.block243 ], [ %.lcssa.unr, %.lr.ph.i.i112.prol.loopexit ], [ %i.ed, %.lr.ph.i.i112 ] ; 7 uses
  %min.iters.check254 = icmp ult i64 %i.cj, 12
  br i1 %min.iters.check254, label %.lr.ph.i.i117.preheader283, label %vector.memcheck255

vector.memcheck255:                               ; preds = %.lr.ph.i.i117.preheader
  %i.ef = add i64 %i.j, %1
  %i.eg = shl i64 %i.ef, 3
  %i.eh = sub i64 %i.eg, %i.f
  %i.ei = getelementptr i8, ptr %0, i64 %i.eh
  %i.ej = sub i64 %i.i, %i.f
  %i.ek = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i114, i64 %i.ej
  %bound0256 = icmp ult ptr %i.a, %i.ek
  %bound1257 = icmp ult ptr %.sroa.0.0.lcssa.i.i114, %i.ei
  %found.conflict258 = and i1 %bound0256, %bound1257
  br i1 %found.conflict258, label %.lr.ph.i.i117.preheader283, label %vector.ph259

vector.ph259:                                     ; preds = %vector.memcheck255
  %n.vec260 = and i64 %i.cj, -4                   ; 3 uses
  %i.el = and i64 %i.cj, 3
  %i.em = shl i64 %n.vec260, 3                    ; 2 uses
  %i.en = getelementptr i8, ptr %i.a, i64 %i.em
  %i.eo = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i114, i64 %i.em
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph259
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next277, %vector.body261 ] ; 2 uses
  %i.ep = shl i64 %index262, 3                    ; 3 uses
  %i.eq = or disjoint i64 %i.ep, 16               ; 2 uses
  %next.gep263 = getelementptr i8, ptr %i.a, i64 %i.ep ; 2 uses
  %next.gep265 = getelementptr i8, ptr %i.a, i64 %i.eq ; 2 uses
  %next.gep267 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i114, i64 %i.ep
  %next.gep268 = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i114, i64 %i.eq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep263) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep265) ]
  %wide.vec269 = load <4 x i32>, ptr %next.gep267, align 4, !tbaa !338, !alias.scope !30398
  %wide.vec272 = load <4 x i32>, ptr %next.gep268, align 4, !tbaa !338, !alias.scope !30398
  store <4 x i32> %wide.vec269, ptr %next.gep263, align 4, !tbaa !338, !alias.scope !30399, !noalias !30398
  store <4 x i32> %wide.vec272, ptr %next.gep265, align 4, !tbaa !338, !alias.scope !30399, !noalias !30398
  %index.next277 = add nuw i64 %index262, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next277, %n.vec260
  br i1 %i.er, label %middle.block278, label %vector.body261, !llvm.loop !30385

middle.block278:                                  ; preds = %vector.body261
  %cmp.n279 = icmp eq i64 %i.cj, %n.vec260
  br i1 %cmp.n279, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit123, label %.lr.ph.i.i117.preheader283

.lr.ph.i.i117.preheader283:                       ; preds = %vector.memcheck255, %.lr.ph.i.i117.preheader, %middle.block278
  %.018.i.i118.ph = phi i64 [ %i.cj, %vector.memcheck255 ], [ %i.cj, %.lr.ph.i.i117.preheader ], [ %i.el, %middle.block278 ] ; 4 uses
  %.01417.i.i119.ph = phi ptr [ %i.a, %vector.memcheck255 ], [ %i.a, %.lr.ph.i.i117.preheader ], [ %i.en, %middle.block278 ] ; 2 uses
  %.sroa.0.016.i.i120.ph = phi ptr [ %.sroa.0.0.lcssa.i.i114, %vector.memcheck255 ], [ %.sroa.0.0.lcssa.i.i114, %.lr.ph.i.i117.preheader ], [ %i.eo, %middle.block278 ] ; 2 uses
  %i.es = add nsw i64 %.018.i.i118.ph, -1
  %xtraiter293 = and i64 %.018.i.i118.ph, 3       ; 2 uses
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %.lr.ph.i.i117.prol.loopexit, label %.lr.ph.i.i117.prol

.lr.ph.i.i117.prol:                               ; preds = %.lr.ph.i.i117.preheader283, %.lr.ph.i.i117.prol
  %.018.i.i118.prol = phi i64 [ %i.ez, %.lr.ph.i.i117.prol ], [ %.018.i.i118.ph, %.lr.ph.i.i117.preheader283 ]
  %.01417.i.i119.prol = phi ptr [ %i.ey, %.lr.ph.i.i117.prol ], [ %.01417.i.i119.ph, %.lr.ph.i.i117.preheader283 ] ; 4 uses
  %.sroa.0.016.i.i120.prol = phi ptr [ %i.ex, %.lr.ph.i.i117.prol ], [ %.sroa.0.016.i.i120.ph, %.lr.ph.i.i117.preheader283 ] ; 3 uses
  %prol.iter295 = phi i64 [ %prol.iter295.next, %.lr.ph.i.i117.prol ], [ 0, %.lr.ph.i.i117.preheader283 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i119.prol) ]
  %i.et = load i32, ptr %.sroa.0.016.i.i120.prol, align 4, !tbaa !338
  store i32 %i.et, ptr %.01417.i.i119.prol, align 4, !tbaa !338
  %i.eu = getelementptr inbounds nuw i8, ptr %.01417.i.i119.prol, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i120.prol, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !338
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !338
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i120.prol, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.01417.i.i119.prol, i64 8 ; 2 uses
  %i.ez = add i64 %.018.i.i118.prol, -1           ; 2 uses
  %prol.iter295.next = add i64 %prol.iter295, 1   ; 2 uses
  %prol.iter295.cmp.not = icmp eq i64 %prol.iter295.next, %xtraiter293
  br i1 %prol.iter295.cmp.not, label %.lr.ph.i.i117.prol.loopexit, label %.lr.ph.i.i117.prol, !llvm.loop !30386

.lr.ph.i.i117.prol.loopexit:                      ; preds = %.lr.ph.i.i117.prol, %.lr.ph.i.i117.preheader283
  %.018.i.i118.unr = phi i64 [ %.018.i.i118.ph, %.lr.ph.i.i117.preheader283 ], [ %i.ez, %.lr.ph.i.i117.prol ]
  %.01417.i.i119.unr = phi ptr [ %.01417.i.i119.ph, %.lr.ph.i.i117.preheader283 ], [ %i.ey, %.lr.ph.i.i117.prol ]
  %.sroa.0.016.i.i120.unr = phi ptr [ %.sroa.0.016.i.i120.ph, %.lr.ph.i.i117.preheader283 ], [ %i.ex, %.lr.ph.i.i117.prol ]
  %i.fa = icmp ult i64 %i.es, 3
  br i1 %i.fa, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit123, label %.lr.ph.i.i117

.lr.ph.i.i117:                                    ; preds = %.lr.ph.i.i117.prol.loopexit, %.lr.ph.i.i117
  %.018.i.i118 = phi i64 [ %i.fz, %.lr.ph.i.i117 ], [ %.018.i.i118.unr, %.lr.ph.i.i117.prol.loopexit ]
  %.01417.i.i119 = phi ptr [ %i.fy, %.lr.ph.i.i117 ], [ %.01417.i.i119.unr, %.lr.ph.i.i117.prol.loopexit ] ; 10 uses
  %.sroa.0.016.i.i120 = phi ptr [ %i.fx, %.lr.ph.i.i117 ], [ %.sroa.0.016.i.i120.unr, %.lr.ph.i.i117.prol.loopexit ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i119) ]
  %i.fb = load i32, ptr %.sroa.0.016.i.i120, align 4, !tbaa !338
  store i32 %i.fb, ptr %.01417.i.i119, align 4, !tbaa !338
  %i.fc = getelementptr inbounds nuw i8, ptr %.01417.i.i119, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i120, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !338
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !338
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i120, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.01417.i.i119, i64 8
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !338
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !338
  %i.fi = getelementptr inbounds nuw i8, ptr %.01417.i.i119, i64 12
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i120, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !338
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !338
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i120, i64 16
  %i.fm = getelementptr inbounds nuw i8, ptr %.01417.i.i119, i64 16
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !338
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !338
  %i.fo = getelementptr inbounds nuw i8, ptr %.01417.i.i119, i64 20
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i120, i64 20
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !338
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !338
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i120, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %.01417.i.i119, i64 24
  %i.ft = load i32, ptr %i.fr, align 4, !tbaa !338
  store i32 %i.ft, ptr %i.fs, align 4, !tbaa !338
  %i.fu = getelementptr inbounds nuw i8, ptr %.01417.i.i119, i64 28
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i120, i64 28
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !338
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !338
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i120, i64 32
  %i.fy = getelementptr inbounds nuw i8, ptr %.01417.i.i119, i64 32
  %i.fz = add i64 %.018.i.i118, -4                ; 2 uses
  %.not.i.i121.3 = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i121.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit123, label %.lr.ph.i.i117, !llvm.loop !30387

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit123: ; preds = %.lr.ph.i.i117.prol.loopexit, %.lr.ph.i.i117, %middle.block278
  %.not.i124 = icmp eq ptr %3, %i.cm
  %.not.i.i125 = icmp eq ptr %3, %0
  %or.cond151 = or i1 %.not.i.i125, %.not.i124
  br i1 %or.cond151, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit102, label %bb.l, !prof !433

bb.l:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit123
  %i.ga = ptrtoint ptr %0 to i64
  %i.gb = sub i64 %i.e, %i.ga                     ; 2 uses
  %i.gc = ashr exact i64 %i.gb, 3
  %i.gd = sub nsw i64 0, %i.gc
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.gd
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ge, ptr align 4 %0, i64 %i.gb, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit102

bb.m:                                             ; preds = %bb.i
  %.idx = sub i64 0, %i.i
  %i.gf = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 3 uses
  %.not.i.i127 = icmp ne ptr %i.c, %i.a           ; 2 uses
  %i.gg = icmp ne ptr %0, null
  %or.cond152 = and i1 %i.gg, %.not.i.i127
  br i1 %or.cond152, label %bb.n, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit130, !prof !412

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.gf, i64 %i.i, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit130

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit130: ; preds = %bb.n, %bb.m
  br i1 %.not.i.i127, label %bb.o, label %_ZN5boost9container25move_backward_overlappingIPSt4pairIiiEEET_S5_S5_S5_.exit133

bb.o:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit130
  %.not.i.i132 = icmp eq ptr %i.gf, %3
  br i1 %.not.i.i132, label %_ZN5boost9container25move_backward_overlappingIPSt4pairIiiEEET_S5_S5_S5_.exit133, label %bb.p, !prof !344

bb.p:                                             ; preds = %bb.o
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gh, %i.e                     ; 2 uses
  %i.gj = ashr exact i64 %i.gi, 3
  %i.gk = sub nsw i64 0, %i.gj
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gk ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.gl, ptr align 4 %3, i64 %i.gi, i1 false)
  br label %_ZN5boost9container25move_backward_overlappingIPSt4pairIiiEEET_S5_S5_S5_.exit133

_ZN5boost9container25move_backward_overlappingIPSt4pairIiiEEET_S5_S5_S5_.exit133: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit130, %bb.o, %bb.p
  %i.gm = phi ptr [ %3, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorISt4pairIiiEEEPS4_S6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit130 ], [ %i.a, %bb.o ], [ %i.gl, %bb.p ] ; 2 uses
  %i.gn = sub i64 0, %4
  %i.go = getelementptr [8 x i8], ptr %i.gm, i64 %i.gn ; 8 uses
  %.not6.i.i135 = icmp eq i64 %4, 0
  br i1 %.not6.i.i135, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit142, label %.lr.ph.i.i136.preheader

.lr.ph.i.i136.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPSt4pairIiiEEET_S5_S5_S5_.exit133
  %min.iters.check189 = icmp ult i64 %4, 8
  br i1 %min.iters.check189, label %.lr.ph.i.i136.preheader285, label %vector.memcheck190

vector.memcheck190:                               ; preds = %.lr.ph.i.i136.preheader
  %i.gp = shl i64 %4, 3
  %i.gq = getelementptr i8, ptr %5, i64 %i.gp
  %bound0191 = icmp ult ptr %i.go, %i.gq
  %bound1192 = icmp ult ptr %5, %i.gm
  %found.conflict193 = and i1 %bound0191, %bound1192
  br i1 %found.conflict193, label %.lr.ph.i.i136.preheader285, label %vector.ph194

vector.ph194:                                     ; preds = %vector.memcheck190
  %n.vec195 = and i64 %4, -4                      ; 3 uses
  %i.gr = and i64 %4, 3
  %i.gs = shl i64 %n.vec195, 3                    ; 2 uses
  %i.gt = getelementptr i8, ptr %i.go, i64 %i.gs
  %i.gu = getelementptr i8, ptr %5, i64 %i.gs
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next210, %vector.body196 ] ; 2 uses
  %i.gv = shl i64 %index197, 3                    ; 3 uses
  %i.gw = or disjoint i64 %i.gv, 16               ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.go, i64 %i.gv
  %next.gep199 = getelementptr i8, ptr %i.go, i64 %i.gw
  %next.gep200 = getelementptr i8, ptr %5, i64 %i.gv
  %next.gep201 = getelementptr i8, ptr %5, i64 %i.gw
  %wide.vec202 = load <4 x i32>, ptr %next.gep200, align 4, !tbaa !338, !alias.scope !30400
  %wide.vec205 = load <4 x i32>, ptr %next.gep201, align 4, !tbaa !338, !alias.scope !30400
  store <4 x i32> %wide.vec202, ptr %next.gep198, align 4, !tbaa !338, !alias.scope !30401, !noalias !30400
  store <4 x i32> %wide.vec205, ptr %next.gep199, align 4, !tbaa !338, !alias.scope !30401, !noalias !30400
  %index.next210 = add nuw i64 %index197, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next210, %n.vec195
  br i1 %i.gx, label %middle.block211, label %vector.body196, !llvm.loop !30391

middle.block211:                                  ; preds = %vector.body196
  %cmp.n212 = icmp eq i64 %4, %n.vec195
  br i1 %cmp.n212, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorISt4pairIiiEEENS_13move_iteratorIPNS1_4pairIiiEEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit142, label %.lr.ph.i.i136.preheader285

.lr.ph.i.i136.preheader285:                       ; preds = %vector.memcheck190, %.lr.ph.i.i136.preheader, %middle.block211
  %.09.i.i137.ph = phi i64 [ %4, %vector.memcheck190 ], [ %4, %.lr.ph.i.i136.preheader ], [ %i.gr, %middle.block211 ] ; 4 uses
  %.048.i.i138.ph = phi ptr [ %i.go, %vector.memcheck190 ], [ %i.go, %.lr.ph.i.i136.preheader ], [ %i.gt, %middle.block211 ] ; 2 uses
  %.sroa.0.07.i.i139.ph = phi ptr [ %5, %vector.memcheck190 ], [ %5, %.lr.ph.i.i136.preheader ], [ %i.gu, %middle.block211 ] ; 2 uses
  %i.gy = add i64 %.09.i.i137.ph, -1
  %xtraiter287 = and i64 %.09.i.i137.ph, 3        ; 2 uses
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %.lr.ph.i.i136.prol.loopexit, label %.lr.ph.i.i136.prol

.lr.ph.i.i136.prol:                               ; preds = %.lr.ph.i.i136.preheader285, %.lr.ph.i.i136.prol
  %.09.i.i137.prol = phi i64 [ %i.gz, %.lr.ph.i.i136.prol ], [ %.09.i.i137.ph, %.lr.ph.i.i136.preheader285 ]
  %.048.i.i138.prol = phi ptr [ %i.hf, %.lr.ph.i.i136.prol ], [ %.048.i.i138.ph, %.lr.ph.i.i136.preheader285 ] ; 3 uses
  %.sroa.0.07.i.i139.prol = phi ptr [ %i.he, %.lr.ph.i.i136.prol ], [ %.sroa.0.07.i.i139.ph, %.lr.ph.i.i136.preheader285 ] ; 3 uses
  %prol.iter289 = phi i64 [ %prol.iter289.next, %.lr.ph.i.i136.prol ], [ 0, %.lr.ph.i.i136.preheader285 ]
  %i.gz = add i64 %.09.i.i137.prol, -1            ; 2 uses
  %i.ha = load i32, ptr %.sroa.0.07.i.i139.prol, align 4, !tbaa !338
  store i32 %i.ha, ptr %.048.i.i138.prol, align 4, !tbaa !338
  %i.hb = getelementptr inbounds nuw i8, ptr %.048.i.i138.prol, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i139.prol, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !338
  store i32 %i.hd, ptr %i.hb, align 4, !tbaa !338
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i139.prol, i64 8 ; 2 uses
end_hunk_8
