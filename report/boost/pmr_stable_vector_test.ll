Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pmr_stable_vector_test?download=true
inline.NumInlined: 564
inline.NumDeleted: 311
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE6insertINS_13move_iteratorINS0_15repeat_iteratorIiEEEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPiLb0EEENSB_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISH_Xsr21has_iterator_categoryISH_EE5valueEEENSB_5bool_ILb0EEESN_E4typeENSD_ISE_Lb1EEESH_SH_:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE5beginEv.exit

bb.n:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !26, !noalias !142
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28, !noalias !142
  br label %_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE5beginEv.exit

_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE5beginEv.exit: ; preds = %bb.m, %bb.n
  %storemerge.i = phi ptr [ %i.bs, %bb.n ], [ %i.bp, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !53, !alias.scope !143
  %.not.i.i16 = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i16, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE5beginEv.exit
  %i.bt = load ptr, ptr %storemerge.i, align 8, !tbaa !48, !noalias !143
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.m
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !28, !noalias !143
  store ptr %i.bv, ptr %0, align 8, !tbaa !53, !alias.scope !143
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit: ; preds = %_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE5beginEv.exit, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE33priv_insert_forward_non_templatedEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEERSA_m(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %i.f = icmp ult i64 %i.e, %3
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = sub nuw i64 %3, %i.e
  tail call void @_ZN5boost9container13stable_vectorIiNS0_3pmr21polymorphic_allocatorIiEEE18priv_increase_poolEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26   ; 5 uses
  %.idx19 = shl i64 %2, 3                         ; 6 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.idx19 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46, !noalias !155
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25, !noalias !155 ; 3 uses
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
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %i.r = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.r, i1 false), !tbaa !28, !noalias !155
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.f:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.g, !prof !50

bb.g:                                             ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %.idx19           ; 2 uses
  %i.s = ashr exact i64 %gepdiff, 3               ; 7 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.s, %3
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.neg = mul i64 %3, -8                          ; 3 uses
  %.not13.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i, label %bb.i, !prof !156

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %.neg
  %i.u = shl i64 %3, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.t, i64 %i.u, i1 false), !noalias !155
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.v = add nsw i64 %.idx, %.neg
  %.not.i.i10.i.i.i.i = icmp eq i64 %i.v, %.idx19
  br i1 %.not.i.i10.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i, label %bb.j, !prof !50

bb.j:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i
  %i.w = sub i64 %.neg, %.idx19
  %gepdiff21 = add i64 %i.w, %.idx                ; 2 uses
  %i.x = ashr exact i64 %gepdiff21, 3
  %i.y = sub nsw i64 0, %i.x
  %i.z = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.z, ptr align 8 %i.j, i64 %gepdiff21, i1 false), !noalias !155
  br label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %bb.j, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i
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
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !28, !noalias !155
  store <2 x ptr> splat (ptr null), ptr %i.ae, align 8, !tbaa !28, !noalias !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i.i.i, %middle.block
  %.07.i.i.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i11.i.i.i.i ], [ %i.aa, %middle.block ]
  %.046.i.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i.i11.i.i.i.i ], [ %i.ac, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i.i.i = phi i64 [ %i.ag, %scalar.ph ], [ %.07.i.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.ah, %scalar.ph ], [ %.046.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ag = add i64 %.07.i.i.i.i.i.i, -1            ; 2 uses
  store ptr null, ptr %.046.i.i.i.i.i.i, align 8, !tbaa !28, !noalias !155
  %i.ah = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i35.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph, !llvm.loop !149

bb.k:                                             ; preds = %bb.g
  %.not14.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %bb.l, !prof !50

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull align 8 %i.j, i64 %gepdiff, i1 false), !noalias !155
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
  store <2 x ptr> splat (ptr null), ptr %next.gep39, align 8, !tbaa !28, !noalias !155
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !tbaa !28, !noalias !155
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.ao = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.ao, label %middle.block41, label %vector.body37, !llvm.loop !150

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.s, %n.vec36
  br i1 %cmp.n42, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i, label %scalar.ph33.preheader

scalar.ph33.preheader:                            ; preds = %.lr.ph.i39.i.i.i.i.i, %middle.block41
  %.07.i41.i.i.i.i.i.ph = phi i64 [ %i.s, %.lr.ph.i39.i.i.i.i.i ], [ %i.aj, %middle.block41 ]
  %.046.i42.i.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i39.i.i.i.i.i ], [ %i.al, %middle.block41 ]
  br label %scalar.ph33

scalar.ph33:                                      ; preds = %scalar.ph33.preheader, %scalar.ph33
  %.07.i41.i.i.i.i.i = phi i64 [ %i.ap, %scalar.ph33 ], [ %.07.i41.i.i.i.i.i.ph, %scalar.ph33.preheader ]
  %.046.i42.i.i.i.i.i = phi ptr [ %i.aq, %scalar.ph33 ], [ %.046.i42.i.i.i.i.i.ph, %scalar.ph33.preheader ] ; 2 uses
  %i.ap = add i64 %.07.i41.i.i.i.i.i, -1          ; 2 uses
  store ptr null, ptr %.046.i42.i.i.i.i.i, align 8, !tbaa !28, !noalias !155
  %i.aq = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 8
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i, label %scalar.ph33, !llvm.loop !151

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i: ; preds = %scalar.ph33, %middle.block41
  %i.ar = sub nuw i64 %3, %i.s                    ; 6 uses
  %.not15.i.i.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not15.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i
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
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !28, !noalias !155
  store <2 x ptr> splat (ptr null), ptr %i.aw, align 8, !tbaa !28, !noalias !155
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.ax, label %middle.block56, label %vector.body49, !llvm.loop !152

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.ar, %n.vec48
  br i1 %cmp.n57, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.a

