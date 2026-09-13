Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24952
inline.NumDeleted: 2814
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 315
begin_hunk_0_@_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_6vectorIivvEEE18insert_equal_rangeINS0_12vec_iteratorIPiLb0EEEEEvT_SF_:bb.a

.preheader.i.i:                                   ; preds = %_ZN5boost9container6vectorIivvE6insertINS0_12vec_iteratorIPiLb0EEEEES6_NS4_IS5_Lb1EEET_S8_PNS_11move_detail13disable_if_orIvNS9_14is_convertibleIS8_mEENS0_3dtl17is_input_iteratorIS8_Xsr21has_iterator_categoryIS8_EE5valueEEENS9_5bool_ILb0EEESH_E4typeE.exit
  %i.af = load i32, ptr %i.z, align 4, !tbaa !296
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.aa, %.preheader.i.i ] ; 4 uses
  %i.ag = load i32, ptr %.0.i.i, align 4, !tbaa !296
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.z
  br i1 %i.aj, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorIivvEENS1_23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvRT_NSC_8iteratorET0_NS8_5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !37

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !296
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.025.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.am, %bb.k ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.025.i.i, i64 -4 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !296
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ap = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.aq = ptrtoint ptr %.0.i.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2
  %i.at = ptrtoint ptr %.025.i.i to i64
  %i.au = sub i64 %i.at, %i.ap
  %i.av = ashr exact i64 %i.au, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.as, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorIivvEENS1_23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvRT_NSC_8iteratorET0_NS8_5bool_ILb1EEE.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = icmp eq ptr %i.am, %i.z
  br i1 %i.aw, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorIivvEENS1_23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvRT_NSC_8iteratorET0_NS8_5bool_ILb1EEE.exit, label %bb.i, !llvm.loop !38

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorIivvEENS1_23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvRT_NSC_8iteratorET0_NS8_5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %_ZN5boost9container6vectorIivvE6insertINS0_12vec_iteratorIPiLb0EEEEES6_NS4_IS5_Lb1EEET_S8_PNS_11move_detail13disable_if_orIvNS9_14is_convertibleIS8_mEENS0_3dtl17is_input_iteratorIS8_Xsr21has_iterator_categoryIS8_EE5valueEEENS9_5bool_ILb0EEESH_E4typeE.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorIivvEENS1_23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvRT_NSC_8iteratorET0_NS8_5bool_ILb1EEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.a, align 4, !tbaa !296
  store i32 %i.d, ptr %i.c, align 4, !tbaa !296
  %i.e = load i32, ptr %1, align 8, !tbaa !460
  store i32 %i.e, ptr %i.b, align 8, !tbaa !460
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !420
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !424  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !424
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03036 = load ptr, ptr %.030.in35, align 8, !tbaa !423 ; 2 uses
  %.not3237 = icmp eq ptr %.03036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03039 = phi ptr [ %.030, %bb.l ], [ %.03036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.m, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %bb.f unwind label %bb.i       ; 8 uses

bb.f:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03039, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load i32, ptr %i.n, align 4, !tbaa !296
  store i32 %i.p, ptr %i.o, align 4, !tbaa !296
  %i.q = load i32, ptr %.03039, align 8, !tbaa !460
  store i32 %i.q, ptr %i.m, align 8, !tbaa !460
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.m, ptr %i.s, align 8, !tbaa !423
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03138, ptr %i.t, align 8, !tbaa !420
  %i.u = getelementptr inbounds nuw i8, ptr %.03039, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !424  ; 2 uses
  %.not33 = icmp eq ptr %i.v, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = invoke noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.v, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.w, ptr %i.x, align 8, !tbaa !424
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.l, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.z = tail call ptr @__cxa_begin_catch(ptr %.0) #23 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #22
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !423 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !5240

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aa

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #27
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIivvE6assignIPiEEvT_S5_PNS_11move_detail13disable_if_orIvNS6_7is_sameINS6_17integral_constantIjLj1EEENS9_IjLj0EEEEENS6_14is_convertibleIS5_mEENS0_3dtl17is_input_iteratorIS5_Xsr21has_iterator_categoryIS5_EE5valueEEENS6_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !298  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !316

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.42) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #28 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !302    ; 2 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !301
  %i.l = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.l) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !302
  store i64 %i.d, ptr %i.e, align 8, !tbaa !319
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !301
  %i.n = icmp ne ptr %1, %2
  %i.o = icmp ne ptr %1, null
  %spec.select.i.i.i = and i1 %i.o, %i.n
  br i1 %spec.select.i.i.i, label %bb.g, label %bb.h, !prof !317

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 4 %1, i64 %i.c, i1 false)
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 %i.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.i, %bb.f ]
  %i.q = ptrtoint ptr %.0.i.i.i to i64
  %i.r = ptrtoint ptr %i.i to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  store i64 %i.t, ptr %i.m, align 8, !tbaa !322
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !302    ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !301  ; 6 uses
  %i.x = icmp ult i64 %i.w, %i.d
  br i1 %i.x, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i, label %bb.k, !prof !316

bb.k:                                             ; preds = %bb.j
  %i.y = icmp ne ptr %i.u, null
  %i.z = icmp ne ptr %1, null
  %or.cond.i.i.i18 = and i1 %i.z, %i.y
  br i1 %or.cond.i.i.i18, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = shl i64 %i.w, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %1, i64 %i.aa, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds [4 x i8], ptr %1, i64 %i.w
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.w
  br label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i

_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i: ; preds = %bb.m, %bb.j
  %.0.i = phi ptr [ %i.u, %bb.j ], [ %i.ac, %bb.m ] ; 2 uses
  %.0.i.i.i19 = phi ptr [ %1, %bb.j ], [ %i.ab, %bb.m ] ; 2 uses
  %i.ad = icmp ne ptr %.0.i, null
  %i.ae = icmp ne ptr %.0.i.i.i19, null
  %or.cond.i.i15.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i.i15.i, label %bb.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEEPiS4_EEvRT_T0_mT1_m.exit

bb.n:                                             ; preds = %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i
  %i.af = sub nuw i64 %i.d, %i.w
  %i.ag = shl i64 %i.af, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %.0.i.i.i19, i64 %i.ag, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEEPiS4_EEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %bb.i
  %.not.i.i17.i = icmp eq ptr %2, %1
  br i1 %.not.i.i17.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEEPiS4_EEvRT_T0_mT1_m.exit, label %bb.p, !prof !316

