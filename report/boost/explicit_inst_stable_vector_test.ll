Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_stable_vector_test?download=true
inline.NumInlined: 3504
inline.NumDeleted: 1013
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK5boost9container13stable_vectorI5emptyvE20priv_in_range_or_endENS0_22stable_vector_iteratorIPS2_Lb1EEE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK5boost9container13stable_vectorI5emptyvE5beginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51, !noalias !658
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !658
  br label %_ZNK5boost9container13stable_vectorI5emptyvE5beginEv.exit

_ZNK5boost9container13stable_vectorI5emptyvE5beginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %i.g = load ptr, ptr %storemerge.i, align 8, !tbaa !60
  %i.h = load ptr, ptr %1, align 8, !tbaa !67
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %.not = icmp ugt ptr %i.g, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container13stable_vectorI5emptyvE5beginEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.l = icmp ule ptr %i.i, %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK5boost9container13stable_vectorI5emptyvE5beginEv.exit
  %i.m = phi i1 [ false, %_ZNK5boost9container13stable_vectorI5emptyvE5beginEv.exit ], [ %i.l, %bb.d ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorI5emptyvE33priv_insert_forward_non_templatedEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_m(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %3)
  %i.d = load i64, ptr %1, align 8, !tbaa !57     ; 2 uses
  %i.e = icmp ult i64 %i.d, %3
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw i64 %3, %i.d
  tail call void @_ZN5boost9container13stable_vectorI5emptyvE18priv_increase_poolEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !51   ; 5 uses
  %.idx19 = shl i64 %2, 3                         ; 6 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %.idx19 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68, !noalias !670
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !53, !noalias !670 ; 3 uses
  %i.m = sub i64 %i.j, %i.l
  %.not.i.i = icmp ugt i64 %3, %i.m
  br i1 %.not.i.i, label %bb.m, label %bb.d, !prof !74

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
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.p, i1 false), !tbaa !49, !noalias !670
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.f:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.g, !prof !74

bb.g:                                             ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %.idx19           ; 2 uses
  %i.q = ashr exact i64 %gepdiff, 3               ; 7 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.q, %3
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.neg = mul i64 %3, -8                          ; 3 uses
  %.not13.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i, label %bb.i, !prof !84

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %.neg
  %i.s = shl i64 %3, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.r, i64 %i.s, i1 false), !noalias !670
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.t = add nsw i64 %.idx, %.neg
  %.not.i.i10.i.i.i.i = icmp eq i64 %i.t, %.idx19
  br i1 %.not.i.i10.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i, label %bb.j, !prof !74

bb.j:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i
  %i.u = sub i64 %.neg, %.idx19
  %gepdiff21 = add i64 %i.u, %.idx                ; 2 uses
  %i.v = ashr exact i64 %gepdiff21, 3
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.x, ptr align 8 %i.h, i64 %gepdiff21, i1 false), !noalias !670
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
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !49, !noalias !670
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !49, !noalias !670
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !663

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
  store ptr null, ptr %.046.i.i.i.i.i.i, align 8, !tbaa !49, !noalias !670
  %i.af = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i35.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph, !llvm.loop !664

bb.k:                                             ; preds = %bb.g
  %.not14.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %bb.l, !prof !74

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 8 %i.h, i64 %gepdiff, i1 false), !noalias !670
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
  store <2 x ptr> splat (ptr null), ptr %next.gep39, align 8, !tbaa !49, !noalias !670
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !49, !noalias !670
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.am, label %middle.block41, label %vector.body37, !llvm.loop !665

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
  store ptr null, ptr %.046.i42.i.i.i.i.i, align 8, !tbaa !49, !noalias !670
  %i.ao = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 8
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i, label %scalar.ph33, !llvm.loop !666

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
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !49, !noalias !670
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !49, !noalias !670
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.av, label %middle.block56, label %vector.body49, !llvm.loop !667

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
  store ptr null, ptr %.01416.i.i.i.i.i.i.i, align 8, !tbaa !49, !noalias !670
  %i.ax = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  %.not.i.i45.i.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i45.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !668

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %middle.block56, %.lr.ph.i.i.i.i.i.i.preheader, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i, %bb.f, %bb.e
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !59, !noalias !670
  %i.az = add i64 %i.ay, %3
  store i64 %i.az, ptr %i.k, align 8, !tbaa !59, !noalias !670
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

bb.m:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %i.h, i64 noundef %3, ptr nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit: ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !51  ; 5 uses
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
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !60
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !669

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.ba, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %i.bi = icmp ult i64 %i.bc, 56
  br i1 %i.bi, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.bj = phi ptr [ %i.bz, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !49
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !49
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !49
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !49
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !60
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !49
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !60
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !49
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !60
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.bz, %i.bb
  br i1 %.not.i.7, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %.lr.ph.i, !llvm.loop !2

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %2
  store ptr %i.ca, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container13stable_vectorI5emptyvE30priv_capacity_bigger_than_sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53
  %i.e = icmp ugt i64 %i.b, %i.d
  %i.f = load i64, ptr %0, align 8
  %i.g = icmp ne i64 %i.f, 0
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorI5emptyvE6insertINS_13move_iteratorINS0_15repeat_iteratorIS2_EEEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS2_Lb0EEENS9_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISF_Xsr21has_iterator_categoryISF_EE5valueEEENS9_5bool_ILb0EEESL_E4typeENSB_ISC_Lb1EEESF_SF_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::stable_vector_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef align 8 dead_on_return %2, ptr %3, i64 %4, ptr noundef byval(%"class.boost::move_iterator.9") align 8 %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector<empty>::insert_rollback", align 8 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %i.a = sub i64 %4, %.sroa.2.0.copyload          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53, !noalias !688 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5boost9container13stable_vectorI5emptyvE6cbeginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51, !noalias !688
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49, !noalias !688
  br label %_ZNK5boost9container13stable_vectorI5emptyvE6cbeginEv.exit

_ZNK5boost9container13stable_vectorI5emptyvE6cbeginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ]
  %i.h = load ptr, ptr %2, align 8, !tbaa !67
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.j = load ptr, ptr %storemerge.i.i, align 8, !tbaa !60 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %.not = icmp eq i64 %4, %.sroa.2.0.copyload
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container13stable_vectorI5emptyvE6cbeginEv.exit
  %i.n = ashr exact i64 %i.m, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN5boost9container13stable_vectorI5emptyvE33priv_insert_forward_non_templatedEmm(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.n, i64 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.o = load ptr, ptr %6, align 8, !tbaa !47, !noalias !689
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.a
  store ptr %i.p, ptr %7, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN5boost9container13stable_vectorI5emptyvE15insert_rollbackC1ERS3_RNS0_12vec_iteratorIPPNS0_20stable_vector_detail9node_baseIPvEELb0EEERKSD_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %6, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %i.r = phi ptr [ %.promoted, %bb.d ], [ %i.ad, %bb.g ] ; 3 uses
  %.sroa.1.020 = phi i64 [ %4, %bb.d ], [ %i.ac, %bb.g ]
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !51, !noalias !690
  %i.t = load i64, ptr %i.b, align 8, !tbaa !53, !noalias !690
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 3 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.x = load i64, ptr %1, align 8, !tbaa !57     ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !49   ; 2 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !49   ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !30
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30  ; 2 uses
  %i.ab = add i64 %i.x, -1                        ; 2 uses
  store i64 %i.ab, ptr %1, align 8, !tbaa !57
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %bb.g

.thread.i:                                        ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  %..i = select i1 %.not.i.i.i.i.i.i.i, ptr null, ptr %i.y
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !49
  store ptr %..i, ptr %i.w, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.f
  store ptr %i.z, ptr %i.r, align 8, !tbaa !49
  store ptr %i.r, ptr %i.z, align 8, !tbaa !60
  %i.ac = add i64 %.sroa.1.020, -1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.not19 = icmp eq i64 %i.ac, %.sroa.2.0.copyload
  br i1 %.not19, label %bb.h, label %bb.e, !llvm.loop !679

bb.h:                                             ; preds = %bb.g
  store ptr %i.ad, ptr %6, align 8, !tbaa !47
  call void @_ZN5boost9container13stable_vectorI5emptyvE15insert_rollbackD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ae = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !51, !noalias !691
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !53, !noalias !691 ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.ae, %i.ai
  br i1 %.not2.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %.lr.ph.i.i
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.ae, %bb.h ] ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.ai
  br i1 %.not.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i, !llvm.loop !2
end_hunk_0
begin_hunk_1_@_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE20priv_in_range_or_endENS0_22stable_vector_iteratorIPS3_Lb1EEE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !97, !noalias !1211
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49, !noalias !1211
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit

_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i = phi ptr [ %i.f, %bb.c ], [ %i.c, %bb.b ]
  %i.g = load ptr, ptr %storemerge.i, align 8, !tbaa !60
  %i.h = load ptr, ptr %1, align 8, !tbaa !109
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %.not = icmp ugt ptr %i.g, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.l = icmp ule ptr %i.i, %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit
  %i.m = phi i1 [ false, %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE5beginEv.exit ], [ %i.l, %bb.d ]
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE33priv_insert_forward_non_templatedEmm(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEERSA_m(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %3)
  %i.d = load i64, ptr %1, align 8, !tbaa !102    ; 2 uses
  %i.e = icmp ult i64 %i.d, %3
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw i64 %3, %i.d
  tail call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE18priv_increase_poolEm(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !97   ; 5 uses
  %.idx19 = shl i64 %2, 3                         ; 6 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %.idx19 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !110, !noalias !1223
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !99, !noalias !1223 ; 3 uses
  %i.m = sub i64 %i.j, %i.l
  %.not.i.i = icmp ugt i64 %3, %i.m
  br i1 %.not.i.i, label %bb.m, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  %.idx = shl i64 %i.l, 3                         ; 4 uses
  %i.n = getelementptr i8, ptr %i.g, i64 %.idx    ; 7 uses
  %i.o = icmp eq i64 %i.l, %2
  %.not15.i.i.i.i.i.i = icmp eq i64 %3, 0         ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %i.p = shl nuw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %i.p, i1 false), !tbaa !49, !noalias !1223
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.f:                                             ; preds = %bb.d
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.g, !prof !74

bb.g:                                             ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %.idx19           ; 2 uses
  %i.q = ashr exact i64 %gepdiff, 3               ; 7 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.q, %3
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.neg = mul i64 %3, -8                          ; 3 uses
  %.not13.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test16simple_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i, label %bb.i, !prof !84

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 %.neg
  %i.s = shl i64 %3, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.r, i64 %i.s, i1 false), !noalias !1223
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test16simple_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_4test16simple_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.t = add nsw i64 %.idx, %.neg
  %.not.i.i10.i.i.i.i = icmp eq i64 %i.t, %.idx19
  br i1 %.not.i.i10.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i, label %bb.j, !prof !74

bb.j:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test16simple_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i
  %i.u = sub i64 %.neg, %.idx19
  %gepdiff21 = add i64 %i.u, %.idx                ; 2 uses
  %i.v = ashr exact i64 %gepdiff21, 3
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.x, ptr align 8 %i.h, i64 %gepdiff21, i1 false), !noalias !1223
  br label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %bb.j, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test16simple_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS8_SA_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SD_mSE_.exit.i.i.i.i.i
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
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !49, !noalias !1223
  store <2 x ptr> splat (ptr null), ptr %i.ac, align 8, !tbaa !49, !noalias !1223
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i.i.i, %middle.block
  %.07.i.i.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i11.i.i.i.i ], [ %i.y, %middle.block ]
  %.046.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i11.i.i.i.i ], [ %i.aa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i.i.i = phi i64 [ %i.ae, %scalar.ph ], [ %.07.i.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.af, %scalar.ph ], [ %.046.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ae = add i64 %.07.i.i.i.i.i.i, -1            ; 2 uses
  store ptr null, ptr %.046.i.i.i.i.i.i, align 8, !tbaa !49, !noalias !1223
  %i.af = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i35.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph, !llvm.loop !1217

bb.k:                                             ; preds = %bb.g
  %.not14.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %bb.l, !prof !74

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 8 %i.h, i64 %gepdiff, i1 false), !noalias !1223
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
  store <2 x ptr> splat (ptr null), ptr %next.gep39, align 8, !tbaa !49, !noalias !1223
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !49, !noalias !1223
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.am = icmp eq i64 %index.next40, %n.vec36
  br i1 %i.am, label %middle.block41, label %vector.body37, !llvm.loop !1218

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.q, %n.vec36
  br i1 %cmp.n42, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i, label %scalar.ph33.preheader

scalar.ph33.preheader:                            ; preds = %.lr.ph.i39.i.i.i.i.i, %middle.block41
  %.07.i41.i.i.i.i.i.ph = phi i64 [ %i.q, %.lr.ph.i39.i.i.i.i.i ], [ %i.ah, %middle.block41 ]
  %.046.i42.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i39.i.i.i.i.i ], [ %i.aj, %middle.block41 ]
  br label %scalar.ph33

