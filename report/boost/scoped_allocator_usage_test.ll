Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/scoped_allocator_usage_test?download=true
inline.NumInlined: 4371
inline.NumDeleted: 1829
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5boost9container13stable_vectorI9alloc_intNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS2_EEEEE6insertINS0_16emplace_iteratorIS2_NS0_15emplace_functorIJRKiEEEEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS2_Lb0EEENSF_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSF_5bool_ILb0EEESR_E4typeENSH_ISI_Lb1EEESL_SL_:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN5boost9container13stable_vectorI9alloc_intNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS2_EEEEE5beginEv.exit

bb.n:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !137, !noalias !1452
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !138, !noalias !1452
  br label %_ZN5boost9container13stable_vectorI9alloc_intNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS2_EEEEE5beginEv.exit

_ZN5boost9container13stable_vectorI9alloc_intNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS2_EEEEE5beginEv.exit: ; preds = %bb.m, %bb.n
  %storemerge.i = phi ptr [ %i.bv, %bb.n ], [ %i.bs, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1453)
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !215, !alias.scope !1453
  %.not.i.i16 = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i16, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIP9alloc_intLb0EEEl.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container13stable_vectorI9alloc_intNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS2_EEEEE5beginEv.exit
  %i.bw = load ptr, ptr %storemerge.i, align 8, !tbaa !140, !noalias !1453
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.m
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !138, !noalias !1453
  store ptr %i.by, ptr %0, align 8, !tbaa !215, !alias.scope !1453
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIP9alloc_intLb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIP9alloc_intLb0EEEl.exit: ; preds = %_ZN5boost9container13stable_vectorI9alloc_intNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS2_EEEEE5beginEv.exit, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorI9alloc_intNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS2_EEEEE33priv_insert_forward_non_templatedEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.235") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator.235", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIvEEEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_IJS5_ISC_EEEEvEERSB_m(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !145  ; 2 uses
  %i.f = icmp ult i64 %i.e, %3
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %3, %i.e
  tail call void @_ZN5boost9container13stable_vectorI9alloc_intNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS2_EEEEE18priv_increase_poolEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !137  ; 5 uses
  %.idx19 = shl i64 %2, 3                         ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx19 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !152, !noalias !1465
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !136, !noalias !1465 ; 3 uses
  %i.o = sub i64 %i.l, %i.n
  %.not.i.i = icmp ugt i64 %3, %i.o
  br i1 %.not.i.i, label %bb.m, label %bb.d, !prof !50

bb.d:                                             ; preds = %bb.c
  %.idx = shl i64 %i.n, 3                         ; 4 uses
  %i.p = getelementptr i8, ptr %i.i, i64 %.idx    ; 7 uses
  %i.q = icmp eq i64 %i.n, %2
  %.not15.i.i.i.i.i.i = icmp eq i64 %3, 0         ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %i.r = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.r, i1 false), !tbaa !138, !noalias !1465
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.f:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.g, !prof !50

bb.g:                                             ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %.idx19           ; 2 uses
  %i.s = ashr exact i64 %gepdiff, 3               ; 7 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.s, %3
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.neg = mul i64 %3, -8                          ; 3 uses
  %.not13.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SF_E4typeERT_SE_mSF_.exit.i.i.i.i.i, label %bb.i, !prof !1466

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %.neg
  %i.u = shl i64 %3, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.t, i64 %i.u, i1 false), !noalias !1465
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SF_E4typeERT_SE_mSF_.exit.i.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SF_E4typeERT_SE_mSF_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.v = add nsw i64 %.idx, %.neg
  %.not.i.i10.i.i.i.i = icmp eq i64 %i.v, %.idx19
  br i1 %.not.i.i10.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i, label %bb.j, !prof !50

bb.j:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SF_E4typeERT_SE_mSF_.exit.i.i.i.i.i
  %i.w = sub i64 %.neg, %.idx19
  %gepdiff21 = add i64 %i.w, %.idx                ; 2 uses
  %i.x = ashr exact i64 %gepdiff21, 3
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.z, ptr align 8 %i.j, i64 %gepdiff21, i1 false), !noalias !1465
  br label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %bb.j, %_ZN5boost9container26uninitialized_move_alloc_nINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SF_E4typeERT_SE_mSF_.exit.i.i.i.i.i
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i11.i.i.i.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.aa = and i64 %3, 3
  %i.ab = shl i64 %n.vec, 3
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !138, !noalias !1465
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !138, !noalias !1465
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !1458

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i.i.i, %middle.block
  %.07.i.i.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i11.i.i.i.i ], [ %i.aa, %middle.block ]
  %.046.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i11.i.i.i.i ], [ %i.ac, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i.i.i = phi i64 [ %i.ag, %scalar.ph ], [ %.07.i.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.ah, %scalar.ph ], [ %.046.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = add i64 %.07.i.i.i.i.i.i, -1            ; 2 uses
  store ptr null, ptr %.046.i.i.i.i.i.i, align 8, !tbaa !138, !noalias !1465
  %i.ah = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i35.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph, !llvm.loop !1459

bb.k:                                             ; preds = %bb.g
  %.not14.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %bb.l, !prof !50

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull align 8 %i.j, i64 %gepdiff, i1 false), !noalias !1465
  br label %.lr.ph.i39.i.i.i.i.i

.lr.ph.i39.i.i.i.i.i:                             ; preds = %bb.l, %bb.k
  %min.iters.check34 = icmp ult i64 %i.s, 4
  br i1 %min.iters.check34, label %scalar.ph33.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %.lr.ph.i39.i.i.i.i.i
  %n.vec36 = and i64 %i.s, -4                     ; 3 uses
  %i.aj = and i64 %i.s, 3
  %i.ak = shl nsw i64 %n.vec36, 3
  %i.al = getelementptr i8, ptr %i.j, i64 %i.ak
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next40, %vector.body37 ] ; 2 uses
  %i.am = shl i64 %index38, 3
  %next.gep39 = getelementptr i8, ptr %i.j, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep39, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep39, align 8, !tbaa !138, !noalias !1465
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !138, !noalias !1465
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.ao, label %middle.block41, label %vector.body37, !llvm.loop !1460

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.s, %n.vec36
  br i1 %cmp.n42, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEE17copy_n_and_updateIPS9_EEvRSB_T_m.exit44.i.i.i.i.i, label %scalar.ph33.preheader