bb.p:                                             ; preds = %bb.o
  %i.ah = icmp ne ptr %i.u, null
  %i.ai = icmp ne ptr %1, null
  %or.cond.i.i18.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i.i18.i, label %bb.q, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEEPiS4_EEvRT_T0_mT1_m.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEEPiS4_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEEPiS4_EEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  store i64 %i.d, ptr %i.v, align 8, !tbaa !322
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEEPiS4_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !315  ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !462
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !315  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !463
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !305
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !420
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !423  ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !463
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !306
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !284
  store ptr %i.j, ptr %i.d, align 8, !tbaa !285
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !286
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !306  ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !423  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !39

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.k, align 8, !tbaa !315
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !424  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i, label %bb.f, label %bb.e, !llvm.loop !40

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i, ptr %i.d, align 8, !tbaa !315
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !286
  store i64 %i.u, ptr %i.l, align 8, !tbaa !286
  store ptr %i.o, ptr %i.a, align 8, !tbaa !315
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !464
  %.pre7 = load ptr, ptr %2, align 8, !tbaa !462
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit ]
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #27
  unreachable

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIivvEEEEvRT_m:bb.a
  store i64 %2, ptr %i.t, align 8, !tbaa !319
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !324  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !334  ; 3 uses
  %.not.i.i = icmp ne i64 %i.y, 0
  %i.z = icmp ne ptr %i.w, null
  %or.cond88 = select i1 %.not.i.i, i1 %i.z, i1 false, !prof !430
  br i1 %or.cond88, label %bb.e, label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEED2Ev.exit, !prof !430

bb.e:                                             ; preds = %bb.d
  %i.aa = shl i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 1 %i.w, i64 %i.aa, i1 false)
  %.pre93 = load i64, ptr %i.x, align 8, !tbaa !334
  br label %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEED2Ev.exit

_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEED2Ev.exit: ; preds = %bb.d, %bb.e
  %i.ab = phi i64 [ %i.y, %bb.d ], [ %.pre93, %bb.e ]
  store i64 %i.ab, ptr %i.s, align 8, !tbaa !325
  store ptr %i.r, ptr %i.q, align 8, !tbaa !466
  store <2 x i64> %i.u, ptr %i.x, align 8, !tbaa !319
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !334
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !334
  %i.ag = icmp ult i64 %i.ad, %i.af               ; 4 uses
  %i.ah = select i1 %i.ag, ptr %0, ptr %1         ; 3 uses
  %i.ai = select i1 %i.ag, ptr %1, ptr %0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !334 ; 12 uses
  %.not7790 = icmp eq i64 %i.ak, 0
  %i.al = select i1 %i.ag, ptr %i.b, ptr %i.c     ; 8 uses
  %i.am = select i1 %i.ag, ptr %i.c, ptr %i.b     ; 8 uses
  br i1 %.not7790, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.ak, 8
  br i1 %min.iters.check, label %.lr.ph.preheader106, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.an = shl i64 %i.ak, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.an
  %scevgep102 = getelementptr i8, ptr %i.am, i64 %i.an
  %bound0 = icmp ult ptr %i.al, %scevgep102
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader106, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ak, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %index ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !296, !alias.scope !5874, !noalias !5875
  %wide.load103 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !296, !alias.scope !5874, !noalias !5875
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load104 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !296, !alias.scope !5875
  %wide.load105 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !296, !alias.scope !5875
  store <4 x i32> %wide.load104, ptr %i.ao, align 4, !tbaa !296, !alias.scope !5874, !noalias !5875
  store <4 x i32> %wide.load105, ptr %i.aq, align 4, !tbaa !296, !alias.scope !5874, !noalias !5875
  store <4 x i32> %wide.load, ptr %i.ap, align 4, !tbaa !296, !alias.scope !5875
  store <4 x i32> %wide.load103, ptr %i.ar, align 4, !tbaa !296, !alias.scope !5875
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !5866

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader106

.lr.ph.preheader106:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.091.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.091.ph, 1
  %xtraiter = and i64 %i.ak, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader106
  %i.at = getelementptr inbounds [4 x i8], ptr %i.al, i64 %.091.ph ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.am, i64 %.091.ph ; 2 uses
  %i.av = load i32, ptr %i.at, align 4, !tbaa !296
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !296
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !296
  store i32 %i.av, ptr %i.au, align 4, !tbaa !296
  %i.ax = or disjoint i64 %.091.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader106
  %.091.unr = phi i64 [ %.091.ph, %.lr.ph.preheader106 ], [ %i.ax, %.lr.ph.prol ]
  %i.ay = icmp eq i64 %i.ak, %.neg
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.f
  %.idx89 = shl nsw i64 %i.ak, 2                  ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %i.am, i64 %.idx89 ; 2 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ak ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !334, !noalias !5876
  %.idx = shl nsw i64 %i.bc, 2                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %gepdiff = sub nsw i64 %.idx, %.idx89           ; 2 uses
  %i.bd = ashr exact i64 %gepdiff, 2              ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !326, !noalias !5877
  %i.bg = sub i64 %i.bf, %i.ak
  %.not.i.i80 = icmp ugt i64 %i.bd, %i.bg
  br i1 %.not.i.i80, label %bb.j, label %bb.g, !prof !316

bb.g:                                             ; preds = %._crit_edge
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.idx, %.idx89
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPiEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.h, !prof !316

bb.h:                                             ; preds = %bb.g
  %i.bh = icmp ne ptr %i.al, null
  %i.bi = icmp ne ptr %i.am, null
  %or.cond.i.i.i.i.i.i.i = and i1 %i.bi, %i.bh
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPiEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull align 1 %i.az, i64 %gepdiff, i1 false), !noalias !5877
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPiEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPiEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.bj = load i64, ptr %i.aj, align 8, !tbaa !325, !noalias !5877
  %i.bk = add i64 %i.bj, %i.bd
  store i64 %i.bk, ptr %i.aj, align 8, !tbaa !325, !noalias !5877
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPiEEEENS0_12vec_iteratorIS9_Lb0EEENSB_IS9_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit

bb.j:                                             ; preds = %._crit_edge
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPiEEEEEENS0_12vec_iteratorISB_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef %i.ba, i64 noundef %i.bd, ptr %i.az)
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPiEEEENS0_12vec_iteratorIS9_Lb0EEENSB_IS9_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPiEEEENS0_12vec_iteratorIS9_Lb0EEENSB_IS9_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPiEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  store i64 %i.ak, ptr %i.bb, align 8, !tbaa !325
  br label %bb.k

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.091 = phi i64 [ %i.bu, %.lr.ph ], [ %.091.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.al, i64 %.091 ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.am, i64 %.091 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !296
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !296
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !296
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !296
  %i.bp = add nuw i64 %.091, 1                    ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.bp ; 2 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !296
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !296
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !296
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !296
  %i.bu = add nuw i64 %.091, 2                    ; 2 uses
  %.not77.1 = icmp eq i64 %i.bu, %i.ak
  br i1 %.not77.1, label %._crit_edge, label %.lr.ph, !llvm.loop !5873

bb.k:                                             ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE9priv_swapINS0_17small_vector_baseIivvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS_13move_iteratorIPiEEEENS0_12vec_iteratorIS9_Lb0EEENSB_IS9_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE.exit, %_ZN5boost9container3dtl24scoped_array_deallocatorINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPiEEEEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !326  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !316

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.42) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #28 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !324    ; 3 uses
  %.not18 = icmp eq ptr %i.j, null
  br i1 %.not18, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !334
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #23
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !324
  store i64 %i.d, ptr %i.e, align 8, !tbaa !319
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !334
  %i.p = icmp ne ptr %1, %2
  %i.q = icmp ne ptr %1, null
  %spec.select.i.i.i = and i1 %i.q, %i.p
  br i1 %spec.select.i.i.i, label %bb.g, label %bb.h, !prof !317

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 4 %1, i64 %i.c, i1 false)
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  %.0.i.i.i = phi ptr [ %i.r, %bb.g ], [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit ]
  %i.s = ptrtoint ptr %.0.i.i.i to i64
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  store i64 %i.v, ptr %i.o, align 8, !tbaa !325
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !324    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !334  ; 6 uses
  %i.z = icmp ult i64 %i.y, %i.d
  br i1 %i.z, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPiEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %bb.k, !prof !316

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp ne ptr %i.w, null
  %i.ab = icmp ne ptr %1, null
  %or.cond.i.i.i19 = and i1 %i.ab, %i.aa
  br i1 %or.cond.i.i.i19, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = shl i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  br label %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPiEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i

_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPiEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i: ; preds = %bb.m, %bb.j
  %.0.i = phi ptr [ %i.w, %bb.j ], [ %i.ae, %bb.m ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %1, %bb.j ], [ %i.ad, %bb.m ] ; 2 uses
  %i.af = icmp ne ptr %.0.i, null
  %i.ag = icmp ne ptr %.sroa.0.0.i.i.i, null
  %or.cond.i.i16.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i.i16.i, label %bb.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit

bb.n:                                             ; preds = %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPiEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i
  %i.ah = sub nuw i64 %i.d, %i.y
  %i.ai = shl i64 %i.ah, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %.sroa.0.0.i.i.i, i64 %i.ai, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %bb.i
  %.not.i.i17.i = icmp eq ptr %2, %1
  br i1 %.not.i.i17.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit, label %bb.p, !prof !316

bb.p:                                             ; preds = %bb.o
  %i.aj = icmp ne ptr %i.w, null
  %i.ak = icmp ne ptr %1, null
  %or.cond.i.i18.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i.i18.i, label %bb.q, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destINS_13move_iteratorIPiEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  store i64 %i.d, ptr %i.x, align 8, !tbaa !325
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS_13move_iteratorIPiEES7_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE13insert_uniqueENS0_12vec_iteratorIPiLb1EEEOi(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !299    ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !324, !noalias !5896 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !334, !noalias !5896 ; 4 uses
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.d ; 9 uses
  %i.f = icmp eq ptr %i.a, %i.e
  br i1 %i.f, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 4, !tbaa !296    ; 3 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !296
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %.critedge.i, label %.lr.ph.i.i15.i

.critedge.i:                                      ; preds = %bb.b, %bb.a
  %i.j = icmp eq ptr %i.a, %i.b
  br i1 %i.j, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit.thread, label %bb.c

bb.c:                                             ; preds = %.critedge.i
  %i.k = getelementptr inbounds i8, ptr %i.a, i64 -4 ; 5 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !296  ; 2 uses
  %i.m = load i32, ptr %3, align 4, !tbaa !296    ; 4 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i32 %i.m, %i.l
  br i1 %i.o, label %bb.e, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit.thread13

bb.e:                                             ; preds = %bb.d
  %.not12.i.i.i = icmp eq ptr %i.k, %i.b
  br i1 %.not12.i.i.i, label %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SF_SF_RKT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.q, %i.p
  %i.s = ashr exact i64 %i.r, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.t = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.aa, %bb.f ] ; 2 uses
  %.013.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.f ] ; 2 uses
  %i.u = lshr i64 %.013.i.i.i, 1                  ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !296, !noalias !5897
  %i.x = icmp slt i32 %i.w, %i.m                  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %.neg.i.i.i = xor i64 %i.u, -1
  %i.z = add i64 %.013.i.i.i, %.neg.i.i.i
  %i.aa = select i1 %i.x, ptr %i.y, ptr %i.t      ; 2 uses
  %.1.i.i.i = select i1 %i.x, i64 %i.z, i64 %i.u  ; 2 uses
  %.not.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SF_SF_RKT0_.exit.i.i, label %bb.f, !llvm.loop !87

_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SF_SF_RKT0_.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ab = phi ptr [ %i.b, %bb.e ], [ %i.aa, %bb.f ] ; 5 uses
  %i.ac = icmp eq ptr %i.ab, %i.k
  br i1 %i.ac, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit.thread, label %.split

.split:                                           ; preds = %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SF_SF_RKT0_.exit.i.i
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !296
  %i.ae = icmp slt i32 %i.m, %i.ad
  br i1 %i.ae, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit.thread, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit.thread13