scalar.ph33:                                      ; preds = %scalar.ph33.preheader, %scalar.ph33
  %.07.i41.i.i.i.i.i = phi i64 [ %i.an, %scalar.ph33 ], [ %.07.i41.i.i.i.i.i.ph, %scalar.ph33.preheader ]
  %.046.i42.i.i.i.i.i = phi ptr [ %i.ao, %scalar.ph33 ], [ %.046.i42.i.i.i.i.i.ph, %scalar.ph33.preheader ] ; 2 uses
  %i.an = add i64 %.07.i41.i.i.i.i.i, -1          ; 2 uses
  store ptr null, ptr %.046.i42.i.i.i.i.i, align 8, !tbaa !49, !noalias !1223
  %i.ao = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 8
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i, label %scalar.ph33, !llvm.loop !1219

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i: ; preds = %scalar.ph33, %middle.block41
  %i.ap = sub nuw i64 %3, %i.q                    ; 6 uses
  %.not15.i.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not15.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i
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
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !49, !noalias !1223
  store <2 x ptr> splat (ptr null), ptr %i.au, align 8, !tbaa !49, !noalias !1223
  %index.next55 = add nuw i64 %index50, 4         ; 2 uses
  %i.av = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.av, label %middle.block56, label %vector.body49, !llvm.loop !1220

middle.block56:                                   ; preds = %vector.body49
  %cmp.n57 = icmp eq i64 %i.ap, %n.vec48
  br i1 %cmp.n57, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.a

.lr.ph.i.i.i.i.i.i.i.preheader.a:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block56
  %.017.i.i.i.i.i.i.i.ph = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block56 ]
  %.01416.i.i.i.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.as, %middle.block56 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.017.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ], [ %.01416.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ] ; 3 uses
  %i.aw = add i64 %.017.i.i.i.i.i.i.i, -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i.i) ]
  store ptr null, ptr %.01416.i.i.i.i.i.i.i, align 8, !tbaa !49, !noalias !1223
  %i.ax = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  %.not.i.i45.i.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i45.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1221

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %middle.block56, %.lr.ph.i.i.i.i.i.i.preheader, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_4test16simple_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE17copy_n_and_updateIPS9_EEvRSA_T_m.exit44.i.i.i.i.i, %bb.f, %bb.e
  %i.ay = load i64, ptr %i.k, align 8, !tbaa !103, !noalias !1223
  %i.az = add i64 %i.ay, %3
  store i64 %i.az, ptr %i.k, align 8, !tbaa !103, !noalias !1223
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

bb.m:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS9_EEEENS0_12vec_iteratorIPS6_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %i.h, i64 noundef %3, ptr nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit: ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS9_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !97  ; 5 uses
  %.not = icmp eq ptr %i.ba, %i.g
  br i1 %.not, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %.idx19
  %.not2.i = icmp eq i64 %2, 0
  br i1 %.not2.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %.lr.ph.i.preheader

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
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !60
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1222

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.ba, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %i.bi = icmp ult i64 %i.bc, 56
  br i1 %i.bi, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.bj = phi ptr [ %i.bz, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !49
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !60
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !49
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !49
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !49
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !60
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !60
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !49
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !60
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !49
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !60
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.bz, %i.bb
  br i1 %.not.i.7, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit, label %.lr.ph.i, !llvm.loop !6

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESD_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.n, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_4test16simple_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %2
  store ptr %i.ca, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE30priv_capacity_bigger_than_sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !99
  %i.e = icmp ugt i64 %i.b, %i.d
  %i.f = load i64, ptr %0, align 8
  %i.g = icmp ne i64 %i.f, 0
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6insertINS_13move_iteratorINS0_15repeat_iteratorIS3_EEEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENSC_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSC_5bool_ILb0EEESO_E4typeENSE_ISF_Lb1EEESI_SI_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::stable_vector_iterator.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef align 8 dead_on_return %2, ptr %3, i64 %4, ptr noundef byval(%"class.boost::move_iterator.36") align 8 %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector<boost::container::test::movable_and_copyable_int, boost::container::test::simple_allocator<boost::container::test::movable_and_copyable_int>>::insert_rollback", align 8 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %i.a = sub i64 %4, %.sroa.2.0.copyload          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !99, !noalias !1241 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6cbeginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97, !noalias !1241
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49, !noalias !1241
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6cbeginEv.exit

_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6cbeginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ]
  %i.h = load ptr, ptr %2, align 8, !tbaa !109
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.j = load ptr, ptr %storemerge.i.i, align 8, !tbaa !60 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %.not = icmp eq i64 %4, %.sroa.2.0.copyload
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE6cbeginEv.exit
  %i.n = ashr exact i64 %i.m, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE33priv_insert_forward_non_templatedEmm(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.n, i64 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.o = load ptr, ptr %6, align 8, !tbaa !47, !noalias !1242
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.a
  store ptr %i.p, ptr %7, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15insert_rollbackC1ERS6_RNS0_12vec_iteratorIPPNS0_20stable_vector_detail9node_baseIPvEELb0EEERKSG_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %6, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %i.r = phi ptr [ %.promoted, %bb.d ], [ %i.ah, %bb.g ] ; 3 uses
  %.sroa.2.021 = phi i64 [ %4, %bb.d ], [ %i.ag, %bb.g ]
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !97, !noalias !1243
  %i.t = load i64, ptr %i.b, align 8, !tbaa !99, !noalias !1243
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 3 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.x = load i64, ptr %1, align 8, !tbaa !102    ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !49   ; 2 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !49   ; 4 uses
  store ptr null, ptr %i.y, align 8, !tbaa !30
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30  ; 2 uses
  %i.ab = add i64 %i.x, -1                        ; 2 uses
  store i64 %i.ab, ptr %1, align 8, !tbaa !102
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %bb.g

.thread.i:                                        ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  %..i = select i1 %.not.i.i.i.i.i.i.i, ptr null, ptr %i.y
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !49
  store ptr %..i, ptr %i.w, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.f
  store ptr %i.z, ptr %i.r, align 8, !tbaa !49
  store ptr %i.r, ptr %i.z, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i32, ptr %3, align 4, !tbaa !112
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !112
  store i32 0, ptr %3, align 4, !tbaa !112
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !113
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !113
  %i.ag = add i64 %.sroa.2.021, -1                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.not20 = icmp eq i64 %i.ag, %.sroa.2.0.copyload
  br i1 %.not20, label %bb.h, label %bb.e, !llvm.loop !1232

bb.h:                                             ; preds = %bb.g
  store ptr %i.ah, ptr %6, align 8, !tbaa !47
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEE15insert_rollbackD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ai = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !97, !noalias !1244
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !99, !noalias !1244 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -16 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.ai, %i.am
  br i1 %.not2.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_4test16simple_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS5_ISB_EEvEENS0_12vec_iteratorIPSB_Lb0EEE.exit, label %.lr.ph.i.i

end_hunk_1
begin_hunk_2_@_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE33priv_insert_forward_non_templatedEmm:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 16, i1 false)
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !33
  call void @_ZN5boost9container14node_allocatorINS0_20stable_vector_detail4nodeIPNS0_4test24movable_and_copyable_intEEELm256ELm2EE19allocate_individualEmRNS0_3dtl31transform_multiallocation_chainINS9_27basic_multiallocation_chainIPvEES7_EE(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33, !noalias !1789 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i11 = load ptr, ptr %i.af, align 8, !tbaa !30
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE18priv_increase_poolEm.exit

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.an = icmp eq ptr %i.af, %i.am
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not17.i.i.i.i.i.i = icmp eq ptr %i.af, %i.al
  %.pre22.i = load ptr, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  br i1 %.not17.i.i.i.i.i.i, label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE18priv_increase_poolEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !30
  store ptr %.pre22.i, ptr %i.al, align 8, !tbaa !30
  br label %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE18priv_increase_poolEm.exit

_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE18priv_increase_poolEm.exit: ; preds = %._crit_edge.i, %bb.l, %bb.m
  %i.ap = phi ptr [ %.pre.i11, %._crit_edge.i ], [ %i.ao, %bb.m ], [ %.pre22.i, %bb.l ] ; 2 uses
  %i.aq = load i64, ptr %1, align 8, !tbaa !125
  %i.ar = add i64 %i.aq, %i.aa
  store i64 %i.ar, ptr %1, align 8, !tbaa !125
  %.not.i.i.i.i15.i = icmp eq ptr %i.ap, null
  %i.as = load ptr, ptr %i.ag, align 8
  %spec.select.i = select i1 %.not.i.i.i.i15.i, ptr null, ptr %i.as, !prof !74
  store ptr %i.ap, ptr %i.ad, align 8, !tbaa !49
  store ptr %spec.select.i, ptr %i.ae, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %.pre = load i64, ptr %i.d, align 8, !tbaa !122, !noalias !1790
  br label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE18priv_increase_poolEm.exit, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lm256ELm2EEEvEERS9_m.exit
  %i.at = phi i64 [ %.pre, %_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE18priv_increase_poolEm.exit ], [ %.pre32, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lm256ELm2EEEvEERS9_m.exit ] ; 3 uses
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !120 ; 5 uses
  %.idx24 = shl i64 %2, 3                         ; 6 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %.idx24 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !131, !noalias !1790
  %i.ay = sub i64 %i.ax, %i.at
  %.not.i.i12 = icmp ugt i64 %3, %i.ay
  br i1 %.not.i.i12, label %bb.x, label %bb.o, !prof !74

bb.o:                                             ; preds = %bb.n
  %.idx = shl i64 %i.at, 3                        ; 4 uses
  %i.az = getelementptr i8, ptr %i.au, i64 %.idx  ; 7 uses
  %i.ba = icmp eq i64 %i.at, %2
  %.not15.i.i.i.i.i.i = icmp eq i64 %3, 0         ; 2 uses
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.p
  %i.bb = shl nuw i64 %3, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.bb, i1 false), !tbaa !49, !noalias !1790
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.q:                                             ; preds = %bb.o
  br i1 %.not15.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %bb.r, !prof !74

bb.r:                                             ; preds = %bb.q
  %gepdiff = sub nsw i64 %.idx, %.idx24           ; 2 uses
  %i.bc = ashr exact i64 %gepdiff, 3              ; 7 uses
  %.not.i.i.i.i.i13 = icmp ult i64 %i.bc, %3
  br i1 %.not.i.i.i.i.i13, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.neg = mul i64 %3, -8                          ; 3 uses
  %.not13.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i, label %bb.t, !prof !84

bb.t:                                             ; preds = %bb.s
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %.neg
  %i.be = shl i64 %3, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull align 1 %i.bd, i64 %i.be, i1 false), !noalias !1790
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.bf = add nsw i64 %.idx, %.neg
  %.not.i.i10.i.i.i.i = icmp eq i64 %i.bf, %.idx24
  br i1 %.not.i.i10.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i, label %bb.u, !prof !74

bb.u:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i
  %i.bg = sub i64 %.neg, %.idx24
  %gepdiff26 = add i64 %i.bg, %.idx               ; 2 uses
  %i.bh = ashr exact i64 %gepdiff26, 3
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bi
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bj, ptr align 8 %i.av, i64 %gepdiff26, i1 false), !noalias !1790
  br label %.lr.ph.i.i11.i.i.i.i