.lr.ph.i.i.i.i.i.i.i.preheader.a:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block56
  %.017.i.i.i.i.i.i.i.ph = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block56 ]
  %.01416.i.i.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block56 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i.i.i ], [ %.017.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i ], [ %.01416.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ] ; 3 uses
  %i.ay = add i64 %.017.i.i.i.i.i.i.i, -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i.i) ]
  store ptr null, ptr %.01416.i.i.i.i.i.i.i, align 8, !tbaa !28, !noalias !155
  %i.az = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  %.not.i.i45.i.i.i.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i45.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !153

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %middle.block56, %.lr.ph.i.i.i.i.i.i.preheader, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i, %bb.f, %bb.e
  %i.ba = load i64, ptr %i.m, align 8, !tbaa !51, !noalias !155
  %i.bb = add i64 %i.ba, %3
  store i64 %i.bb, ptr %i.m, align 8, !tbaa !51, !noalias !155
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

bb.m:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS9_EEEENS0_12vec_iteratorIPS6_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef %i.j, i64 noundef %3, ptr nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit: ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bc = load ptr, ptr %i.h, align 8, !tbaa !26  ; 5 uses
  %.not = icmp eq ptr %i.bc, %i.i
  br i1 %.not, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %.idx19
  %.not2.i = icmp eq i64 %2, 0
  br i1 %.not2.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %.lr.ph.i.preheader

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
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !28
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !154

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.bc, %.lr.ph.i.preheader ], [ %i.bj, %.lr.ph.i.prol ]
  %i.bk = icmp ult i64 %i.be, 56
  br i1 %i.bk, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.bl = phi ptr [ %i.cb, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !28
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !28
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !28
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !48
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !28
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !28
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !48
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !28
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 56 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !28
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.cb, %i.bd
  br i1 %.not.i.7, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %.lr.ph.i, !llvm.loop !2

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %2
  store ptr %i.cc, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_3pmr21polymorphic_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEERSA_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, 3                            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %bb.d, label %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i, !prof !50

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str) #17
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i: ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.i = shl nuw i64 %i.c, 3
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.i, i64 noundef 8), !inline_history !157 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !26   ; 4 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.q = icmp ne i64 %i.p, 0
  %i.r = icmp ne ptr %i.m, null
  %or.cond.i.i.i.i.i.i = and i1 %i.r, %i.q
  %i.s = icmp ne ptr %i.o, null
  %spec.select.i.i.i.i.i.i = and i1 %i.s, %or.cond.i.i.i.i.i.i
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.thread.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i, !prof !54

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.thread.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 8 %i.o, i64 %.idx.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !26
  br label %bb.e

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7reserveEm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.thread.i.i
  %i.t = phi ptr [ %.pre.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.thread.i.i ], [ %i.o, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i ]
  %i.u = load i64, ptr %i.d, align 8, !tbaa !46
  %i.v = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.w = shl i64 %i.u, 3
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.t, i64 noundef %i.w, i64 noundef 8)
          to label %._ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.sink.split.i_crit_edge unwind label %bb.f, !inline_history !1

._ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.sink.split.i_crit_edge: ; preds = %bb.e
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !25
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7reserveEm.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #16
  unreachable

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7reserveEm.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i, %._ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.sink.split.i_crit_edge
  %.pre = phi i64 [ %.pre.pre, %._ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.sink.split.i_crit_edge ], [ %i.p, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_NS0_3dtl18insert_range_proxyIS9_NS_13move_iteratorISA_EEEEEEvRT_T0_SI_SI_T1_mT2_.exit.i.i.i ] ; 5 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !26
  store i64 %i.c, ptr %i.d, align 8, !tbaa !55
  %i.ac = icmp ugt i64 %.pre, 3
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7reserveEm.exit
  store i64 3, ptr %i.a, align 8, !tbaa !51
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE6resizeEm.exit

bb.h:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE7reserveEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.pre ; 2 uses
  %i.ag = sub nuw nsw i64 3, %.pre                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.ah = sub nsw i64 %i.c, %.pre
  %.not.i.i.i8 = icmp ugt i64 %i.ag, %i.ah
  br i1 %.not.i.i.i8, label %bb.j, label %bb.i, !prof !50

.thread:                                          ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %.not.i.i.i817 = icmp ult i64 %i.e, 3
  br i1 %.not.i.i.i817, label %bb.j, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.sink.split.i.i.i.i.i, !prof !50

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.pre, 3
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.sink.split.i.i.i.i.i, !prof !160

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.sink.split.i.i.i.i.i: ; preds = %.thread, %bb.i
  %i.ak = phi ptr [ %i.af, %bb.i ], [ %i.aj, %.thread ]
  %i.al = phi i64 [ %i.ag, %bb.i ], [ 3, %.thread ] ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ak, i8 0, i64 %i.am, i1 false), !noalias !161
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !tbaa !51, !noalias !161
  %i.an = add i64 %.pre.i.i.i.i, %i.al
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i: ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.sink.split.i.i.i.i.i, %bb.i
  %i.ao = phi i64 [ 3, %bb.i ], [ %i.an, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_3pmr21polymorphic_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS9_EEvRSA_T_m.exit.sink.split.i.i.i.i.i ]
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !51, !noalias !161
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_3pmr21polymorphic_allocatorIS6_EEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS9_EEEENS0_12vec_iteratorIPS6_Lb0EEERKSG_mT_.exit.i.i

bb.j:                                             ; preds = %.thread, %bb.h
  %i.ap = phi i64 [ 3, %.thread ], [ %i.ag, %bb.h ]
end_hunk_0