.lr.ph.i.i15.i:                                   ; preds = %bb.b
  %i.af = ptrtoint ptr %i.a to i64
  %i.ag = ptrtoint ptr %i.e to i64
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = ashr exact i64 %i.ah, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i15.i
  %i.aj = phi ptr [ %i.a, %.lr.ph.i.i15.i ], [ %i.aq, %bb.g ] ; 2 uses
  %.013.i.i16.i = phi i64 [ %i.ai, %.lr.ph.i.i15.i ], [ %.1.i.i18.i, %bb.g ] ; 2 uses
  %i.ak = lshr i64 %.013.i.i16.i, 1               ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !296, !noalias !5898
  %i.an = icmp slt i32 %i.am, %i.g                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.neg.i.i17.i = xor i64 %i.ak, -1
  %i.ap = add i64 %.013.i.i16.i, %.neg.i.i17.i
  %i.aq = select i1 %i.an, ptr %i.ao, ptr %i.aj   ; 6 uses
  %.1.i.i18.i = select i1 %i.an, i64 %i.ap, i64 %i.ak ; 2 uses
  %.not.i.i19.i = icmp eq i64 %.1.i.i18.i, 0
  br i1 %.not.i.i19.i, label %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SF_SF_RKT0_.exit.i20.i, label %bb.g, !llvm.loop !87

_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SF_SF_RKT0_.exit.i20.i: ; preds = %bb.g
  %i.ar = icmp eq ptr %i.aq, %i.e
  br i1 %i.ar, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit.thread, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit

_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit: ; preds = %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SF_SF_RKT0_.exit.i20.i
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !296
  %i.at = icmp slt i32 %i.g, %i.as
  br i1 %i.at, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit.thread, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit.thread13

_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit.thread: ; preds = %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SF_SF_RKT0_.exit.i20.i, %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SF_SF_RKT0_.exit.i.i, %bb.c, %.critedge.i, %.split, %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit
  %.sroa.08.012 = phi ptr [ %i.ab, %.split ], [ %i.aq, %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit ], [ %i.aq, %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SF_SF_RKT0_.exit.i20.i ], [ %i.ab, %_ZNK5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE16priv_lower_boundINS0_12vec_iteratorIPiLb1EEEiEET_SF_SF_RKT0_.exit.i.i ], [ %i.a, %bb.c ], [ %i.a, %.critedge.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5901)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !326, !noalias !5902
  %.not.i.i.i3 = icmp eq i64 %i.av, %i.d
  br i1 %.not.i.i.i3, label %bb.l, label %bb.h, !prof !316

bb.h:                                             ; preds = %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE26priv_insert_unique_prepareIiEEbNS0_12vec_iteratorIPiLb1EEERKT_RNSA_18insert_commit_dataE.exit.thread
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPiLb0EEEEEEESC_SB_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb0EEEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.ah = ptrtoint ptr %i.y to i64
  %i.ai = sub i64 %i.ah, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 4 %2, i64 %i.ai, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIS6_Lb0EEEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIS6_Lb0EEEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %bb.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb0EEEE31uninitialized_copy_n_and_updateIS8_EEvRS6_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = icmp eq ptr %i.aj, %i.s
  %or.cond9 = select i1 %.not.i, i1 true, i1 %i.ak
  br i1 %or.cond9, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPiLb0EEEEEEEvSB_mSB_mT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIS6_Lb0EEEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %i.al = load i64, ptr %i.a, align 8, !tbaa !326
  %i.am = shl i64 %i.al, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.am) #23
  %.pre = load i64, ptr %i.d, align 8, !tbaa !325
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPiLb0EEEEEEEvSB_mSB_mT_.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPiLb0EEEEEEEvSB_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIS6_Lb0EEEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %bb.j
  %i.an = phi i64 [ %i.x, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIS6_Lb0EEEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre, %bb.j ]
  store ptr %i.r, ptr %1, align 8, !tbaa !324
  %i.ao = add i64 %i.an, %3
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !325
  store i64 %i.o, ptr %i.a, align 8, !tbaa !319
  %i.ap = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.ap, ptr %0, align 8, !tbaa !351
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiENS0_12small_vectorIiLm7EvvEEE18insert_equal_rangeINS0_12vec_iteratorIPiLb0EEEEEvT_SF_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %4 = alloca %"class.boost::movelib::adaptive_xbuf", align 8 ; 4 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.63", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !351    ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !351    ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.c = load ptr, ptr %0, align 8, !tbaa !324, !noalias !6055 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !334, !noalias !6055 ; 3 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.e ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6056)
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6057)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !6056
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !326, !noalias !6058
  %i.m = sub i64 %i.l, %i.e
  %.not.i.i = icmp ugt i64 %i.j, %i.m
  br i1 %.not.i.i, label %bb.e, label %bb.c, !prof !316

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ne ptr %i.c, null
  %i.o = icmp ne ptr %i.a, null
  %or.cond.i.i.i.i.i.i.i = and i1 %i.o, %i.n
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.d, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPiLb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %i.a, i64 %i.i, i1 false), !noalias !6059
  %.pre = load i64, ptr %i.d, align 8, !tbaa !325, !noalias !6058
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPiLb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPiLb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.p = phi i64 [ %.pre, %bb.d ], [ %i.e, %bb.c ]
  %i.q = add i64 %i.p, %i.j                       ; 2 uses
  store i64 %i.q, ptr %i.d, align 8, !tbaa !325, !noalias !6058
  store ptr %i.f, ptr %6, align 8, !tbaa !351, !alias.scope !6058
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS0_12vec_iteratorIPiLb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