.lr.ph.i.i11.i.i.i.i:                             ; preds = %bb.u, %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i11.i.i.i.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.bk = and i64 %3, 3
  %i.bl = shl i64 %n.vec, 3
  %i.bm = getelementptr i8, ptr %i.av, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep, align 8, !tbaa !49, !noalias !1790
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !49, !noalias !1790
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !1780

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i.i.i, %middle.block
  %.07.i.i.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i11.i.i.i.i ], [ %i.bk, %middle.block ]
  %.046.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i11.i.i.i.i ], [ %i.bm, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i.i.i = phi i64 [ %i.bq, %scalar.ph ], [ %.07.i.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.br, %scalar.ph ], [ %.046.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bq = add i64 %.07.i.i.i.i.i.i, -1            ; 2 uses
  store ptr null, ptr %.046.i.i.i.i.i.i, align 8, !tbaa !49, !noalias !1790
  %i.br = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 8
  %.not.i35.i.i.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i35.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %scalar.ph, !llvm.loop !1781

bb.v:                                             ; preds = %bb.r
  %.not14.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not14.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i, label %bb.w, !prof !74

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bs, ptr nonnull align 8 %i.av, i64 %gepdiff, i1 false), !noalias !1790
  br label %.lr.ph.i39.i.i.i.i.i

.lr.ph.i39.i.i.i.i.i:                             ; preds = %bb.w, %bb.v
  %min.iters.check50 = icmp ult i64 %i.bc, 4
  br i1 %min.iters.check50, label %scalar.ph49.preheader, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.i39.i.i.i.i.i
  %n.vec52 = and i64 %i.bc, -4                    ; 3 uses
  %i.bt = and i64 %i.bc, 3
  %i.bu = shl nsw i64 %n.vec52, 3
  %i.bv = getelementptr i8, ptr %i.av, i64 %i.bu
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next56, %vector.body53 ] ; 2 uses
  %i.bw = shl i64 %index54, 3
  %next.gep55 = getelementptr i8, ptr %i.av, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep55, align 8, !tbaa !49, !noalias !1790
  store <2 x ptr> splat (ptr null), ptr %i.bx, align 8, !tbaa !49, !noalias !1790
  %index.next56 = add nuw i64 %index54, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next56, %n.vec52
  br i1 %i.by, label %middle.block57, label %vector.body53, !llvm.loop !1782

middle.block57:                                   ; preds = %vector.body53
  %cmp.n58 = icmp eq i64 %i.bc, %n.vec52
  br i1 %cmp.n58, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i, label %scalar.ph49.preheader

scalar.ph49.preheader:                            ; preds = %.lr.ph.i39.i.i.i.i.i, %middle.block57
  %.07.i41.i.i.i.i.i.ph = phi i64 [ %i.bc, %.lr.ph.i39.i.i.i.i.i ], [ %i.bt, %middle.block57 ]
  %.046.i42.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i39.i.i.i.i.i ], [ %i.bv, %middle.block57 ]
  br label %scalar.ph49

scalar.ph49:                                      ; preds = %scalar.ph49.preheader, %scalar.ph49
  %.07.i41.i.i.i.i.i = phi i64 [ %i.bz, %scalar.ph49 ], [ %.07.i41.i.i.i.i.i.ph, %scalar.ph49.preheader ]
  %.046.i42.i.i.i.i.i = phi ptr [ %i.ca, %scalar.ph49 ], [ %.046.i42.i.i.i.i.i.ph, %scalar.ph49.preheader ] ; 2 uses
  %i.bz = add i64 %.07.i41.i.i.i.i.i, -1          ; 2 uses
  store ptr null, ptr %.046.i42.i.i.i.i.i, align 8, !tbaa !49, !noalias !1790
  %i.ca = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i, i64 8
  %.not.i43.i.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i43.i.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i, label %scalar.ph49, !llvm.loop !1783

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i: ; preds = %scalar.ph49, %middle.block57
  %i.cb = sub nuw i64 %3, %i.bc                   ; 6 uses
  %.not15.i.i.i.i.i.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not15.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i
  %min.iters.check63 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check63, label %.lr.ph.i.i.i.i.i.i.i.preheader.a, label %vector.ph63

vector.ph63:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec64 = and i64 %i.cb, -4                    ; 3 uses
  %i.cc = and i64 %i.cb, 3
  %i.cd = shl i64 %n.vec64, 3
  %i.ce = getelementptr i8, ptr %i.az, i64 %i.cd
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph63
  %index66 = phi i64 [ 0, %vector.ph63 ], [ %index.next71, %vector.body65 ] ; 2 uses
  %i.cf = shl i64 %index66, 3
  %next.gep67 = getelementptr i8, ptr %i.az, i64 %i.cf ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep67) ]
  %i.cg = getelementptr i8, ptr %next.gep67, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep67, align 8, !tbaa !49, !noalias !1790
  store <2 x ptr> splat (ptr null), ptr %i.cg, align 8, !tbaa !49, !noalias !1790
  %index.next71 = add nuw i64 %index66, 4         ; 2 uses
  %i.ch = icmp eq i64 %index.next71, %n.vec64
  br i1 %i.ch, label %middle.block72, label %vector.body65, !llvm.loop !1784

middle.block72:                                   ; preds = %vector.body65
  %cmp.n73 = icmp eq i64 %i.cb, %n.vec64
  br i1 %cmp.n73, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.a

.lr.ph.i.i.i.i.i.i.i.preheader.a:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block72
  %.017.i.i.i.i.i.i.i.ph = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cc, %middle.block72 ]
  %.01416.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ce, %middle.block72 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.a, %.lr.ph.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %.017.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ]
  %.01416.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i ], [ %.01416.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader.a ] ; 3 uses
  %i.ci = add i64 %.017.i.i.i.i.i.i.i, -1         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i.i) ]
  store ptr null, ptr %.01416.i.i.i.i.i.i.i, align 8, !tbaa !49, !noalias !1790
  %i.cj = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i, i64 8
  %.not.i.i45.i.i.i.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i45.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1785

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %middle.block72, %.lr.ph.i.i.i.i.i.i.preheader, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.i.i, %bb.q, %bb.p
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !126, !noalias !1790
  %i.cl = add i64 %i.ck, %3
  store i64 %i.cl, ptr %i.d, align 8, !tbaa !126, !noalias !1790
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

bb.x:                                             ; preds = %bb.n
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj2EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef %i.av, i64 noundef %3, ptr nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit: ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !120 ; 5 uses
  %.not = icmp eq ptr %i.cm, %i.au
  br i1 %.not, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.idx24
  %.not2.i = icmp eq i64 %2, 0
  br i1 %.not2.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.y
  %i.co = add i64 %.idx24, -8                     ; 2 uses
  %i.cp = lshr exact i64 %i.co, 3
  %i.cq = add nuw nsw i64 %i.cp, 1
  %xtraiter = and i64 %i.cq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.cr = phi ptr [ %i.ct, %.lr.ph.i.prol ], [ %i.cm, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !49
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !60
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1786

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.unr = phi ptr [ %i.cm, %.lr.ph.i.preheader ], [ %i.ct, %.lr.ph.i.prol ]
  %i.cu = icmp ult i64 %i.co, 56
  br i1 %i.cu, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.cv = phi ptr [ %i.dl, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 10 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !49
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !60
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !49
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !60
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !49
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !60
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !49
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !49
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !60
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 40 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !49
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 48 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !49
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !60
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cv, i64 56 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !49
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !60
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cv, i64 64 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.dl, %i.cn
  br i1 %.not.i.7, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit, label %.lr.ph.i, !llvm.loop !8

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE15fix_up_pointersENS0_12vec_iteratorIPPNS1_9node_baseIS3_EELb0EEESC_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.y, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %2
  store ptr %i.dm, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE30priv_capacity_bigger_than_sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !131
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !122
  %i.e = icmp ugt i64 %i.b, %i.d
  %i.f = load i64, ptr %0, align 8
  %i.g = icmp ne i64 %i.f, 0
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6insertINS_13move_iteratorINS0_15repeat_iteratorIS3_EEEEEENS_11move_detail13disable_if_orINS0_22stable_vector_iteratorIPS3_Lb0EEENSC_14is_convertibleIT_mEENS0_3dtl17is_input_iteratorISI_Xsr21has_iterator_categoryISI_EE5valueEEENSC_5bool_ILb0EEESO_E4typeENSE_ISF_Lb1EEESI_SI_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::stable_vector_iterator.22") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef align 8 dead_on_return %2, ptr %3, i64 %4, ptr noundef byval(%"class.boost::move_iterator.36") align 8 %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::vec_iterator", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector<boost::container::test::movable_and_copyable_int, boost::container::node_allocator<boost::container::test::movable_and_copyable_int>>::insert_rollback", align 8 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %i.a = sub i64 %4, %.sroa.2.0.copyload          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !122, !noalias !1808 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6cbeginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120, !noalias !1808
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49, !noalias !1808
  br label %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6cbeginEv.exit

_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6cbeginEv.exit: ; preds = %bb.b, %bb.c
  %storemerge.i.i = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ]
  %i.h = load ptr, ptr %2, align 8, !tbaa !109
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.j = load ptr, ptr %storemerge.i.i, align 8, !tbaa !60 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %.not = icmp eq i64 %4, %.sroa.2.0.copyload
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE6cbeginEv.exit
  %i.n = ashr exact i64 %i.m, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE33priv_insert_forward_non_templatedEmm(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.n, i64 noundef %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.o = load ptr, ptr %6, align 8, !tbaa !47, !noalias !1809
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.a
  store ptr %i.p, ptr %7, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15insert_rollbackC1ERS6_RNS0_12vec_iteratorIPPNS0_20stable_vector_detail9node_baseIPvEELb0EEERKSG_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %6, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.g
  %i.r = phi ptr [ %.promoted, %bb.d ], [ %i.ah, %bb.g ] ; 3 uses
  %.sroa.2.021 = phi i64 [ %4, %bb.d ], [ %i.ag, %bb.g ]
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !120, !noalias !1810
  %i.t = load i64, ptr %i.b, align 8, !tbaa !122, !noalias !1810
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 3 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -8       ; 2 uses
  %i.x = load i64, ptr %1, align 8, !tbaa !125    ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !49   ; 2 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !49   ; 4 uses
  store ptr null, ptr %i.y, align 8, !tbaa !30
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30  ; 2 uses
  %i.ab = add i64 %i.x, -1                        ; 2 uses
  store i64 %i.ab, ptr %1, align 8, !tbaa !125
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %bb.g

.thread.i:                                        ; preds = %bb.e
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  %..i = select i1 %.not.i.i.i.i.i.i.i, ptr null, ptr %i.y
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !49
  store ptr %..i, ptr %i.w, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %.thread.i, %bb.f
  store ptr %i.z, ptr %i.r, align 8, !tbaa !49
  store ptr %i.r, ptr %i.z, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = load i32, ptr %3, align 4, !tbaa !112
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !112
  store i32 0, ptr %3, align 4, !tbaa !112
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !113
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !113
  %i.ag = add i64 %.sroa.2.021, -1                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.not20 = icmp eq i64 %i.ag, %.sroa.2.0.copyload
  br i1 %.not20, label %bb.h, label %bb.e, !llvm.loop !1799

bb.h:                                             ; preds = %bb.g
  store ptr %i.ah, ptr %6, align 8, !tbaa !47
  call void @_ZN5boost9container13stable_vectorINS0_4test24movable_and_copyable_intENS0_14node_allocatorIS3_Lm256ELm2EEEE15insert_rollbackD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.ai = load ptr, ptr %6, align 8, !tbaa !69    ; 2 uses
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !120, !noalias !1811
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !122, !noalias !1811 ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -16 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.ai, %i.am
  br i1 %.not2.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_14node_allocatorIvLm256ELm2EEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_Lm256ELm2EEEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit, label %.lr.ph.i.i

end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj2EEE:bb.a

_ZNK5boost9container19vector_alloc_holderINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.l, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.o = add i64 %i.g, %3                         ; 3 uses
  %i.p = icmp ugt i64 %i.o, 1152921504606846975
  br i1 %i.p, label %_ZN5boost9container14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i.thread, label %_ZN5boost9container14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i, !prof !141

_ZN5boost9container14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.r = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.q)
  %i.s = shl nuw nsw i64 %i.o, 3
  %i.t = shl nuw nsw i64 %i.r, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.u = call { ptr, i32 } @_ZN5boost9container27dlmalloc_allocation_commandEjmmmmPmPv(i32 noundef 7, i64 noundef 8, i64 noundef 8, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull %i.a, ptr noundef %i.b) ; 2 uses
  %i.v = extractvalue { ptr, i32 } %i.u, 0        ; 10 uses
  %i.w = load i64, ptr %i.a, align 8, !tbaa !73
  %i.x = lshr i64 %i.w, 3                         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZN5boost9container14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i.thread, label %_ZN5boost9container19vector_alloc_holderINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS7_.exit, !prof !142

_ZN5boost9container14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i.thread: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEmNS_11move_detail17integral_constantIjLj2EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit, %_ZN5boost9container14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i
  call void @_ZN5boost9container15throw_bad_allocEv() #25
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS7_.exit: ; preds = %_ZN5boost9container14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EE23priv_allocation_commandEjmRmRPS6_.exit.i.i.i
  %i.y = extractvalue { ptr, i32 } %i.u, 1
  %.not.i.i.i.i = icmp eq i32 %i.y, 0
  %.not36 = icmp eq ptr %i.b, null
  %.not = select i1 %.not.i.i.i.i, i1 true, i1 %.not36
  %i.z = load ptr, ptr %1, align 8, !tbaa !120    ; 11 uses
  br i1 %.not, label %bb.q, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS7_.exit
  %i.aa = icmp eq ptr %i.z, %i.v
  br i1 %i.aa, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  store i64 %i.x, ptr %i.c, align 8, !tbaa !73
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !122
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab ; 11 uses
  %i.ad = icmp eq ptr %i.ac, %2
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.h
  %.pre.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !49 ; 2 uses
  %min.iters.check92 = icmp ult i64 %3, 4
  br i1 %min.iters.check92, label %.lr.ph.i.i.i.i.preheader, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec94 = and i64 %3, -4                       ; 3 uses
  %i.ae = and i64 %3, 3
  %i.af = shl i64 %n.vec94, 3
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.af
  %broadcast.splatinsert95 = insertelement <2 x ptr> poison, ptr %.pre.i.i.i.i, i64 0
  %broadcast.splat96 = shufflevector <2 x ptr> %broadcast.splatinsert95, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph93
  %index98 = phi i64 [ 0, %vector.ph93 ], [ %index.next103, %vector.body97 ] ; 2 uses
  %i.ah = shl i64 %index98, 3
  %next.gep99 = getelementptr i8, ptr %i.ac, i64 %i.ah ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep99) ]
  %i.ai = getelementptr i8, ptr %next.gep99, i64 16
  store <2 x ptr> %broadcast.splat96, ptr %next.gep99, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat96, ptr %i.ai, align 8, !tbaa !49
  %index.next103 = add nuw i64 %index98, 4        ; 2 uses
  %i.aj = icmp eq i64 %index.next103, %n.vec94
  br i1 %i.aj, label %middle.block104, label %vector.body97, !llvm.loop !1877