scalar.ph33.preheader:                            ; preds = %.lr.ph.i39.i.i.i.i.i, %middle.block41
  %.07.i41.i.i.i.i.i.ph = phi i64 [ %i.s, %.lr.ph.i39.i.i.i.i.i ], [ %i.aj, %middle.block41 ]
  %.046.i42.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i39.i.i.i.i.i ], [ %i.al, %middle.block41 ]
  br label %scalar.ph33

scalar.ph33:                                      ; preds = %scalar.ph33.preheader, %scalar.ph33
  %.07.i41.i.i.i.i.i = phi i64 [ %i.ap, %scalar.ph33 ], [ %.07.i41.i.i.i.i.i.ph, %scalar.ph33.preheader ]
  %.046.i42.i.i.i.i.i = phi ptr [ %i.aq, %scalar.ph33 ], [ %.046.i42.i.i.i.i.i.ph, %scalar.ph33.preheader ] ; 2 uses
  %i.ap = add i64 %.07.i41.i.i.i.i.i, -1          ; 2 uses
  store ptr null, ptr %.046.i42.i.i.i.i.i, align 8, !tbaa !138, !noalias !1465
  %i.aq = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 8
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEE17copy_n_and_updateIPS9_EEvRSB_T_m.exit44.i.i.i.i.i, label %scalar.ph33, !llvm.loop !1461

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEE17copy_n_and_updateIPS9_EEvRSB_T_m.exit44.i.i.i.i.i: ; preds = %scalar.ph33, %middle.block41
  %i.ar = sub nuw i64 %3, %i.s                    ; 6 uses
  %.not15.i.i.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not15.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEE17copy_n_and_updateIPS9_EEvRSB_T_m.exit44.i.i.i.i.i
  %min.iters.check47 = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check47, label %.lr.ph.i.i.i.i.i.i.i.preheader.a, label %vector.ph47

vector.ph47:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec48 = and i64 %i.ar, -4                    ; 3 uses
  %i.as = and i64 %i.ar, 3
  %i.at = shl i64 %n.vec48, 3
  %i.au = getelementptr i8, ptr %i.p, i64 %i.at
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %i.av = shl i64 %index50, 3
  %next.gep51 = getelementptr i8, ptr %i.p, i64 %i.av ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep51) ]
  %i.aw = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !138, !noalias !1465
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !138, !noalias !1465
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ax, label %middle.block56, label %vector.body49, !llvm.loop !1462

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.ar, %n.vec48
  br i1 %cmp.n57, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.a

.lr.ph.i.i.i.i.i.i.i.preheader.a:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block56
  %.017.i.i.i.i.i.i.i.ph = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block56 ]
  %.01416.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block56 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.017.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.01416.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ] ; 3 uses
  %i.ay = add i64 %.017.i.i.i.i.i.i.i, -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i.i) ]
  store ptr null, ptr %.01416.i.i.i.i.i.i.i, align 8, !tbaa !138, !noalias !1465
  %i.az = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  %.not.i.i45.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i45.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1463

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %middle.block56, %.lr.ph.i.i.i.i.i.i.preheader, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEE17copy_n_and_updateIPS9_EEvRSB_T_m.exit44.i.i.i.i.i, %bb.f, %bb.e
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !146, !noalias !1465
  %i.bb = add i64 %i.ba, %3
  store i64 %i.bb, ptr %i.m, align 8, !tbaa !146, !noalias !1465
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