bb.e:                                             ; preds = %bb.b
  store ptr %i.a, ptr %5, align 8, !tbaa !351, !noalias !6058
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPiLb0EEEEEEESC_SB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.f, i64 noundef %i.j, ptr noundef nonnull align 8 dead_on_return %5)
  %.pre16 = load ptr, ptr %6, align 8, !tbaa !299
  %.pre17 = load i64, ptr %i.d, align 8, !tbaa !334
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS0_12vec_iteratorIPiLb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS0_12vec_iteratorIPiLb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPiLb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.e
  %i.r = phi i64 [ %i.q, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPiLb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre17, %bb.e ]
  %i.s = phi ptr [ %i.f, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPiLb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i ], [ %.pre16, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !6056
  %i.t = load ptr, ptr %0, align 8, !tbaa !324
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_NS0_9iter_sizeISF_E4typeET0_RT1_(ptr noundef %i.s, i64 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.z = load ptr, ptr %6, align 8, !tbaa !299    ; 7 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !324   ; 3 uses
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !334
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = icmp eq ptr %i.aa, %i.z
  %i.ae = icmp eq ptr %i.z, %i.ac
  %or.cond.i.i = or i1 %i.ad, %i.ae
  br i1 %or.cond.i.i, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorIiLm7EvvEENS1_23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvRT_NSC_8iteratorET0_NS8_5bool_ILb1EEE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS0_12vec_iteratorIPiLb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit
  %i.af = load i32, ptr %i.z, align 4, !tbaa !296
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.aa, %.preheader.i.i ] ; 4 uses
  %i.ag = load i32, ptr %.0.i.i, align 4, !tbaa !296
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.z
  br i1 %i.aj, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorIiLm7EvvEENS1_23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvRT_NSC_8iteratorET0_NS8_5bool_ILb1EEE.exit, label %bb.f, !llvm.loop !37

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !296
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.025.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.am, %bb.k ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.025.i.i, i64 -4 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !296
  %i.ao = icmp slt i32 %i.an, %i.al
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ap = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.aq = ptrtoint ptr %.0.i.i to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2
  %i.at = ptrtoint ptr %.025.i.i to i64
  %i.au = sub i64 %i.at, %i.ap
  %i.av = ashr exact i64 %i.au, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN5boost7movelib15detail_adaptive19adaptive_merge_implIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_RT1_(ptr noundef nonnull %.0.i.i, i64 noundef %i.as, i64 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorIiLm7EvvEENS1_23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvRT_NSC_8iteratorET0_NS8_5bool_ILb1EEE.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = icmp eq ptr %i.am, %i.z
  br i1 %i.aw, label %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorIiLm7EvvEENS1_23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvRT_NSC_8iteratorET0_NS8_5bool_ILb1EEE.exit, label %bb.i, !llvm.loop !38

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorIiLm7EvvEENS1_23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvRT_NSC_8iteratorET0_NS8_5bool_ILb1EEE.exit: ; preds = %bb.g, %bb.k, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS0_12vec_iteratorIPiLb0EEEEESA_NS8_IS9_Lb1EEET_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESL_E4typeE.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_12small_vectorIiLm7EvvEENS1_23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvRT_NSC_8iteratorET0_NS8_5bool_ILb1EEE.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_12vec_iteratorIPiLb1EEEEEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !299    ; 8 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !299    ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = sub i64 %i.c, %i.d                       ; 3 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !326  ; 2 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.j, label %bb.c, label %bb.d, !prof !316

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.42) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 5 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !324    ; 3 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !334
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = shl i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #23
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.k, ptr %0, align 8, !tbaa !324
  store i64 %i.f, ptr %i.g, align 8, !tbaa !319
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !334
  %i.r = load ptr, ptr %1, align 8, !tbaa !299    ; 4 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !299    ; 2 uses
  %i.t = icmp ne ptr %i.r, %i.s
  %i.u = icmp ne ptr %i.r, null
  %spec.select.i.i.i = and i1 %i.u, %i.t
  br i1 %spec.select.i.i.i, label %bb.g, label %bb.h, !prof !317

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 4 %i.r, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 %i.x
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  %.0.i.i.i = phi ptr [ %i.y, %bb.g ], [ %i.k, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit ]
  %i.z = ptrtoint ptr %.0.i.i.i to i64
  %i.aa = ptrtoint ptr %i.k to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  store i64 %i.ac, ptr %i.q, align 8, !tbaa !325
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !tbaa !324   ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !334 ; 6 uses
  %i.ag = icmp ult i64 %i.af, %i.f
  br i1 %i.ag, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPiLb1EEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %bb.k, !prof !316

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp ne ptr %i.ad, null
  %i.ai = icmp ne ptr %i.a, null
  %or.cond.i.i.i13 = and i1 %i.ai, %i.ah
  br i1 %or.cond.i.i.i13, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = shl i64 %i.af, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.a, i64 %i.aj, i1 false), !noalias !6064
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.af
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  br label %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPiLb1EEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i

_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPiLb1EEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i: ; preds = %bb.m, %bb.j
  %.0.i = phi ptr [ %i.ad, %bb.j ], [ %i.al, %bb.m ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.a, %bb.j ], [ %i.ak, %bb.m ] ; 2 uses
  %i.am = icmp ne ptr %.0.i, null
  %i.an = icmp ne ptr %.sroa.0.0.i.i, null
  %or.cond.i.i12.i = and i1 %i.am, %i.an
  br i1 %or.cond.i.i12.i, label %bb.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit

bb.n:                                             ; preds = %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPiLb1EEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i
  %i.ao = sub nuw i64 %i.f, %i.af
  %i.ap = shl i64 %i.ao, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %.sroa.0.0.i.i, i64 %i.ap, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %bb.i
  %.not.i.i13.i = icmp eq ptr %i.b, %i.a
  br i1 %.not.i.i13.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit, label %bb.p, !prof !316

bb.p:                                             ; preds = %bb.o
  %i.aq = icmp ne ptr %i.ad, null
  %i.ar = icmp ne ptr %i.a, null
  %or.cond.i.i14.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i14.i, label %bb.q, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.a, i64 %i.e, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destINS0_12vec_iteratorIPiLb1EEES3_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  store i64 %i.f, ptr %i.ae, align 8, !tbaa !325
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEENS0_12vec_iteratorIPiLb1EEES7_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignIPiEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !326  ; 2 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.h, label %bb.c, label %bb.d, !prof !316

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.42) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #28 ; 5 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !324    ; 3 uses
  %.not17 = icmp eq ptr %i.j, null
  br i1 %.not17, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !334
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = icmp eq ptr %i.l, %i.j
  br i1 %i.m, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = shl i64 %i.f, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.n) #23
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.i, ptr %0, align 8, !tbaa !324
  store i64 %i.d, ptr %i.e, align 8, !tbaa !319
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !334
  %i.p = icmp ne ptr %1, %2
  %i.q = icmp ne ptr %1, null
  %spec.select.i.i.i = and i1 %i.q, %i.p
  br i1 %spec.select.i.i.i, label %bb.g, label %bb.h, !prof !317

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 4 %1, i64 %i.c, i1 false)
  %i.r = getelementptr inbounds i8, ptr %i.i, i64 %i.c
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit
  %.0.i.i.i = phi ptr [ %i.r, %bb.g ], [ %i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit ]
  %i.s = ptrtoint ptr %.0.i.i.i to i64
  %i.t = ptrtoint ptr %i.i to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  store i64 %i.v, ptr %i.o, align 8, !tbaa !325
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !324    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !334  ; 6 uses
  %i.z = icmp ult i64 %i.y, %i.d
  br i1 %i.z, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i, label %bb.k, !prof !316