middle.block104:                                  ; preds = %vector.body97
  %cmp.n105 = icmp eq i64 %3, %n.vec94
  br i1 %cmp.n105, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block104
  %.017.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i ], [ %i.ae, %middle.block104 ]
  %.01416.i.i.i.i.ph = phi ptr [ %i.ac, %.lr.ph.preheader.i.i.i.i ], [ %i.ag, %middle.block104 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.ak = add i64 %.017.i.i.i.i, -1               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  store ptr %.pre.i.i.i.i, ptr %.01416.i.i.i.i, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %.not.i.i.i.i17 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i17, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1878

bb.i:                                             ; preds = %bb.g
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.j, !prof !74

bb.j:                                             ; preds = %bb.i
  %i.am = ptrtoint ptr %i.ac to i64
  %i.an = ptrtoint ptr %2 to i64                  ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = ashr exact i64 %i.ao, 3                 ; 7 uses
  %.not.i.i.i16 = icmp ult i64 %i.ap, %3
  br i1 %.not.i.i.i16, label %bb.l, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i: ; preds = %bb.j
  %i.aq = sub i64 0, %3
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aq ; 3 uses
  %i.as = shl i64 %3, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.ar, i64 %i.as, i1 false)
  %.not.i.i10.i.i = icmp eq ptr %i.ar, %2
  br i1 %.not.i.i10.i.i, label %.lr.ph.i.i11.i.i, label %bb.k, !prof !74

bb.k:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.at, %i.an                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 3
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aw
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ax, ptr align 8 %2, i64 %i.au, i1 false)
  br label %.lr.ph.i.i11.i.i

.lr.ph.i.i11.i.i:                                 ; preds = %bb.k, %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i
  %.pre.i.i12.i.i = load ptr, ptr %4, align 8, !tbaa !49 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i11.i.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.ay = and i64 %3, 3
  %i.az = shl i64 %n.vec, 3
  %i.ba = getelementptr i8, ptr %2, i64 %i.az
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i.i12.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %2, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat, ptr %i.bc, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !1879

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i11.i.i, %middle.block
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i.i11.i.i ], [ %i.ay, %middle.block ]
  %.046.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i11.i.i ], [ %i.ba, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i.i.i.i = phi i64 [ %i.be, %scalar.ph ], [ %.07.i.i.i.i.ph, %scalar.ph.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.bf, %scalar.ph ], [ %.046.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.be = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store ptr %.pre.i.i12.i.i, ptr %.046.i.i.i.i, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 8
  %.not.i35.i.i.i = icmp eq i64 %i.be, 0
  br i1 %.not.i35.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph, !llvm.loop !1880

bb.l:                                             ; preds = %bb.j
  %.not14.i.i = icmp eq ptr %2, null
  br i1 %.not14.i.i, label %.lr.ph.i39.i.i.i, label %bb.m, !prof !74

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull align 8 %2, i64 %i.ao, i1 false)
  br label %.lr.ph.i39.i.i.i

.lr.ph.i39.i.i.i:                                 ; preds = %bb.m, %bb.l
  %.pre.i40.i.i.i = load ptr, ptr %4, align 8, !tbaa !49 ; 2 uses
  %min.iters.check61 = icmp ult i64 %i.ap, 4
  br i1 %min.iters.check61, label %scalar.ph60.preheader, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph.i39.i.i.i
  %n.vec63 = and i64 %i.ap, -4                    ; 3 uses
  %i.bh = and i64 %i.ap, 3
  %i.bi = shl nsw i64 %n.vec63, 3
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi
  %broadcast.splatinsert64 = insertelement <2 x ptr> poison, ptr %.pre.i40.i.i.i, i64 0
  %broadcast.splat65 = shufflevector <2 x ptr> %broadcast.splatinsert64, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph62
  %index67 = phi i64 [ 0, %vector.ph62 ], [ %index.next69, %vector.body66 ] ; 2 uses
  %i.bk = shl i64 %index67, 3
  %next.gep68 = getelementptr i8, ptr %2, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep68, i64 16
  store <2 x ptr> %broadcast.splat65, ptr %next.gep68, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat65, ptr %i.bl, align 8, !tbaa !49
  %index.next69 = add nuw i64 %index67, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next69, %n.vec63
  br i1 %i.bm, label %middle.block70, label %vector.body66, !llvm.loop !1881

middle.block70:                                   ; preds = %vector.body66
  %cmp.n71 = icmp eq i64 %i.ap, %n.vec63
  br i1 %cmp.n71, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i, label %scalar.ph60.preheader

scalar.ph60.preheader:                            ; preds = %.lr.ph.i39.i.i.i, %middle.block70
  %.07.i41.i.i.i.ph = phi i64 [ %i.ap, %.lr.ph.i39.i.i.i ], [ %i.bh, %middle.block70 ]
  %.046.i42.i.i.i.ph = phi ptr [ %2, %.lr.ph.i39.i.i.i ], [ %i.bj, %middle.block70 ]
  br label %scalar.ph60

scalar.ph60:                                      ; preds = %scalar.ph60.preheader, %scalar.ph60
  %.07.i41.i.i.i = phi i64 [ %i.bn, %scalar.ph60 ], [ %.07.i41.i.i.i.ph, %scalar.ph60.preheader ]
  %.046.i42.i.i.i = phi ptr [ %i.bo, %scalar.ph60 ], [ %.046.i42.i.i.i.ph, %scalar.ph60.preheader ] ; 2 uses
  %i.bn = add i64 %.07.i41.i.i.i, -1              ; 2 uses
  store ptr %.pre.i40.i.i.i, ptr %.046.i42.i.i.i, align 8, !tbaa !49
  %i.bo = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i, i64 8
  %.not.i43.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i43.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i, label %scalar.ph60, !llvm.loop !1882

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i: ; preds = %scalar.ph60, %middle.block70
  %5 = sub nuw i64 %3, %i.ap                      ; 6 uses
  %.not15.i.i.i.i.i = icmp eq i64 %5, 0
  br i1 %.not15.i.i.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a: ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %4, align 8, !tbaa !49 ; 2 uses
  %min.iters.check75 = icmp ult i64 %5, 4
  br i1 %min.iters.check75, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a
  %n.vec77 = and i64 %5, -4                       ; 3 uses
  %i.bp = and i64 %5, 3
  %i.bq = shl i64 %n.vec77, 3
  %i.br = getelementptr i8, ptr %i.ac, i64 %i.bq
  %broadcast.splatinsert78 = insertelement <2 x ptr> poison, ptr %.pre.i.i.i.i.i, i64 0
  %broadcast.splat79 = shufflevector <2 x ptr> %broadcast.splatinsert78, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph76
  %index81 = phi i64 [ 0, %vector.ph76 ], [ %index.next86, %vector.body80 ] ; 2 uses
  %i.bs = shl i64 %index81, 3
  %next.gep82 = getelementptr i8, ptr %i.ac, i64 %i.bs ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep82) ]
  %i.bt = getelementptr i8, ptr %next.gep82, i64 16
  store <2 x ptr> %broadcast.splat79, ptr %next.gep82, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat79, ptr %i.bt, align 8, !tbaa !49
  %index.next86 = add nuw i64 %index81, 4         ; 2 uses
  %i.bu = icmp eq i64 %index.next86, %n.vec77
  br i1 %i.bu, label %middle.block87, label %vector.body80, !llvm.loop !1883

middle.block87:                                   ; preds = %vector.body80
  %cmp.n88 = icmp eq i64 %5, %n.vec77
  br i1 %cmp.n88, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a, %middle.block87
  %.017.i.i.i.i.i.ph = phi i64 [ %5, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a ], [ %i.bp, %middle.block87 ]
  %.01416.i.i.i.i.i.ph = phi ptr [ %i.ac, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i.a ], [ %i.br, %middle.block87 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.01416.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.bv = add i64 %.017.i.i.i.i.i, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  store ptr %.pre.i.i.i.i.i, ptr %.01416.i.i.i.i.i, align 8, !tbaa !49
  %i.bw = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 8
  %.not.i.i45.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i45.i.i.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1884

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %scalar.ph, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i, %middle.block, %middle.block87, %middle.block104, %bb.h, %bb.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit44.i.i.i
  %i.bx = load i64, ptr %i.f, align 8, !tbaa !126
  %i.by = add i64 %i.bx, %3
  store i64 %i.by, ptr %i.f, align 8, !tbaa !126
  br label %bb.v

bb.n:                                             ; preds = %bb.f
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !122 ; 3 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !120
  store i64 %i.x, ptr %i.c, align 8, !tbaa !73
  store i64 0, ptr %i.f, align 8, !tbaa !122
  %i.ca = icmp ult ptr %i.v, %i.z
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPPNS0_20stable_vector_detail9node_baseIPvEENS0_3dtl21insert_n_copies_proxyINS0_14node_allocatorIS6_Lm256ELm2EEEEESB_EEvT_mSD_SD_mT0_RT1_(ptr noundef nonnull %i.z, i64 noundef %i.bz, ptr noundef nonnull %i.v, ptr noundef %2, i64 noundef %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit

bb.p:                                             ; preds = %bb.n
  call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvT0_mSD_SD_mT1_RT_(ptr noundef %i.z, i64 noundef %i.bz, ptr noundef nonnull %i.v, ptr noundef %2, i64 noundef %3, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit: ; preds = %bb.o, %bb.p
  %i.cb = add i64 %i.bz, %3
  store i64 %i.cb, ptr %i.f, align 8, !tbaa !122
  br label %bb.v

bb.q:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEmNS_11move_detail17integral_constantIjLj2EEEE18allocation_commandEjmRmRPS7_.exit
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !122
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.cc ; 2 uses
  %i.ce = icmp ne ptr %i.z, %2
  %i.cf = icmp ne ptr %i.z, null
  %spec.select.i.i.i.i = and i1 %i.cf, %i.ce
  br i1 %spec.select.i.i.i.i, label %bb.r, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i, !prof !58

bb.r:                                             ; preds = %bb.q
  %i.cg = ptrtoint ptr %2 to i64
  %i.ch = ptrtoint ptr %i.z to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 8 %i.z, i64 %i.ci, i1 false)
  %i.cj = getelementptr inbounds i8, ptr %i.v, i64 %i.ci
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i19 = phi ptr [ %i.cj, %bb.r ], [ %i.v, %bb.q ] ; 4 uses
  %.not15.i.i.i.i20 = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i20, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i, label %.lr.ph.preheader.i.i.i.i21

.lr.ph.preheader.i.i.i.i21:                       ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i
  %.pre.i.i.i.i22 = load ptr, ptr %4, align 8, !tbaa !49 ; 2 uses
  %min.iters.check109 = icmp ult i64 %3, 4
  br i1 %min.iters.check109, label %.lr.ph.i.i.i.i23.preheader, label %vector.ph110

vector.ph110:                                     ; preds = %.lr.ph.preheader.i.i.i.i21
  %n.vec111 = and i64 %3, -4                      ; 3 uses
  %i.ck = and i64 %3, 3
  %i.cl = shl i64 %n.vec111, 3
  %i.cm = getelementptr i8, ptr %.0.i.i.i.i19, i64 %i.cl
  %broadcast.splatinsert112 = insertelement <2 x ptr> poison, ptr %.pre.i.i.i.i22, i64 0
  %broadcast.splat113 = shufflevector <2 x ptr> %broadcast.splatinsert112, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph110
  %index115 = phi i64 [ 0, %vector.ph110 ], [ %index.next120, %vector.body114 ] ; 2 uses
  %i.cn = shl i64 %index115, 3
  %next.gep116 = getelementptr i8, ptr %.0.i.i.i.i19, i64 %i.cn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep116) ]
  %i.co = getelementptr i8, ptr %next.gep116, i64 16
  store <2 x ptr> %broadcast.splat113, ptr %next.gep116, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat113, ptr %i.co, align 8, !tbaa !49
  %index.next120 = add nuw i64 %index115, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next120, %n.vec111
  br i1 %i.cp, label %middle.block121, label %vector.body114, !llvm.loop !1885