bb.m:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyISA_EEEENS0_12vec_iteratorIPS6_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.235") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %i.j, i64 noundef %3, ptr nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit: ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !137 ; 5 uses
  %.not = icmp eq ptr %i.bc, %i.i
  br i1 %.not, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIvEEEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESE_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %.idx19
  %.not2.i = icmp eq i64 %2, 0
  br i1 %.not2.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIvEEEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESE_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.be = add i64 %.idx19, -8                     ; 2 uses
  %i.bf = lshr exact i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 1
  %xtraiter = and i64 %i.bg, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.bh = phi ptr [ %i.bj, %.lr.ph.i.prol ], [ %i.bc, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !138
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !140
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1464

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.bc, %.lr.ph.i.preheader ], [ %i.bj, %.lr.ph.i.prol ]
  %i.bk = icmp ult i64 %i.be, 56
  br i1 %i.bk, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIvEEEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.bl = phi ptr [ %i.cb, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !138
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !140
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !138
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !140
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !138
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !140
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !138
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !140
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !138
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !140
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !138
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !140
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !138
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !140
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 56 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !138
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !140
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.cb, %i.bd
  br i1 %.not.i.7, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIvEEEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESE_.exit, label %.lr.ph.i, !llvm.loop !11

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIvEEEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESE_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %2
  store ptr %i.cc, ptr %0, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIvEEEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_IJS5_ISC_EEEEvEERSB_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator.235", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !136
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, 3                            ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !152  ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %bb.d, label %bb.e, !prof !50

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %i.c, 1152921504606846975
  br i1 %i.h, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i, !prof !50

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i: ; preds = %bb.e
  %i.i = shl nuw nsw i64 %i.c, 3
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #21 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !137  ; 4 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !136  ; 3 uses
  %i.n = icmp ne i64 %i.m, 0
  %i.o = icmp ne ptr %i.l, null
  %spec.select.i.i.i.i.i.i = and i1 %i.o, %i.n
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_NS0_3dtl18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i.thread.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_NS0_3dtl18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i.i.i, !prof !220

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_NS0_3dtl18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i.thread.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %i.m, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 8 %i.l, i64 %.idx.i.i, i1 false)
  br label %bb.g

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_NS0_3dtl18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE7reserveEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_NS0_3dtl18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_NS0_3dtl18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i.thread.i.i
  %i.p = load i64, ptr %i.d, align 8, !tbaa !152
  %i.q = shl i64 %i.p, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #19
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !136
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE7reserveEm.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE7reserveEm.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_NS0_3dtl18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i.i.i, %bb.g
  %.pre = phi i64 [ %.pre.pre, %bb.g ], [ %i.m, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEPS8_SB_NS0_3dtl18insert_range_proxyISA_NS_13move_iteratorISB_EEEEEEvRT_T0_SJ_SJ_T1_mT2_.exit.i.i.i ] ; 5 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !137
  store i64 %i.c, ptr %i.d, align 8, !tbaa !51
  %i.r = icmp ugt i64 %.pre, 3
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE7reserveEm.exit
  store i64 3, ptr %i.a, align 8, !tbaa !146
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE6resizeEm.exit

bb.i:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE7reserveEm.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.pre ; 2 uses
  %i.v = sub nuw nsw i64 3, %.pre                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.w = sub nsw i64 %i.c, %.pre
  %.not.i.i.i8 = icmp ugt i64 %i.v, %i.w
  br i1 %.not.i.i.i8, label %bb.k, label %bb.j, !prof !50

.thread:                                          ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !137  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %.not.i.i.i815 = icmp ult i64 %i.e, 3
  br i1 %.not.i.i.i815, label %bb.k, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSB_T_m.exit.sink.split.i.i.i.i.i, !prof !50

bb.j:                                             ; preds = %bb.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre, 3
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSB_T_m.exit.sink.split.i.i.i.i.i, !prof !1469

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSB_T_m.exit.sink.split.i.i.i.i.i: ; preds = %.thread, %bb.j
  %i.z = phi ptr [ %i.u, %bb.j ], [ %i.y, %.thread ]
  %i.aa = phi i64 [ %i.v, %bb.j ], [ 3, %.thread ] ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.z, i8 0, i64 %i.ab, i1 false), !noalias !1470
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !146, !noalias !1470
  %i.ac = add i64 %.pre.i.i.i.i, %i.aa
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i: ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSB_T_m.exit.sink.split.i.i.i.i.i, %bb.j
  %i.ad = phi i64 [ 3, %bb.j ], [ %i.ac, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSB_T_m.exit.sink.split.i.i.i.i.i ]
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !146, !noalias !1470
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyISA_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSH_mT_.exit.i.i

bb.k:                                             ; preds = %.thread, %bb.i
  %i.ae = phi i64 [ 3, %.thread ], [ %i.v, %bb.i ]
  %i.af = phi ptr [ %i.y, %.thread ], [ %i.u, %bb.i ]
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyISA_EEEENS0_12vec_iteratorIPS6_Lb0EEESH_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.235") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.af, i64 noundef %i.ae)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyISA_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSH_mT_.exit.i.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyISA_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSH_mT_.exit.i.i: ; preds = %bb.k, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyISA_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE6resizeEm.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE6resizeEm.exit: ; preds = %bb.h, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_24scoped_allocator_adaptorIJ15SimpleAllocatorIS6_EEEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyISA_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSH_mT_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137 ; 2 uses
  store ptr %1, ptr %i.ah, align 8, !tbaa !138
  store ptr %i.ah, ptr %1, align 8, !tbaa !140
  br label %bb.l
end_hunk_0