bb.k:                                             ; preds = %bb.j
  %i.aa = icmp ne ptr %i.w, null
  %i.ab = icmp ne ptr %1, null
  %or.cond.i.i.i18 = and i1 %i.ab, %i.aa
  br i1 %or.cond.i.i.i18, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = shl i64 %i.y, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.ac, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  br label %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i

_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i: ; preds = %bb.m, %bb.j
  %.0.i = phi ptr [ %i.w, %bb.j ], [ %i.ae, %bb.m ] ; 2 uses
  %.0.i.i.i19 = phi ptr [ %1, %bb.j ], [ %i.ad, %bb.m ] ; 2 uses
  %i.af = icmp ne ptr %.0.i, null
  %i.ag = icmp ne ptr %.0.i.i.i19, null
  %or.cond.i.i15.i = and i1 %i.af, %i.ag
  br i1 %or.cond.i.i15.i, label %bb.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit

bb.n:                                             ; preds = %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i
  %i.ah = sub nuw i64 %i.d, %i.y
  %i.ai = shl i64 %i.ah, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %.0.i.i.i19, i64 %i.ai, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit

bb.o:                                             ; preds = %bb.i
  %.not.i.i17.i = icmp eq ptr %2, %1
  br i1 %.not.i.i17.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit, label %bb.p, !prof !316

bb.p:                                             ; preds = %bb.o
  %i.aj = icmp ne ptr %i.w, null
  %i.ak = icmp ne ptr %1, null
  %or.cond.i.i18.i = and i1 %i.ak, %i.aj
  br i1 %or.cond.i.i18.i, label %bb.q, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit: ; preds = %_ZN5boost9container18copy_n_source_destIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S5_E4typeES5_mRS6_.exit.i, %bb.n, %bb.o, %bb.p, %bb.q
  store i64 %i.d, ptr %i.x, align 8, !tbaa !325
  br label %bb.r

bb.r:                                             ; preds = %bb.h, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_8flat_setIiSt4lessIiENS0_13static_vectorIiLm500EvEEEESt3setIiS5_SaIiEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(2008) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.b = load i64, ptr %i.a, align 8, !tbaa !344  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !286
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.idx = shl nsw i64 %i.b, 2
  %i.e = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !284  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not4.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.05.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.g, %bb.b ]
  %i.i = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i) #26 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %.lr.ph.i.i ]
  %.not13 = icmp eq i64 %.0.lcssa.i.i, %i.b
  br i1 %.not13, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.019.026 = phi ptr [ %i.o, %bb.c ], [ %0, %.preheader ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.p, %bb.c ], [ %i.g, %.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 32
  %i.l = load i32, ptr %.sroa.019.026, align 4, !tbaa !296
  %i.m = load i32, ptr %i.k, align 4, !tbaa !296
  %i.n = icmp eq i32 %i.l, %i.m                   ; 3 uses
  br i1 %i.n, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 4 ; 2 uses
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #26
  %.not23 = icmp eq ptr %i.o, %i.e
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !17

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit ], [ true, %.preheader ], [ %i.n, %bb.c ], [ %i.n, %.lr.ph ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20CheckEqualContainersINS0_13flat_multisetIiSt4lessIiENS0_13static_vectorIiLm500EvEEEESt8multisetIiS5_SaIiEEEEbRKT_RKT0_(ptr noundef nonnull align 8 dereferenceable(2008) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.b = load i64, ptr %i.a, align 8, !tbaa !344  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !286
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.idx = shl nsw i64 %i.b, 2
  %i.e = getelementptr inbounds i8, ptr %0, i64 %.idx
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !284  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not4.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.sroa.02.05.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.g, %bb.b ]
  %i.i = add nuw nsw i64 %.06.i.i, 1              ; 2 uses
  %i.j = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.05.i.i) #26 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !1

_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %i.i, %.lr.ph.i.i ]
  %.not13 = icmp eq i64 %.0.lcssa.i.i, %i.b
  br i1 %.not13, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %.not2324 = icmp eq i64 %i.b, 0
  br i1 %.not2324, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %.sroa.019.026 = phi ptr [ %i.o, %bb.c ], [ %0, %.preheader ] ; 2 uses
  %.sroa.015.025 = phi ptr [ %i.p, %bb.c ], [ %i.g, %.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.015.025, i64 32
  %i.l = load i32, ptr %.sroa.019.026, align 4, !tbaa !296
  %i.m = load i32, ptr %i.k, align 4, !tbaa !296
  %i.n = icmp eq i32 %i.l, %i.m                   ; 3 uses
  br i1 %i.n, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 4 ; 2 uses
  %i.p = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.015.025) #26
  %.not23 = icmp eq ptr %i.o, %i.e
  br i1 %.not23, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %.preheader, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ false, %_ZN5boost9intrusive18iterator_udistanceISt23_Rb_tree_const_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit ], [ true, %.preheader ], [ %i.n, %bb.c ], [ %i.n, %.lr.ph ]
  ret i1 %.2