middle.block121:                                  ; preds = %vector.body114
  %cmp.n122 = icmp eq i64 %3, %n.vec111
  br i1 %cmp.n122, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i, label %.lr.ph.i.i.i.i23.preheader

.lr.ph.i.i.i.i23.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i21, %middle.block121
  %.017.i.i.i.i24.ph = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i21 ], [ %i.ck, %middle.block121 ]
  %.01416.i.i.i.i25.ph = phi ptr [ %.0.i.i.i.i19, %.lr.ph.preheader.i.i.i.i21 ], [ %i.cm, %middle.block121 ]
  br label %.lr.ph.i.i.i.i23

.lr.ph.i.i.i.i23:                                 ; preds = %.lr.ph.i.i.i.i23.preheader, %.lr.ph.i.i.i.i23
  %.017.i.i.i.i24 = phi i64 [ %i.cq, %.lr.ph.i.i.i.i23 ], [ %.017.i.i.i.i24.ph, %.lr.ph.i.i.i.i23.preheader ]
  %.01416.i.i.i.i25 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i23 ], [ %.01416.i.i.i.i25.ph, %.lr.ph.i.i.i.i23.preheader ] ; 3 uses
  %i.cq = add i64 %.017.i.i.i.i24, -1             ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i25) ]
  store ptr %.pre.i.i.i.i22, ptr %.01416.i.i.i.i25, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i25, i64 8
  %.not.i.i.i.i26 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i.i.i26, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i, label %.lr.ph.i.i.i.i23, !llvm.loop !1886

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i23, %middle.block121, %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit.i.i
  %i.cs = icmp ne ptr %2, %i.cd
  %i.ct = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ct, %i.cs
  br i1 %spec.select.i.i18.i.i, label %bb.s, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i, !prof !58

bb.s:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i19, i64 %3
  %i.cv = ptrtoint ptr %i.cd to i64
  %i.cw = ptrtoint ptr %2 to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull align 8 %2, i64 %i.cx, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i: ; preds = %bb.s, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i
  %i.cy = load ptr, ptr %1, align 8, !tbaa !120
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef %i.cy)
          to label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #24
  unreachable

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvRT_T0_SF_SF_T1_mT2_.exit.i, %bb.t
  store ptr %i.v, ptr %1, align 8, !tbaa !120
  %i.db = load i64, ptr %i.f, align 8, !tbaa !126
  %i.dc = add i64 %i.db, %3
  store i64 %i.dc, ptr %i.f, align 8, !tbaa !126
  store i64 %i.x, ptr %i.c, align 8, !tbaa !73
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE42priv_insert_forward_range_expand_backwardsINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_14node_allocatorIS6_Lm256ELm2EEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mSE_mT_.exit
  %i.dd = ptrtoint ptr %2 to i64
  %i.de = ptrtoint ptr %i.b to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = load ptr, ptr %1, align 8, !tbaa !120
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.df
  store ptr %i.dh, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPPNS0_20stable_vector_detail9node_baseIPvEENS0_3dtl21insert_n_copies_proxyINS0_14node_allocatorIS6_Lm256ELm2EEEEESB_EEvT_mSD_SD_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [8 x i8], ptr %0, i64 %1 ; 14 uses
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 10 uses
  %i.f = ptrtoint ptr %2 to i64
  %i.g = sub i64 %i.c, %i.f                       ; 3 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 7 uses
  %i.i = add i64 %i.e, %4                         ; 3 uses
  %.not = icmp ult i64 %i.h, %i.i
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ne ptr %0, %3
  %i.k = icmp ne ptr %2, null                     ; 3 uses
  %i.l = icmp ne ptr %0, null
  %i.m = and i1 %i.j, %i.l
  %spec.select.i.i = and i1 %i.m, %i.k
  br i1 %spec.select.i.i, label %bb.c, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit, !prof !58

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 8 %0, i64 %i.d, i1 false)
  %i.n = getelementptr inbounds i8, ptr %2, i64 %i.d
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit

_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %2, %bb.b ] ; 3 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !49 ; 2 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.o = and i64 %4, 3
  %i.p = shl i64 %n.vec, 3
  %i.q = getelementptr i8, ptr %.0.i.i, i64 %i.p
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.0.i.i, i64 %i.r ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat, ptr %i.s, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1887

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.017.i.i.ph = phi i64 [ %4, %.lr.ph.preheader.i.i ], [ %i.o, %middle.block ]
  %.01416.i.i.ph = phi ptr [ %.0.i.i, %.lr.ph.preheader.i.i ], [ %i.q, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %.017.i.i.ph, %.lr.ph.i.i.preheader ]
  %.01416.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.01416.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.u = add i64 %.017.i.i, -1                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i) ]
  store ptr %.pre.i.i, ptr %.01416.i.i, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 8
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i.i, !llvm.loop !1888

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit
  %i.w = add i64 %4, %1
  %.not145 = icmp ult i64 %i.h, %i.w
  br i1 %.not145, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %.not146 = icmp eq i64 %i.e, %1
  br i1 %.not146, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp ne ptr %3, %i.a
  %i.y = icmp ne ptr %3, null
  %i.z = and i1 %i.x, %i.y
  %spec.select.i.i148 = and i1 %i.z, %i.k
  br i1 %spec.select.i.i148, label %bb.f, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, !prof !58

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split

bb.g:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %.not.i.i151 = icmp ne ptr %i.a, %3
  %i.ab = icmp ne ptr %3, null
  %i.ac = and i1 %i.ab, %.not.i.i151
  %or.cond264 = and i1 %i.ac, %i.k
  br i1 %or.cond264, label %bb.h, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, !prof !143

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split

bb.i:                                             ; preds = %bb.a
  %i.ae = icmp ugt i64 %4, %i.h                   ; 2 uses
  %.not143 = icmp ugt i64 %i.h, %i.e
  br i1 %.not143, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not.i.i154 = icmp eq ptr %0, %2
  br i1 %.not.i.i154, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157, label %bb.k, !prof !74

bb.k:                                             ; preds = %bb.j
  %i.af = icmp ne ptr %2, null
  %i.ag = icmp ne ptr %0, null
  %or.cond.i.i155 = and i1 %i.ag, %i.af
  br i1 %or.cond.i.i155, label %bb.l, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %0, i64 %i.g, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157

_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157: ; preds = %bb.k, %bb.l, %bb.j
  %i.ah = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 7 uses
  %i.ai = getelementptr inbounds i8, ptr %0, i64 %i.g ; 3 uses
  %i.aj = icmp ne ptr %i.ai, %3
  %i.ak = icmp ne ptr %0, null
  %or.cond.i.i158 = and i1 %i.ak, %i.aj
  br i1 %or.cond.i.i158, label %bb.m, label %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit, !prof !58

bb.m:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.b, %i.al                     ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 8 %i.ai, i64 %i.am, i1 false)
  %i.an = getelementptr inbounds i8, ptr %0, i64 %i.am
  br label %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit

_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157, %bb.m
  %.0.i.i160 = phi ptr [ %i.an, %bb.m ], [ %0, %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit157 ] ; 5 uses
  %.not5.i = icmp eq i64 %i.ah, 0
  br i1 %.not5.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !49  ; 2 uses
  %min.iters.check271 = icmp ult i64 %i.ah, 4
  br i1 %min.iters.check271, label %scalar.ph270.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %.lr.ph.i
  %n.vec273 = and i64 %i.ah, -4                   ; 3 uses
  %i.ao = and i64 %i.ah, 3
  %i.ap = shl i64 %n.vec273, 3
  %i.aq = getelementptr i8, ptr %.0.i.i160, i64 %i.ap
  %broadcast.splatinsert274 = insertelement <2 x ptr> poison, ptr %.pre.i, i64 0
  %broadcast.splat275 = shufflevector <2 x ptr> %broadcast.splatinsert274, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph272
  %index277 = phi i64 [ 0, %vector.ph272 ], [ %index.next279, %vector.body276 ] ; 2 uses
  %i.ar = shl i64 %index277, 3
  %next.gep278 = getelementptr i8, ptr %.0.i.i160, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep278, i64 16
  store <2 x ptr> %broadcast.splat275, ptr %next.gep278, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat275, ptr %i.as, align 8, !tbaa !49
  %index.next279 = add nuw i64 %index277, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next279, %n.vec273
  br i1 %i.at, label %middle.block280, label %vector.body276, !llvm.loop !1889

middle.block280:                                  ; preds = %vector.body276
  %cmp.n281 = icmp eq i64 %i.ah, %n.vec273
  br i1 %cmp.n281, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %scalar.ph270.preheader

scalar.ph270.preheader:                           ; preds = %.lr.ph.i, %middle.block280
  %.07.i.ph = phi i64 [ %i.ah, %.lr.ph.i ], [ %i.ao, %middle.block280 ]
  %.046.i.ph = phi ptr [ %.0.i.i160, %.lr.ph.i ], [ %i.aq, %middle.block280 ]
  br label %scalar.ph270

scalar.ph270:                                     ; preds = %scalar.ph270.preheader, %scalar.ph270
  %.07.i = phi i64 [ %i.au, %scalar.ph270 ], [ %.07.i.ph, %scalar.ph270.preheader ]
  %.046.i = phi ptr [ %i.av, %scalar.ph270 ], [ %.046.i.ph, %scalar.ph270.preheader ] ; 2 uses
  %i.au = add i64 %.07.i, -1                      ; 2 uses
  store ptr %.pre.i, ptr %.046.i, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %scalar.ph270, !llvm.loop !1890

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit: ; preds = %scalar.ph270, %middle.block280, %_ZN5boost9container4moveIPPNS0_20stable_vector_detail9node_baseIPvEES7_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_SB_E4typeESA_SA_SB_.exit
  br i1 %i.ae, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %i.aw = getelementptr inbounds [8 x i8], ptr %.0.i.i160, i64 %i.ah ; 2 uses
  %.not.i161 = icmp eq ptr %3, %i.aw
  br i1 %.not.i161, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp ne ptr %3, %i.a
  %i.ay = icmp ne ptr %.0.i.i160, null
  %or.cond.i.i.i = and i1 %i.ax, %i.ay
  %i.az = icmp ne ptr %3, null
  %spec.select.i.i.i = and i1 %i.az, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, !prof !58

bb.p:                                             ; preds = %bb.i
  %i.ba = icmp ne ptr %0, %3
  %i.bb = icmp ne ptr %2, null
  %or.cond.i.i162 = and i1 %i.bb, %i.ba
  %i.bc = icmp ne ptr %0, null                    ; 2 uses
  %spec.select.i.i163 = and i1 %i.bc, %or.cond.i.i162
  br i1 %spec.select.i.i163, label %bb.q, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit165, !prof !58

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 8 %0, i64 %i.d, i1 false)
  %i.bd = getelementptr inbounds i8, ptr %2, i64 %i.d
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit165

_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit165: ; preds = %bb.p, %bb.q
  %.0.i.i164 = phi ptr [ %i.bd, %bb.q ], [ %2, %bb.p ] ; 3 uses
  %i.be = sub nuw nsw i64 %i.h, %i.e              ; 7 uses
  %.not15.i.i166 = icmp eq i64 %i.be, 0
  br i1 %.not15.i.i166, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173, label %.lr.ph.preheader.i.i167

.lr.ph.preheader.i.i167:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit165
  %.pre.i.i168 = load ptr, ptr %5, align 8, !tbaa !49 ; 2 uses
  %min.iters.check286 = icmp ult i64 %i.be, 4
  br i1 %min.iters.check286, label %.lr.ph.i.i169.preheader, label %vector.ph286

vector.ph286:                                     ; preds = %.lr.ph.preheader.i.i167
  %n.vec287 = and i64 %i.be, -4                   ; 3 uses
  %i.bf = and i64 %i.be, 3
  %i.bg = shl i64 %n.vec287, 3
  %i.bh = getelementptr i8, ptr %.0.i.i164, i64 %i.bg
  %broadcast.splatinsert288 = insertelement <2 x ptr> poison, ptr %.pre.i.i168, i64 0
  %broadcast.splat289 = shufflevector <2 x ptr> %broadcast.splatinsert288, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph286
  %index291 = phi i64 [ 0, %vector.ph286 ], [ %index.next296, %vector.body290 ] ; 2 uses
  %i.bi = shl i64 %index291, 3
  %next.gep292 = getelementptr i8, ptr %.0.i.i164, i64 %i.bi ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep292) ]
  %i.bj = getelementptr i8, ptr %next.gep292, i64 16
  store <2 x ptr> %broadcast.splat289, ptr %next.gep292, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat289, ptr %i.bj, align 8, !tbaa !49
  %index.next296 = add nuw i64 %index291, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next296, %n.vec287
  br i1 %i.bk, label %middle.block297, label %vector.body290, !llvm.loop !1891

middle.block297:                                  ; preds = %vector.body290
  %cmp.n298 = icmp eq i64 %i.be, %n.vec287
  br i1 %cmp.n298, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173, label %.lr.ph.i.i169.preheader

.lr.ph.i.i169.preheader:                          ; preds = %.lr.ph.preheader.i.i167, %middle.block297
  %.017.i.i170.ph = phi i64 [ %i.be, %.lr.ph.preheader.i.i167 ], [ %i.bf, %middle.block297 ]
  %.01416.i.i171.ph = phi ptr [ %.0.i.i164, %.lr.ph.preheader.i.i167 ], [ %i.bh, %middle.block297 ]
  br label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.preheader, %.lr.ph.i.i169
  %.017.i.i170 = phi i64 [ %i.bl, %.lr.ph.i.i169 ], [ %.017.i.i170.ph, %.lr.ph.i.i169.preheader ]
  %.01416.i.i171 = phi ptr [ %i.bm, %.lr.ph.i.i169 ], [ %.01416.i.i171.ph, %.lr.ph.i.i169.preheader ] ; 3 uses
  %i.bl = add i64 %.017.i.i170, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i171) ]
  store ptr %.pre.i.i168, ptr %.01416.i.i171, align 8, !tbaa !49
  %i.bm = getelementptr inbounds nuw i8, ptr %.01416.i.i171, i64 8
  %.not.i.i172 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i172, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173, label %.lr.ph.i.i169, !llvm.loop !1892

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173: ; preds = %.lr.ph.i.i169, %middle.block297, %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit165
  br i1 %i.ae, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173
  %.not5.i174 = icmp eq ptr %3, %0
  br i1 %.not5.i174, label %.critedge, label %.lr.ph.i175

.lr.ph.i175:                                      ; preds = %bb.r
  %.pre.i176 = load ptr, ptr %5, align 8, !tbaa !49 ; 2 uses
  %min.iters.check316 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check316, label %scalar.ph315.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %.lr.ph.i175
  %n.vec318 = and i64 %i.e, -4                    ; 3 uses
  %i.bn = and i64 %i.e, 3
  %i.bo = shl nsw i64 %n.vec318, 3
  %i.bp = getelementptr i8, ptr %0, i64 %i.bo
  %broadcast.splatinsert319 = insertelement <2 x ptr> poison, ptr %.pre.i176, i64 0
  %broadcast.splat320 = shufflevector <2 x ptr> %broadcast.splatinsert319, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph317
  %index322 = phi i64 [ 0, %vector.ph317 ], [ %index.next324, %vector.body321 ] ; 2 uses
  %i.bq = shl i64 %index322, 3
  %next.gep323 = getelementptr i8, ptr %0, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep323, i64 16
  store <2 x ptr> %broadcast.splat320, ptr %next.gep323, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat320, ptr %i.br, align 8, !tbaa !49
  %index.next324 = add nuw i64 %index322, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next324, %n.vec318
  br i1 %i.bs, label %middle.block325, label %vector.body321, !llvm.loop !1893

middle.block325:                                  ; preds = %vector.body321
  %cmp.n326 = icmp eq i64 %i.e, %n.vec318
  br i1 %cmp.n326, label %.critedge, label %scalar.ph315.preheader

scalar.ph315.preheader:                           ; preds = %.lr.ph.i175, %middle.block325
  %.07.i177.ph = phi i64 [ %i.e, %.lr.ph.i175 ], [ %i.bn, %middle.block325 ]
  %.046.i178.ph = phi ptr [ %0, %.lr.ph.i175 ], [ %i.bp, %middle.block325 ]
  br label %scalar.ph315

scalar.ph315:                                     ; preds = %scalar.ph315.preheader, %scalar.ph315
  %.07.i177 = phi i64 [ %i.bt, %scalar.ph315 ], [ %.07.i177.ph, %scalar.ph315.preheader ]
  %.046.i178 = phi ptr [ %i.bu, %scalar.ph315 ], [ %.046.i178.ph, %scalar.ph315.preheader ] ; 2 uses
  %i.bt = add i64 %.07.i177, -1                   ; 2 uses
  store ptr %.pre.i176, ptr %.046.i178, align 8, !tbaa !49
  %i.bu = getelementptr inbounds nuw i8, ptr %.046.i178, i64 8
  %.not.i179 = icmp eq i64 %i.bt, 0
  br i1 %.not.i179, label %.critedge, label %scalar.ph315, !llvm.loop !1894

bb.s:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit173
  %i.bv = sub i64 %4, %i.be                       ; 7 uses
  %.not5.i181 = icmp eq i64 %i.bv, 0
  br i1 %.not5.i181, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187, label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %bb.s
  %.pre.i183 = load ptr, ptr %5, align 8, !tbaa !49 ; 2 uses
  %min.iters.check302 = icmp ult i64 %i.bv, 4
  br i1 %min.iters.check302, label %scalar.ph301.preheader, label %vector.ph303

vector.ph303:                                     ; preds = %.lr.ph.i182
  %n.vec304 = and i64 %i.bv, -4                   ; 3 uses
  %i.bw = and i64 %i.bv, 3
  %i.bx = shl i64 %n.vec304, 3
  %i.by = getelementptr i8, ptr %0, i64 %i.bx
  %broadcast.splatinsert305 = insertelement <2 x ptr> poison, ptr %.pre.i183, i64 0
  %broadcast.splat306 = shufflevector <2 x ptr> %broadcast.splatinsert305, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body307

vector.body307:                                   ; preds = %vector.body307, %vector.ph303
  %index308 = phi i64 [ 0, %vector.ph303 ], [ %index.next310, %vector.body307 ] ; 2 uses
  %i.bz = shl i64 %index308, 3
  %next.gep309 = getelementptr i8, ptr %0, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep309, i64 16
  store <2 x ptr> %broadcast.splat306, ptr %next.gep309, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat306, ptr %i.ca, align 8, !tbaa !49
  %index.next310 = add nuw i64 %index308, 4       ; 2 uses
  %i.cb = icmp eq i64 %index.next310, %n.vec304
  br i1 %i.cb, label %middle.block311, label %vector.body307, !llvm.loop !1895

middle.block311:                                  ; preds = %vector.body307
  %cmp.n312 = icmp eq i64 %i.bv, %n.vec304
  br i1 %cmp.n312, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187, label %scalar.ph301.preheader

scalar.ph301.preheader:                           ; preds = %.lr.ph.i182, %middle.block311
  %.07.i184.ph = phi i64 [ %i.bv, %.lr.ph.i182 ], [ %i.bw, %middle.block311 ]
  %.046.i185.ph = phi ptr [ %0, %.lr.ph.i182 ], [ %i.by, %middle.block311 ]
  br label %scalar.ph301

scalar.ph301:                                     ; preds = %scalar.ph301.preheader, %scalar.ph301
  %.07.i184 = phi i64 [ %i.cc, %scalar.ph301 ], [ %.07.i184.ph, %scalar.ph301.preheader ]
  %.046.i185 = phi ptr [ %i.cd, %scalar.ph301 ], [ %.046.i185.ph, %scalar.ph301.preheader ] ; 2 uses
  %i.cc = add i64 %.07.i184, -1                   ; 2 uses
  store ptr %.pre.i183, ptr %.046.i185, align 8, !tbaa !49
  %i.cd = getelementptr inbounds nuw i8, ptr %.046.i185, i64 8
  %.not.i186 = icmp eq i64 %i.cc, 0
  br i1 %.not.i186, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187, label %scalar.ph301, !llvm.loop !1896

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187: ; preds = %scalar.ph301, %middle.block311, %bb.s
  %i.ce = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv ; 2 uses
  %.not.i188 = icmp eq ptr %3, %i.ce
  br i1 %.not.i188, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %bb.t

bb.t:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187
  %i.cf = icmp ne ptr %3, %i.a
  %i.cg = icmp ne ptr %3, null
  %i.ch = and i1 %i.cf, %i.cg
  %spec.select.i.i.i190 = and i1 %i.ch, %i.bc
  br i1 %spec.select.i.i.i190, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, !prof !58

.critedge:                                        ; preds = %scalar.ph315, %middle.block325, %bb.r, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %i.ci = sub nuw i64 %4, %i.h                    ; 9 uses
  %i.cj = sub i64 %1, %i.e                        ; 8 uses
  %.not144 = icmp ult i64 %i.cj, %i.ci
  br i1 %.not144, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.critedge
  %.neg = mul i64 %i.ci, -8                       ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %i.a, i64 %.neg ; 3 uses
  %i.cl = icmp ne i64 %.neg, 0
  %i.cm = icmp ne ptr %0, null
  %or.cond.i.i192 = and i1 %i.cm, %i.cl
  br i1 %or.cond.i.i192, label %bb.v, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit195, !prof !58

bb.v:                                             ; preds = %bb.u
  %gepdiff = sub nsw i64 0, %.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 8 %i.ck, i64 %gepdiff, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit195

_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit195: ; preds = %bb.u, %bb.v
  %.not.i196 = icmp eq i64 %.neg, 0
  %.not.i.i197 = icmp eq ptr %i.ck, %3
  %or.cond = or i1 %.not.i196, %.not.i.i197
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit, label %bb.w, !prof !84

bb.w:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit195
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cn, %i.b                     ; 2 uses
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cr, ptr align 8 %3, i64 %i.co, i1 false)
  br label %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit

_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit: ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit195, %bb.w
  %.not5.i198 = icmp eq i64 %i.ci, 0
  br i1 %.not5.i198, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit
  %.pre.i200 = load ptr, ptr %5, align 8, !tbaa !49 ; 2 uses
  %min.iters.check330 = icmp ult i64 %i.ci, 4
  br i1 %min.iters.check330, label %scalar.ph329.preheader, label %vector.ph331