end_hunk_2
begin_hunk_3_@_ZN5boost9container13stable_vectorIivE5eraseENS0_22stable_vector_iteratorIPiLb1EEES5_:bb.a
  %i.bg = sub i64 %i.bc, %i.bf
  %i.bh = ashr exact i64 %i.bg, 3
  %i.bi = sub i64 %i.be, %i.bh                    ; 2 uses
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !376, !noalias !6978
  %i.bj = load ptr, ptr %i.t, align 8, !tbaa !363, !noalias !6979
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -16 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.v, %i.bl
  br i1 %.not2.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i, %.lr.ph.i.i
  %i.bm = phi ptr [ %i.bo, %.lr.ph.i.i ], [ %i.v, %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i ] ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !365
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !367
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, %i.bl
  br i1 %.not.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i, !llvm.loop !94

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit: ; preds = %.lr.ph.i.i, %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3)
  %.pre = load ptr, ptr %3, align 8, !tbaa !375
  br label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit
  %i.bp = phi ptr [ %.pre, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit ], [ %i.n, %_ZNK5boost9container13stable_vectorIivE6cbeginEv.exit ]
  store ptr %i.bp, ptr %0, align 8, !tbaa !373
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorIivE33priv_insert_forward_non_templatedEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.113") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator.113", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_m(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %3)
  %i.d = load i64, ptr %1, align 8, !tbaa !470    ; 2 uses
  %i.e = icmp ult i64 %i.d, %3
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw i64 %3, %i.d
  tail call void @_ZN5boost9container13stable_vectorIivE18priv_increase_poolEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !363  ; 5 uses
  %.idx19 = shl i64 %2, 3                         ; 6 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %.idx19 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !479, !noalias !6991
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !362, !noalias !6991 ; 3 uses
  %i.m = sub i64 %i.j, %i.l
  %.not.i.i = icmp ugt i64 %3, %i.m
  br i1 %.not.i.i, label %bb.m, label %bb.d, !prof !316

bb.d:                                             ; preds = %bb.c
  %.idx = shl i64 %i.l, 3                         ; 4 uses
  %i.n = getelementptr i8, ptr %i.g, i64 %.idx    ; 7 uses
  %i.o = icmp eq i64 %i.l, %2
  %.not15.i.i.i.i.i.i = icmp eq i64 %3, 0         ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %i.p = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.p, i1 false), !tbaa !365, !noalias !6991
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.f:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.g, !prof !316

bb.g:                                             ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %.idx19           ; 2 uses
  %i.q = ashr exact i64 %gepdiff, 3               ; 7 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.q, %3
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.neg = mul i64 %3, -8                          ; 3 uses
  %.not13.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i, label %bb.i, !prof !339

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %.neg
  %i.s = shl i64 %3, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.r, i64 %i.s, i1 false), !noalias !6991
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.t = add nsw i64 %.idx, %.neg
  %.not.i.i10.i.i.i.i = icmp eq i64 %i.t, %.idx19
  br i1 %.not.i.i10.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i, label %bb.j, !prof !316

bb.j:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i
  %i.u = sub i64 %.neg, %.idx19
  %gepdiff21 = add i64 %i.u, %.idx                ; 2 uses
  %i.v = ashr exact i64 %gepdiff21, 3
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.x, ptr align 8 %i.h, i64 %gepdiff21, i1 false), !noalias !6991
  br label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %bb.j, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i11.i.i.i.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.y = and i64 %3, 3
  %i.z = shl i64 %n.vec, 3
  %i.aa = getelementptr i8, ptr %i.h, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !365, !noalias !6991
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !365, !noalias !6991
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !6984

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i.i.i, %middle.block
  %.07.i.i.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i11.i.i.i.i ], [ %i.y, %middle.block ]
  %.046.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i11.i.i.i.i ], [ %i.aa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i.i.i = phi i64 [ %i.ae, %scalar.ph ], [ %.07.i.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.af, %scalar.ph ], [ %.046.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ae = add i64 %.07.i.i.i.i.i.i, -1            ; 2 uses
  store ptr null, ptr %.046.i.i.i.i.i.i, align 8, !tbaa !365, !noalias !6991
  %i.af = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i35.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph, !llvm.loop !6985

bb.k:                                             ; preds = %bb.g
  %.not14.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %bb.l, !prof !316

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 8 %i.h, i64 %gepdiff, i1 false), !noalias !6991
  br label %.lr.ph.i39.i.i.i.i.i

.lr.ph.i39.i.i.i.i.i:                             ; preds = %bb.l, %bb.k
  %min.iters.check34 = icmp ult i64 %i.q, 4
  br i1 %min.iters.check34, label %scalar.ph33.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %.lr.ph.i39.i.i.i.i.i
  %n.vec36 = and i64 %i.q, -4                     ; 3 uses
  %i.ah = and i64 %i.q, 3
  %i.ai = shl nsw i64 %n.vec36, 3
  %i.aj = getelementptr i8, ptr %i.h, i64 %i.ai
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next40, %vector.body37 ] ; 2 uses
  %i.ak = shl i64 %index38, 3
  %next.gep39 = getelementptr i8, ptr %i.h, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep39, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep39, align 8, !tbaa !365, !noalias !6991
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !365, !noalias !6991
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.am, label %middle.block41, label %vector.body37, !llvm.loop !6986

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.q, %n.vec36
  br i1 %cmp.n42, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i, label %scalar.ph33.preheader

scalar.ph33.preheader:                            ; preds = %.lr.ph.i39.i.i.i.i.i, %middle.block41
  %.07.i41.i.i.i.i.i.ph = phi i64 [ %i.q, %.lr.ph.i39.i.i.i.i.i ], [ %i.ah, %middle.block41 ]
  %.046.i42.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i39.i.i.i.i.i ], [ %i.aj, %middle.block41 ]
  br label %scalar.ph33

scalar.ph33:                                      ; preds = %scalar.ph33.preheader, %scalar.ph33
  %.07.i41.i.i.i.i.i = phi i64 [ %i.an, %scalar.ph33 ], [ %.07.i41.i.i.i.i.i.ph, %scalar.ph33.preheader ]
  %.046.i42.i.i.i.i.i = phi ptr [ %i.ao, %scalar.ph33 ], [ %.046.i42.i.i.i.i.i.ph, %scalar.ph33.preheader ] ; 2 uses
  %i.an = add i64 %.07.i41.i.i.i.i.i, -1          ; 2 uses
  store ptr null, ptr %.046.i42.i.i.i.i.i, align 8, !tbaa !365, !noalias !6991
  %i.ao = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 8
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i, label %scalar.ph33, !llvm.loop !6987

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i: ; preds = %scalar.ph33, %middle.block41
  %i.ap = sub nuw i64 %3, %i.q                    ; 6 uses
  %.not15.i.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not15.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i
  %min.iters.check47 = icmp ult i64 %i.ap, 4
  br i1 %min.iters.check47, label %.lr.ph.i.i.i.i.i.i.i.preheader.a, label %vector.ph47