vector.ph331:                                     ; preds = %.lr.ph.i199
  %n.vec332 = and i64 %i.ci, -4                   ; 3 uses
  %i.cs = and i64 %i.ci, 3
  %i.ct = shl i64 %n.vec332, 3
  %i.cu = getelementptr i8, ptr %3, i64 %i.ct
  %broadcast.splatinsert333 = insertelement <2 x ptr> poison, ptr %.pre.i200, i64 0
  %broadcast.splat334 = shufflevector <2 x ptr> %broadcast.splatinsert333, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph331
  %index336 = phi i64 [ 0, %vector.ph331 ], [ %index.next338, %vector.body335 ] ; 2 uses
  %i.cv = shl i64 %index336, 3
  %next.gep337 = getelementptr i8, ptr %3, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep337, i64 16
  store <2 x ptr> %broadcast.splat334, ptr %next.gep337, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat334, ptr %i.cw, align 8, !tbaa !49
  %index.next338 = add nuw i64 %index336, 4       ; 2 uses
  %i.cx = icmp eq i64 %index.next338, %n.vec332
  br i1 %i.cx, label %middle.block339, label %vector.body335, !llvm.loop !1897

middle.block339:                                  ; preds = %vector.body335
  %cmp.n340 = icmp eq i64 %i.ci, %n.vec332
  br i1 %cmp.n340, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %scalar.ph329.preheader

scalar.ph329.preheader:                           ; preds = %.lr.ph.i199, %middle.block339
  %.07.i201.ph = phi i64 [ %i.ci, %.lr.ph.i199 ], [ %i.cs, %middle.block339 ]
  %.046.i202.ph = phi ptr [ %3, %.lr.ph.i199 ], [ %i.cu, %middle.block339 ]
  br label %scalar.ph329

scalar.ph329:                                     ; preds = %scalar.ph329.preheader, %scalar.ph329
  %.07.i201 = phi i64 [ %i.cy, %scalar.ph329 ], [ %.07.i201.ph, %scalar.ph329.preheader ]
  %.046.i202 = phi ptr [ %i.cz, %scalar.ph329 ], [ %.046.i202.ph, %scalar.ph329.preheader ] ; 2 uses
  %i.cy = add i64 %.07.i201, -1                   ; 2 uses
  store ptr %.pre.i200, ptr %.046.i202, align 8, !tbaa !49
  %i.cz = getelementptr inbounds nuw i8, ptr %.046.i202, i64 8
  %.not.i203 = icmp eq i64 %i.cy, 0
  br i1 %.not.i203, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %scalar.ph329, !llvm.loop !1898

bb.x:                                             ; preds = %.critedge
  %i.da = sub nuw i64 %i.ci, %i.cj                ; 6 uses
  %i.db = icmp ne ptr %3, %i.a
  %i.dc = icmp ne ptr %0, null
  %or.cond.i.i205 = and i1 %i.dc, %i.db
  %i.dd = icmp ne ptr %3, null
  %spec.select.i.i206 = and i1 %i.dd, %or.cond.i.i205
  br i1 %spec.select.i.i206, label %bb.y, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit208, !prof !58

bb.y:                                             ; preds = %bb.x
end_hunk_3
begin_hunk_4_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPPNS0_20stable_vector_detail9node_baseIPvEENS0_3dtl21insert_n_copies_proxyINS0_14node_allocatorIS6_Lm256ELm2EEEEESB_EEvT_mSD_SD_mT0_RT1_:bb.a
  br i1 %min.iters.check358, label %.lr.ph.i.i219.preheader, label %vector.ph359

vector.ph359:                                     ; preds = %.lr.ph.preheader.i.i217
  %n.vec360 = and i64 %i.da, -4                   ; 3 uses
  %i.dp = and i64 %i.da, 3
  %i.dq = shl i64 %n.vec360, 3
  %i.dr = getelementptr i8, ptr %i.a, i64 %i.dq
  %broadcast.splatinsert361 = insertelement <2 x ptr> poison, ptr %.pre.i.i218, i64 0
  %broadcast.splat362 = shufflevector <2 x ptr> %broadcast.splatinsert361, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph359
  %index364 = phi i64 [ 0, %vector.ph359 ], [ %index.next369, %vector.body363 ] ; 2 uses
  %i.ds = shl i64 %index364, 3
  %next.gep365 = getelementptr i8, ptr %i.a, i64 %i.ds ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep365) ]
  %i.dt = getelementptr i8, ptr %next.gep365, i64 16
  store <2 x ptr> %broadcast.splat362, ptr %next.gep365, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat362, ptr %i.dt, align 8, !tbaa !49
  %index.next369 = add nuw i64 %index364, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next369, %n.vec360
  br i1 %i.du, label %middle.block370, label %vector.body363, !llvm.loop !1901

middle.block370:                                  ; preds = %vector.body363
  %cmp.n371 = icmp eq i64 %i.da, %n.vec360
  br i1 %cmp.n371, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %.lr.ph.i.i219.preheader

.lr.ph.i.i219.preheader:                          ; preds = %.lr.ph.preheader.i.i217, %middle.block370
  %.017.i.i220.ph = phi i64 [ %i.da, %.lr.ph.preheader.i.i217 ], [ %i.dp, %middle.block370 ]
  %.01416.i.i221.ph = phi ptr [ %i.a, %.lr.ph.preheader.i.i217 ], [ %i.dr, %middle.block370 ]
  br label %.lr.ph.i.i219

.lr.ph.i.i219:                                    ; preds = %.lr.ph.i.i219.preheader, %.lr.ph.i.i219
  %.017.i.i220 = phi i64 [ %i.dv, %.lr.ph.i.i219 ], [ %.017.i.i220.ph, %.lr.ph.i.i219.preheader ]
  %.01416.i.i221 = phi ptr [ %i.dw, %.lr.ph.i.i219 ], [ %.01416.i.i221.ph, %.lr.ph.i.i219.preheader ] ; 3 uses
  %i.dv = add i64 %.017.i.i220, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i221) ]
  store ptr %.pre.i.i218, ptr %.01416.i.i221, align 8, !tbaa !49
  %i.dw = getelementptr inbounds nuw i8, ptr %.01416.i.i221, i64 8
  %.not.i.i222 = icmp eq i64 %i.dv, 0
  br i1 %.not.i.i222, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150, label %.lr.ph.i.i219, !llvm.loop !1902

_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split: ; preds = %bb.t, %bb.o, %bb.h, %bb.f
  %.sink = phi ptr [ %i.ad, %bb.h ], [ %i.aw, %bb.o ], [ %i.aa, %bb.f ], [ %i.ce, %bb.t ]
  %i.dx = ptrtoint ptr %i.a to i64
  %i.dy = sub i64 %i.dx, %i.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.sink, ptr nonnull align 1 %3, i64 %i.dy, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150

_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150: ; preds = %scalar.ph329, %.lr.ph.i.i219, %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit150.sink.split, %middle.block339, %middle.block370, %bb.n, %bb.o, %bb.t, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit187, %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit, %bb.e, %bb.d, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_NS0_3dtl21insert_n_copies_proxyIS8_EEEEvT0_mSD_SD_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [8 x i8], ptr %0, i64 %1 ; 16 uses
  %i.b = add i64 %4, %1                           ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %2, i64 %i.b ; 5 uses
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.h, %i.d                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 6 uses
  %i.k = add i64 %i.g, %4                         ; 4 uses
  %.not = icmp ult i64 %i.j, %i.k
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub i64 0, %i.k
  %i.m = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.l ; 4 uses
  %.not15.i.i = icmp eq i64 %4, 0
  br i1 %.not15.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !49 ; 2 uses
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %4, -4                         ; 3 uses
  %i.n = and i64 %4, 3
  %i.o = shl i64 %n.vec, 3
  %i.p = getelementptr i8, ptr %i.m, i64 %i.o
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %.pre.i.i, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.q ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %broadcast.splat, ptr %next.gep, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat, ptr %i.r, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !1903

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.017.i.i.ph = phi i64 [ %4, %.lr.ph.preheader.i.i ], [ %i.n, %middle.block ]
  %.01416.i.i.ph = phi ptr [ %i.m, %.lr.ph.preheader.i.i ], [ %i.p, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.017.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ %.017.i.i.ph, %.lr.ph.i.i.preheader ]
  %.01416.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.01416.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.t = add i64 %.017.i.i, -1                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i) ]
  store ptr %.pre.i.i, ptr %.01416.i.i, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 8
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i.i, !llvm.loop !1904

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.b
  %i.v = icmp ne ptr %3, %i.a
  %i.w = icmp ne ptr %2, null                     ; 2 uses
  %i.x = icmp ne ptr %3, null
  %i.y = and i1 %i.v, %i.x
  %spec.select.i.i = and i1 %i.y, %i.w
  br i1 %spec.select.i.i, label %bb.c, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit, !prof !58

bb.c:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 8 %3, i64 %i.f, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit

_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit: ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit, %bb.c
  %.not98 = icmp ult i64 %i.j, %i.b
  br i1 %.not98, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit
  %i.aa = icmp ne ptr %0, %3
  %i.ab = icmp ne ptr %0, null
  %i.ac = and i1 %i.aa, %i.ab
  %spec.select.i.i100 = and i1 %i.ac, %i.w
  br i1 %spec.select.i.i100, label %bb.e, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102, !prof !58

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %0 to i64
  %i.ae = sub i64 %i.e, %i.ad
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 8 %0, i64 %i.ae, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102

bb.f:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit
  %i.af = sub nuw i64 %i.j, %i.k                  ; 2 uses
  %i.ag = sub i64 0, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ag ; 4 uses
  %.not.i.i103 = icmp ne i64 %i.j, %i.k
  %i.ai = icmp ne ptr %0, null
  %or.cond = and i1 %i.ai, %.not.i.i103
  br i1 %or.cond, label %bb.g, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit, !prof !143

bb.g:                                             ; preds = %bb.f
  %i.aj = shl i64 %i.af, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.ah, i64 %i.aj, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit

_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit: ; preds = %bb.g, %bb.f
  %.not.i = icmp eq ptr %i.ah, %i.a
  %.not.i.i106 = icmp eq ptr %i.ah, %0
  %or.cond147 = or i1 %.not.i, %.not.i.i106
  br i1 %or.cond147, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102, label %bb.h, !prof !84

bb.h:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit
  %i.ak = ptrtoint ptr %0 to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.al, %i.ak                    ; 2 uses
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ao
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ap, ptr align 8 %0, i64 %i.am, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102

bb.i:                                             ; preds = %bb.a
  %i.aq = icmp ugt i64 %i.j, %i.g
  br i1 %i.aq, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ar = icmp ne ptr %3, %i.a
  %i.as = icmp ne ptr %2, null
  %or.cond.i.i107 = and i1 %i.as, %i.ar
  %i.at = icmp ne ptr %3, null
  %spec.select.i.i108 = and i1 %i.at, %or.cond.i.i107
  br i1 %spec.select.i.i108, label %bb.k, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit110, !prof !58

bb.k:                                             ; preds = %bb.j
  %i.au = sub nsw i64 0, %i.g
  %i.av = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.au
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull align 8 %3, i64 %i.f, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit110

_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit110: ; preds = %bb.j, %bb.k
  %i.aw = sub nuw nsw i64 %i.j, %i.g              ; 7 uses
  %i.ax = sub i64 %4, %i.aw                       ; 7 uses
  %i.ay = sub i64 0, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ay ; 5 uses
  %.not5.i = icmp eq i64 %i.ax, 0
  br i1 %.not5.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit110
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !49  ; 2 uses
  %min.iters.check188 = icmp ult i64 %i.ax, 4
  br i1 %min.iters.check188, label %scalar.ph187.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.i
  %n.vec190 = and i64 %i.ax, -4                   ; 3 uses
  %i.ba = and i64 %i.ax, 3
  %i.bb = shl i64 %n.vec190, 3
  %i.bc = getelementptr i8, ptr %i.az, i64 %i.bb
  %broadcast.splatinsert191 = insertelement <2 x ptr> poison, ptr %.pre.i, i64 0
  %broadcast.splat192 = shufflevector <2 x ptr> %broadcast.splatinsert191, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph189
  %index194 = phi i64 [ 0, %vector.ph189 ], [ %index.next196, %vector.body193 ] ; 2 uses
  %i.bd = shl i64 %index194, 3
  %next.gep195 = getelementptr i8, ptr %i.az, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep195, i64 16
  store <2 x ptr> %broadcast.splat192, ptr %next.gep195, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat192, ptr %i.be, align 8, !tbaa !49
  %index.next196 = add nuw i64 %index194, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next196, %n.vec190
  br i1 %i.bf, label %middle.block197, label %vector.body193, !llvm.loop !1905

middle.block197:                                  ; preds = %vector.body193
  %cmp.n198 = icmp eq i64 %i.ax, %n.vec190
  br i1 %cmp.n198, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %scalar.ph187.preheader

scalar.ph187.preheader:                           ; preds = %.lr.ph.i, %middle.block197
  %.07.i.ph = phi i64 [ %i.ax, %.lr.ph.i ], [ %i.ba, %middle.block197 ]
  %.046.i.ph = phi ptr [ %i.az, %.lr.ph.i ], [ %i.bc, %middle.block197 ]
  br label %scalar.ph187

scalar.ph187:                                     ; preds = %scalar.ph187.preheader, %scalar.ph187
  %.07.i = phi i64 [ %i.bg, %scalar.ph187 ], [ %.07.i.ph, %scalar.ph187.preheader ]
  %.046.i = phi ptr [ %i.bh, %scalar.ph187 ], [ %.046.i.ph, %scalar.ph187.preheader ] ; 2 uses
  %i.bg = add i64 %.07.i, -1                      ; 2 uses
  store ptr %.pre.i, ptr %.046.i, align 8, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  %.not.i111 = icmp eq i64 %i.bg, 0
  br i1 %.not.i111, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit, label %scalar.ph187, !llvm.loop !1906

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit: ; preds = %scalar.ph187, %middle.block197, %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit110
  %.not15.i.i112 = icmp eq i64 %i.aw, 0
  br i1 %.not15.i.i112, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119, label %.lr.ph.preheader.i.i113

.lr.ph.preheader.i.i113:                          ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %.pre.i.i114 = load ptr, ptr %5, align 8, !tbaa !49 ; 2 uses
  %min.iters.check202 = icmp ult i64 %i.aw, 4
  br i1 %min.iters.check202, label %.lr.ph.i.i115.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph.preheader.i.i113
  %n.vec204 = and i64 %i.aw, -4                   ; 3 uses
  %i.bi = and i64 %i.aw, 3
  %i.bj = shl i64 %n.vec204, 3
  %i.bk = getelementptr i8, ptr %i.a, i64 %i.bj
  %broadcast.splatinsert205 = insertelement <2 x ptr> poison, ptr %.pre.i.i114, i64 0
  %broadcast.splat206 = shufflevector <2 x ptr> %broadcast.splatinsert205, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph203
  %index208 = phi i64 [ 0, %vector.ph203 ], [ %index.next213, %vector.body207 ] ; 2 uses
  %i.bl = shl i64 %index208, 3
  %next.gep209 = getelementptr i8, ptr %i.a, i64 %i.bl ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep209) ]
  %i.bm = getelementptr i8, ptr %next.gep209, i64 16
  store <2 x ptr> %broadcast.splat206, ptr %next.gep209, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat206, ptr %i.bm, align 8, !tbaa !49
  %index.next213 = add nuw i64 %index208, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next213, %n.vec204
  br i1 %i.bn, label %middle.block214, label %vector.body207, !llvm.loop !1907

middle.block214:                                  ; preds = %vector.body207
  %cmp.n215 = icmp eq i64 %i.aw, %n.vec204
  br i1 %cmp.n215, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119, label %.lr.ph.i.i115.preheader

.lr.ph.i.i115.preheader:                          ; preds = %.lr.ph.preheader.i.i113, %middle.block214
  %.017.i.i116.ph = phi i64 [ %i.aw, %.lr.ph.preheader.i.i113 ], [ %i.bi, %middle.block214 ]
  %.01416.i.i117.ph = phi ptr [ %i.a, %.lr.ph.preheader.i.i113 ], [ %i.bk, %middle.block214 ]
  br label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.lr.ph.i.i115.preheader, %.lr.ph.i.i115
  %.017.i.i116 = phi i64 [ %i.bo, %.lr.ph.i.i115 ], [ %.017.i.i116.ph, %.lr.ph.i.i115.preheader ]
  %.01416.i.i117 = phi ptr [ %i.bp, %.lr.ph.i.i115 ], [ %.01416.i.i117.ph, %.lr.ph.i.i115.preheader ] ; 3 uses
  %i.bo = add i64 %.017.i.i116, -1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i117) ]
  store ptr %.pre.i.i114, ptr %.01416.i.i117, align 8, !tbaa !49
  %i.bp = getelementptr inbounds nuw i8, ptr %.01416.i.i117, i64 8
  %.not.i.i118 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i118, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119, label %.lr.ph.i.i115, !llvm.loop !1908

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119: ; preds = %.lr.ph.i.i115, %middle.block214, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit
  %.not.i120 = icmp eq ptr %3, %i.az
  %.not.i.i121 = icmp eq ptr %3, %0
  %or.cond148 = or i1 %.not.i.i121, %.not.i120
  br i1 %or.cond148, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102, label %bb.l, !prof !84

bb.l:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119
  %i.bq = ptrtoint ptr %0 to i64
  %i.br = sub i64 %i.e, %i.bq                     ; 2 uses
  %i.bs = ashr exact i64 %i.br, 3
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bt
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bu, ptr align 8 %0, i64 %i.br, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102

bb.m:                                             ; preds = %bb.i
  %.idx = sub i64 0, %i.i
  %i.bv = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 3 uses
  %.not.i.i123 = icmp ne ptr %i.c, %i.a
  %i.bw = icmp ne ptr %0, null
  %or.cond149 = and i1 %i.bw, %.not.i.i123
  br i1 %or.cond149, label %bb.n, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126, !prof !143

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.a, ptr nonnull align 1 %i.bv, i64 %i.i, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126

_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126: ; preds = %bb.n, %bb.m
  %.not.i127 = icmp eq ptr %i.c, %i.a
  br i1 %.not.i127, label %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126
  %.not.i.i128 = icmp eq ptr %i.bv, %3
  br i1 %.not.i.i128, label %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129, label %bb.p, !prof !74

bb.p:                                             ; preds = %bb.o
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bx, %i.e                     ; 2 uses
  %i.bz = ashr exact i64 %i.by, 3
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ca ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cb, ptr align 8 %3, i64 %i.by, i1 false)
  br label %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129

_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129: ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126, %bb.o, %bb.p
  %i.cc = phi ptr [ %3, %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit126 ], [ %i.a, %bb.o ], [ %i.cb, %bb.p ]
  %i.cd = sub i64 0, %4
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cd ; 5 uses
  %.not5.i130 = icmp eq i64 %4, 0
  br i1 %.not5.i130, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129
  %.pre.i132 = load ptr, ptr %5, align 8, !tbaa !49 ; 2 uses
  %min.iters.check174 = icmp ult i64 %4, 4
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph.i131
  %n.vec176 = and i64 %4, -4                      ; 3 uses
  %i.cf = and i64 %4, 3
  %i.cg = shl i64 %n.vec176, 3
  %i.ch = getelementptr i8, ptr %i.ce, i64 %i.cg
  %broadcast.splatinsert177 = insertelement <2 x ptr> poison, ptr %.pre.i132, i64 0
  %broadcast.splat178 = shufflevector <2 x ptr> %broadcast.splatinsert177, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph175
  %index180 = phi i64 [ 0, %vector.ph175 ], [ %index.next182, %vector.body179 ] ; 2 uses
  %i.ci = shl i64 %index180, 3
  %next.gep181 = getelementptr i8, ptr %i.ce, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep181, i64 16
  store <2 x ptr> %broadcast.splat178, ptr %next.gep181, align 8, !tbaa !49
  store <2 x ptr> %broadcast.splat178, ptr %i.cj, align 8, !tbaa !49
  %index.next182 = add nuw i64 %index180, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next182, %n.vec176
  br i1 %i.ck, label %middle.block183, label %vector.body179, !llvm.loop !1909

middle.block183:                                  ; preds = %vector.body179
  %cmp.n184 = icmp eq i64 %4, %n.vec176
  br i1 %cmp.n184, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %.lr.ph.i131, %middle.block183
  %.07.i133.ph = phi i64 [ %4, %.lr.ph.i131 ], [ %i.cf, %middle.block183 ]
  %.046.i134.ph = phi ptr [ %i.ce, %.lr.ph.i131 ], [ %i.ch, %middle.block183 ]
  br label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.preheader, %scalar.ph173
  %.07.i133 = phi i64 [ %i.cl, %scalar.ph173 ], [ %.07.i133.ph, %scalar.ph173.preheader ]
  %.046.i134 = phi ptr [ %i.cm, %scalar.ph173 ], [ %.046.i134.ph, %scalar.ph173.preheader ] ; 2 uses
  %i.cl = add i64 %.07.i133, -1                   ; 2 uses
  store ptr %.pre.i132, ptr %.046.i134, align 8, !tbaa !49
  %i.cm = getelementptr inbounds nuw i8, ptr %.046.i134, i64 8
  %.not.i135 = icmp eq i64 %i.cl, 0
  br i1 %.not.i135, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136, label %scalar.ph173, !llvm.loop !1910

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136: ; preds = %scalar.ph173, %middle.block183, %_ZN5boost9container25move_backward_overlappingIPPNS0_20stable_vector_detail9node_baseIPvEEEET_S8_S8_S8_.exit129
  %.not.i137 = icmp eq ptr %3, %i.ce
  %.not.i.i138 = icmp eq ptr %3, %0
  %or.cond150 = or i1 %.not.i.i138, %.not.i137
  br i1 %or.cond150, label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102, label %bb.q, !prof !84

bb.q:                                             ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136
  %i.cn = ptrtoint ptr %0 to i64
  %i.co = sub i64 %i.e, %i.cn                     ; 2 uses
  %i.cp = ashr exact i64 %i.co, 3
  %i.cq = sub nsw i64 0, %i.cp
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cr, ptr align 8 %0, i64 %i.co, i1 false)
  br label %_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102

_ZN5boost9container24uninitialized_move_allocINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_SC_SD_.exit102: ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit119, %bb.l, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEE17copy_n_and_updateIPS8_EEvRS9_T_m.exit136, %bb.q, %bb.d, %bb.e, %_ZN5boost9container26uninitialized_move_alloc_nINS0_14node_allocatorIPNS0_20stable_vector_detail9node_baseIPvEELm256ELm2EEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_explicit_inst_stable_vector_test.cpp() #11 section ".text.startup" {
bb.a:
  tail call void @_ZN5boost9container13stable_vectorI5emptyvEC1Ev(ptr noundef nonnull align 8 dereferenceable(40) @dummy) #23
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost9container13stable_vectorI5emptyvED1Ev, ptr nonnull @dummy, ptr nonnull @__dso_handle) #23 ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { allocsize(0) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = distinct !{!2, !37}
!3 = distinct !{!3, !37}
!4 = distinct !{!4, !37}
!5 = distinct !{!5, !37}
!6 = distinct !{!6, !37}
!7 = distinct !{!7, !37}
!8 = distinct !{!8, !37}
!9 = distinct !{!9, !37}
!10 = distinct !{!10, !37}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any pointer", !16, i64 0}
!21 = !{!"p1 _ZTSN5boost9container20stable_vector_detail4nodeIP5emptyEE", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"p1 _ZTSN5boost9container13new_allocatorINS0_20stable_vector_detail4nodeIP5emptyEEEE", !20, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTSN5boost9container3dtl31transform_multiallocation_chainINS1_27basic_multiallocation_chainIPvEENS0_20stable_vector_detail4nodeIP5emptyEEEE", !20, i64 0}
!26 = !{!"_ZTSN5boost9container3dtl24allocator_version_traitsINS0_13new_allocatorINS0_20stable_vector_detail4nodeIP5emptyEEEELj1EE28allocate_individual_rollbackE", !23, i64 0, !25, i64 8}
!27 = !{!26, !25, i64 8}
!28 = !{!"p1 _ZTSN5boost9intrusive10slist_nodeIPvEE", !20, i64 0}
!29 = !{!"_ZTSN5boost9intrusive10slist_nodeIPvEE", !28, i64 0}
!30 = !{!29, !28, i64 0}
!31 = !{!"_ZTSN5boost9intrusive6detail21default_header_holderINS0_17slist_node_traitsIPvEEEE", !29, i64 0}
!32 = !{!"_ZTSN5boost9intrusive23header_holder_plus_lastINS0_6detail21default_header_holderINS0_17slist_node_traitsIPvEEEEPNS0_10slist_nodeIS5_EELb1EEE", !31, i64 0, !28, i64 8}
!33 = !{!32, !28, i64 8}
!34 = !{!"long", !16, i64 0}
!35 = !{!"_ZTSN5boost9intrusive6detail11size_holderILb1EmvEE", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"p1 _ZTSN5boost9container13stable_vectorI5emptyvEE", !20, i64 0}
end_hunk_4