vector.ph47:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec48 = and i64 %i.ap, -4                    ; 3 uses
  %i.aq = and i64 %i.ap, 3
  %i.ar = shl i64 %n.vec48, 3
  %i.as = getelementptr i8, ptr %i.n, i64 %i.ar
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.at = shl i64 %index50, 3
  %next.gep51 = getelementptr i8, ptr %i.n, i64 %i.at ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep51) ]
  %i.au = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !365, !noalias !6991
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !365, !noalias !6991
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.av, label %middle.block56, label %vector.body49, !llvm.loop !6988

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.ap, %n.vec48
  br i1 %cmp.n57, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.a

.lr.ph.i.i.i.i.i.i.i.preheader.a:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block56
  %.017.i.i.i.i.i.i.i.ph = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block56 ]
  %.01416.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block56 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.017.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.01416.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ] ; 3 uses
  %i.aw = add i64 %.017.i.i.i.i.i.i.i, -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i.i) ]
  store ptr null, ptr %.01416.i.i.i.i.i.i.i, align 8, !tbaa !365, !noalias !6991
  %i.ax = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  %.not.i.i45.i.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i45.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !6989

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %middle.block56, %.lr.ph.i.i.i.i.i.i.preheader, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i, %bb.f, %bb.e
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !376, !noalias !6991
  %i.az = add i64 %i.ay, %3
  store i64 %i.az, ptr %i.k, align 8, !tbaa !376, !noalias !6991
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

bb.m:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.113") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %i.h, i64 noundef %3, ptr nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit: ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !363 ; 5 uses
  %.not = icmp eq ptr %i.ba, %i.g
  br i1 %.not, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %.idx19
  %.not2.i = icmp eq i64 %2, 0
  br i1 %.not2.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.bc = add i64 %.idx19, -8                     ; 2 uses
  %i.bd = lshr exact i64 %i.bc, 3
  %i.be = add nuw nsw i64 %i.bd, 1
  %xtraiter = and i64 %i.be, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.bf = phi ptr [ %i.bh, %.lr.ph.i.prol ], [ %i.ba, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !365
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !367
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !6990

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.ba, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %i.bi = icmp ult i64 %i.bc, 56
  br i1 %i.bi, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.bj = phi ptr [ %i.bz, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !365
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !367
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !365
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !367
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !365
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !367
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !365
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !367
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !365
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !367
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !365
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !367
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !365
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !367
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !365
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !367
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.bz, %i.bb
  br i1 %.not.i.7, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %.lr.ph.i, !llvm.loop !94

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %2
  store ptr %i.ca, ptr %0, align 8, !tbaa !481
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator.113", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !362
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, 3                            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !479  ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.g, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i, !prof !316

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.42) #22
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i: ; preds = %bb.c
  %i.h = shl nuw nsw i64 %i.c, 3
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !363    ; 4 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !362  ; 3 uses
  %i.l = icmp ne i64 %i.k, 0
  %i.m = icmp ne ptr %i.j, null
  %spec.select.i.i.i.i.i.i = and i1 %i.m, %i.l
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.thread.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i, !prof !317

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.thread.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %i.k, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false)
  br label %bb.e

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.thread.i.i
  %i.n = load i64, ptr %i.d, align 8, !tbaa !479
  %i.o = shl i64 %i.n, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !362
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i, %bb.e
  %.pre = phi i64 [ %.pre.pre, %bb.e ], [ %i.k, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !363
  store i64 %i.c, ptr %i.d, align 8, !tbaa !319
  %i.p = icmp ugt i64 %.pre, 3
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit
  store i64 3, ptr %i.a, align 8, !tbaa !376
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6resizeEm.exit

bb.g:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !363
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.pre ; 2 uses
  %i.s = sub nuw nsw i64 3, %.pre                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.t = sub nsw i64 %i.c, %.pre
  %.not.i.i.i8 = icmp ugt i64 %i.s, %i.t
  br i1 %.not.i.i.i8, label %bb.i, label %bb.h, !prof !316

.thread:                                          ; preds = %bb.b
  %i.u = load ptr, ptr %0, align 8, !tbaa !363    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %.not.i.i.i815 = icmp ult i64 %i.e, 3
  br i1 %.not.i.i.i815, label %bb.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i, !prof !316

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre, 3
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i, !prof !6994

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i: ; preds = %.thread, %bb.h
  %i.v = phi ptr [ %i.r, %bb.h ], [ %i.u, %.thread ]
  %i.w = phi i64 [ %i.s, %bb.h ], [ 3, %.thread ] ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.x, i1 false), !noalias !6995
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !376, !noalias !6995
  %i.y = add i64 %.pre.i.i.i.i, %i.w
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i: ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i, %bb.h
  %i.z = phi i64 [ 3, %bb.h ], [ %i.y, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i ]
  store i64 %i.z, ptr %i.a, align 8, !tbaa !376, !noalias !6995
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSF_mT_.exit.i.i

bb.i:                                             ; preds = %.thread, %bb.g
  %i.aa = phi i64 [ 3, %.thread ], [ %i.s, %bb.g ]
  %i.ab = phi ptr [ %i.u, %.thread ], [ %i.r, %bb.g ]
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.113") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ab, i64 noundef %i.aa)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSF_mT_.exit.i.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSF_mT_.exit.i.i: ; preds = %bb.i, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6resizeEm.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6resizeEm.exit: ; preds = %bb.f, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSF_mT_.exit.i.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !363   ; 2 uses
  store ptr %1, ptr %i.ac, align 8, !tbaa !365
  store ptr %i.ac, ptr %1, align 8, !tbaa !367
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6resizeEm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorIivE18priv_increase_poolEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::container::dtl::allocator_version_traits<boost::container::new_allocator<boost::container::stable_vector_detail::node<int *>>>::allocate_individual_rollback", align 8 ; 7 uses
  %3 = alloca %"class.boost::container::dtl::transform_multiallocation_chain", align 8 ; 7 uses
  %4 = alloca %"class.boost::container::dtl::transform_multiallocation_chain", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_3
