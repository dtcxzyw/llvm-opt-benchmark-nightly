Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/small_vector_test?download=true
inline.NumInlined: 11236
inline.NumDeleted: 2906
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 397
loop-unroll.NumUnrolled: 526
begin_hunk_0_@_ZN5boost9container4test20vector_copyable_onlyINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.aw = load i64, ptr %i.ac, align 8, !tbaa !79, !noalias !1067
  %i.ax = add i64 %i.aw, 50
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !79, !noalias !1067
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.af, i64 noundef 50, ptr nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit: ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 19 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 1, ptr %i.b, align 4, !tbaa !67
  %i.ba = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.be, i64 noundef 50, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.bf = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.bg = load i64, ptr %i.ac, align 8, !tbaa !69 ; 5 uses
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 2
  %.not.i = icmp eq i64 %i.bg, %i.bl
  br i1 %.not.i, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit
  %i.bm = load ptr, ptr %0, align 8, !tbaa !65, !noalias !76 ; 5 uses
  %.idx.i = shl nsw i64 %i.bg, 2                  ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i ; 9 uses
  %.not2324.i = icmp eq i64 %i.bg, 0
  br i1 %.not2324.i, label %thread-pre-split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.019.026.i = phi ptr [ %i.br, %bb.d ], [ %i.bm, %bb.c ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.bs, %bb.d ], [ %i.bf, %bb.c ] ; 2 uses
  %i.bo = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !67
  %i.bp = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !67
  %i.bq = icmp eq i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.d, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp eq ptr %i.br, %i.bn
  br i1 %.not23.i, label %thread-pre-split, label %.lr.ph.i, !llvm.loop !1

thread-pre-split:                                 ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !67
  %i.bt = lshr i64 %i.ad, 1                       ; 3 uses
  %.idx444 = shl nuw nsw i64 %i.bt, 2             ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx444 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bv = load i64, ptr %i.ag, align 8, !tbaa !66, !noalias !1068
  %i.bw = sub i64 %i.bv, %i.bg
  %.not.i.i189 = icmp ult i64 %i.bw, 50
  br i1 %.not.i.i189, label %bb.l, label %bb.e, !prof !74

bb.e:                                             ; preds = %thread-pre-split
  %i.bx = icmp samesign eq i64 %i.bg, %i.bt
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i213.preheader, label %bb.f

.lr.ph.i.i.i.i.i.i213.preheader:                  ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  store i32 1, ptr %i.bn, align 4, !tbaa !67, !noalias !1068
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split

bb.f:                                             ; preds = %bb.e
  %gepdiff = sub nsw i64 %.idx.i, %.idx444        ; 3 uses
  %i.by = ashr exact i64 %gepdiff, 2              ; 7 uses
  %.not.i.i.i.i.i190 = icmp ult i64 %i.by, 50
  %.not14.i.i.i.i200 = icmp eq ptr %i.bm, null    ; 2 uses
  br i1 %.not.i.i.i.i.i190, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not14.i.i.i.i200, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192, label %bb.h, !prof !83

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds i8, ptr %i.bn, i64 -200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(200) %i.bn, ptr noundef nonnull align 1 dereferenceable(200) %i.bz, i64 200, i1 false), !noalias !1068
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192: ; preds = %bb.h, %bb.g
  %i.ca = add nsw i64 %.idx.i, -200
  %.not.i.i10.i.i.i.i193 = icmp eq i64 %i.ca, %.idx444
  br i1 %.not.i.i10.i.i.i.i193, label %.lr.ph.i.i11.i.i.i.i194, label %bb.i, !prof !74

bb.i:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192
  %gepdiff445 = add i64 %gepdiff, -200            ; 2 uses
  %i.cb = ashr exact i64 %gepdiff445, 2
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.cc
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cd, ptr align 4 %i.bu, i64 %gepdiff445, i1 false), !noalias !1068
  %.pre.i.i12.i.i.i.i195.pre = load i32, ptr %i.c, align 4, !tbaa !67, !noalias !1068
  br label %.lr.ph.i.i11.i.i.i.i194

.lr.ph.i.i11.i.i.i.i194:                          ; preds = %bb.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192
  %.pre.i.i12.i.i.i.i195 = phi i32 [ %.pre.i.i12.i.i.i.i195.pre, %bb.i ], [ 1, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192 ] ; 2 uses
  store i32 %.pre.i.i12.i.i.i.i195, ptr %i.bu, align 4, !tbaa !67, !noalias !1068
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split

bb.j:                                             ; preds = %bb.f
  br i1 %.not14.i.i.i.i200, label %.lr.ph.i39.i.i.i.i.i201, label %bb.k, !prof !74

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull align 4 %i.bu, i64 %gepdiff, i1 false), !noalias !1068
  %.pre.i40.i.i.i.i.i202.pre = load i32, ptr %i.c, align 4, !tbaa !67, !noalias !1068
  br label %.lr.ph.i39.i.i.i.i.i201

.lr.ph.i39.i.i.i.i.i201:                          ; preds = %bb.k, %bb.j
  %.pre.i40.i.i.i.i.i202 = phi i32 [ %.pre.i40.i.i.i.i.i202.pre, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i39.i.i.i.i.i201
  %n.vec = and i64 %i.by, 56                      ; 3 uses
  %i.cf = and i64 %i.by, 7
  %i.cg = shl nuw nsw i64 %n.vec, 2
  %i.ch = getelementptr i8, ptr %i.bu, i64 %i.cg
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i40.i.i.i.i.i202, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bu, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !67, !noalias !1068
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 4, !tbaa !67, !noalias !1068
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !992

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i39.i.i.i.i.i201, %middle.block
  %.07.i41.i.i.i.i.i203.ph = phi i64 [ %i.by, %.lr.ph.i39.i.i.i.i.i201 ], [ %i.cf, %middle.block ]
  %.046.i42.i.i.i.i.i204.ph = phi ptr [ %i.bu, %.lr.ph.i39.i.i.i.i.i201 ], [ %i.ch, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i41.i.i.i.i.i203 = phi i64 [ %i.cl, %scalar.ph ], [ %.07.i41.i.i.i.i.i203.ph, %scalar.ph.preheader ]
  %.046.i42.i.i.i.i.i204 = phi ptr [ %i.cm, %scalar.ph ], [ %.046.i42.i.i.i.i.i204.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cl = add i64 %.07.i41.i.i.i.i.i203, -1       ; 2 uses
  store i32 %.pre.i40.i.i.i.i.i202, ptr %.046.i42.i.i.i.i.i204, align 4, !tbaa !67, !noalias !1068
  %i.cm = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i204, i64 4
  %.not.i43.i.i.i.i.i205 = icmp eq i64 %i.cl, 0
  br i1 %.not.i43.i.i.i.i.i205, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206, label %scalar.ph, !llvm.loop !993

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206: ; preds = %scalar.ph, %middle.block
  %i.cn = sub nsw i64 50, %i.by                   ; 5 uses
  %.pre.i.i.i.i.i.i.i207 = load i32, ptr %i.c, align 4, !tbaa !67, !noalias !1068 ; 2 uses
  %min.iters.check647 = icmp ult i64 %i.cn, 8
  br i1 %min.iters.check647, label %.lr.ph.i.i.i.i.i.i.i208.preheader, label %vector.ph648

vector.ph648:                                     ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206
  %n.vec649 = and i64 %i.cn, -8                   ; 3 uses
  %i.co = and i64 %i.cn, 7
  %i.cp = shl i64 %n.vec649, 2
  %i.cq = getelementptr i8, ptr %i.bn, i64 %i.cp
  %broadcast.splatinsert650 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i.i207, i64 0
  %broadcast.splat651 = shufflevector <4 x i32> %broadcast.splatinsert650, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body652

vector.body652:                                   ; preds = %vector.body652, %vector.ph648
  %index653 = phi i64 [ 0, %vector.ph648 ], [ %index.next662, %vector.body652 ] ; 2 uses
  %i.cr = shl i64 %index653, 2
  %next.gep654 = getelementptr i8, ptr %i.bn, i64 %i.cr ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep654) ]
  %i.cs = getelementptr i8, ptr %next.gep654, i64 16
  store <4 x i32> %broadcast.splat651, ptr %next.gep654, align 4, !tbaa !67, !noalias !1068
  store <4 x i32> %broadcast.splat651, ptr %i.cs, align 4, !tbaa !67, !noalias !1068
  %index.next662 = add nuw i64 %index653, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next662, %n.vec649
  br i1 %i.ct, label %middle.block663, label %vector.body652, !llvm.loop !994

middle.block663:                                  ; preds = %vector.body652
  %cmp.n664 = icmp eq i64 %i.cn, %n.vec649
  br i1 %cmp.n664, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199, label %.lr.ph.i.i.i.i.i.i.i208.preheader

.lr.ph.i.i.i.i.i.i.i208.preheader:                ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206, %middle.block663
  %.017.i.i.i.i.i.i.i209.ph = phi i64 [ %i.cn, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206 ], [ %i.co, %middle.block663 ]
  %.01416.i.i.i.i.i.i.i210.ph = phi ptr [ %i.bn, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206 ], [ %i.cq, %middle.block663 ]
  br label %.lr.ph.i.i.i.i.i.i.i208

.lr.ph.i.i.i.i.i.i.i208:                          ; preds = %.lr.ph.i.i.i.i.i.i.i208.preheader, %.lr.ph.i.i.i.i.i.i.i208
  %.017.i.i.i.i.i.i.i209 = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i.i.i208 ], [ %.017.i.i.i.i.i.i.i209.ph, %.lr.ph.i.i.i.i.i.i.i208.preheader ]
  %.01416.i.i.i.i.i.i.i210 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i208 ], [ %.01416.i.i.i.i.i.i.i210.ph, %.lr.ph.i.i.i.i.i.i.i208.preheader ] ; 3 uses
  %i.cu = add i64 %.017.i.i.i.i.i.i.i209, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i.i210) ]
  store i32 %.pre.i.i.i.i.i.i.i207, ptr %.01416.i.i.i.i.i.i.i210, align 4, !tbaa !67, !noalias !1068
  %i.cv = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i210, i64 4
  %.not.i.i45.i.i.i.i.i211 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i45.i.i.i.i.i211, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199, label %.lr.ph.i.i.i.i.i.i.i208, !llvm.loop !995

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split: ; preds = %.lr.ph.i.i.i.i.i.i213.preheader, %.lr.ph.i.i11.i.i.i.i194
  %.sink639 = phi ptr [ %i.bu, %.lr.ph.i.i11.i.i.i.i194 ], [ %i.bn, %.lr.ph.i.i.i.i.i.i213.preheader ] ; 13 uses
  %.pre.i.i12.i.i.i.i195.sink638 = phi i32 [ %.pre.i.i12.i.i.i.i195, %.lr.ph.i.i11.i.i.i.i194 ], [ 1, %.lr.ph.i.i.i.i.i.i213.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sink639, i64 4
  %i.cx = insertelement <4 x i32> poison, i32 %.pre.i.i12.i.i.i.i195.sink638, i64 0
  %i.cy = shufflevector <4 x i32> %i.cx, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  store <4 x i32> %i.cy, ptr %i.cw, align 4, !tbaa !67, !noalias !1068
  %i.cz = getelementptr inbounds nuw i8, ptr %.sink639, i64 20
  store <4 x i32> %i.cy, ptr %i.cz, align 4, !tbaa !67, !noalias !1068
  %i.da = getelementptr inbounds nuw i8, ptr %.sink639, i64 36
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !67, !noalias !1068
  %i.db = getelementptr inbounds nuw i8, ptr %.sink639, i64 52
  store <4 x i32> %i.cy, ptr %i.db, align 4, !tbaa !67, !noalias !1068
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink639, i64 68
  store <4 x i32> %i.cy, ptr %i.dc, align 4, !tbaa !67, !noalias !1068
  %i.dd = getelementptr inbounds nuw i8, ptr %.sink639, i64 84
  store <4 x i32> %i.cy, ptr %i.dd, align 4, !tbaa !67, !noalias !1068
  %i.de = getelementptr inbounds nuw i8, ptr %.sink639, i64 100
  store <4 x i32> %i.cy, ptr %i.de, align 4, !tbaa !67, !noalias !1068
  %i.df = getelementptr inbounds nuw i8, ptr %.sink639, i64 116
  store <4 x i32> %i.cy, ptr %i.df, align 4, !tbaa !67, !noalias !1068
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink639, i64 132
  store <4 x i32> %i.cy, ptr %i.dg, align 4, !tbaa !67, !noalias !1068
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink639, i64 148
  store <4 x i32> %i.cy, ptr %i.dh, align 4, !tbaa !67, !noalias !1068
  %i.di = getelementptr inbounds nuw i8, ptr %.sink639, i64 164
  store <4 x i32> %i.cy, ptr %i.di, align 4, !tbaa !67, !noalias !1068
  %i.dj = getelementptr inbounds nuw i8, ptr %.sink639, i64 180
  store <4 x i32> %i.cy, ptr %i.dj, align 4, !tbaa !67, !noalias !1068
  %i.dk = getelementptr inbounds nuw i8, ptr %.sink639, i64 196
  store i32 %.pre.i.i12.i.i.i.i195.sink638, ptr %i.dk, align 4, !tbaa !67, !noalias !1068
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199: ; preds = %.lr.ph.i.i.i.i.i.i.i208, %middle.block663, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split
  %i.dl = load i64, ptr %i.ac, align 8, !tbaa !79, !noalias !1068
  %i.dm = add i64 %i.dl, 50
  store i64 %i.dm, ptr %i.ac, align 8, !tbaa !79, !noalias !1068
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217

bb.l:                                             ; preds = %thread-pre-split
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bu, i64 noundef 50, ptr nonnull align 4 dereferenceable(4) %i.c)
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.dn = load ptr, ptr %1, align 8, !tbaa !78
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 1, ptr %i.d, align 4, !tbaa !67
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.do, i64 noundef 50, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.dp = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.dq = load i64, ptr %i.ac, align 8, !tbaa !69 ; 4 uses
  %i.dr = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %.not.i218 = icmp eq i64 %i.dq, %i.dv
  br i1 %.not.i218, label %bb.m, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit226

bb.m:                                             ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217
  %i.dw = load ptr, ptr %0, align 8, !tbaa !65, !noalias !1069 ; 2 uses
  %.idx.i220 = shl nsw i64 %i.dq, 2
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %.idx.i220
  %.not2324.i221 = icmp eq i64 %i.dq, 0
  br i1 %.not2324.i221, label %.loopexit464, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.m, %bb.n
  %.sroa.019.026.i223 = phi ptr [ %i.eb, %bb.n ], [ %i.dw, %bb.m ] ; 2 uses
  %.sroa.015.025.i224 = phi ptr [ %i.ec, %bb.n ], [ %i.dp, %bb.m ] ; 2 uses
  %i.dy = load i32, ptr %.sroa.019.026.i223, align 4, !tbaa !67
  %i.dz = load i32, ptr %.sroa.015.025.i224, align 4, !tbaa !67
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.n, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit226

bb.n:                                             ; preds = %.lr.ph.i222
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i223, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i224, i64 4
  %.not23.i225 = icmp eq ptr %i.eb, %i.dx
  br i1 %.not23.i225, label %.loopexit464, label %.lr.ph.i222, !llvm.loop !1

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit226: ; preds = %.lr.ph.i222, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit464:                                     ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 2, ptr %i.e, align 4, !tbaa !67
  %i.ed = lshr i64 %i.dq, 1
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIiEEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj1EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 dereferenceable(4) %i.e, i64 %i.ed, ptr null, i64 0, ptr noundef null)
  %i.ee = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.ef = load ptr, ptr %1, align 8, !tbaa !89
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 2
  %i.ek = lshr i64 %i.ej, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 2, ptr %i.f, align 4, !tbaa !67
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ek, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.el = load i64, ptr %i.ac, align 8, !tbaa !69 ; 4 uses
  %i.em = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.en = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 2
  %.not.i227 = icmp eq i64 %i.el, %i.er
  br i1 %.not.i227, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235

bb.o:                                             ; preds = %.loopexit464
  %i.es = load ptr, ptr %0, align 8, !tbaa !65, !noalias !1070 ; 2 uses
  %.idx.i229 = shl nsw i64 %i.el, 2
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %.idx.i229
  %.not2324.i230 = icmp eq i64 %i.el, 0
  br i1 %.not2324.i230, label %.loopexit463, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %bb.o, %bb.p
  %.sroa.019.026.i232 = phi ptr [ %i.ex, %bb.p ], [ %i.es, %bb.o ] ; 2 uses
  %.sroa.015.025.i233 = phi ptr [ %i.ey, %bb.p ], [ %i.en, %bb.o ] ; 2 uses
  %i.eu = load i32, ptr %.sroa.019.026.i232, align 4, !tbaa !67
  %i.ev = load i32, ptr %.sroa.015.025.i233, align 4, !tbaa !67
  %i.ew = icmp eq i32 %i.eu, %i.ev
  br i1 %i.ew, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235

bb.p:                                             ; preds = %.lr.ph.i231
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i232, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i233, i64 4
  %.not23.i234 = icmp eq ptr %i.ex, %i.et
  br i1 %.not23.i234, label %.loopexit463, label %.lr.ph.i231, !llvm.loop !1

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235: ; preds = %.lr.ph.i231, %.loopexit464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit463:                                     ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i32 3, ptr %i.g, align 4, !tbaa !67
  %i.ez = mul nsw i64 %i.el, 3
  %i.fa = add nsw i64 %i.ez, -1
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIiEEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj1EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 dereferenceable(4) %i.g, i64 %i.fa, ptr null, i64 0, ptr noundef null)
  %i.fb = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.fc = load ptr, ptr %1, align 8, !tbaa !89
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 2
  %i.fh = mul nsw i64 %i.fg, 3
  %i.fi = add nsw i64 %i.fh, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i32 3, ptr %i.h, align 4, !tbaa !67
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fi, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.fj = load i64, ptr %i.ac, align 8, !tbaa !69 ; 7 uses
  %i.fk = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.fl = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 2
  %.not.i236 = icmp eq i64 %i.fj, %i.fp
  br i1 %.not.i236, label %bb.q, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit244

bb.q:                                             ; preds = %.loopexit463
  %i.fq = load ptr, ptr %0, align 8, !tbaa !65, !noalias !1071 ; 4 uses
  %.idx.i238 = shl nsw i64 %i.fj, 2
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 %.idx.i238
  %.not2324.i239 = icmp eq i64 %i.fj, 0
  br i1 %.not2324.i239, label %.loopexit462, label %.lr.ph.i240

.lr.ph.i240:                                      ; preds = %bb.q, %bb.r
  %.sroa.019.026.i241 = phi ptr [ %i.fv, %bb.r ], [ %i.fq, %bb.q ] ; 2 uses
  %.sroa.015.025.i242 = phi ptr [ %i.fw, %bb.r ], [ %i.fl, %bb.q ] ; 2 uses
  %i.fs = load i32, ptr %.sroa.019.026.i241, align 4, !tbaa !67
  %i.ft = load i32, ptr %.sroa.015.025.i242, align 4, !tbaa !67
  %i.fu = icmp eq i32 %i.fs, %i.ft
  br i1 %i.fu, label %bb.r, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit244

bb.r:                                             ; preds = %.lr.ph.i240
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i241, i64 4 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i242, i64 4
  %.not23.i243 = icmp eq ptr %i.fv, %i.fr
  br i1 %.not23.i243, label %.loopexit462, label %.lr.ph.i240, !llvm.loop !1

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit244: ; preds = %.lr.ph.i240, %.loopexit463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit462:                                     ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertISt14_List_iteratorIiEEENS0_12vec_iteratorIPiLb0EEENSA_ISB_Lb1EEET_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENS0_3dtl17is_input_iteratorISE_Xsr21has_iterator_categoryISE_EE5valueEEENSF_5bool_ILb0EEESN_E4typeE:bb.a
  br i1 %i.cd, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i

.lr.ph.i.i40.i.i.i.i:                             ; preds = %.lr.ph.i.i40.i.i.i.i.prol.loopexit, %.lr.ph.i.i40.i.i.i.i
  %.09.i.i41.i.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i40.i.i.i.i ], [ %.09.i.i41.i.i.i.i.unr, %.lr.ph.i.i40.i.i.i.i.prol.loopexit ]
  %.048.i.i42.i.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i40.i.i.i.i ], [ %.048.i.i42.i.i.i.i.unr, %.lr.ph.i.i40.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i43.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i40.i.i.i.i ], [ %.sroa.0.07.i.i43.i.i.i.i.unr, %.lr.ph.i.i40.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i.i.i.i, i64 16
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !67, !noalias !1185
  store i32 %i.cf, ptr %.048.i.i42.i.i.i.i, align 4, !tbaa !67, !noalias !1185
  %i.cg = load ptr, ptr %.sroa.0.07.i.i43.i.i.i.i, align 8, !tbaa !187, !noalias !1185 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.048.i.i42.i.i.i.i, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !67, !noalias !1185
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !67, !noalias !1185
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !187, !noalias !1185 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.048.i.i42.i.i.i.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !67, !noalias !1185
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !67, !noalias !1185
  %i.co = load ptr, ptr %i.ck, align 8, !tbaa !187, !noalias !1185 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.048.i.i42.i.i.i.i, i64 12
  %i.cq = add i64 %.09.i.i41.i.i.i.i, -4          ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !67, !noalias !1185
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !67, !noalias !1185
  %i.ct = load ptr, ptr %i.co, align 8, !tbaa !187, !noalias !1185 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i42.i.i.i.i, i64 16
  %.not.i.i44.i.i.i.i.3 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i44.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i, !llvm.loop !1181

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i: ; preds = %.lr.ph.i.i40.i.i.i.i, %.lr.ph.i.i40.i.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i40.i.i.i.i.prol.loopexit ], [ %i.ct, %.lr.ph.i.i40.i.i.i.i ] ; 2 uses
  %i.cv = sub i64 %.0.lcssa.i.i9, %i.ar           ; 3 uses
  %xtraiter34 = and i64 %i.cv, 3                  ; 2 uses
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i48.i.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.i.prol

.lr.ph.i.i48.i.i.i.i.prol:                        ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i, %.lr.ph.i.i48.i.i.i.i.prol
  %.018.i.i.i.i.i.i.prol = phi i64 [ %i.da, %.lr.ph.i.i48.i.i.i.i.prol ], [ %i.cv, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i ]
  %.01417.i.i.i.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i48.i.i.i.i.prol ], [ %i.p, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i ] ; 3 uses
  %.sroa.0.016.i.i.i.i.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i48.i.i.i.i.prol ], [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i ] ; 2 uses
  %prol.iter36 = phi i64 [ %prol.iter36.next, %.lr.ph.i.i48.i.i.i.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i.prol) ]
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !67, !noalias !1185
  store i32 %i.cx, ptr %.01417.i.i.i.i.i.i.prol, align 4, !tbaa !67, !noalias !1185
  %i.cy = load ptr, ptr %.sroa.0.016.i.i.i.i.i.i.prol, align 8, !tbaa !187, !noalias !1185 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.da = add i64 %.018.i.i.i.i.i.i.prol, -1      ; 2 uses
  %prol.iter36.next = add i64 %prol.iter36, 1     ; 2 uses
  %prol.iter36.cmp.not = icmp eq i64 %prol.iter36.next, %xtraiter34
  br i1 %prol.iter36.cmp.not, label %.lr.ph.i.i48.i.i.i.i.prol.loopexit, label %.lr.ph.i.i48.i.i.i.i.prol, !llvm.loop !1183

.lr.ph.i.i48.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i48.i.i.i.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i
  %.018.i.i.i.i.i.i.unr = phi i64 [ %i.cv, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i ], [ %i.da, %.lr.ph.i.i48.i.i.i.i.prol ]
  %.01417.i.i.i.i.i.i.unr = phi ptr [ %i.p, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i ], [ %i.cz, %.lr.ph.i.i48.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.i.i.unr = phi ptr [ %.lcssa, %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS6_T_m.exit46.i.i.i.i ], [ %i.cy, %.lr.ph.i.i48.i.i.i.i.prol ]
  %i.db = sub i64 %i.ar, %.0.lcssa.i.i9
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i48.i.i.i.i

.lr.ph.i.i48.i.i.i.i:                             ; preds = %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i
  %.018.i.i.i.i.i.i = phi i64 [ %i.dt, %.lr.ph.i.i48.i.i.i.i ], [ %.018.i.i.i.i.i.i.unr, %.lr.ph.i.i48.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i48.i.i.i.i ], [ %.01417.i.i.i.i.i.i.unr, %.lr.ph.i.i48.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i48.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.i.i.unr, %.lr.ph.i.i48.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.i.i) ]
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !67, !noalias !1185
  store i32 %i.de, ptr %.01417.i.i.i.i.i.i, align 4, !tbaa !67, !noalias !1185
  %i.df = load ptr, ptr %.sroa.0.016.i.i.i.i.i.i, align 8, !tbaa !187, !noalias !1185 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !67, !noalias !1185
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !67, !noalias !1185
  %i.dj = load ptr, ptr %i.df, align 8, !tbaa !187, !noalias !1185 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !67, !noalias !1185
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !67, !noalias !1185
  %i.dn = load ptr, ptr %i.dj, align 8, !tbaa !187, !noalias !1185 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !67, !noalias !1185
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !67, !noalias !1185
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !187, !noalias !1185
  %i.ds = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.i.i, i64 16
  %i.dt = add i64 %.018.i.i.i.i.i.i, -4           ; 2 uses
  %.not.i.i49.i.i.i.i.3 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i49.i.i.i.i.3, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, label %.lr.ph.i.i48.i.i.i.i, !llvm.loop !9

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i48.i.i.i.i.prol.loopexit, %.lr.ph.i.i48.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.d, %bb.c
  %.0.lcssa.i.i10 = phi i64 [ %.0.lcssa.i.i9, %.lr.ph.i.i48.i.i.i.i.prol.loopexit ], [ %.0.lcssa.i.i9, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ 0, %bb.d ], [ 0, %bb.c ], [ %.0.lcssa.i.i9, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa.i.i9, %.lr.ph.i.i48.i.i.i.i ], [ %.0.lcssa.i.i9, %.lr.ph.i.i.i.i.i.i ], [ %.0.lcssa.i.i9, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.du = load i64, ptr %i.m, align 8, !tbaa !79, !noalias !1185
  %i.dv = add i64 %i.du, %.0.lcssa.i.i10
  store i64 %i.dv, ptr %i.m, align 8, !tbaa !79, !noalias !1185
  %i.dw = load ptr, ptr %2, align 8, !tbaa !78, !noalias !1185
  store ptr %i.dw, ptr %0, align 8, !tbaa !145, !alias.scope !1185
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPiLb0EEERKSE_mT_.exit

bb.k:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  tail call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPiLb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.f, i64 noundef %i.d, ptr %3)
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPiLb0EEERKSE_mT_.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPiLb0EEERKSE_mT_.exit: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignISt14_List_iteratorIiEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj1EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %1, %2
  br i1 %.not4.i.i, label %.thread35, label %.lr.ph.i.i

.thread35:                                        ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPiEEvRT_T0_mT1_m.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.b, %.lr.ph.i.i ], [ 0, %bb.a ] ; 6 uses
  %.sroa.02.05.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.b = add nuw i64 %.06.i.i, 1                  ; 11 uses
  %i.c = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !187 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %2
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !8

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %.not = icmp ult i64 %.06.i.i, %i.e
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.f = icmp samesign ugt i64 %.06.i.i, 2305843009213693950
  br i1 %i.f, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = shl nuw nsw i64 %i.b, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #25 ; 3 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = icmp eq ptr %i.k, %i.i
  br i1 %i.l, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = shl nuw nsw i64 %i.e, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.m) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit: ; preds = %bb.f, %bb.e, %bb.d
  store ptr %i.h, ptr %0, align 8, !tbaa !65
  store i64 %i.b, ptr %i.d, align 8, !tbaa !84
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit, %.lr.ph.i.i19
  %.015.i.i = phi ptr [ %i.r, %.lr.ph.i.i19 ], [ %i.h, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.q, %.lr.ph.i.i19 ], [ %1, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPim.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !67
  store i32 %i.p, ptr %.015.i.i, align 4, !tbaa !67
  %i.q = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !187 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.q, %2
  br i1 %.not.i.i20, label %bb.g, label %.lr.ph.i.i19, !llvm.loop !1187

bb.g:                                             ; preds = %.lr.ph.i.i19
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.h to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  store i64 %i.v, ptr %i.n, align 8, !tbaa !79
  br label %bb.j

bb.h:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !69   ; 8 uses
  %.not38 = icmp ugt i64 %i.y, %.06.i.i
  br i1 %.not38, label %.lr.ph.i18.i.preheader, label %bb.i

.lr.ph.i18.i.preheader:                           ; preds = %bb.h
  %xtraiter66 = and i64 %i.b, 3                   ; 2 uses
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol

.lr.ph.i18.i.prol:                                ; preds = %.lr.ph.i18.i.preheader, %.lr.ph.i18.i.prol
  %.09.i.i.prol = phi ptr [ %i.ad, %.lr.ph.i18.i.prol ], [ %i.w, %.lr.ph.i18.i.preheader ] ; 2 uses
  %.048.i.i.prol = phi i64 [ %i.z, %.lr.ph.i18.i.prol ], [ %i.b, %.lr.ph.i18.i.preheader ]
  %.sroa.0.07.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i18.i.prol ], [ %1, %.lr.ph.i18.i.preheader ] ; 2 uses
  %prol.iter68 = phi i64 [ %prol.iter68.next, %.lr.ph.i18.i.prol ], [ 0, %.lr.ph.i18.i.preheader ]
  %i.z = add i64 %.048.i.i.prol, -1               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !67
  store i32 %i.ab, ptr %.09.i.i.prol, align 4, !tbaa !67
  %i.ac = load ptr, ptr %.sroa.0.07.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 2 uses
  %prol.iter68.next = add i64 %prol.iter68, 1     ; 2 uses
  %prol.iter68.cmp.not = icmp eq i64 %prol.iter68.next, %xtraiter66
  br i1 %prol.iter68.cmp.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol, !llvm.loop !1188

.lr.ph.i18.i.prol.loopexit:                       ; preds = %.lr.ph.i18.i.prol, %.lr.ph.i18.i.preheader
  %.09.i.i.unr = phi ptr [ %i.w, %.lr.ph.i18.i.preheader ], [ %i.ad, %.lr.ph.i18.i.prol ]
  %.048.i.i.unr = phi i64 [ %i.b, %.lr.ph.i18.i.preheader ], [ %i.z, %.lr.ph.i18.i.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %1, %.lr.ph.i18.i.preheader ], [ %i.ac, %.lr.ph.i18.i.prol ]
  %i.ae = icmp ult i64 %.06.i.i, 3
  br i1 %i.ae, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i18.i

bb.i:                                             ; preds = %bb.h
  %.not4.i.i22 = icmp eq i64 %i.y, 0
  br i1 %.not4.i.i22, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23.preheader

.lr.ph.i.i23.preheader:                           ; preds = %bb.i
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol

.lr.ph.i.i23.prol:                                ; preds = %.lr.ph.i.i23.preheader, %.lr.ph.i.i23.prol
  %i.af = phi ptr [ %i.ak, %.lr.ph.i.i23.prol ], [ %i.w, %.lr.ph.i.i23.preheader ] ; 2 uses
  %.06.i.i24.prol = phi i64 [ %i.ag, %.lr.ph.i.i23.prol ], [ %i.y, %.lr.ph.i.i23.preheader ]
  %.sroa.0.05.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i23.prol ], [ %1, %.lr.ph.i.i23.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i23.prol ], [ 0, %.lr.ph.i.i23.preheader ]
  %i.ag = add i64 %.06.i.i24.prol, -1             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.prol, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !67
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !67
  %i.aj = load ptr, ptr %.sroa.0.05.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i23.prol.loopexit, label %.lr.ph.i.i23.prol, !llvm.loop !1189

.lr.ph.i.i23.prol.loopexit:                       ; preds = %.lr.ph.i.i23.prol, %.lr.ph.i.i23.preheader
  %.lcssa60.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader ], [ %i.aj, %.lr.ph.i.i23.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i23.preheader ], [ %i.ak, %.lr.ph.i.i23.prol ]
  %.unr = phi ptr [ %i.w, %.lr.ph.i.i23.preheader ], [ %i.ak, %.lr.ph.i.i23.prol ]
  %.06.i.i24.unr = phi i64 [ %i.y, %.lr.ph.i.i23.preheader ], [ %i.ag, %.lr.ph.i.i23.prol ]
  %.sroa.0.05.i.i.unr = phi ptr [ %1, %.lr.ph.i.i23.preheader ], [ %i.aj, %.lr.ph.i.i23.prol ]
  %i.al = icmp ult i64 %i.y, 4
  br i1 %i.al, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i.i23.prol.loopexit, %.lr.ph.i.i23
  %i.am = phi ptr [ %i.bd, %.lr.ph.i.i23 ], [ %.unr, %.lr.ph.i.i23.prol.loopexit ] ; 5 uses
  %.06.i.i24 = phi i64 [ %i.az, %.lr.ph.i.i23 ], [ %.06.i.i24.unr, %.lr.ph.i.i23.prol.loopexit ]
  %.sroa.0.05.i.i = phi ptr [ %i.bc, %.lr.ph.i.i23 ], [ %.sroa.0.05.i.i.unr, %.lr.ph.i.i23.prol.loopexit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !67
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !67
  %i.ap = load ptr, ptr %.sroa.0.05.i.i, align 8, !tbaa !187 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !67
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !67
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !187 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !67
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !67
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !187 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.az = add i64 %.06.i.i24, -4                  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !67
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !67
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !187 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %.not.i.i25.3 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i25.3, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, label %.lr.ph.i.i23, !llvm.loop !1190

_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i: ; preds = %.lr.ph.i.i23.prol.loopexit, %.lr.ph.i.i23, %bb.i
  %.0.i = phi ptr [ %i.w, %bb.i ], [ %.lcssa.unr, %.lr.ph.i.i23.prol.loopexit ], [ %i.bd, %.lr.ph.i.i23 ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %1, %bb.i ], [ %.lcssa60.unr, %.lr.ph.i.i23.prol.loopexit ], [ %i.bc, %.lr.ph.i.i23 ] ; 2 uses
  %i.be = sub i64 %i.b, %i.y                      ; 3 uses
  %i.bf = sub i64 %.06.i.i, %i.y
  %xtraiter63 = and i64 %i.be, 3                  ; 2 uses
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.lr.ph.i15.i.prol.loopexit, label %.lr.ph.i15.i.prol

.lr.ph.i15.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i, %.lr.ph.i15.i.prol
  %.018.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i15.i.prol ], [ %i.be, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ]
  %.01417.i.i.prol = phi ptr [ %i.bk, %.lr.ph.i15.i.prol ], [ %.0.i, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ] ; 3 uses
  %.sroa.0.016.i.i.prol = phi ptr [ %i.bj, %.lr.ph.i15.i.prol ], [ %.sroa.0.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ] ; 2 uses
  %prol.iter65 = phi i64 [ %prol.iter65.next, %.lr.ph.i15.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ]
  %i.bg = add i64 %.018.i.i.prol, -1              ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.prol) ]
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !67
  store i32 %i.bi, ptr %.01417.i.i.prol, align 4, !tbaa !67
  %i.bj = load ptr, ptr %.sroa.0.016.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01417.i.i.prol, i64 4 ; 2 uses
  %prol.iter65.next = add i64 %prol.iter65, 1     ; 2 uses
  %prol.iter65.cmp.not = icmp eq i64 %prol.iter65.next, %xtraiter63
  br i1 %prol.iter65.cmp.not, label %.lr.ph.i15.i.prol.loopexit, label %.lr.ph.i15.i.prol, !llvm.loop !1191

.lr.ph.i15.i.prol.loopexit:                       ; preds = %.lr.ph.i15.i.prol, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i
  %.018.i.i.unr = phi i64 [ %i.be, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ], [ %i.bg, %.lr.ph.i15.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ], [ %i.bk, %.lr.ph.i15.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPiEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES7_mRS8_.exit.i ], [ %i.bj, %.lr.ph.i15.i.prol ]
  %i.bl = icmp ult i64 %i.bf, 3
  br i1 %i.bl, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i
  %.018.i.i = phi i64 [ %i.by, %.lr.ph.i15.i ], [ %.018.i.i.unr, %.lr.ph.i15.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.cc, %.lr.ph.i15.i ], [ %.01417.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i = phi ptr [ %i.cb, %.lr.ph.i15.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !67
  store i32 %i.bn, ptr %.01417.i.i, align 4, !tbaa !67
  %i.bo = load ptr, ptr %.sroa.0.016.i.i, align 8, !tbaa !187 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !67
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !67
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !187 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !67
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !67
  %i.bw = load ptr, ptr %i.bs, align 8, !tbaa !187 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 12
  %i.by = add i64 %.018.i.i, -4                   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !67
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !67
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !187
  %i.cc = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 16
  %.not.i16.i.3 = icmp eq i64 %i.by, 0
  br i1 %.not.i16.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i, !llvm.loop !1192

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i
  %.09.i.i = phi ptr [ %i.ct, %.lr.ph.i18.i ], [ %.09.i.i.unr, %.lr.ph.i18.i.prol.loopexit ] ; 5 uses
  %.048.i.i = phi i64 [ %i.cp, %.lr.ph.i18.i ], [ %.048.i.i.unr, %.lr.ph.i18.i.prol.loopexit ]
  %.sroa.0.07.i.i = phi ptr [ %i.cs, %.lr.ph.i18.i ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i18.i.prol.loopexit ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !67
  store i32 %i.ce, ptr %.09.i.i, align 4, !tbaa !67
  %i.cf = load ptr, ptr %.sroa.0.07.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !67
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !67
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !187 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !67
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !67
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !187 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.cp = add i64 %.048.i.i, -4                   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !67
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !67
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !187
  %i.ct = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %.not.i19.i.3 = icmp eq i64 %i.cp, 0
  br i1 %.not.i19.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i18.i, !llvm.loop !1193

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPiEEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i, %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i, %.thread35
  %i.cu = phi ptr [ %i.x, %.lr.ph.i18.i.prol.loopexit ], [ %i.a, %.thread35 ], [ %i.x, %.lr.ph.i18.i ], [ %i.x, %.lr.ph.i15.i ], [ %i.x, %.lr.ph.i15.i.prol.loopexit ]
  %.0.lcssa.i.i3133 = phi i64 [ %i.b, %.lr.ph.i18.i.prol.loopexit ], [ 0, %.thread35 ], [ %i.b, %.lr.ph.i18.i ], [ %i.b, %.lr.ph.i15.i ], [ %i.b, %.lr.ph.i15.i.prol.loopexit ]
  store i64 %.0.lcssa.i.i3133, ptr %i.cu, align 8, !tbaa !79
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPiEEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENSE_4and_INSE_12is_differentINSE_17integral_constantIjLj1EEENSK_IjLj0EEEEENS0_3dtl21is_not_input_iteratorISD_EENSE_5bool_ILb1EEESS_EENSR_ILb0EEESU_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !65, !noalias !1206 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !69, !noalias !1207 ; 3 uses
  %.idx = shl nsw i64 %i.c, 2
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.e = icmp ne ptr %1, %2
  %i.f = icmp ne i64 %i.c, 0
  %or.cond15 = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond15, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.011.017 = phi ptr [ %i.j, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.sroa.05.016 = phi ptr [ %i.i, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.011.017, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !67
  store i32 %i.h, ptr %.sroa.05.016, align 4, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.016, i64 4 ; 3 uses
  %i.j = load ptr, ptr %.sroa.011.017, align 8, !tbaa !187 ; 3 uses
  %i.k = icmp ne ptr %i.j, %2
  %i.l = icmp ne ptr %i.i, %i.d
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !1198

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.sroa.05.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.i, %.lr.ph ]
  %.sroa.011.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.m = icmp eq ptr %.sroa.011.0.lcssa, %2
  br i1 %i.m, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %.critedge
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = ptrtoint ptr %.sroa.05.0.lcssa to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2
  %i.r = sub i64 %i.c, %i.q
  store i64 %i.r, ptr %i.b, align 8, !tbaa !79
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEENS0_12vec_iteratorIPiLb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl21is_not_input_iteratorISH_EENSI_5bool_ILb0EEESQ_E4typeE.exit

.lr.ph.i:                                         ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE7emplaceIJRiEEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEEDpOT_.exit.i, %.lr.ph.i
  %.sroa.05.010.i = phi ptr [ %.sroa.011.0.lcssa, %.lr.ph.i ], [ %i.ap, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE7emplaceIJRiEEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEEDpOT_.exit.i ] ; 2 uses
  %.sroa.01.09.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.ao, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE7emplaceIJRiEEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEEDpOT_.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !1208
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.s, align 8, !tbaa !66, !noalias !1209
  %i.v = load i64, ptr %i.b, align 8, !tbaa !69, !noalias !1209 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.u, %i.v
  br i1 %.not.i.i.i, label %bb.h, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !65, !noalias !1209 ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.v ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %.sroa.01.09.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.y = load i32, ptr %i.t, align 4, !tbaa !67, !noalias !1209
  store i32 %i.y, ptr %i.x, align 4, !tbaa !67, !noalias !1209
  %i.z = add i64 %i.v, 1
  store i64 %i.z, ptr %i.b, align 8, !tbaa !69, !noalias !1209
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE7emplaceIJRiEEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEEDpOT_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %.sroa.01.09.i to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.ab, %i.aa
  %i.ad = ashr exact i64 %i.ac, 2                 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !67, !noalias !1209
  store i32 %i.af, ptr %i.x, align 4, !tbaa !67, !noalias !1209
  %i.ag = add i64 %i.v, 1
  store i64 %i.ag, ptr %i.b, align 8, !tbaa !69, !noalias !1209
  %i.ah = add nsw i64 %i.ad, -1                   ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i.i, label %bb.g, !prof !74

bb.g:                                             ; preds = %bb.f
  %i.ai = sub nsw i64 1, %i.ad                    ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ai
  %i.al = shl i64 %i.ah, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.ak, i64 %i.al, i1 false), !noalias !1209
  br label %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i.i

_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.am = load i32, ptr %i.t, align 4, !tbaa !67, !noalias !1209
  store i32 %i.am, ptr %.sroa.01.09.i, align 4, !tbaa !67, !noalias !1209
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE7emplaceIJRiEEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEEDpOT_.exit.i

bb.h:                                             ; preds = %bb.c
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JRiEEEEENS0_12vec_iteratorIPiLb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.sroa.01.09.i, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.t), !noalias !1208
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !78, !noalias !1208
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE7emplaceIJRiEEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEEDpOT_.exit.i

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE7emplaceIJRiEEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEEDpOT_.exit.i: ; preds = %bb.h, %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i.i, %bb.e
  %i.an = phi ptr [ %.pre.i, %bb.h ], [ %.sroa.01.09.i, %_ZN5boost9container15move_backward_nIPiS2_EENS0_3dtl37enable_if_memtransfer_copy_assignableIT_T0_S6_E4typeES5_mS6_.exit.i.i.i.i ], [ %.sroa.01.09.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !1208
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load ptr, ptr %.sroa.05.010.i, align 8, !tbaa !187, !noalias !1208 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, %2
  br i1 %.not.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEENS0_12vec_iteratorIPiLb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl21is_not_input_iteratorISH_EENSI_5bool_ILb0EEESQ_E4typeE.exit, label %bb.c, !llvm.loop !1205

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEENS0_12vec_iteratorIPiLb0EEENSD_ISE_Lb1EEET_SH_PNS_11move_detail13disable_if_orIvNSI_14is_convertibleISH_mEENS0_3dtl21is_not_input_iteratorISH_EENSI_5bool_ILb0EEESQ_E4typeE.exit: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE7emplaceIJRiEEENS0_12vec_iteratorIPiLb0EEENS9_ISA_Lb1EEEDpOT_.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20vector_capacity_testINS0_12small_vectorIiLm0EvvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %3 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %5 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::small_vector.28", align 8 ; 12 uses
  %7 = alloca %"class.boost::container::small_vector.28", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = shl i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE7reserveEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %bb.c, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i: ; preds = %bb.b
  %i.h = shl i64 %i.b, 3
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !65     ; 5 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  %i.m = icmp ne ptr %i.j, null                   ; 2 uses
  %spec.select.i.i.i.i.i.i = and i1 %i.m, %i.l
  br i1 %spec.select.i.i.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i.i, !prof !172

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i
  %.idx.i.i = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 4 %i.j, i64 %.idx.i.i, i1 false)
  %.old.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.old4.i.i = icmp eq ptr %.old.i.i, %i.j
  br i1 %.old4.i.i, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i, label %bb.d

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = icmp ne ptr %i.n, %i.j
  %or.cond.not.i.i = select i1 %i.m, i1 %i.o, i1 false
  br i1 %or.cond.not.i.i, label %bb.d, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i

bb.d:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i.i
  %i.p = load i64, ptr %i.d, align 8, !tbaa !66
  %i.q = shl i64 %i.p, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.q) #22
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i: ; preds = %bb.d, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_NS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIS6_EEEEEEvRT_T0_SE_SE_T1_mT2_.exit.i.thread.i.i
  store ptr %i.i, ptr %0, align 8, !tbaa !65
  store i64 %i.c, ptr %i.d, align 8, !tbaa !84
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE7reserveEm.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE7reserveEm.exit: ; preds = %bb.a, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !91   ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = ashr exact i64 %i.w, 1                   ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test20vector_copyable_onlyINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.aw = load i64, ptr %i.ac, align 8, !tbaa !79, !noalias !1927
  %i.ax = add i64 %i.aw, 50
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !79, !noalias !1927
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.af, i64 noundef 50, ptr nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit: ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 19 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 1, ptr %i.b, align 4, !tbaa !67
  %i.ba = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.be, i64 noundef 50, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.bf = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.bg = load i64, ptr %i.ac, align 8, !tbaa !69 ; 5 uses
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 2
  %.not.i = icmp eq i64 %i.bg, %i.bl
  br i1 %.not.i, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit
  %i.bm = load ptr, ptr %0, align 8, !tbaa !65, !noalias !76 ; 5 uses
  %.idx.i = shl nsw i64 %i.bg, 2                  ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i ; 9 uses
  %.not2324.i = icmp eq i64 %i.bg, 0
  br i1 %.not2324.i, label %thread-pre-split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.019.026.i = phi ptr [ %i.br, %bb.d ], [ %i.bm, %bb.c ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.bs, %bb.d ], [ %i.bf, %bb.c ] ; 2 uses
  %i.bo = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !67
  %i.bp = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !67
  %i.bq = icmp eq i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.d, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp eq ptr %i.br, %i.bn
  br i1 %.not23.i, label %thread-pre-split, label %.lr.ph.i, !llvm.loop !2

thread-pre-split:                                 ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !67
  %i.bt = lshr i64 %i.ad, 1                       ; 3 uses
  %.idx444 = shl nuw nsw i64 %i.bt, 2             ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx444 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bv = load i64, ptr %i.ag, align 8, !tbaa !66, !noalias !1928
  %i.bw = sub i64 %i.bv, %i.bg
  %.not.i.i189 = icmp ult i64 %i.bw, 50
  br i1 %.not.i.i189, label %bb.l, label %bb.e, !prof !74

bb.e:                                             ; preds = %thread-pre-split
  %i.bx = icmp samesign eq i64 %i.bg, %i.bt
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i213.preheader, label %bb.f

.lr.ph.i.i.i.i.i.i213.preheader:                  ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  store i32 1, ptr %i.bn, align 4, !tbaa !67, !noalias !1928
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split

bb.f:                                             ; preds = %bb.e
  %gepdiff = sub nsw i64 %.idx.i, %.idx444        ; 3 uses
  %i.by = ashr exact i64 %gepdiff, 2              ; 7 uses
  %.not.i.i.i.i.i190 = icmp ult i64 %i.by, 50
  %.not14.i.i.i.i200 = icmp eq ptr %i.bm, null    ; 2 uses
  br i1 %.not.i.i.i.i.i190, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not14.i.i.i.i200, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192, label %bb.h, !prof !83

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds i8, ptr %i.bn, i64 -200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(200) %i.bn, ptr noundef nonnull align 1 dereferenceable(200) %i.bz, i64 200, i1 false), !noalias !1928
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192: ; preds = %bb.h, %bb.g
  %i.ca = add nsw i64 %.idx.i, -200
  %.not.i.i10.i.i.i.i193 = icmp eq i64 %i.ca, %.idx444
  br i1 %.not.i.i10.i.i.i.i193, label %.lr.ph.i.i11.i.i.i.i194, label %bb.i, !prof !74

bb.i:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192
  %gepdiff445 = add i64 %gepdiff, -200            ; 2 uses
  %i.cb = ashr exact i64 %gepdiff445, 2
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.cc
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cd, ptr align 4 %i.bu, i64 %gepdiff445, i1 false), !noalias !1928
  %.pre.i.i12.i.i.i.i195.pre = load i32, ptr %i.c, align 4, !tbaa !67, !noalias !1928
  br label %.lr.ph.i.i11.i.i.i.i194

.lr.ph.i.i11.i.i.i.i194:                          ; preds = %bb.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192
  %.pre.i.i12.i.i.i.i195 = phi i32 [ %.pre.i.i12.i.i.i.i195.pre, %bb.i ], [ 1, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192 ] ; 2 uses
  store i32 %.pre.i.i12.i.i.i.i195, ptr %i.bu, align 4, !tbaa !67, !noalias !1928
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split

bb.j:                                             ; preds = %bb.f
  br i1 %.not14.i.i.i.i200, label %.lr.ph.i39.i.i.i.i.i201, label %bb.k, !prof !74

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull align 4 %i.bu, i64 %gepdiff, i1 false), !noalias !1928
  %.pre.i40.i.i.i.i.i202.pre = load i32, ptr %i.c, align 4, !tbaa !67, !noalias !1928
  br label %.lr.ph.i39.i.i.i.i.i201

.lr.ph.i39.i.i.i.i.i201:                          ; preds = %bb.k, %bb.j
  %.pre.i40.i.i.i.i.i202 = phi i32 [ %.pre.i40.i.i.i.i.i202.pre, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i39.i.i.i.i.i201
  %n.vec = and i64 %i.by, 56                      ; 3 uses
  %i.cf = and i64 %i.by, 7
  %i.cg = shl nuw nsw i64 %n.vec, 2
  %i.ch = getelementptr i8, ptr %i.bu, i64 %i.cg
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i40.i.i.i.i.i202, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bu, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !67, !noalias !1928
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 4, !tbaa !67, !noalias !1928
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !1852

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i39.i.i.i.i.i201, %middle.block
  %.07.i41.i.i.i.i.i203.ph = phi i64 [ %i.by, %.lr.ph.i39.i.i.i.i.i201 ], [ %i.cf, %middle.block ]
  %.046.i42.i.i.i.i.i204.ph = phi ptr [ %i.bu, %.lr.ph.i39.i.i.i.i.i201 ], [ %i.ch, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i41.i.i.i.i.i203 = phi i64 [ %i.cl, %scalar.ph ], [ %.07.i41.i.i.i.i.i203.ph, %scalar.ph.preheader ]
  %.046.i42.i.i.i.i.i204 = phi ptr [ %i.cm, %scalar.ph ], [ %.046.i42.i.i.i.i.i204.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cl = add i64 %.07.i41.i.i.i.i.i203, -1       ; 2 uses
  store i32 %.pre.i40.i.i.i.i.i202, ptr %.046.i42.i.i.i.i.i204, align 4, !tbaa !67, !noalias !1928
  %i.cm = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i204, i64 4
  %.not.i43.i.i.i.i.i205 = icmp eq i64 %i.cl, 0
  br i1 %.not.i43.i.i.i.i.i205, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206, label %scalar.ph, !llvm.loop !1853

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206: ; preds = %scalar.ph, %middle.block
  %i.cn = sub nsw i64 50, %i.by                   ; 5 uses
  %.pre.i.i.i.i.i.i.i207 = load i32, ptr %i.c, align 4, !tbaa !67, !noalias !1928 ; 2 uses
  %min.iters.check647 = icmp ult i64 %i.cn, 8
  br i1 %min.iters.check647, label %.lr.ph.i.i.i.i.i.i.i208.preheader, label %vector.ph648

vector.ph648:                                     ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206
  %n.vec649 = and i64 %i.cn, -8                   ; 3 uses
  %i.co = and i64 %i.cn, 7
  %i.cp = shl i64 %n.vec649, 2
  %i.cq = getelementptr i8, ptr %i.bn, i64 %i.cp
  %broadcast.splatinsert650 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i.i207, i64 0
  %broadcast.splat651 = shufflevector <4 x i32> %broadcast.splatinsert650, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body652

vector.body652:                                   ; preds = %vector.body652, %vector.ph648
  %index653 = phi i64 [ 0, %vector.ph648 ], [ %index.next662, %vector.body652 ] ; 2 uses
  %i.cr = shl i64 %index653, 2
  %next.gep654 = getelementptr i8, ptr %i.bn, i64 %i.cr ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep654) ]
  %i.cs = getelementptr i8, ptr %next.gep654, i64 16
  store <4 x i32> %broadcast.splat651, ptr %next.gep654, align 4, !tbaa !67, !noalias !1928
  store <4 x i32> %broadcast.splat651, ptr %i.cs, align 4, !tbaa !67, !noalias !1928
  %index.next662 = add nuw i64 %index653, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next662, %n.vec649
  br i1 %i.ct, label %middle.block663, label %vector.body652, !llvm.loop !1854

middle.block663:                                  ; preds = %vector.body652
  %cmp.n664 = icmp eq i64 %i.cn, %n.vec649
  br i1 %cmp.n664, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199, label %.lr.ph.i.i.i.i.i.i.i208.preheader

.lr.ph.i.i.i.i.i.i.i208.preheader:                ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206, %middle.block663
  %.017.i.i.i.i.i.i.i209.ph = phi i64 [ %i.cn, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206 ], [ %i.co, %middle.block663 ]
  %.01416.i.i.i.i.i.i.i210.ph = phi ptr [ %i.bn, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206 ], [ %i.cq, %middle.block663 ]
  br label %.lr.ph.i.i.i.i.i.i.i208

.lr.ph.i.i.i.i.i.i.i208:                          ; preds = %.lr.ph.i.i.i.i.i.i.i208.preheader, %.lr.ph.i.i.i.i.i.i.i208
  %.017.i.i.i.i.i.i.i209 = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i.i.i208 ], [ %.017.i.i.i.i.i.i.i209.ph, %.lr.ph.i.i.i.i.i.i.i208.preheader ]
  %.01416.i.i.i.i.i.i.i210 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i208 ], [ %.01416.i.i.i.i.i.i.i210.ph, %.lr.ph.i.i.i.i.i.i.i208.preheader ] ; 3 uses
  %i.cu = add i64 %.017.i.i.i.i.i.i.i209, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i.i210) ]
  store i32 %.pre.i.i.i.i.i.i.i207, ptr %.01416.i.i.i.i.i.i.i210, align 4, !tbaa !67, !noalias !1928
  %i.cv = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i210, i64 4
  %.not.i.i45.i.i.i.i.i211 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i45.i.i.i.i.i211, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199, label %.lr.ph.i.i.i.i.i.i.i208, !llvm.loop !1855

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split: ; preds = %.lr.ph.i.i.i.i.i.i213.preheader, %.lr.ph.i.i11.i.i.i.i194
  %.sink639 = phi ptr [ %i.bu, %.lr.ph.i.i11.i.i.i.i194 ], [ %i.bn, %.lr.ph.i.i.i.i.i.i213.preheader ] ; 13 uses
  %.pre.i.i12.i.i.i.i195.sink638 = phi i32 [ %.pre.i.i12.i.i.i.i195, %.lr.ph.i.i11.i.i.i.i194 ], [ 1, %.lr.ph.i.i.i.i.i.i213.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sink639, i64 4
  %i.cx = insertelement <4 x i32> poison, i32 %.pre.i.i12.i.i.i.i195.sink638, i64 0
  %i.cy = shufflevector <4 x i32> %i.cx, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  store <4 x i32> %i.cy, ptr %i.cw, align 4, !tbaa !67, !noalias !1928
  %i.cz = getelementptr inbounds nuw i8, ptr %.sink639, i64 20
  store <4 x i32> %i.cy, ptr %i.cz, align 4, !tbaa !67, !noalias !1928
  %i.da = getelementptr inbounds nuw i8, ptr %.sink639, i64 36
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !67, !noalias !1928
  %i.db = getelementptr inbounds nuw i8, ptr %.sink639, i64 52
  store <4 x i32> %i.cy, ptr %i.db, align 4, !tbaa !67, !noalias !1928
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink639, i64 68
  store <4 x i32> %i.cy, ptr %i.dc, align 4, !tbaa !67, !noalias !1928
  %i.dd = getelementptr inbounds nuw i8, ptr %.sink639, i64 84
  store <4 x i32> %i.cy, ptr %i.dd, align 4, !tbaa !67, !noalias !1928
  %i.de = getelementptr inbounds nuw i8, ptr %.sink639, i64 100
  store <4 x i32> %i.cy, ptr %i.de, align 4, !tbaa !67, !noalias !1928
  %i.df = getelementptr inbounds nuw i8, ptr %.sink639, i64 116
  store <4 x i32> %i.cy, ptr %i.df, align 4, !tbaa !67, !noalias !1928
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink639, i64 132
  store <4 x i32> %i.cy, ptr %i.dg, align 4, !tbaa !67, !noalias !1928
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink639, i64 148
  store <4 x i32> %i.cy, ptr %i.dh, align 4, !tbaa !67, !noalias !1928
  %i.di = getelementptr inbounds nuw i8, ptr %.sink639, i64 164
  store <4 x i32> %i.cy, ptr %i.di, align 4, !tbaa !67, !noalias !1928
  %i.dj = getelementptr inbounds nuw i8, ptr %.sink639, i64 180
  store <4 x i32> %i.cy, ptr %i.dj, align 4, !tbaa !67, !noalias !1928
  %i.dk = getelementptr inbounds nuw i8, ptr %.sink639, i64 196
  store i32 %.pre.i.i12.i.i.i.i195.sink638, ptr %i.dk, align 4, !tbaa !67, !noalias !1928
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199: ; preds = %.lr.ph.i.i.i.i.i.i.i208, %middle.block663, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split
  %i.dl = load i64, ptr %i.ac, align 8, !tbaa !79, !noalias !1928
  %i.dm = add i64 %i.dl, 50
  store i64 %i.dm, ptr %i.ac, align 8, !tbaa !79, !noalias !1928
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217

bb.l:                                             ; preds = %thread-pre-split
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bu, i64 noundef 50, ptr nonnull align 4 dereferenceable(4) %i.c)
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.dn = load ptr, ptr %1, align 8, !tbaa !78
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 1, ptr %i.d, align 4, !tbaa !67
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.do, i64 noundef 50, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.dp = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.dq = load i64, ptr %i.ac, align 8, !tbaa !69 ; 4 uses
  %i.dr = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %.not.i218 = icmp eq i64 %i.dq, %i.dv
  br i1 %.not.i218, label %bb.m, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit226

bb.m:                                             ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217
  %i.dw = load ptr, ptr %0, align 8, !tbaa !65, !noalias !1929 ; 2 uses
  %.idx.i220 = shl nsw i64 %i.dq, 2
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %.idx.i220
  %.not2324.i221 = icmp eq i64 %i.dq, 0
  br i1 %.not2324.i221, label %.loopexit464, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.m, %bb.n
  %.sroa.019.026.i223 = phi ptr [ %i.eb, %bb.n ], [ %i.dw, %bb.m ] ; 2 uses
  %.sroa.015.025.i224 = phi ptr [ %i.ec, %bb.n ], [ %i.dp, %bb.m ] ; 2 uses
  %i.dy = load i32, ptr %.sroa.019.026.i223, align 4, !tbaa !67
  %i.dz = load i32, ptr %.sroa.015.025.i224, align 4, !tbaa !67
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.n, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit226

bb.n:                                             ; preds = %.lr.ph.i222
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i223, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i224, i64 4
  %.not23.i225 = icmp eq ptr %i.eb, %i.dx
  br i1 %.not23.i225, label %.loopexit464, label %.lr.ph.i222, !llvm.loop !2

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit226: ; preds = %.lr.ph.i222, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit464:                                     ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 2, ptr %i.e, align 4, !tbaa !67
  %i.ed = lshr i64 %i.dq, 1
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIiEEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj1EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 dereferenceable(4) %i.e, i64 %i.ed, ptr null, i64 0, ptr noundef null)
  %i.ee = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.ef = load ptr, ptr %1, align 8, !tbaa !89
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 2
  %i.ek = lshr i64 %i.ej, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 2, ptr %i.f, align 4, !tbaa !67
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ek, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.el = load i64, ptr %i.ac, align 8, !tbaa !69 ; 4 uses
  %i.em = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.en = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 2
  %.not.i227 = icmp eq i64 %i.el, %i.er
  br i1 %.not.i227, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235

bb.o:                                             ; preds = %.loopexit464
  %i.es = load ptr, ptr %0, align 8, !tbaa !65, !noalias !1930 ; 2 uses
  %.idx.i229 = shl nsw i64 %i.el, 2
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %.idx.i229
  %.not2324.i230 = icmp eq i64 %i.el, 0
  br i1 %.not2324.i230, label %.loopexit463, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %bb.o, %bb.p
  %.sroa.019.026.i232 = phi ptr [ %i.ex, %bb.p ], [ %i.es, %bb.o ] ; 2 uses
  %.sroa.015.025.i233 = phi ptr [ %i.ey, %bb.p ], [ %i.en, %bb.o ] ; 2 uses
  %i.eu = load i32, ptr %.sroa.019.026.i232, align 4, !tbaa !67
  %i.ev = load i32, ptr %.sroa.015.025.i233, align 4, !tbaa !67
  %i.ew = icmp eq i32 %i.eu, %i.ev
  br i1 %i.ew, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235

bb.p:                                             ; preds = %.lr.ph.i231
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i232, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i233, i64 4
  %.not23.i234 = icmp eq ptr %i.ex, %i.et
  br i1 %.not23.i234, label %.loopexit463, label %.lr.ph.i231, !llvm.loop !2

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235: ; preds = %.lr.ph.i231, %.loopexit464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit463:                                     ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i32 3, ptr %i.g, align 4, !tbaa !67
  %i.ez = mul nsw i64 %i.el, 3
  %i.fa = add nsw i64 %i.ez, -1
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIiEEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj1EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 dereferenceable(4) %i.g, i64 %i.fa, ptr null, i64 0, ptr noundef null)
  %i.fb = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.fc = load ptr, ptr %1, align 8, !tbaa !89
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 2
  %i.fh = mul nsw i64 %i.fg, 3
  %i.fi = add nsw i64 %i.fh, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i32 3, ptr %i.h, align 4, !tbaa !67
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fi, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.fj = load i64, ptr %i.ac, align 8, !tbaa !69 ; 7 uses
  %i.fk = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.fl = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 2
  %.not.i236 = icmp eq i64 %i.fj, %i.fp
  br i1 %.not.i236, label %bb.q, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit244

bb.q:                                             ; preds = %.loopexit463
  %i.fq = load ptr, ptr %0, align 8, !tbaa !65, !noalias !1931 ; 4 uses
  %.idx.i238 = shl nsw i64 %i.fj, 2
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 %.idx.i238
  %.not2324.i239 = icmp eq i64 %i.fj, 0
  br i1 %.not2324.i239, label %.loopexit462, label %.lr.ph.i240

.lr.ph.i240:                                      ; preds = %bb.q, %bb.r
  %.sroa.019.026.i241 = phi ptr [ %i.fv, %bb.r ], [ %i.fq, %bb.q ] ; 2 uses
  %.sroa.015.025.i242 = phi ptr [ %i.fw, %bb.r ], [ %i.fl, %bb.q ] ; 2 uses
  %i.fs = load i32, ptr %.sroa.019.026.i241, align 4, !tbaa !67
  %i.ft = load i32, ptr %.sroa.015.025.i242, align 4, !tbaa !67
  %i.fu = icmp eq i32 %i.fs, %i.ft
  br i1 %i.fu, label %bb.r, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit244

bb.r:                                             ; preds = %.lr.ph.i240
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i241, i64 4 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i242, i64 4
  %.not23.i243 = icmp eq ptr %i.fv, %i.fr
  br i1 %.not23.i243, label %.loopexit462, label %.lr.ph.i240, !llvm.loop !2

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit244: ; preds = %.lr.ph.i240, %.loopexit463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm2000EvvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit462:                                     ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test20vector_copyable_onlyINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.aw = load i64, ptr %i.ac, align 8, !tbaa !79, !noalias !2575
  %i.ax = add i64 %i.aw, 50
  store i64 %i.ax, ptr %i.ac, align 8, !tbaa !79, !noalias !2575
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit

bb.b:                                             ; preds = %bb.a
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.af, i64 noundef 50, ptr nonnull align 4 dereferenceable(4) %i.a)
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit: ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 19 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 1, ptr %i.b, align 4, !tbaa !67
  %i.ba = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.be, i64 noundef 50, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.bf = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.bg = load i64, ptr %i.ac, align 8, !tbaa !69 ; 5 uses
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 2
  %.not.i = icmp eq i64 %i.bg, %i.bl
  br i1 %.not.i, label %bb.c, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.c:                                             ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit
  %i.bm = load ptr, ptr %0, align 8, !tbaa !65, !noalias !76 ; 5 uses
  %.idx.i = shl nsw i64 %i.bg, 2                  ; 3 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %.idx.i ; 9 uses
  %.not2324.i = icmp eq i64 %i.bg, 0
  br i1 %.not2324.i, label %thread-pre-split, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.019.026.i = phi ptr [ %i.br, %bb.d ], [ %i.bm, %bb.c ] ; 2 uses
  %.sroa.015.025.i = phi ptr [ %i.bs, %bb.d ], [ %i.bf, %bb.c ] ; 2 uses
  %i.bo = load i32, ptr %.sroa.019.026.i, align 4, !tbaa !67
  %i.bp = load i32, ptr %.sroa.015.025.i, align 4, !tbaa !67
  %i.bq = icmp eq i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.d, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i, i64 4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i, i64 4
  %.not23.i = icmp eq ptr %i.br, %i.bn
  br i1 %.not23.i, label %thread-pre-split, label %.lr.ph.i, !llvm.loop !20

thread-pre-split:                                 ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !67
  %i.bt = lshr i64 %i.ad, 1                       ; 3 uses
  %.idx444 = shl nuw nsw i64 %i.bt, 2             ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx444 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bv = load i64, ptr %i.ag, align 8, !tbaa !66, !noalias !2576
  %i.bw = sub i64 %i.bv, %i.bg
  %.not.i.i189 = icmp ult i64 %i.bw, 50
  br i1 %.not.i.i189, label %bb.l, label %bb.e, !prof !74

bb.e:                                             ; preds = %thread-pre-split
  %i.bx = icmp samesign eq i64 %i.bg, %i.bt
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i.i213.preheader, label %bb.f

.lr.ph.i.i.i.i.i.i213.preheader:                  ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  store i32 1, ptr %i.bn, align 4, !tbaa !67, !noalias !2576
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split

bb.f:                                             ; preds = %bb.e
  %gepdiff = sub nsw i64 %.idx.i, %.idx444        ; 3 uses
  %i.by = ashr exact i64 %gepdiff, 2              ; 7 uses
  %.not.i.i.i.i.i190 = icmp ult i64 %i.by, 50
  %.not14.i.i.i.i200 = icmp eq ptr %i.bm, null    ; 2 uses
  br i1 %.not.i.i.i.i.i190, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not14.i.i.i.i200, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192, label %bb.h, !prof !83

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds i8, ptr %i.bn, i64 -200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(200) %i.bn, ptr noundef nonnull align 1 dereferenceable(200) %i.bz, i64 200, i1 false), !noalias !2576
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192: ; preds = %bb.h, %bb.g
  %i.ca = add nsw i64 %.idx.i, -200
  %.not.i.i10.i.i.i.i193 = icmp eq i64 %i.ca, %.idx444
  br i1 %.not.i.i10.i.i.i.i193, label %.lr.ph.i.i11.i.i.i.i194, label %bb.i, !prof !74

bb.i:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192
  %gepdiff445 = add i64 %gepdiff, -200            ; 2 uses
  %i.cb = ashr exact i64 %gepdiff445, 2
  %i.cc = sub nsw i64 0, %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.cc
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cd, ptr align 4 %i.bu, i64 %gepdiff445, i1 false), !noalias !2576
  %.pre.i.i12.i.i.i.i195.pre = load i32, ptr %i.c, align 4, !tbaa !67, !noalias !2576
  br label %.lr.ph.i.i11.i.i.i.i194

.lr.ph.i.i11.i.i.i.i194:                          ; preds = %bb.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192
  %.pre.i.i12.i.i.i.i195 = phi i32 [ %.pre.i.i12.i.i.i.i195.pre, %bb.i ], [ 1, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEPiS6_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i.i.i192 ] ; 2 uses
  store i32 %.pre.i.i12.i.i.i.i195, ptr %i.bu, align 4, !tbaa !67, !noalias !2576
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split

bb.j:                                             ; preds = %bb.f
  br i1 %.not14.i.i.i.i200, label %.lr.ph.i39.i.i.i.i.i201, label %bb.k, !prof !74

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 200
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull align 4 %i.bu, i64 %gepdiff, i1 false), !noalias !2576
  %.pre.i40.i.i.i.i.i202.pre = load i32, ptr %i.c, align 4, !tbaa !67, !noalias !2576
  br label %.lr.ph.i39.i.i.i.i.i201

.lr.ph.i39.i.i.i.i.i201:                          ; preds = %bb.k, %bb.j
  %.pre.i40.i.i.i.i.i202 = phi i32 [ %.pre.i40.i.i.i.i.i202.pre, %bb.k ], [ 1, %bb.j ] ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i39.i.i.i.i.i201
  %n.vec = and i64 %i.by, 56                      ; 3 uses
  %i.cf = and i64 %i.by, 7
  %i.cg = shl nuw nsw i64 %n.vec, 2
  %i.ch = getelementptr i8, ptr %i.bu, i64 %i.cg
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i40.i.i.i.i.i202, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bu, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !67, !noalias !2576
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 4, !tbaa !67, !noalias !2576
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !2500

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i39.i.i.i.i.i201, %middle.block
  %.07.i41.i.i.i.i.i203.ph = phi i64 [ %i.by, %.lr.ph.i39.i.i.i.i.i201 ], [ %i.cf, %middle.block ]
  %.046.i42.i.i.i.i.i204.ph = phi ptr [ %i.bu, %.lr.ph.i39.i.i.i.i.i201 ], [ %i.ch, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07.i41.i.i.i.i.i203 = phi i64 [ %i.cl, %scalar.ph ], [ %.07.i41.i.i.i.i.i203.ph, %scalar.ph.preheader ]
  %.046.i42.i.i.i.i.i204 = phi ptr [ %i.cm, %scalar.ph ], [ %.046.i42.i.i.i.i.i204.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cl = add i64 %.07.i41.i.i.i.i.i203, -1       ; 2 uses
  store i32 %.pre.i40.i.i.i.i.i202, ptr %.046.i42.i.i.i.i.i204, align 4, !tbaa !67, !noalias !2576
  %i.cm = getelementptr inbounds nuw i8, ptr %.046.i42.i.i.i.i.i204, i64 4
  %.not.i43.i.i.i.i.i205 = icmp eq i64 %i.cl, 0
  br i1 %.not.i43.i.i.i.i.i205, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206, label %scalar.ph, !llvm.loop !2501

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206: ; preds = %scalar.ph, %middle.block
  %i.cn = sub nsw i64 50, %i.by                   ; 5 uses
  %.pre.i.i.i.i.i.i.i207 = load i32, ptr %i.c, align 4, !tbaa !67, !noalias !2576 ; 2 uses
  %min.iters.check647 = icmp ult i64 %i.cn, 8
  br i1 %min.iters.check647, label %.lr.ph.i.i.i.i.i.i.i208.preheader, label %vector.ph648

vector.ph648:                                     ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206
  %n.vec649 = and i64 %i.cn, -8                   ; 3 uses
  %i.co = and i64 %i.cn, 7
  %i.cp = shl i64 %n.vec649, 2
  %i.cq = getelementptr i8, ptr %i.bn, i64 %i.cp
  %broadcast.splatinsert650 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i.i207, i64 0
  %broadcast.splat651 = shufflevector <4 x i32> %broadcast.splatinsert650, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body652

vector.body652:                                   ; preds = %vector.body652, %vector.ph648
  %index653 = phi i64 [ 0, %vector.ph648 ], [ %index.next662, %vector.body652 ] ; 2 uses
  %i.cr = shl i64 %index653, 2
  %next.gep654 = getelementptr i8, ptr %i.bn, i64 %i.cr ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep654) ]
  %i.cs = getelementptr i8, ptr %next.gep654, i64 16
  store <4 x i32> %broadcast.splat651, ptr %next.gep654, align 4, !tbaa !67, !noalias !2576
  store <4 x i32> %broadcast.splat651, ptr %i.cs, align 4, !tbaa !67, !noalias !2576
  %index.next662 = add nuw i64 %index653, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next662, %n.vec649
  br i1 %i.ct, label %middle.block663, label %vector.body652, !llvm.loop !2502

middle.block663:                                  ; preds = %vector.body652
  %cmp.n664 = icmp eq i64 %i.cn, %n.vec649
  br i1 %cmp.n664, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199, label %.lr.ph.i.i.i.i.i.i.i208.preheader

.lr.ph.i.i.i.i.i.i.i208.preheader:                ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206, %middle.block663
  %.017.i.i.i.i.i.i.i209.ph = phi i64 [ %i.cn, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206 ], [ %i.co, %middle.block663 ]
  %.01416.i.i.i.i.i.i.i210.ph = phi ptr [ %i.bn, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPiEEvRS6_T_m.exit44.i.i.i.i.i206 ], [ %i.cq, %middle.block663 ]
  br label %.lr.ph.i.i.i.i.i.i.i208

.lr.ph.i.i.i.i.i.i.i208:                          ; preds = %.lr.ph.i.i.i.i.i.i.i208.preheader, %.lr.ph.i.i.i.i.i.i.i208
  %.017.i.i.i.i.i.i.i209 = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i.i.i208 ], [ %.017.i.i.i.i.i.i.i209.ph, %.lr.ph.i.i.i.i.i.i.i208.preheader ]
  %.01416.i.i.i.i.i.i.i210 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i208 ], [ %.01416.i.i.i.i.i.i.i210.ph, %.lr.ph.i.i.i.i.i.i.i208.preheader ] ; 3 uses
  %i.cu = add i64 %.017.i.i.i.i.i.i.i209, -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.i.i210) ]
  store i32 %.pre.i.i.i.i.i.i.i207, ptr %.01416.i.i.i.i.i.i.i210, align 4, !tbaa !67, !noalias !2576
  %i.cv = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.i.i210, i64 4
  %.not.i.i45.i.i.i.i.i211 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i45.i.i.i.i.i211, label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199, label %.lr.ph.i.i.i.i.i.i.i208, !llvm.loop !2503

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split: ; preds = %.lr.ph.i.i.i.i.i.i213.preheader, %.lr.ph.i.i11.i.i.i.i194
  %.sink639 = phi ptr [ %i.bu, %.lr.ph.i.i11.i.i.i.i194 ], [ %i.bn, %.lr.ph.i.i.i.i.i.i213.preheader ] ; 13 uses
  %.pre.i.i12.i.i.i.i195.sink638 = phi i32 [ %.pre.i.i12.i.i.i.i195, %.lr.ph.i.i11.i.i.i.i194 ], [ 1, %.lr.ph.i.i.i.i.i.i213.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sink639, i64 4
  %i.cx = insertelement <4 x i32> poison, i32 %.pre.i.i12.i.i.i.i195.sink638, i64 0
  %i.cy = shufflevector <4 x i32> %i.cx, <4 x i32> poison, <4 x i32> zeroinitializer ; 12 uses
  store <4 x i32> %i.cy, ptr %i.cw, align 4, !tbaa !67, !noalias !2576
  %i.cz = getelementptr inbounds nuw i8, ptr %.sink639, i64 20
  store <4 x i32> %i.cy, ptr %i.cz, align 4, !tbaa !67, !noalias !2576
  %i.da = getelementptr inbounds nuw i8, ptr %.sink639, i64 36
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !67, !noalias !2576
  %i.db = getelementptr inbounds nuw i8, ptr %.sink639, i64 52
  store <4 x i32> %i.cy, ptr %i.db, align 4, !tbaa !67, !noalias !2576
  %i.dc = getelementptr inbounds nuw i8, ptr %.sink639, i64 68
  store <4 x i32> %i.cy, ptr %i.dc, align 4, !tbaa !67, !noalias !2576
  %i.dd = getelementptr inbounds nuw i8, ptr %.sink639, i64 84
  store <4 x i32> %i.cy, ptr %i.dd, align 4, !tbaa !67, !noalias !2576
  %i.de = getelementptr inbounds nuw i8, ptr %.sink639, i64 100
  store <4 x i32> %i.cy, ptr %i.de, align 4, !tbaa !67, !noalias !2576
  %i.df = getelementptr inbounds nuw i8, ptr %.sink639, i64 116
  store <4 x i32> %i.cy, ptr %i.df, align 4, !tbaa !67, !noalias !2576
  %i.dg = getelementptr inbounds nuw i8, ptr %.sink639, i64 132
  store <4 x i32> %i.cy, ptr %i.dg, align 4, !tbaa !67, !noalias !2576
  %i.dh = getelementptr inbounds nuw i8, ptr %.sink639, i64 148
  store <4 x i32> %i.cy, ptr %i.dh, align 4, !tbaa !67, !noalias !2576
  %i.di = getelementptr inbounds nuw i8, ptr %.sink639, i64 164
  store <4 x i32> %i.cy, ptr %i.di, align 4, !tbaa !67, !noalias !2576
  %i.dj = getelementptr inbounds nuw i8, ptr %.sink639, i64 180
  store <4 x i32> %i.cy, ptr %i.dj, align 4, !tbaa !67, !noalias !2576
  %i.dk = getelementptr inbounds nuw i8, ptr %.sink639, i64 196
  store i32 %.pre.i.i12.i.i.i.i195.sink638, ptr %i.dk, align 4, !tbaa !67, !noalias !2576
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199: ; preds = %.lr.ph.i.i.i.i.i.i.i208, %middle.block663, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199.sink.split
  %i.dl = load i64, ptr %i.ac, align 8, !tbaa !79, !noalias !2576
  %i.dm = add i64 %i.dl, 50
  store i64 %i.dm, ptr %i.ac, align 8, !tbaa !79, !noalias !2576
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217

bb.l:                                             ; preds = %thread-pre-split
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPiLb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bu, i64 noundef 50, ptr nonnull align 4 dereferenceable(4) %i.c)
  br label %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217

_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217: ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i199, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.dn = load ptr, ptr %1, align 8, !tbaa !78
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 1, ptr %i.d, align 4, !tbaa !67
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.do, i64 noundef 50, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.dp = load ptr, ptr %1, align 8, !tbaa !78    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.dq = load i64, ptr %i.ac, align 8, !tbaa !69 ; 4 uses
  %i.dr = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dp to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 2
  %.not.i218 = icmp eq i64 %i.dq, %i.dv
  br i1 %.not.i218, label %bb.m, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit226

bb.m:                                             ; preds = %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217
  %i.dw = load ptr, ptr %0, align 8, !tbaa !65, !noalias !2577 ; 2 uses
  %.idx.i220 = shl nsw i64 %i.dq, 2
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 %.idx.i220
  %.not2324.i221 = icmp eq i64 %i.dq, 0
  br i1 %.not2324.i221, label %.loopexit464, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.m, %bb.n
  %.sroa.019.026.i223 = phi ptr [ %i.eb, %bb.n ], [ %i.dw, %bb.m ] ; 2 uses
  %.sroa.015.025.i224 = phi ptr [ %i.ec, %bb.n ], [ %i.dp, %bb.m ] ; 2 uses
  %i.dy = load i32, ptr %.sroa.019.026.i223, align 4, !tbaa !67
  %i.dz = load i32, ptr %.sroa.015.025.i224, align 4, !tbaa !67
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %bb.n, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit226

bb.n:                                             ; preds = %.lr.ph.i222
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i223, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i224, i64 4
  %.not23.i225 = icmp eq ptr %i.eb, %i.dx
  br i1 %.not23.i225, label %.loopexit464, label %.lr.ph.i222, !llvm.loop !20

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit226: ; preds = %.lr.ph.i222, %_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPiLb1EEEmRKi.exit217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit464:                                     ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 2, ptr %i.e, align 4, !tbaa !67
  %i.ed = lshr i64 %i.dq, 1
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIiEEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj1EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 dereferenceable(4) %i.e, i64 %i.ed, ptr null, i64 0, ptr noundef null)
  %i.ee = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.ef = load ptr, ptr %1, align 8, !tbaa !89
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 2
  %i.ek = lshr i64 %i.ej, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 2, ptr %i.f, align 4, !tbaa !67
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ek, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.el = load i64, ptr %i.ac, align 8, !tbaa !69 ; 4 uses
  %i.em = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.en = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = ashr exact i64 %i.eq, 2
  %.not.i227 = icmp eq i64 %i.el, %i.er
  br i1 %.not.i227, label %bb.o, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235

bb.o:                                             ; preds = %.loopexit464
  %i.es = load ptr, ptr %0, align 8, !tbaa !65, !noalias !2578 ; 2 uses
  %.idx.i229 = shl nsw i64 %i.el, 2
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 %.idx.i229
  %.not2324.i230 = icmp eq i64 %i.el, 0
  br i1 %.not2324.i230, label %.loopexit463, label %.lr.ph.i231

.lr.ph.i231:                                      ; preds = %bb.o, %bb.p
  %.sroa.019.026.i232 = phi ptr [ %i.ex, %bb.p ], [ %i.es, %bb.o ] ; 2 uses
  %.sroa.015.025.i233 = phi ptr [ %i.ey, %bb.p ], [ %i.en, %bb.o ] ; 2 uses
  %i.eu = load i32, ptr %.sroa.019.026.i232, align 4, !tbaa !67
  %i.ev = load i32, ptr %.sroa.015.025.i233, align 4, !tbaa !67
  %i.ew = icmp eq i32 %i.eu, %i.ev
  br i1 %i.ew, label %bb.p, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235

bb.p:                                             ; preds = %.lr.ph.i231
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i232, i64 4 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i233, i64 4
  %.not23.i234 = icmp eq ptr %i.ex, %i.et
  br i1 %.not23.i234, label %.loopexit463, label %.lr.ph.i231, !llvm.loop !20

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit235: ; preds = %.lr.ph.i231, %.loopexit464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit463:                                     ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i32 3, ptr %i.g, align 4, !tbaa !67
  %i.ez = mul nsw i64 %i.el, 3
  %i.fa = add nsw i64 %i.ez, -1
  call void @_ZN5boost9container6vectorIiNS0_22small_vector_allocatorIiNS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIiEEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj1EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 dereferenceable(4) %i.g, i64 %i.fa, ptr null, i64 0, ptr noundef null)
  %i.fb = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.fc = load ptr, ptr %1, align 8, !tbaa !89
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = ashr exact i64 %i.ff, 2
  %i.fh = mul nsw i64 %i.fg, 3
  %i.fi = add nsw i64 %i.fh, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i32 3, ptr %i.h, align 4, !tbaa !67
  call void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.fi, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.fj = load i64, ptr %i.ac, align 8, !tbaa !69 ; 7 uses
  %i.fk = load ptr, ptr %i.ay, align 8, !tbaa !91
  %i.fl = load ptr, ptr %1, align 8, !tbaa !89    ; 2 uses
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = ashr exact i64 %i.fo, 2
  %.not.i236 = icmp eq i64 %i.fj, %i.fp
  br i1 %.not.i236, label %bb.q, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit244

bb.q:                                             ; preds = %.loopexit463
  %i.fq = load ptr, ptr %0, align 8, !tbaa !65, !noalias !2579 ; 4 uses
  %.idx.i238 = shl nsw i64 %i.fj, 2
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 %.idx.i238
  %.not2324.i239 = icmp eq i64 %i.fj, 0
  br i1 %.not2324.i239, label %.loopexit462, label %.lr.ph.i240

.lr.ph.i240:                                      ; preds = %bb.q, %bb.r
  %.sroa.019.026.i241 = phi ptr [ %i.fv, %bb.r ], [ %i.fq, %bb.q ] ; 2 uses
  %.sroa.015.025.i242 = phi ptr [ %i.fw, %bb.r ], [ %i.fl, %bb.q ] ; 2 uses
  %i.fs = load i32, ptr %.sroa.019.026.i241, align 4, !tbaa !67
  %i.ft = load i32, ptr %.sroa.015.025.i242, align 4, !tbaa !67
  %i.fu = icmp eq i32 %i.fs, %i.ft
  br i1 %i.fu, label %bb.r, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit244

bb.r:                                             ; preds = %.lr.ph.i240
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i241, i64 4 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i242, i64 4
  %.not23.i243 = icmp eq ptr %i.fv, %i.fr
  br i1 %.not23.i243, label %.loopexit462, label %.lr.ph.i240, !llvm.loop !20

_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit244: ; preds = %.lr.ph.i240, %.loopexit463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorIiLm10ENS0_13new_allocatorIiEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

.loopexit462:                                     ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test27vector_move_assignable_onlyINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail17integral_constantIbLb1EEE:bb.a
  br i1 %or.cond.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i.thread, label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i
  %i.bq = shl i64 %i.bo, 2
  tail call void @_ZdlPvm(ptr noundef %.pre980.pre, i64 noundef %i.bq) #22
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i.thread

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i.thread: ; preds = %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvEaSEOS6_.exit.thread, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i, %bb.l
  %.2.i8638741118 = phi i1 [ %.2.i863874, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i ], [ %.2.i863874, %bb.l ], [ %.not.i1102, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvEaSEOS6_.exit.thread ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 64) #26
  %i.br = load ptr, ptr %i.x, align 8, !tbaa !223 ; 4 uses
  %i.bs = load i64, ptr %i.y, align 8, !tbaa !230 ; 5 uses
  %.not3.i.i.i.i.i476 = icmp eq i64 %i.bs, 0
  br i1 %.not3.i.i.i.i.i476, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477.preheader

.lr.ph.i.i.i.i.i477.preheader:                    ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i.thread
  %xtraiter1190 = and i64 %i.bs, 3                ; 2 uses
  %lcmp.mod1191.not = icmp eq i64 %xtraiter1190, 0
  br i1 %lcmp.mod1191.not, label %.lr.ph.i.i.i.i.i477.prol.loopexit, label %.lr.ph.i.i.i.i.i477.prol

.lr.ph.i.i.i.i.i477.prol:                         ; preds = %.lr.ph.i.i.i.i.i477.preheader, %.lr.ph.i.i.i.i.i477.prol
  %.05.i.i.i.i.i478.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i477.prol ], [ %i.bs, %.lr.ph.i.i.i.i.i477.preheader ]
  %storemerge4.i.i.i.i.i479.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i477.prol ], [ %i.br, %.lr.ph.i.i.i.i.i477.preheader ] ; 2 uses
  %prol.iter1192 = phi i64 [ %prol.iter1192.next, %.lr.ph.i.i.i.i.i477.prol ], [ 0, %.lr.ph.i.i.i.i.i477.preheader ]
  %i.bt = add i64 %.05.i.i.i.i.i478.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i479.prol, align 4, !tbaa !225
  %i.bu = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.bv = add i32 %i.bu, -1
  store i32 %i.bv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479.prol, i64 4 ; 2 uses
  %prol.iter1192.next = add i64 %prol.iter1192, 1 ; 2 uses
  %prol.iter1192.cmp.not = icmp eq i64 %prol.iter1192.next, %xtraiter1190
  br i1 %prol.iter1192.cmp.not, label %.lr.ph.i.i.i.i.i477.prol.loopexit, label %.lr.ph.i.i.i.i.i477.prol, !llvm.loop !2768

.lr.ph.i.i.i.i.i477.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i477.prol, %.lr.ph.i.i.i.i.i477.preheader
  %.05.i.i.i.i.i478.unr = phi i64 [ %i.bs, %.lr.ph.i.i.i.i.i477.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i477.prol ]
  %storemerge4.i.i.i.i.i479.unr = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i477.preheader ], [ %i.bw, %.lr.ph.i.i.i.i.i477.prol ]
  %i.bx = icmp ult i64 %i.bs, 4
  br i1 %i.bx, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477

.lr.ph.i.i.i.i.i477:                              ; preds = %.lr.ph.i.i.i.i.i477.prol.loopexit, %.lr.ph.i.i.i.i.i477
  %.05.i.i.i.i.i478 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i477 ], [ %.05.i.i.i.i.i478.unr, %.lr.ph.i.i.i.i.i477.prol.loopexit ]
  %storemerge4.i.i.i.i.i479 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i477 ], [ %storemerge4.i.i.i.i.i479.unr, %.lr.ph.i.i.i.i.i477.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i479, align 4, !tbaa !225
  %i.by = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 4
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !225
  %i.cb = add i32 %i.by, -2
  store i32 %i.cb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 8
  store i32 -2147483648, ptr %i.cc, align 4, !tbaa !225
  %i.cd = add i32 %i.by, -3
  store i32 %i.cd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 12
  %i.cf = add i64 %.05.i.i.i.i.i478, -4           ; 2 uses
  store i32 -2147483648, ptr %i.ce, align 4, !tbaa !225
  %i.cg = add i32 %i.by, -4
  store i32 %i.cg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 16
  %.not.i.i.i.i.i480.3 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i.i.i480.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477, !llvm.loop !22

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481: ; preds = %.lr.ph.i.i.i.i.i477.prol.loopexit, %.lr.ph.i.i.i.i.i477, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i.thread
  %i.ci = load i64, ptr %i.z, align 8, !tbaa !222 ; 2 uses
  %.not.i1.i.i.i.i482 = icmp eq i64 %i.ci, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ck = icmp eq ptr %i.cj, %i.br
  %or.cond.i.i.i.i483 = select i1 %.not.i1.i.i.i.i482, i1 true, i1 %i.ck
  br i1 %or.cond.i.i.i.i483, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481
  %i.cl = shl i64 %i.ci, 2
  tail call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.cl) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = load ptr, ptr %i.v, align 8, !tbaa !90
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #26
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.n, %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.2.i8638741118, label %bb.p, label %bb.ir

bb.p:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2867)
  %i.cr = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !2867 ; 100 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 4 uses
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !223, !noalias !2867
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 37 uses
  store i64 0, ptr %i.ct, align 8, !tbaa !221, !noalias !2867
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 5 uses
  store i64 10, ptr %i.cu, align 8, !tbaa !222, !noalias !2867
  store ptr %i.cr, ptr %6, align 8, !tbaa !228, !alias.scope !2867
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2868)
  %i.cv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.q unwind label %bb.z       ; 89 uses

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false), !noalias !2868
  store ptr %i.cv, ptr %7, align 8, !tbaa !94, !alias.scope !2868
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !230 ; 9 uses
  %i.cx = icmp ugt i64 %i.cw, 100
  br i1 %i.cx, label %.lr.ph.i.preheader.i.i.i, label %bb.r

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.q
  %i.cy = add i64 %i.cw, -100                     ; 2 uses
  %i.cz = load ptr, ptr %i.cr, align 8, !tbaa !223
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 400 ; 2 uses
  %i.db = add i64 %i.cw, -101
  %xtraiter1196 = and i64 %i.cw, 3                ; 2 uses
  %lcmp.mod1197.not = icmp eq i64 %xtraiter1196, 0
  br i1 %lcmp.mod1197.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.preheader.i.i.i, %.lr.ph.i.i.i.i.prol
  %.05.i.i.i.i.prol = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.prol ], [ %i.cy, %.lr.ph.i.preheader.i.i.i ]
  %storemerge4.i.i.i.i.prol = phi ptr [ %i.df, %.lr.ph.i.i.i.i.prol ], [ %i.da, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %prol.iter1198 = phi i64 [ %prol.iter1198.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i.i ]
  %i.dc = add i64 %.05.i.i.i.i.prol, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.prol, align 4, !tbaa !225
  %i.dd = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.df = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter1198.next = add i64 %prol.iter1198, 1 ; 2 uses
  %prol.iter1198.cmp.not = icmp eq i64 %prol.iter1198.next, %xtraiter1196
  br i1 %prol.iter1198.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !2773

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i.unr = phi i64 [ %i.cy, %.lr.ph.i.preheader.i.i.i ], [ %i.dc, %.lr.ph.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.unr = phi ptr [ %i.da, %.lr.ph.i.preheader.i.i.i ], [ %i.df, %.lr.ph.i.i.i.i.prol ]
  %i.dg = icmp ult i64 %i.db, 3
  br i1 %i.dg, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !225
  %i.dh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.dj, align 4, !tbaa !225
  %i.dk = add i32 %i.dh, -2
  store i32 %i.dk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !225
  %i.dm = add i32 %i.dh, -3
  store i32 %i.dm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.do = add i64 %.05.i.i.i.i, -4                ; 2 uses
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !225
  %i.dp = add i32 %i.dh, -4
  store i32 %i.dp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !22

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  store i64 100, ptr %i.ct, align 8, !tbaa !221
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.dr = load ptr, ptr %i.cr, align 8, !tbaa !223
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.cw ; 3 uses
  %i.dt = sub nuw nsw i64 100, %i.cw              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.du = load i64, ptr %i.cu, align 8, !tbaa !222, !noalias !2869
  %i.dv = sub i64 %i.du, %i.cw
  %.not.i.i.i488 = icmp ugt i64 %i.dt, %i.dv
  br i1 %.not.i.i.i488, label %bb.t, label %bb.s, !prof !74

bb.s:                                             ; preds = %bb.r
  %.not14.i.i.i.i.i.i.i = icmp eq i64 %i.cw, 100
  br i1 %.not14.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.s
  %xtraiter1193 = and i64 %i.dt, 3                ; 2 uses
  %lcmp.mod1194.not = icmp eq i64 %xtraiter1193, 0
  br i1 %lcmp.mod1194.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.016.i.i.i.i.i.i.i.prol = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.01315.i.i.i.i.i.i.i.prol = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter1195 = phi i64 [ %prol.iter1195.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.dw = add i64 %.016.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i.prol, align 4, !tbaa !225, !noalias !2869
  %i.dx = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2869
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2869
  %i.dz = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter1195.next = add i64 %prol.iter1195, 1 ; 2 uses
  %prol.iter1195.cmp.not = icmp eq i64 %prol.iter1195.next, %xtraiter1193
  br i1 %prol.iter1195.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !2776

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.016.i.i.i.i.i.i.i.unr = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01315.i.i.i.i.i.i.i.unr = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ea = add nsw i64 %i.cw, -97
  %i.eb = icmp ult i64 %i.ea, 3
  br i1 %i.eb, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.016.i.i.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i.i ], [ %.016.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.i ], [ %.01315.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i, align 4, !tbaa !225, !noalias !2869
  %i.ec = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2869 ; 4 uses
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2869
  %i.ee = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i, i64 4
  store i32 0, ptr %i.ee, align 4, !tbaa !225, !noalias !2869
  %i.ef = add i32 %i.ec, 2
  store i32 %i.ef, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2869
  %i.eg = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.eg, align 4, !tbaa !225, !noalias !2869
  %i.eh = add i32 %i.ec, 3
  store i32 %i.eh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2869
  %i.ei = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i, i64 12
  %i.ej = add i64 %.016.i.i.i.i.i.i.i, -4         ; 2 uses
  store i32 0, ptr %i.ei, align 4, !tbaa !225, !noalias !2869
  %i.ek = add i32 %i.ec, 4
  store i32 %i.ek, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2869
  %i.el = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !28

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.s
  store i64 100, ptr %i.ct, align 8, !tbaa !221, !noalias !2869
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i

bb.t:                                             ; preds = %bb.r
  invoke void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.75") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef %i.ds, i64 noundef %i.dt)
          to label %._ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i_crit_edge unwind label %bb.aa

._ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i_crit_edge: ; preds = %bb.t
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.pre981.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !91
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i: ; preds = %._ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i_crit_edge, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i
  %.pre981 = phi ptr [ %.pre981.pre, %._ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i_crit_edge ], [ null, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %.pre982 = load ptr, ptr %i.cv, align 8, !tbaa !89
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit: ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i
  %i.em = phi ptr [ %.pre982, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i ], [ null, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i ] ; 5 uses
  %i.en = phi ptr [ %.pre981, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i ], [ null, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 41 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.em to i64               ; 4 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 2 uses
  %i.es = ashr exact i64 %i.er, 2                 ; 2 uses
  %i.et = icmp ult i64 %i.es, 100
  br i1 %i.et, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit
  %i.eu = sub nuw nsw i64 100, %i.es
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef %i.eu)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.u
  %.pre983 = load ptr, ptr %i.cv, align 8, !tbaa !89 ; 2 uses
  %.pre992 = ptrtoint ptr %.pre983 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.v:                                             ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit
  %.not875 = icmp eq i64 %i.er, 400
  br i1 %.not875, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 400 ; 2 uses
  %.not.i.i = icmp eq ptr %i.en, %i.ev
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.w
  store ptr %i.ev, ptr %i.eo, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.w, %bb.v
  %.pre-phi = phi i64 [ %.pre992, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.eq, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.eq, %bb.w ], [ %i.eq, %bb.v ] ; 2 uses
  %i.ew = phi ptr [ %.pre983, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.em, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.em, %bb.w ], [ %i.em, %bb.v ] ; 2 uses
  %i.ex = load i64, ptr %i.ct, align 8, !tbaa !230 ; 12 uses
  %i.ey = load ptr, ptr %i.eo, align 8, !tbaa !91 ; 2 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = sub i64 %i.ez, %.pre-phi                ; 2 uses
  %i.fb = ashr exact i64 %i.fa, 2                 ; 2 uses
  %.not.i491 = icmp eq i64 %i.ex, %i.fb
  br i1 %.not.i491, label %bb.x, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit499

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.fc = load ptr, ptr %i.cr, align 8, !tbaa !223, !noalias !2870 ; 5 uses
  %.idx.i493 = shl nsw i64 %i.ex, 2
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 %.idx.i493
  %.not2324.i494 = icmp eq i64 %i.ex, 0
  br i1 %.not2324.i494, label %.thread1119, label %.lr.ph.i495

.lr.ph.i495:                                      ; preds = %bb.x, %bb.y
  %.sroa.019.026.i496 = phi ptr [ %i.fh, %bb.y ], [ %i.fc, %bb.x ] ; 2 uses
  %.sroa.015.025.i497 = phi ptr [ %i.fi, %bb.y ], [ %i.ew, %bb.x ] ; 2 uses
  %i.fe = load i32, ptr %.sroa.015.025.i497, align 4, !tbaa !67
  %i.ff = load i32, ptr %.sroa.019.026.i496, align 4, !tbaa !225
  %i.fg = icmp eq i32 %i.ff, %i.fe
  br i1 %i.fg, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit499

bb.y:                                             ; preds = %.lr.ph.i495
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i496, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i497, i64 4
  %.not23.i498 = icmp eq ptr %i.fh, %i.fd
  br i1 %.not23.i498, label %.loopexit906, label %.lr.ph.i495, !llvm.loop !21

.body:                                            ; preds = %bb.j, %bb.d, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.ax, %bb.j ], [ %i.ab, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

bb.z:                                             ; preds = %bb.p
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.aa:                                            ; preds = %bb.ae, %bb.ad, %bb.u, %bb.t
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ip

.loopexit906:                                     ; preds = %bb.y
  %i.fl = icmp ugt i64 %i.ex, 200
  br i1 %i.fl, label %.lr.ph.i.preheader.i.i.i508, label %bb.ab

.lr.ph.i.preheader.i.i.i508:                      ; preds = %.loopexit906
  %i.fm = add i64 %i.ex, -200                     ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 800 ; 2 uses
  %i.fo = add i64 %i.ex, -201
  %xtraiter1199 = and i64 %i.ex, 3                ; 2 uses
  %lcmp.mod1200.not = icmp eq i64 %xtraiter1199, 0
  br i1 %lcmp.mod1200.not, label %.lr.ph.i.i.i.i509.prol.loopexit, label %.lr.ph.i.i.i.i509.prol

.lr.ph.i.i.i.i509.prol:                           ; preds = %.lr.ph.i.preheader.i.i.i508, %.lr.ph.i.i.i.i509.prol
  %.05.i.i.i.i510.prol = phi i64 [ %i.fp, %.lr.ph.i.i.i.i509.prol ], [ %i.fm, %.lr.ph.i.preheader.i.i.i508 ]
  %storemerge4.i.i.i.i511.prol = phi ptr [ %i.fs, %.lr.ph.i.i.i.i509.prol ], [ %i.fn, %.lr.ph.i.preheader.i.i.i508 ] ; 2 uses
  %prol.iter1201 = phi i64 [ %prol.iter1201.next, %.lr.ph.i.i.i.i509.prol ], [ 0, %.lr.ph.i.preheader.i.i.i508 ]
  %i.fp = add i64 %.05.i.i.i.i510.prol, -1        ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i511.prol, align 4, !tbaa !225
  %i.fq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.fr = add i32 %i.fq, -1
  store i32 %i.fr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.fs = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i511.prol, i64 4 ; 2 uses
  %prol.iter1201.next = add i64 %prol.iter1201, 1 ; 2 uses
  %prol.iter1201.cmp.not = icmp eq i64 %prol.iter1201.next, %xtraiter1199
  br i1 %prol.iter1201.cmp.not, label %.lr.ph.i.i.i.i509.prol.loopexit, label %.lr.ph.i.i.i.i509.prol, !llvm.loop !2779

.lr.ph.i.i.i.i509.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i509.prol, %.lr.ph.i.preheader.i.i.i508
  %.05.i.i.i.i510.unr = phi i64 [ %i.fm, %.lr.ph.i.preheader.i.i.i508 ], [ %i.fp, %.lr.ph.i.i.i.i509.prol ]
  %storemerge4.i.i.i.i511.unr = phi ptr [ %i.fn, %.lr.ph.i.preheader.i.i.i508 ], [ %i.fs, %.lr.ph.i.i.i.i509.prol ]
  %i.ft = icmp ult i64 %i.fo, 3
  br i1 %i.ft, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513, label %.lr.ph.i.i.i.i509

.lr.ph.i.i.i.i509:                                ; preds = %.lr.ph.i.i.i.i509.prol.loopexit, %.lr.ph.i.i.i.i509
  %.05.i.i.i.i510 = phi i64 [ %i.gb, %.lr.ph.i.i.i.i509 ], [ %.05.i.i.i.i510.unr, %.lr.ph.i.i.i.i509.prol.loopexit ]
  %storemerge4.i.i.i.i511 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i509 ], [ %storemerge4.i.i.i.i511.unr, %.lr.ph.i.i.i.i509.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i511, align 4, !tbaa !225
  %i.fu = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.fv = add i32 %i.fu, -1
  store i32 %i.fv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.fw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i511, i64 4
  store i32 -2147483648, ptr %i.fw, align 4, !tbaa !225
  %i.fx = add i32 %i.fu, -2
  store i32 %i.fx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.fy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i511, i64 8
  store i32 -2147483648, ptr %i.fy, align 4, !tbaa !225
  %i.fz = add i32 %i.fu, -3
  store i32 %i.fz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ga = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i511, i64 12
  %i.gb = add i64 %.05.i.i.i.i510, -4             ; 2 uses
  store i32 -2147483648, ptr %i.ga, align 4, !tbaa !225
  %i.gc = add i32 %i.fu, -4
  store i32 %i.gc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i511, i64 16
  %.not.i.i.i.i512.3 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i.i512.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513, label %.lr.ph.i.i.i.i509, !llvm.loop !22

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513: ; preds = %.lr.ph.i.i.i.i509, %.lr.ph.i.i.i.i509.prol.loopexit
  store i64 200, ptr %i.ct, align 8, !tbaa !221
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit515

bb.ab:                                            ; preds = %.loopexit906
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ex ; 2 uses
  %i.gf = sub nuw nsw i64 200, %i.ex              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.gg = load i64, ptr %i.cu, align 8, !tbaa !222, !noalias !2871
  %i.gh = sub i64 %i.gg, %i.ex
  %.not.i.i.i500 = icmp ugt i64 %i.gf, %i.gh
  br i1 %.not.i.i.i500, label %bb.ad, label %bb.ac, !prof !74

.thread1119:                                      ; preds = %bb.x
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ex ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.gj = load i64, ptr %i.cu, align 8, !tbaa !222, !noalias !2871
  %.not.i.i.i5001120 = icmp ult i64 %i.gj, 200
  br i1 %.not.i.i.i5001120, label %bb.ad, label %.lr.ph.i.i.i.i.i.i.i502.preheader, !prof !74

bb.ac:                                            ; preds = %bb.ab
  %.not14.i.i.i.i.i.i.i501 = icmp eq i64 %i.ex, 200
  br i1 %.not14.i.i.i.i.i.i.i501, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i506, label %.lr.ph.i.i.i.i.i.i.i502.preheader

.lr.ph.i.i.i.i.i.i.i502.preheader:                ; preds = %.thread1119, %bb.ac
  %.016.i.i.i.i.i.i.i503.ph = phi i64 [ 200, %.thread1119 ], [ %i.gf, %bb.ac ] ; 4 uses
  %.01315.i.i.i.i.i.i.i504.ph = phi ptr [ %i.gi, %.thread1119 ], [ %i.ge, %bb.ac ] ; 2 uses
  %i.gk = add nsw i64 %.016.i.i.i.i.i.i.i503.ph, -1
  %xtraiter1202 = and i64 %.016.i.i.i.i.i.i.i503.ph, 3 ; 2 uses
  %lcmp.mod1203.not = icmp eq i64 %xtraiter1202, 0
  br i1 %lcmp.mod1203.not, label %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i502.prol

.lr.ph.i.i.i.i.i.i.i502.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i502.preheader, %.lr.ph.i.i.i.i.i.i.i502.prol
  %.016.i.i.i.i.i.i.i503.prol = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i.i502.prol ], [ %.016.i.i.i.i.i.i.i503.ph, %.lr.ph.i.i.i.i.i.i.i502.preheader ]
  %.01315.i.i.i.i.i.i.i504.prol = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i.i502.prol ], [ %.01315.i.i.i.i.i.i.i504.ph, %.lr.ph.i.i.i.i.i.i.i502.preheader ] ; 3 uses
  %prol.iter1204 = phi i64 [ %prol.iter1204.next, %.lr.ph.i.i.i.i.i.i.i502.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i502.preheader ]
  %i.gl = add i64 %.016.i.i.i.i.i.i.i503.prol, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i504.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i504.prol, align 4, !tbaa !225, !noalias !2871
  %i.gm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2871
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2871
  %i.go = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i504.prol, i64 4 ; 2 uses
  %prol.iter1204.next = add i64 %prol.iter1204, 1 ; 2 uses
  %prol.iter1204.cmp.not = icmp eq i64 %prol.iter1204.next, %xtraiter1202
  br i1 %prol.iter1204.cmp.not, label %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i502.prol, !llvm.loop !2782

.lr.ph.i.i.i.i.i.i.i502.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i502.prol, %.lr.ph.i.i.i.i.i.i.i502.preheader
  %.016.i.i.i.i.i.i.i503.unr = phi i64 [ %.016.i.i.i.i.i.i.i503.ph, %.lr.ph.i.i.i.i.i.i.i502.preheader ], [ %i.gl, %.lr.ph.i.i.i.i.i.i.i502.prol ]
  %.01315.i.i.i.i.i.i.i504.unr = phi ptr [ %.01315.i.i.i.i.i.i.i504.ph, %.lr.ph.i.i.i.i.i.i.i502.preheader ], [ %i.go, %.lr.ph.i.i.i.i.i.i.i502.prol ]
  %i.gp = icmp ult i64 %i.gk, 3
  br i1 %i.gp, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i506, label %.lr.ph.i.i.i.i.i.i.i502

.lr.ph.i.i.i.i.i.i.i502:                          ; preds = %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i502
  %.016.i.i.i.i.i.i.i503 = phi i64 [ %i.gx, %.lr.ph.i.i.i.i.i.i.i502 ], [ %.016.i.i.i.i.i.i.i503.unr, %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit ]
  %.01315.i.i.i.i.i.i.i504 = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.i502 ], [ %.01315.i.i.i.i.i.i.i504.unr, %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i504) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i504, align 4, !tbaa !225, !noalias !2871
  %i.gq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2871 ; 4 uses
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2871
  %i.gs = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i504, i64 4
  store i32 0, ptr %i.gs, align 4, !tbaa !225, !noalias !2871
  %i.gt = add i32 %i.gq, 2
  store i32 %i.gt, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2871
  %i.gu = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i504, i64 8
  store i32 0, ptr %i.gu, align 4, !tbaa !225, !noalias !2871
  %i.gv = add i32 %i.gq, 3
  store i32 %i.gv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2871
  %i.gw = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i504, i64 12
  %i.gx = add i64 %.016.i.i.i.i.i.i.i503, -4      ; 2 uses
  store i32 0, ptr %i.gw, align 4, !tbaa !225, !noalias !2871
  %i.gy = add i32 %i.gq, 4
  store i32 %i.gy, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2871
  %i.gz = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i504, i64 16
  %.not.i.i.i.i.i.i.i505.3 = icmp eq i64 %i.gx, 0
  br i1 %.not.i.i.i.i.i.i.i505.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i506, label %.lr.ph.i.i.i.i.i.i.i502, !llvm.loop !28

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i506: ; preds = %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i502, %bb.ac
  store i64 200, ptr %i.ct, align 8, !tbaa !221, !noalias !2871
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507

bb.ad:                                            ; preds = %.thread1119, %bb.ab
  %i.ha = phi i64 [ 200, %.thread1119 ], [ %i.gf, %bb.ab ]
  %i.hb = phi ptr [ %i.gi, %.thread1119 ], [ %i.ge, %bb.ab ]
  invoke void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef %i.hb, i64 noundef %i.ha)
          to label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 unwind label %bb.aa

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507: ; preds = %bb.ad, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i506
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre984 = load ptr, ptr %i.eo, align 8, !tbaa !91 ; 2 uses
  %.pre985 = load ptr, ptr %i.cv, align 8, !tbaa !89 ; 2 uses
  %.pre993 = ptrtoint ptr %.pre984 to i64
  %.pre995 = ptrtoint ptr %.pre985 to i64         ; 2 uses
  %.pre997 = sub i64 %.pre993, %.pre995           ; 2 uses
  %.pre999 = ashr exact i64 %.pre997, 2
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit515

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit515: ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513
  %.pre-phi1000 = phi i64 [ %.pre999, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 ], [ %i.fb, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513 ] ; 2 uses
  %.pre-phi998 = phi i64 [ %.pre997, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 ], [ %i.fa, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513 ]
  %.pre-phi996 = phi i64 [ %.pre995, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 ], [ %.pre-phi, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513 ] ; 3 uses
  %i.hc = phi ptr [ %.pre985, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 ], [ %i.ew, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513 ] ; 4 uses
  %i.hd = phi ptr [ %.pre984, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 ], [ %i.ey, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513 ] ; 3 uses
  %i.he = icmp ult i64 %.pre-phi1000, 200
  br i1 %i.he, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit515
  %i.hf = sub nuw nsw i64 200, %.pre-phi1000
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef %i.hf)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge unwind label %bb.aa

._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge: ; preds = %bb.ae
  %.pre986 = load ptr, ptr %i.eo, align 8, !tbaa !91
  %.pre987 = load ptr, ptr %i.cv, align 8, !tbaa !89 ; 2 uses
  %.pre1001 = ptrtoint ptr %.pre987 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit519

bb.af:                                            ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit515
  %.not876 = icmp eq i64 %.pre-phi998, 800
  br i1 %.not876, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit519, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 800 ; 3 uses
  %.not.i.i516 = icmp eq ptr %i.hd, %i.hg
  br i1 %.not.i.i516, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit519, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517:     ; preds = %bb.ag
  store ptr %i.hg, ptr %i.eo, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit519

_ZNSt6vectorIiSaIiEE6resizeEm.exit519:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517, %bb.ag, %bb.af
  %.pre-phi1002 = phi i64 [ %.pre1001, %._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge ], [ %.pre-phi996, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517 ], [ %.pre-phi996, %bb.ag ], [ %.pre-phi996, %bb.af ]
  %i.hh = phi ptr [ %.pre987, %._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge ], [ %i.hc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517 ], [ %i.hc, %bb.ag ], [ %i.hc, %bb.af ] ; 3 uses
  %i.hi = phi ptr [ %.pre986, %._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge ], [ %i.hg, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517 ], [ %i.hd, %bb.ag ], [ %i.hd, %bb.af ] ; 2 uses
  %i.hj = load i64, ptr %i.ct, align 8, !tbaa !230 ; 7 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hk, %.pre-phi1002
  %i.hm = ashr exact i64 %i.hl, 2
  %.not.i520 = icmp eq i64 %i.hj, %i.hm
  br i1 %.not.i520, label %bb.ah, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit499

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit519
  %i.hn = load ptr, ptr %i.cr, align 8, !tbaa !223, !noalias !2872 ; 4 uses
  %.idx.i522 = shl nsw i64 %i.hj, 2
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 %.idx.i522
  %cond = icmp eq i64 %i.hj, 0
  br i1 %cond, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543, label %.lr.ph.i524

.lr.ph.i524:                                      ; preds = %bb.ah, %bb.ai
  %.sroa.019.026.i525 = phi ptr [ %i.hs, %bb.ai ], [ %i.hn, %bb.ah ] ; 2 uses
  %.sroa.015.025.i526 = phi ptr [ %i.ht, %bb.ai ], [ %i.hh, %bb.ah ] ; 2 uses
  %i.hp = load i32, ptr %.sroa.015.025.i526, align 4, !tbaa !67
  %i.hq = load i32, ptr %.sroa.019.026.i525, align 4, !tbaa !225
  %i.hr = icmp eq i32 %i.hq, %i.hp
  br i1 %i.hr, label %bb.ai, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit499

bb.ai:                                            ; preds = %.lr.ph.i524
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i525, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i526, i64 4
  %.not23.i527 = icmp eq ptr %i.hs, %i.ho
  br i1 %.not23.i527, label %.lr.ph.i.i.i.i538.preheader, label %.lr.ph.i524, !llvm.loop !21

.lr.ph.i.i.i.i538.preheader:                      ; preds = %bb.ai
  %xtraiter1205 = and i64 %i.hj, 3                ; 2 uses
  %lcmp.mod1206.not = icmp eq i64 %xtraiter1205, 0
  br i1 %lcmp.mod1206.not, label %.lr.ph.i.i.i.i538.prol.loopexit, label %.lr.ph.i.i.i.i538.prol

.lr.ph.i.i.i.i538.prol:                           ; preds = %.lr.ph.i.i.i.i538.preheader, %.lr.ph.i.i.i.i538.prol
  %.05.i.i.i.i539.prol = phi i64 [ %i.hu, %.lr.ph.i.i.i.i538.prol ], [ %i.hj, %.lr.ph.i.i.i.i538.preheader ]
  %storemerge4.i.i.i.i540.prol = phi ptr [ %i.hx, %.lr.ph.i.i.i.i538.prol ], [ %i.hn, %.lr.ph.i.i.i.i538.preheader ] ; 2 uses
  %prol.iter1207 = phi i64 [ %prol.iter1207.next, %.lr.ph.i.i.i.i538.prol ], [ 0, %.lr.ph.i.i.i.i538.preheader ]
  %i.hu = add i64 %.05.i.i.i.i539.prol, -1        ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i540.prol, align 4, !tbaa !225
  %i.hv = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.hw = add i32 %i.hv, -1
  store i32 %i.hw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.hx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i540.prol, i64 4 ; 2 uses
  %prol.iter1207.next = add i64 %prol.iter1207, 1 ; 2 uses
  %prol.iter1207.cmp.not = icmp eq i64 %prol.iter1207.next, %xtraiter1205
  br i1 %prol.iter1207.cmp.not, label %.lr.ph.i.i.i.i538.prol.loopexit, label %.lr.ph.i.i.i.i538.prol, !llvm.loop !2785

.lr.ph.i.i.i.i538.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i538.prol, %.lr.ph.i.i.i.i538.preheader
  %.05.i.i.i.i539.unr = phi i64 [ %i.hj, %.lr.ph.i.i.i.i538.preheader ], [ %i.hu, %.lr.ph.i.i.i.i538.prol ]
  %storemerge4.i.i.i.i540.unr = phi ptr [ %i.hn, %.lr.ph.i.i.i.i538.preheader ], [ %i.hx, %.lr.ph.i.i.i.i538.prol ]
  %i.hy = icmp ult i64 %i.hj, 4
  br i1 %i.hy, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543, label %.lr.ph.i.i.i.i538

.lr.ph.i.i.i.i538:                                ; preds = %.lr.ph.i.i.i.i538.prol.loopexit, %.lr.ph.i.i.i.i538
  %.05.i.i.i.i539 = phi i64 [ %i.ig, %.lr.ph.i.i.i.i538 ], [ %.05.i.i.i.i539.unr, %.lr.ph.i.i.i.i538.prol.loopexit ]
  %storemerge4.i.i.i.i540 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i538 ], [ %storemerge4.i.i.i.i540.unr, %.lr.ph.i.i.i.i538.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i540, align 4, !tbaa !225
  %i.hz = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ia = add i32 %i.hz, -1
  store i32 %i.ia, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ib = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i540, i64 4
  store i32 -2147483648, ptr %i.ib, align 4, !tbaa !225
  %i.ic = add i32 %i.hz, -2
  store i32 %i.ic, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.id = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i540, i64 8
  store i32 -2147483648, ptr %i.id, align 4, !tbaa !225
  %i.ie = add i32 %i.hz, -3
  store i32 %i.ie, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.if = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i540, i64 12
  %i.ig = add i64 %.05.i.i.i.i539, -4             ; 2 uses
  store i32 -2147483648, ptr %i.if, align 4, !tbaa !225
  %i.ih = add i32 %i.hz, -4
  store i32 %i.ih, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ii = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i540, i64 16
  %.not.i.i.i.i541.3 = icmp eq i64 %i.ig, 0
  br i1 %.not.i.i.i.i541.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543, label %.lr.ph.i.i.i.i538, !llvm.loop !22

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543: ; preds = %.lr.ph.i.i.i.i538.prol.loopexit, %.lr.ph.i.i.i.i538, %bb.ah
  store i64 0, ptr %i.ct, align 8, !tbaa !221
  %.not.i.i544 = icmp eq ptr %i.hi, %i.hh
  br i1 %.not.i.i544, label %.loopexit903, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i545

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i545:     ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543
  store ptr %i.hh, ptr %i.eo, align 8, !tbaa !91
  br label %.loopexit903

.loopexit903:                                     ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i545, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543
  %i.ij = load ptr, ptr %i.cr, align 8, !tbaa !223, !noalias !2873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %.pre988 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ik = add i32 %.pre988, 1
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit903, %.loopexit900
  %i.il = phi i64 [ 0, %.loopexit903 ], [ %i.iv, %.loopexit900 ] ; 3 uses
  %i.im = phi ptr [ %i.ij, %.loopexit903 ], [ %i.jc, %.loopexit900 ] ; 2 uses
  %i.in = phi i32 [ %i.ik, %.loopexit903 ], [ %i.jl, %.loopexit900 ]
  %storemerge908 = phi i32 [ 0, %.loopexit903 ], [ %i.jo, %.loopexit900 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store i32 %storemerge908, ptr %8, align 4, !tbaa !225
  store i32 %i.in, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.io = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.il ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ip = load i64, ptr %i.cu, align 8, !tbaa !222, !noalias !2874
  %.not.i.i556 = icmp eq i64 %i.ip, %i.il
  br i1 %.not.i.i556, label %bb.ak, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i, !prof !74

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i: ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.im) ]
  store i32 %storemerge908, ptr %i.io, align 4, !tbaa !225, !noalias !2874
  store i32 0, ptr %8, align 4, !tbaa !225, !noalias !2874
  %i.iq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2874
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !2874
  %i.is = add nsw i64 %i.il, 1
  store i64 %i.is, ptr %i.ct, align 8, !tbaa !230, !noalias !2874
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEOS3_.exit461

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.75") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef %i.io, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %8)
          to label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEOS3_.exit461 unwind label %bb.ao

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEOS3_.exit461: ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.it = load ptr, ptr %i.eo, align 8, !tbaa !78
  %i.iu = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr %i.it, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.al unwind label %bb.ap     ; 0 uses

bb.al:                                            ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEOS3_.exit461
  %i.iv = load i64, ptr %i.ct, align 8, !tbaa !230 ; 8 uses
  %i.iw = load ptr, ptr %i.eo, align 8, !tbaa !91 ; 5 uses
  %i.ix = load ptr, ptr %i.cv, align 8, !tbaa !89 ; 6 uses
  %i.iy = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
end_hunk_4
begin_hunk_5_@_ZN5boost9containergeERKNS0_6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !230, !noalias !2996 ; 2 uses
  %.idx.i = shl i64 %i.c, 2                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  %i.e = load ptr, ptr %1, align 8, !tbaa !223, !noalias !2997 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !230, !noalias !2998
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not1.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %.idx.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.preheader.i
  %.sroa.02.0.i.i = phi ptr [ %i.p, %bb.d ], [ %i.e, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.i = phi ptr [ %i.o, %bb.d ], [ %i.a, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.j = icmp eq ptr %.sroa.02.0.i.i, %i.h
  br i1 %i.j, label %_ZN5boost9containerltERKNS0_6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.k = load i32, ptr %.sroa.02.0.i.i, align 4, !tbaa !225 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !225  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %_ZN5boost9containerltERKNS0_6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %_ZN5boost9containerltERKNS0_6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !30

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.a
  %i.q = phi ptr [ %i.e, %bb.a ], [ %scevgep.i, %bb.d ]
  %i.r = icmp eq ptr %i.q, %i.h
  br label %_ZN5boost9containerltERKNS0_6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit

_ZN5boost9containerltERKNS0_6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %._crit_edge.i.i.i
  %.0.i.i.i = phi i1 [ %i.r, %._crit_edge.i.i.i ], [ true, %.lr.ph.i.i.i ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignISt14_List_iteratorIiEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %1, %2
  br i1 %.not4.i.i, label %.thread41, label %.lr.ph.i.i

.thread41:                                        ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !223
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !230
  br label %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ 0, %bb.a ] ; 6 uses
  %.sroa.02.05.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.d = add nuw i64 %.06.i.i, 1                  ; 11 uses
  %i.e = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !187 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %2
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !8

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !222  ; 2 uses
  %.not = icmp ult i64 %.06.i.i, %i.g
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.h = icmp samesign ugt i64 %.06.i.i, 2305843009213693950
  br i1 %i.h, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.d, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !223    ; 5 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !230  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.e
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader, %.lr.ph.i.i19.prol
  %.05.i.i.prol = phi i64 [ %i.n, %.lr.ph.i.i19.prol ], [ %i.m, %.lr.ph.i.i19.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i19.prol ], [ %i.k, %.lr.ph.i.i19.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader ]
  %i.n = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !225
  %i.o = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !2999

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader
  %.05.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i19.preheader ], [ %i.n, %.lr.ph.i.i19.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i19.preheader ], [ %i.q, %.lr.ph.i.i19.prol ]
  %i.r = icmp ult i64 %i.m, 4
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.05.i.i = phi i64 [ %i.z, %.lr.ph.i.i19 ], [ %.05.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ab, %.lr.ph.i.i19 ], [ %storemerge4.i.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !225
  %i.s = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.t = add i32 %i.s, -1
  store i32 %i.t, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.u, align 4, !tbaa !225
  %i.v = add i32 %i.s, -2
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.w, align 4, !tbaa !225
  %i.x = add i32 %i.s, -3
  store i32 %i.x, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.z = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.y, align 4, !tbaa !225
  %i.aa = add i32 %i.s, -4
  store i32 %i.aa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i20.3 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i20.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i19, !llvm.loop !22

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19, %bb.e
  store i64 0, ptr %i.l, align 8, !tbaa !230
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = icmp eq ptr %i.ac, %i.k
  br i1 %i.ad, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.ae = shl nuw nsw i64 %i.g, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ae) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.j, ptr %0, align 8, !tbaa !223
  store i64 %i.d, ptr %i.f, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %_ZN5boost9container4test11movable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, %.lr.ph.i.i21
  %i.ag = phi i32 [ %i.aj, %.lr.ph.i.i21 ], [ %_ZN5boost9container4test11movable_int5countE.promoted, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ]
  %.015.i.i = phi ptr [ %i.al, %.lr.ph.i.i21 ], [ %i.j, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ak, %.lr.ph.i.i21 ], [ %1, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !67
  store i32 %i.ai, ptr %.015.i.i, align 4, !tbaa !225
  %i.aj = add i32 %i.ag, 1                        ; 2 uses
  %i.ak = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !187 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ak, %2
  br i1 %.not.i.i22, label %bb.g, label %.lr.ph.i.i21, !llvm.loop !3000

bb.g:                                             ; preds = %.lr.ph.i.i21
  store i32 %i.aj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.j to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 2
  store i64 %i.ap, ptr %i.af, align 8, !tbaa !221
  br label %bb.j

bb.h:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !223   ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !230 ; 10 uses
  %.not45 = icmp ugt i64 %i.as, %.06.i.i
  br i1 %.not45, label %.lr.ph.i18.i.preheader, label %bb.i

.lr.ph.i18.i.preheader:                           ; preds = %bb.h
  %xtraiter88 = and i64 %i.d, 3                   ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol

.lr.ph.i18.i.prol:                                ; preds = %.lr.ph.i18.i.preheader, %.lr.ph.i18.i.prol
  %.09.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i18.i.prol ], [ %i.aq, %.lr.ph.i18.i.preheader ] ; 2 uses
  %.048.i.i.prol = phi i64 [ %i.at, %.lr.ph.i18.i.prol ], [ %i.d, %.lr.ph.i18.i.preheader ]
  %.sroa.0.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i18.i.prol ], [ %1, %.lr.ph.i18.i.preheader ] ; 2 uses
  %prol.iter90 = phi i64 [ %prol.iter90.next, %.lr.ph.i18.i.prol ], [ 0, %.lr.ph.i18.i.preheader ]
  %i.at = add i64 %.048.i.i.prol, -1              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !67
  store i32 %i.av, ptr %.09.i.i.prol, align 4, !tbaa !225
  %i.aw = load ptr, ptr %.sroa.0.07.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 3 uses
  %prol.iter90.next = add i64 %prol.iter90, 1     ; 2 uses
  %prol.iter90.cmp.not = icmp eq i64 %prol.iter90.next, %xtraiter88
  br i1 %prol.iter90.cmp.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol, !llvm.loop !3001

.lr.ph.i18.i.prol.loopexit:                       ; preds = %.lr.ph.i18.i.prol, %.lr.ph.i18.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i18.i.preheader ], [ %i.ax, %.lr.ph.i18.i.prol ]
  %.09.i.i.unr = phi ptr [ %i.aq, %.lr.ph.i18.i.preheader ], [ %i.ax, %.lr.ph.i18.i.prol ]
  %.048.i.i.unr = phi i64 [ %i.d, %.lr.ph.i18.i.preheader ], [ %i.at, %.lr.ph.i18.i.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %1, %.lr.ph.i18.i.preheader ], [ %i.aw, %.lr.ph.i18.i.prol ]
  %i.ay = icmp ult i64 %.06.i.i, 3
  br i1 %i.ay, label %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i18.i

bb.i:                                             ; preds = %bb.h
  %.not4.i.i28 = icmp eq i64 %i.as, 0
  br i1 %.not4.i.i28, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %bb.i
  %xtraiter82 = and i64 %i.as, 3                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol

.lr.ph.i.i29.prol:                                ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29.prol
  %i.az = phi ptr [ %i.be, %.lr.ph.i.i29.prol ], [ %i.aq, %.lr.ph.i.i29.preheader ] ; 2 uses
  %.06.i.i30.prol = phi i64 [ %i.ba, %.lr.ph.i.i29.prol ], [ %i.as, %.lr.ph.i.i29.preheader ]
  %.sroa.0.05.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i29.prol ], [ %1, %.lr.ph.i.i29.preheader ] ; 2 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.lr.ph.i.i29.prol ], [ 0, %.lr.ph.i.i29.preheader ]
  %i.ba = add i64 %.06.i.i30.prol, -1             ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.prol, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !67
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !225
  %i.bd = load ptr, ptr %.sroa.0.05.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 3 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol, !llvm.loop !3002

.lr.ph.i.i29.prol.loopexit:                       ; preds = %.lr.ph.i.i29.prol, %.lr.ph.i.i29.preheader
  %.lcssa78.unr = phi ptr [ poison, %.lr.ph.i.i29.preheader ], [ %i.bd, %.lr.ph.i.i29.prol ]
  %.lcssa77.unr = phi ptr [ poison, %.lr.ph.i.i29.preheader ], [ %i.be, %.lr.ph.i.i29.prol ]
  %.unr = phi ptr [ %i.aq, %.lr.ph.i.i29.preheader ], [ %i.be, %.lr.ph.i.i29.prol ]
  %.06.i.i30.unr = phi i64 [ %i.as, %.lr.ph.i.i29.preheader ], [ %i.ba, %.lr.ph.i.i29.prol ]
  %.sroa.0.05.i.i.unr = phi ptr [ %1, %.lr.ph.i.i29.preheader ], [ %i.bd, %.lr.ph.i.i29.prol ]
  %i.bf = icmp ult i64 %i.as, 4
  br i1 %i.bf, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29
  %i.bg = phi ptr [ %i.bx, %.lr.ph.i.i29 ], [ %.unr, %.lr.ph.i.i29.prol.loopexit ] ; 5 uses
  %.06.i.i30 = phi i64 [ %i.bt, %.lr.ph.i.i29 ], [ %.06.i.i30.unr, %.lr.ph.i.i29.prol.loopexit ]
  %.sroa.0.05.i.i = phi ptr [ %i.bw, %.lr.ph.i.i29 ], [ %.sroa.0.05.i.i.unr, %.lr.ph.i.i29.prol.loopexit ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !67
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !225
  %i.bj = load ptr, ptr %.sroa.0.05.i.i, align 8, !tbaa !187 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !67
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !225
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !187 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !67
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !225
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !187 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bt = add i64 %.06.i.i30, -4                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !67
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !225
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !187 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %.not.i.i31.3 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i31.3, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i29, !llvm.loop !3003

_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29, %bb.i
  %.0.i = phi ptr [ %i.aq, %bb.i ], [ %.lcssa77.unr, %.lr.ph.i.i29.prol.loopexit ], [ %i.bx, %.lr.ph.i.i29 ] ; 4 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %1, %bb.i ], [ %.lcssa78.unr, %.lr.ph.i.i29.prol.loopexit ], [ %i.bw, %.lr.ph.i.i29 ] ; 3 uses
  %i.by = sub i64 %i.d, %i.as                     ; 3 uses
  %xtraiter85 = and i64 %i.by, 1
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.lr.ph.i15.i.prol.loopexit, label %.lr.ph.i15.i.prol

.lr.ph.i15.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %i.bz = add nsw i64 %i.by, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !67
  store i32 %i.cb, ptr %.0.i, align 4, !tbaa !225
  %i.cc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ce = load ptr, ptr %.sroa.0.0.lcssa.i.i, align 8, !tbaa !187
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  br label %.lr.ph.i15.i.prol.loopexit

.lr.ph.i15.i.prol.loopexit:                       ; preds = %.lr.ph.i15.i.prol, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %.018.i.i.unr = phi i64 [ %i.by, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.bz, %.lr.ph.i15.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.cf, %.lr.ph.i15.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.ce, %.lr.ph.i15.i.prol ]
  %i.cg = icmp eq i64 %.06.i.i, %i.as
  br i1 %i.cg, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i
  %.018.i.i = phi i64 [ %i.cn, %.lr.ph.i15.i ], [ %.018.i.i.unr, %.lr.ph.i15.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.ct, %.lr.ph.i15.i ], [ %.01417.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i = phi ptr [ %i.cs, %.lr.ph.i15.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !67
  store i32 %i.ci, ptr %.01417.i.i, align 4, !tbaa !225
  %i.cj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.cl = load ptr, ptr %.sroa.0.016.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.cn = add i64 %.018.i.i, -2                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !67
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !225
  %i.cq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !187
  %i.ct = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %.not.i16.i.1 = icmp eq i64 %i.cn, 0
  br i1 %.not.i16.i.1, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i, !llvm.loop !3004

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i
  %.09.i.i = phi ptr [ %i.dk, %.lr.ph.i18.i ], [ %.09.i.i.unr, %.lr.ph.i18.i.prol.loopexit ] ; 5 uses
  %.048.i.i = phi i64 [ %i.dg, %.lr.ph.i18.i ], [ %.048.i.i.unr, %.lr.ph.i18.i.prol.loopexit ]
  %.sroa.0.07.i.i = phi ptr [ %i.dj, %.lr.ph.i18.i ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i18.i.prol.loopexit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !67
  store i32 %i.cv, ptr %.09.i.i, align 4, !tbaa !225
  %i.cw = load ptr, ptr %.sroa.0.07.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !67
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !225
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !187 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !67
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !225
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !187 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.dg = add i64 %.048.i.i, -4                   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !67
  store i32 %i.di, ptr %i.df, align 4, !tbaa !225
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !187
  %i.dk = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i19.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i19.i.3, label %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i18.i, !llvm.loop !3005

_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i, %.thread41
  %.0.lcssa.i.i374044 = phi i64 [ 0, %.thread41 ], [ %i.d, %.lr.ph.i18.i ], [ %i.d, %.lr.ph.i18.i.prol.loopexit ] ; 5 uses
  %i.dl = phi ptr [ %i.b, %.thread41 ], [ %i.ar, %.lr.ph.i18.i ], [ %i.ar, %.lr.ph.i18.i.prol.loopexit ] ; 3 uses
  %i.dm = phi i64 [ %i.c, %.thread41 ], [ %i.as, %.lr.ph.i18.i ], [ %i.as, %.lr.ph.i18.i.prol.loopexit ] ; 2 uses
  %.0.lcssa.i.i24 = phi ptr [ %i.a, %.thread41 ], [ %.lcssa.unr, %.lr.ph.i18.i.prol.loopexit ], [ %i.dk, %.lr.ph.i18.i ] ; 2 uses
  %i.dn = sub nuw i64 %i.dm, %.0.lcssa.i.i374044  ; 4 uses
  %.not3.i.i25 = icmp eq i64 %i.dn, 0
  br i1 %.not3.i.i25, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %xtraiter91 = and i64 %i.dn, 3                  ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.05.i.i26.prol = phi i64 [ %i.do, %.lr.ph.i21.i.prol ], [ %i.dn, %.lr.ph.i21.i.preheader ]
  %storemerge4.i.i27.prol = phi ptr [ %i.dr, %.lr.ph.i21.i.prol ], [ %.0.lcssa.i.i24, %.lr.ph.i21.i.preheader ] ; 2 uses
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.do = add i64 %.05.i.i26.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i27.prol, align 4, !tbaa !225
  %i.dp = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dq = add i32 %i.dp, -1
  store i32 %i.dq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27.prol, i64 4 ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !3006

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i26.unr = phi i64 [ %i.dn, %.lr.ph.i21.i.preheader ], [ %i.do, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i27.unr = phi ptr [ %.0.lcssa.i.i24, %.lr.ph.i21.i.preheader ], [ %i.dr, %.lr.ph.i21.i.prol ]
  %i.ds = sub i64 %.0.lcssa.i.i374044, %i.dm
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i26 = phi i64 [ %i.eb, %.lr.ph.i21.i ], [ %.05.i.i26.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i27 = phi ptr [ %i.ed, %.lr.ph.i21.i ], [ %storemerge4.i.i27.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i27, align 4, !tbaa !225
  %i.du = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 4
  store i32 -2147483648, ptr %i.dw, align 4, !tbaa !225
  %i.dx = add i32 %i.du, -2
  store i32 %i.dx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 8
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !225
  %i.dz = add i32 %i.du, -3
  store i32 %i.dz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ea = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 12
  %i.eb = add i64 %.05.i.i26, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.ea, align 4, !tbaa !225
  %i.ec = add i32 %i.du, -4
  store i32 %i.ec, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ed = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.eb, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !22

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i, %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.ee = phi ptr [ %i.dl, %.lr.ph.i21.i.prol.loopexit ], [ %i.dl, %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i ], [ %i.dl, %.lr.ph.i21.i ], [ %i.ar, %.lr.ph.i15.i ], [ %i.ar, %.lr.ph.i15.i.prol.loopexit ]
  %.0.lcssa.i.i3739 = phi i64 [ %.0.lcssa.i.i374044, %.lr.ph.i21.i.prol.loopexit ], [ %.0.lcssa.i.i374044, %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test11movable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i ], [ %.0.lcssa.i.i374044, %.lr.ph.i21.i ], [ %i.d, %.lr.ph.i15.i ], [ %i.d, %.lr.ph.i15.i.prol.loopexit ]
  store i64 %.0.lcssa.i.i3739, ptr %i.ee, align 8, !tbaa !221
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS2_22input_iterator_wrapperISt14_List_iteratorIiEEEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENSF_4and_INSF_12is_differentINSF_17integral_constantIjLj1EEENSL_IjLj0EEEEENS0_3dtl21is_not_input_iteratorISE_EENSF_5bool_ILb1EEEST_EENSS_ILb0EEESV_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.74", align 8 ; 2 uses
  %5 = alloca %"class.boost::container::vec_iterator.75", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !223, !noalias !3015 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !230, !noalias !3016 ; 3 uses
  %.idx = shl nsw i64 %i.c, 2
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 5 uses
  %i.e = icmp ne ptr %1, %2
  %i.f = icmp ne i64 %i.c, 0
  %or.cond13 = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond13, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.015 = phi ptr [ %i.i, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.09.014 = phi ptr [ %i.j, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !67
  store i32 %i.h, ptr %.sroa.03.015, align 4, !tbaa !225
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.015, i64 4 ; 3 uses
  %i.j = load ptr, ptr %.sroa.09.014, align 8, !tbaa !187 ; 3 uses
  %i.k = icmp ne ptr %i.j, %2
  %i.l = icmp ne ptr %i.i, %i.d
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !3011

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.sroa.09.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.j, %.lr.ph ] ; 2 uses
  %.sroa.03.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.m = icmp eq ptr %.sroa.09.0.lcssa, %2
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = ptrtoint ptr %.sroa.03.0.lcssa to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 6 uses
  %.not3.i.i = icmp eq ptr %i.d, %.sroa.03.0.lcssa
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.r ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.prol ], [ %i.q, %.lr.ph.i.preheader.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.preheader.i ]
  %i.t = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !225
  %i.u = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3012

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.preheader.i
  %.05.i.i.unr = phi i64 [ %i.q, %.lr.ph.i.preheader.i ], [ %i.t, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.preheader.i ], [ %i.w, %.lr.ph.i.i.prol ]
  %i.x = icmp ult i64 %i.q, 4
  br i1 %i.x, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !225
  %i.y = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aa, align 4, !tbaa !225
  %i.ab = add i32 %i.y, -2
  store i32 %i.ab, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.ac, align 4, !tbaa !225
  %i.ad = add i32 %i.y, -3
  store i32 %i.ad, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.af = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.ae, align 4, !tbaa !225
  %i.ag = add i32 %i.y, -4
  store i32 %i.ag, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.i, !llvm.loop !22

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %i.ai = sub i64 %i.c, %i.q
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !221
  br label %bb.d

bb.c:                                             ; preds = %.critedge
  store ptr %i.d, ptr %4, align 8, !tbaa !270, !alias.scope !3017
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS2_22input_iterator_wrapperISt14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS0_3dtl21is_not_input_iteratorISI_EENSJ_5bool_ILb0EEESR_E4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.75") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %4, ptr %.sroa.09.0.lcssa, ptr %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20vector_capacity_testINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.75", align 8 ; 3 uses
  %3 = alloca %"class.boost::container::vec_iterator.75", align 8 ; 3 uses
  %4 = alloca %"class.boost::container::vec_iterator.75", align 8 ; 3 uses
  %5 = alloca %"class.boost::container::vec_iterator.75", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::small_vector.65", align 8 ; 12 uses
  %7 = alloca %"class.boost::container::small_vector.65", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !230  ; 3 uses
  %i.c = shl i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !222
end_hunk_5
begin_hunk_6_@_ZN5boost9container4test20vector_capacity_testINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  store i32 0, ptr %i.jp, align 4, !tbaa !225, !noalias !3051
  %i.jr = add i32 %i.jj, 4
  store i32 %i.jr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !3051
  %i.js = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i130, i64 16
  %.not.i.i.i.i.i.i.i131.3 = icmp eq i64 %i.jq, 0
  br i1 %.not.i.i.i.i.i.i.i131.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i128, !llvm.loop !28

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132: ; preds = %.lr.ph.i.i.i.i.i.i.i128.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i128, %bb.ac
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !221, !noalias !3051
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133

bb.ad:                                            ; preds = %bb.ab
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.75") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.iz, i64 noundef %i.ja)
  %.pre248.pre = load ptr, ptr %i.bh, align 8, !tbaa !91 ; 2 uses
  %.pre249.pre = load ptr, ptr %1, align 8, !tbaa !89 ; 2 uses
  %.pre288 = ptrtoint ptr %.pre248.pre to i64
  %.pre289 = ptrtoint ptr %.pre249.pre to i64     ; 2 uses
  %.pre290 = sub i64 %.pre288, %.pre289
  %.pre291 = ashr exact i64 %.pre290, 2
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133: ; preds = %bb.ad, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132
  %.pre284.pre-phi = phi i64 [ %.pre291, %bb.ad ], [ %i.hw, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132 ]
  %.pre280.pre-phi = phi i64 [ %.pre289, %bb.ad ], [ %.pre-phi277, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132 ]
  %.pre249 = phi ptr [ %.pre249.pre, %bb.ad ], [ %i.hs, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132 ]
  %.pre248 = phi ptr [ %.pre248.pre, %bb.ad ], [ %.pre248260, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit140

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit140: ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i139, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133
  %.pre-phi285 = phi i64 [ %i.hw, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i139 ], [ %.pre284.pre-phi, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133 ] ; 3 uses
  %.pre-phi281 = phi i64 [ %.pre-phi277, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i139 ], [ %.pre280.pre-phi, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133 ] ; 3 uses
  %i.jt = phi ptr [ %i.hs, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i139 ], [ %.pre249, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133 ] ; 4 uses
  %i.ju = phi ptr [ %.pre248260, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i139 ], [ %.pre248, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133 ] ; 3 uses
  %i.jv = icmp ugt i64 %i.cv, %.pre-phi285
  br i1 %i.jv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit140
  %i.jw = sub nuw i64 %i.cv, %.pre-phi285
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jw)
  %.pre250 = load ptr, ptr %i.bh, align 8, !tbaa !91
  %.pre251 = load ptr, ptr %1, align 8, !tbaa !89 ; 2 uses
  %.pre286 = ptrtoint ptr %.pre251 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit143

bb.af:                                            ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit140
  %i.jx = icmp ult i64 %i.cv, %.pre-phi285
  br i1 %i.jx, label %bb.ag, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit143

bb.ag:                                            ; preds = %bb.af
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.cv ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.ju, %i.jy
  br i1 %.not.i.i141, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit143, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142:     ; preds = %bb.ag
  store ptr %i.jy, ptr %i.bh, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit143

_ZNSt6vectorIiSaIiEE6resizeEm.exit143:            ; preds = %bb.ae, %bb.af, %bb.ag, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142
  %.pre-phi287 = phi i64 [ %.pre286, %bb.ae ], [ %.pre-phi281, %bb.af ], [ %.pre-phi281, %bb.ag ], [ %.pre-phi281, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142 ]
  %i.jz = phi ptr [ %.pre251, %bb.ae ], [ %i.jt, %bb.af ], [ %i.jt, %bb.ag ], [ %i.jt, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142 ]
  %i.ka = phi ptr [ %.pre250, %bb.ae ], [ %i.ju, %bb.af ], [ %i.ju, %bb.ag ], [ %i.jy, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142 ]
  %i.kb = load i64, ptr %i.a, align 8, !tbaa !230 ; 3 uses
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kc, %.pre-phi287
  %i.ke = ashr exact i64 %i.kd, 2
  %.not.i144 = icmp eq i64 %i.kb, %i.ke
  br i1 %.not.i144, label %bb.ah, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit143
  %i.kf = load ptr, ptr %0, align 8, !tbaa !223, !noalias !3052 ; 2 uses
  %.idx.i146 = shl nsw i64 %i.kb, 2
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %.idx.i146
  %.not2324.i147 = icmp eq i64 %i.kb, 0
  br i1 %.not2324.i147, label %.loopexit, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %bb.ah, %bb.ai
  %.sroa.019.026.i149 = phi ptr [ %i.kk, %bb.ai ], [ %i.kf, %bb.ah ] ; 2 uses
  %.sroa.015.025.i150 = phi ptr [ %i.kl, %bb.ai ], [ %i.jz, %bb.ah ] ; 2 uses
  %i.kh = load i32, ptr %.sroa.015.025.i150, align 4, !tbaa !67
  %i.ki = load i32, ptr %.sroa.019.026.i149, align 4, !tbaa !225
  %i.kj = icmp eq i32 %i.ki, %i.kh
  br i1 %i.kj, label %bb.ai, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_11movable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ai:                                            ; preds = %.lr.ph.i148
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i149, i64 4 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i150, i64 4
  %.not23.i151 = icmp eq ptr %i.kk, %i.kg
  br i1 %.not23.i151, label %.loopexit, label %.lr.ph.i148, !llvm.loop !21

.loopexit:                                        ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.km = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.km, ptr %6, align 8, !tbaa !223
  %i.kn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 0, ptr %i.kn, align 8, !tbaa !221
  %i.ko = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store i64 10, ptr %i.ko, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.kp = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.kp, ptr %7, align 8, !tbaa !223
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 0, ptr %i.kq, align 8, !tbaa !221
  %i.kr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store i64 10, ptr %i.kr, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.75") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %i.km, i64 noundef 1000)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ks = load i64, ptr %i.kn, align 8, !tbaa !230 ; 4 uses
  %i.kt = load i64, ptr %i.ko, align 8, !tbaa !222 ; 3 uses
  %i.ku = udiv i64 %i.ks, 10                      ; 9 uses
  %i.kv = load i64, ptr %i.kq, align 8, !tbaa !230 ; 8 uses
  %i.kw = icmp ult i64 %i.ku, %i.kv
  br i1 %i.kw, label %.lr.ph.i.preheader.i.i.i192, label %bb.ak

.lr.ph.i.preheader.i.i.i192:                      ; preds = %bb.aj
  %i.kx = sub nuw i64 %i.kv, %i.ku                ; 4 uses
  %i.ky = load ptr, ptr %7, align 8, !tbaa !223
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kv
  %i.la = sub i64 0, %i.kx
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.la ; 2 uses
  %xtraiter379 = and i64 %i.kx, 3                 ; 2 uses
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %.lr.ph.i.i.i.i193.prol.loopexit, label %.lr.ph.i.i.i.i193.prol

.lr.ph.i.i.i.i193.prol:                           ; preds = %.lr.ph.i.preheader.i.i.i192, %.lr.ph.i.i.i.i193.prol
  %.05.i.i.i.i194.prol = phi i64 [ %i.lc, %.lr.ph.i.i.i.i193.prol ], [ %i.kx, %.lr.ph.i.preheader.i.i.i192 ]
  %storemerge4.i.i.i.i195.prol = phi ptr [ %i.lf, %.lr.ph.i.i.i.i193.prol ], [ %i.lb, %.lr.ph.i.preheader.i.i.i192 ] ; 2 uses
  %prol.iter381 = phi i64 [ %prol.iter381.next, %.lr.ph.i.i.i.i193.prol ], [ 0, %.lr.ph.i.preheader.i.i.i192 ]
  %i.lc = add i64 %.05.i.i.i.i194.prol, -1        ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i195.prol, align 4, !tbaa !225
  %i.ld = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.le = add i32 %i.ld, -1
  store i32 %i.le, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.lf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i195.prol, i64 4 ; 2 uses
  %prol.iter381.next = add i64 %prol.iter381, 1   ; 2 uses
  %prol.iter381.cmp.not = icmp eq i64 %prol.iter381.next, %xtraiter379
  br i1 %prol.iter381.cmp.not, label %.lr.ph.i.i.i.i193.prol.loopexit, label %.lr.ph.i.i.i.i193.prol, !llvm.loop !3040

.lr.ph.i.i.i.i193.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i193.prol, %.lr.ph.i.preheader.i.i.i192
  %.05.i.i.i.i194.unr = phi i64 [ %i.kx, %.lr.ph.i.preheader.i.i.i192 ], [ %i.lc, %.lr.ph.i.i.i.i193.prol ]
  %storemerge4.i.i.i.i195.unr = phi ptr [ %i.lb, %.lr.ph.i.preheader.i.i.i192 ], [ %i.lf, %.lr.ph.i.i.i.i193.prol ]
  %i.lg = sub i64 %i.ku, %i.kv
  %i.lh = icmp ugt i64 %i.lg, -4
  br i1 %i.lh, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i197, label %.lr.ph.i.i.i.i193

.lr.ph.i.i.i.i193:                                ; preds = %.lr.ph.i.i.i.i193.prol.loopexit, %.lr.ph.i.i.i.i193
  %.05.i.i.i.i194 = phi i64 [ %i.lp, %.lr.ph.i.i.i.i193 ], [ %.05.i.i.i.i194.unr, %.lr.ph.i.i.i.i193.prol.loopexit ]
  %storemerge4.i.i.i.i195 = phi ptr [ %i.lr, %.lr.ph.i.i.i.i193 ], [ %storemerge4.i.i.i.i195.unr, %.lr.ph.i.i.i.i193.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i195, align 4, !tbaa !225
  %i.li = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.lj = add i32 %i.li, -1
  store i32 %i.lj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.lk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i195, i64 4
  store i32 -2147483648, ptr %i.lk, align 4, !tbaa !225
  %i.ll = add i32 %i.li, -2
  store i32 %i.ll, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.lm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i195, i64 8
  store i32 -2147483648, ptr %i.lm, align 4, !tbaa !225
  %i.ln = add i32 %i.li, -3
  store i32 %i.ln, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.lo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i195, i64 12
  %i.lp = add i64 %.05.i.i.i.i194, -4             ; 2 uses
  store i32 -2147483648, ptr %i.lo, align 4, !tbaa !225
  %i.lq = add i32 %i.li, -4
  store i32 %i.lq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.lr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i195, i64 16
  %.not.i.i.i.i196.3 = icmp eq i64 %i.lp, 0
  br i1 %.not.i.i.i.i196.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i197, label %.lr.ph.i.i.i.i193, !llvm.loop !22

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i197: ; preds = %.lr.ph.i.i.i.i193, %.lr.ph.i.i.i.i193.prol.loopexit
  store i64 %i.ku, ptr %i.kq, align 8, !tbaa !221
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199

bb.ak:                                            ; preds = %bb.aj
  %i.ls = load ptr, ptr %7, align 8, !tbaa !223
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.kv ; 3 uses
  %i.lu = sub nuw nsw i64 %i.ku, %i.kv            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.lv = load i64, ptr %i.kr, align 8, !tbaa !222, !noalias !3053
  %i.lw = sub i64 %i.lv, %i.kv
  %.not.i.i.i184 = icmp ugt i64 %i.lu, %i.lw
  br i1 %.not.i.i.i184, label %bb.am, label %bb.al, !prof !74

bb.al:                                            ; preds = %bb.ak
  %.not14.i.i.i.i.i.i.i185 = icmp eq i64 %i.lu, 0
  br i1 %.not14.i.i.i.i.i.i.i185, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i190, label %.lr.ph.i.i.i.i.i.i.i186.preheader

.lr.ph.i.i.i.i.i.i.i186.preheader:                ; preds = %bb.al
  %xtraiter376 = and i64 %i.lu, 3                 ; 2 uses
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i186.prol

.lr.ph.i.i.i.i.i.i.i186.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i186.preheader, %.lr.ph.i.i.i.i.i.i.i186.prol
  %.016.i.i.i.i.i.i.i187.prol = phi i64 [ %i.lx, %.lr.ph.i.i.i.i.i.i.i186.prol ], [ %i.lu, %.lr.ph.i.i.i.i.i.i.i186.preheader ]
  %.01315.i.i.i.i.i.i.i188.prol = phi ptr [ %i.ma, %.lr.ph.i.i.i.i.i.i.i186.prol ], [ %i.lt, %.lr.ph.i.i.i.i.i.i.i186.preheader ] ; 3 uses
  %prol.iter378 = phi i64 [ %prol.iter378.next, %.lr.ph.i.i.i.i.i.i.i186.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i186.preheader ]
  %i.lx = add i64 %.016.i.i.i.i.i.i.i187.prol, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i188.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i188.prol, align 4, !tbaa !225, !noalias !3053
  %i.ly = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !3053
  %i.lz = add i32 %i.ly, 1
  store i32 %i.lz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !3053
  %i.ma = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i188.prol, i64 4 ; 2 uses
  %prol.iter378.next = add i64 %prol.iter378, 1   ; 2 uses
  %prol.iter378.cmp.not = icmp eq i64 %prol.iter378.next, %xtraiter376
  br i1 %prol.iter378.cmp.not, label %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i186.prol, !llvm.loop !3043

.lr.ph.i.i.i.i.i.i.i186.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i186.prol, %.lr.ph.i.i.i.i.i.i.i186.preheader
  %.016.i.i.i.i.i.i.i187.unr = phi i64 [ %i.lu, %.lr.ph.i.i.i.i.i.i.i186.preheader ], [ %i.lx, %.lr.ph.i.i.i.i.i.i.i186.prol ]
  %.01315.i.i.i.i.i.i.i188.unr = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i.i186.preheader ], [ %i.ma, %.lr.ph.i.i.i.i.i.i.i186.prol ]
  %i.mb = sub i64 %i.kv, %i.ku
  %i.mc = icmp ugt i64 %i.mb, -4
  br i1 %i.mc, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i190, label %.lr.ph.i.i.i.i.i.i.i186

.lr.ph.i.i.i.i.i.i.i186:                          ; preds = %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i186
  %.016.i.i.i.i.i.i.i187 = phi i64 [ %i.mk, %.lr.ph.i.i.i.i.i.i.i186 ], [ %.016.i.i.i.i.i.i.i187.unr, %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit ]
  %.01315.i.i.i.i.i.i.i188 = phi ptr [ %i.mm, %.lr.ph.i.i.i.i.i.i.i186 ], [ %.01315.i.i.i.i.i.i.i188.unr, %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i188) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i188, align 4, !tbaa !225, !noalias !3053
  %i.md = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !3053 ; 4 uses
  %i.me = add i32 %i.md, 1
  store i32 %i.me, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !3053
  %i.mf = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i188, i64 4
  store i32 0, ptr %i.mf, align 4, !tbaa !225, !noalias !3053
  %i.mg = add i32 %i.md, 2
  store i32 %i.mg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !3053
  %i.mh = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i188, i64 8
  store i32 0, ptr %i.mh, align 4, !tbaa !225, !noalias !3053
  %i.mi = add i32 %i.md, 3
  store i32 %i.mi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !3053
  %i.mj = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i188, i64 12
  %i.mk = add i64 %.016.i.i.i.i.i.i.i187, -4      ; 2 uses
  store i32 0, ptr %i.mj, align 4, !tbaa !225, !noalias !3053
  %i.ml = add i32 %i.md, 4
  store i32 %i.ml, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67, !noalias !3053
  %i.mm = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i188, i64 16
  %.not.i.i.i.i.i.i.i189.3 = icmp eq i64 %i.mk, 0
  br i1 %.not.i.i.i.i.i.i.i189.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i190, label %.lr.ph.i.i.i.i.i.i.i186, !llvm.loop !28

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i190: ; preds = %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i186, %bb.al
  store i64 %i.ku, ptr %i.kq, align 8, !tbaa !221, !noalias !3053
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i191

bb.am:                                            ; preds = %bb.ak
  invoke void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.75") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.lt, i64 noundef %i.lu)
          to label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i191 unwind label %bb.ao

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i191: ; preds = %bb.am, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199: ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i191, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i197
  invoke void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 10)
          to label %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit unwind label %bb.ao

_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199
  %i.mn = load i64, ptr %i.kr, align 8, !tbaa !222 ; 3 uses
  %.not = icmp uge i64 %i.mn, %i.kt
  %.pr.pre = load i64, ptr %i.kq, align 8, !tbaa !230 ; 2 uses
  %i.mo = icmp eq i64 %.pr.pre, %i.ks
  %or.cond = select i1 %.not, i1 %i.mo, i1 false
  br i1 %or.cond, label %bb.ap, label %thread-pre-split

bb.an:                                            ; preds = %.loopexit
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ao:                                            ; preds = %bb.aq, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199, %bb.am
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit
  %i.mr = load i64, ptr %i.ko, align 8, !tbaa !222
  %i.ms = udiv i64 %i.kt, 10                      ; 2 uses
  %.not51 = icmp uge i64 %i.mr, %i.ms
  %i.mt = load i64, ptr %i.kn, align 8
  %i.mu = icmp eq i64 %i.mt, %i.ku
  %or.cond222 = select i1 %.not51, i1 %i.mu, i1 false
  br i1 %or.cond222, label %bb.aq, label %thread-pre-split

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 10)
          to label %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 unwind label %bb.ao

_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202: ; preds = %bb.aq
  %i.mv = load i64, ptr %i.ko, align 8, !tbaa !222
  %.not53 = icmp uge i64 %i.mv, %i.kt
  %i.mw = load i64, ptr %i.kn, align 8
  %i.mx = icmp eq i64 %i.mw, %i.ks
  %or.cond224.not228.not348 = select i1 %.not53, i1 %i.mx, i1 false
  %i.my = load i64, ptr %i.kr, align 8            ; 2 uses
  %.not54 = icmp uge i64 %i.my, %i.ms
  %or.cond225.not = select i1 %or.cond224.not228.not348, i1 %.not54, i1 false
  %.pr.pre252 = load i64, ptr %i.kq, align 8, !tbaa !230 ; 2 uses
  %i.mz = icmp eq i64 %.pr.pre252, %i.ku
  %spec.select = select i1 %or.cond225.not, i1 %i.mz, i1 false
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202, %bb.ap, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit
  %i.na = phi i64 [ %i.my, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ %i.mn, %bb.ap ], [ %i.mn, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ]
  %i.nb = phi i64 [ %.pr.pre252, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ %i.ks, %bb.ap ], [ %.pr.pre, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ] ; 5 uses
  %.1 = phi i1 [ %spec.select, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ false, %bb.ap ], [ false, %_ZN5boost9container12small_vectorINS0_4test11movable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ]
  %i.nc = load ptr, ptr %7, align 8, !tbaa !223   ; 4 uses
  %.not3.i.i = icmp eq i64 %i.nb, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter382 = and i64 %i.nb, 3                 ; 2 uses
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.nd, %.lr.ph.i.i.prol ], [ %i.nb, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.ng, %.lr.ph.i.i.prol ], [ %i.nc, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter384 = phi i64 [ %prol.iter384.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.nd = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !225
  %i.ne = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.nf = add i32 %i.ne, -1
  store i32 %i.nf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ng = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter384.next = add i64 %prol.iter384, 1   ; 2 uses
  %prol.iter384.cmp.not = icmp eq i64 %prol.iter384.next, %xtraiter382
  br i1 %prol.iter384.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3044

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.nb, %.lr.ph.i.i.preheader ], [ %i.nd, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.nc, %.lr.ph.i.i.preheader ], [ %i.ng, %.lr.ph.i.i.prol ]
  %i.nh = icmp ult i64 %i.nb, 4
  br i1 %i.nh, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.np, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.nr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !225
  %i.ni = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.nj = add i32 %i.ni, -1
  store i32 %i.nj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.nk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.nk, align 4, !tbaa !225
  %i.nl = add i32 %i.ni, -2
  store i32 %i.nl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.nm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.nm, align 4, !tbaa !225
  %i.nn = add i32 %i.ni, -3
  store i32 %i.nn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.no = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.np = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.no, align 4, !tbaa !225
  %i.nq = add i32 %i.ni, -4
  store i32 %i.nq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.nr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i203.3 = icmp eq i64 %i.np, 0
  br i1 %.not.i.i203.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !22

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre254 = load i64, ptr %i.kr, align 8, !tbaa !222
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, %thread-pre-split
  %i.ns = phi i64 [ %.pre254, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit ], [ %i.na, %thread-pre-split ] ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ns, 0
  %i.nt = icmp eq ptr %i.kp, %i.nc
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.nt
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.nu = shl i64 %i.ns, 2
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nu) #22
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.nv = load ptr, ptr %6, align 8, !tbaa !223   ; 4 uses
  %i.nw = load i64, ptr %i.kn, align 8, !tbaa !230 ; 5 uses
  %.not3.i.i204 = icmp eq i64 %i.nw, 0
  br i1 %.not3.i.i204, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205.preheader

.lr.ph.i.i205.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit
  %xtraiter385 = and i64 %i.nw, 3                 ; 2 uses
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %.lr.ph.i.i205.prol.loopexit, label %.lr.ph.i.i205.prol

.lr.ph.i.i205.prol:                               ; preds = %.lr.ph.i.i205.preheader, %.lr.ph.i.i205.prol
  %.05.i.i206.prol = phi i64 [ %i.nx, %.lr.ph.i.i205.prol ], [ %i.nw, %.lr.ph.i.i205.preheader ]
  %storemerge4.i.i207.prol = phi ptr [ %i.oa, %.lr.ph.i.i205.prol ], [ %i.nv, %.lr.ph.i.i205.preheader ] ; 2 uses
  %prol.iter387 = phi i64 [ %prol.iter387.next, %.lr.ph.i.i205.prol ], [ 0, %.lr.ph.i.i205.preheader ]
  %i.nx = add i64 %.05.i.i206.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i207.prol, align 4, !tbaa !225
  %i.ny = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.nz = add i32 %i.ny, -1
  store i32 %i.nz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.oa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207.prol, i64 4 ; 2 uses
  %prol.iter387.next = add i64 %prol.iter387, 1   ; 2 uses
  %prol.iter387.cmp.not = icmp eq i64 %prol.iter387.next, %xtraiter385
  br i1 %prol.iter387.cmp.not, label %.lr.ph.i.i205.prol.loopexit, label %.lr.ph.i.i205.prol, !llvm.loop !3045

.lr.ph.i.i205.prol.loopexit:                      ; preds = %.lr.ph.i.i205.prol, %.lr.ph.i.i205.preheader
  %.05.i.i206.unr = phi i64 [ %i.nw, %.lr.ph.i.i205.preheader ], [ %i.nx, %.lr.ph.i.i205.prol ]
  %storemerge4.i.i207.unr = phi ptr [ %i.nv, %.lr.ph.i.i205.preheader ], [ %i.oa, %.lr.ph.i.i205.prol ]
  %i.ob = icmp ult i64 %i.nw, 4
  br i1 %i.ob, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205

.lr.ph.i.i205:                                    ; preds = %.lr.ph.i.i205.prol.loopexit, %.lr.ph.i.i205
  %.05.i.i206 = phi i64 [ %i.oj, %.lr.ph.i.i205 ], [ %.05.i.i206.unr, %.lr.ph.i.i205.prol.loopexit ]
  %storemerge4.i.i207 = phi ptr [ %i.ol, %.lr.ph.i.i205 ], [ %storemerge4.i.i207.unr, %.lr.ph.i.i205.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i207, align 4, !tbaa !225
  %i.oc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.od = add i32 %i.oc, -1
  store i32 %i.od, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.oe = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 4
  store i32 -2147483648, ptr %i.oe, align 4, !tbaa !225
  %i.of = add i32 %i.oc, -2
  store i32 %i.of, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.og = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 8
  store i32 -2147483648, ptr %i.og, align 4, !tbaa !225
  %i.oh = add i32 %i.oc, -3
  store i32 %i.oh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.oi = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 12
  %i.oj = add i64 %.05.i.i206, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.oi, align 4, !tbaa !225
  %i.ok = add i32 %i.oc, -4
  store i32 %i.ok, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ol = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 16
  %.not.i.i208.3 = icmp eq i64 %i.oj, 0
  br i1 %.not.i.i208.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205, !llvm.loop !22

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209: ; preds = %.lr.ph.i.i205.prol.loopexit, %.lr.ph.i.i205, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit
  %i.om = load i64, ptr %i.ko, align 8, !tbaa !222 ; 2 uses
  %.not.i1.i210 = icmp eq i64 %i.om, 0
end_hunk_6
begin_hunk_7_@_ZN5boost9container4test27vector_move_assignable_onlyINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEEEEiNS_11move_detail17integral_constantIbLb1EEE:bb.a
  br i1 %or.cond.i.i.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i.thread, label %bb.l

bb.l:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i
  %i.bq = shl i64 %i.bo, 2
  tail call void @_ZdlPvm(ptr noundef %.pre980.pre, i64 noundef %i.bq) #22
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i.thread

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i.thread: ; preds = %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvEaSEOS6_.exit.thread, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i, %bb.l
  %.2.i8638741118 = phi i1 [ %.2.i863874, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i ], [ %.2.i863874, %bb.l ], [ %.not.i1102, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvEaSEOS6_.exit.thread ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef 64) #26
  %i.br = load ptr, ptr %i.x, align 8, !tbaa !235 ; 4 uses
  %i.bs = load i64, ptr %i.y, align 8, !tbaa !242 ; 5 uses
  %.not3.i.i.i.i.i476 = icmp eq i64 %i.bs, 0
  br i1 %.not3.i.i.i.i.i476, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477.preheader

.lr.ph.i.i.i.i.i477.preheader:                    ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i.thread
  %xtraiter1190 = and i64 %i.bs, 3                ; 2 uses
  %lcmp.mod1191.not = icmp eq i64 %xtraiter1190, 0
  br i1 %lcmp.mod1191.not, label %.lr.ph.i.i.i.i.i477.prol.loopexit, label %.lr.ph.i.i.i.i.i477.prol

.lr.ph.i.i.i.i.i477.prol:                         ; preds = %.lr.ph.i.i.i.i.i477.preheader, %.lr.ph.i.i.i.i.i477.prol
  %.05.i.i.i.i.i478.prol = phi i64 [ %i.bt, %.lr.ph.i.i.i.i.i477.prol ], [ %i.bs, %.lr.ph.i.i.i.i.i477.preheader ]
  %storemerge4.i.i.i.i.i479.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i477.prol ], [ %i.br, %.lr.ph.i.i.i.i.i477.preheader ] ; 2 uses
  %prol.iter1192 = phi i64 [ %prol.iter1192.next, %.lr.ph.i.i.i.i.i477.prol ], [ 0, %.lr.ph.i.i.i.i.i477.preheader ]
  %i.bt = add i64 %.05.i.i.i.i.i478.prol, -1      ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i479.prol, align 4, !tbaa !237
  %i.bu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bv = add i32 %i.bu, -1
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479.prol, i64 4 ; 2 uses
  %prol.iter1192.next = add i64 %prol.iter1192, 1 ; 2 uses
  %prol.iter1192.cmp.not = icmp eq i64 %prol.iter1192.next, %xtraiter1190
  br i1 %prol.iter1192.cmp.not, label %.lr.ph.i.i.i.i.i477.prol.loopexit, label %.lr.ph.i.i.i.i.i477.prol, !llvm.loop !3260

.lr.ph.i.i.i.i.i477.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i477.prol, %.lr.ph.i.i.i.i.i477.preheader
  %.05.i.i.i.i.i478.unr = phi i64 [ %i.bs, %.lr.ph.i.i.i.i.i477.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i477.prol ]
  %storemerge4.i.i.i.i.i479.unr = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i477.preheader ], [ %i.bw, %.lr.ph.i.i.i.i.i477.prol ]
  %i.bx = icmp ult i64 %i.bs, 4
  br i1 %i.bx, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477

.lr.ph.i.i.i.i.i477:                              ; preds = %.lr.ph.i.i.i.i.i477.prol.loopexit, %.lr.ph.i.i.i.i.i477
  %.05.i.i.i.i.i478 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i477 ], [ %.05.i.i.i.i.i478.unr, %.lr.ph.i.i.i.i.i477.prol.loopexit ]
  %storemerge4.i.i.i.i.i479 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i477 ], [ %storemerge4.i.i.i.i.i479.unr, %.lr.ph.i.i.i.i.i477.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.i479, align 4, !tbaa !237
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 4
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !237
  %i.cb = add i32 %i.by, -2
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 8
  store i32 -2147483648, ptr %i.cc, align 4, !tbaa !237
  %i.cd = add i32 %i.by, -3
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 12
  %i.cf = add i64 %.05.i.i.i.i.i478, -4           ; 2 uses
  store i32 -2147483648, ptr %i.ce, align 4, !tbaa !237
  %i.cg = add i32 %i.by, -4
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.i479, i64 16
  %.not.i.i.i.i.i480.3 = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i.i.i.i480.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481, label %.lr.ph.i.i.i.i.i477, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481: ; preds = %.lr.ph.i.i.i.i.i477.prol.loopexit, %.lr.ph.i.i.i.i.i477, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i.thread
  %i.ci = load i64, ptr %i.z, align 8, !tbaa !234 ; 2 uses
  %.not.i1.i.i.i.i482 = icmp eq i64 %i.ci, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ck = icmp eq ptr %i.cj, %i.br
  %or.cond.i.i.i.i483 = select i1 %.not.i1.i.i.i.i482, i1 true, i1 %i.ck
  br i1 %or.cond.i.i.i.i483, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481
  %i.cl = shl i64 %i.ci, 2
  tail call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.cl) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i.i.i481
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 64) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !89  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = load ptr, ptr %i.v, align 8, !tbaa !90
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = sub i64 %i.co, %i.cp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cq) #26
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.n, %bb.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.2.i8638741118, label %bb.p, label %bb.iu

bb.p:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3359)
  %i.cr = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !3359 ; 101 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 4 uses
  store ptr %i.cs, ptr %i.cr, align 8, !tbaa !235, !noalias !3359
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 37 uses
  store i64 0, ptr %i.ct, align 8, !tbaa !233, !noalias !3359
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 5 uses
  store i64 10, ptr %i.cu, align 8, !tbaa !234, !noalias !3359
  store ptr %i.cr, ptr %6, align 8, !tbaa !240, !alias.scope !3359
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3360)
  %i.cv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #24
          to label %bb.q unwind label %bb.z       ; 90 uses

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false), !noalias !3360
  store ptr %i.cv, ptr %7, align 8, !tbaa !94, !alias.scope !3360
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !242 ; 9 uses
  %i.cx = icmp ugt i64 %i.cw, 100
  br i1 %i.cx, label %.lr.ph.i.preheader.i.i.i, label %bb.r

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.q
  %i.cy = add i64 %i.cw, -100                     ; 2 uses
  %i.cz = load ptr, ptr %i.cr, align 8, !tbaa !235
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 400 ; 2 uses
  %i.db = add i64 %i.cw, -101
  %xtraiter1196 = and i64 %i.cw, 3                ; 2 uses
  %lcmp.mod1197.not = icmp eq i64 %xtraiter1196, 0
  br i1 %lcmp.mod1197.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.preheader.i.i.i, %.lr.ph.i.i.i.i.prol
  %.05.i.i.i.i.prol = phi i64 [ %i.dc, %.lr.ph.i.i.i.i.prol ], [ %i.cy, %.lr.ph.i.preheader.i.i.i ]
  %storemerge4.i.i.i.i.prol = phi ptr [ %i.df, %.lr.ph.i.i.i.i.prol ], [ %i.da, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %prol.iter1198 = phi i64 [ %prol.iter1198.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.preheader.i.i.i ]
  %i.dc = add i64 %.05.i.i.i.i.prol, -1           ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i.prol, align 4, !tbaa !237
  %i.dd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.de = add i32 %i.dd, -1
  store i32 %i.de, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.df = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter1198.next = add i64 %prol.iter1198, 1 ; 2 uses
  %prol.iter1198.cmp.not = icmp eq i64 %prol.iter1198.next, %xtraiter1196
  br i1 %prol.iter1198.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3265

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i.unr = phi i64 [ %i.cy, %.lr.ph.i.preheader.i.i.i ], [ %i.dc, %.lr.ph.i.i.i.i.prol ]
  %storemerge4.i.i.i.i.unr = phi ptr [ %i.da, %.lr.ph.i.preheader.i.i.i ], [ %i.df, %.lr.ph.i.i.i.i.prol ]
  %i.dg = icmp ult i64 %i.db, 3
  br i1 %i.dg, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i.i ], [ %.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %storemerge4.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i ], [ %storemerge4.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i, align 4, !tbaa !237
  %i.dh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 4
  store i32 -2147483648, ptr %i.dj, align 4, !tbaa !237
  %i.dk = add i32 %i.dh, -2
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 8
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !237
  %i.dm = add i32 %i.dh, -3
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 12
  %i.do = add i64 %.05.i.i.i.i, -4                ; 2 uses
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !237
  %i.dp = add i32 %i.dh, -4
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit
  store i64 100, ptr %i.ct, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit

bb.r:                                             ; preds = %bb.q
  %i.dr = load ptr, ptr %i.cr, align 8, !tbaa !235
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.cw ; 3 uses
  %i.dt = sub nuw nsw i64 100, %i.cw              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.du = load i64, ptr %i.cu, align 8, !tbaa !234, !noalias !3361
  %i.dv = sub i64 %i.du, %i.cw
  %.not.i.i.i488 = icmp ugt i64 %i.dt, %i.dv
  br i1 %.not.i.i.i488, label %bb.t, label %bb.s, !prof !74

bb.s:                                             ; preds = %bb.r
  %.not14.i.i.i.i.i.i.i = icmp eq i64 %i.cw, 100
  br i1 %.not14.i.i.i.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.s
  %xtraiter1193 = and i64 %i.dt, 3                ; 2 uses
  %lcmp.mod1194.not = icmp eq i64 %xtraiter1193, 0
  br i1 %lcmp.mod1194.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.016.i.i.i.i.i.i.i.prol = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.01315.i.i.i.i.i.i.i.prol = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter1195 = phi i64 [ %prol.iter1195.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.dw = add i64 %.016.i.i.i.i.i.i.i.prol, -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i.prol, align 4, !tbaa !237, !noalias !3361
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3361
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3361
  %i.dz = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter1195.next = add i64 %prol.iter1195, 1 ; 2 uses
  %prol.iter1195.cmp.not = icmp eq i64 %prol.iter1195.next, %xtraiter1193
  br i1 %prol.iter1195.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !3268

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.016.i.i.i.i.i.i.i.unr = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dw, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01315.i.i.i.i.i.i.i.unr = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dz, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ea = add nsw i64 %i.cw, -97
  %i.eb = icmp ult i64 %i.ea, 3
  br i1 %i.eb, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.016.i.i.i.i.i.i.i = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i.i ], [ %.016.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i.i ], [ %.01315.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i, align 4, !tbaa !237, !noalias !3361
  %i.ec = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3361 ; 4 uses
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3361
  %i.ee = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i, i64 4
  store i32 0, ptr %i.ee, align 4, !tbaa !237, !noalias !3361
  %i.ef = add i32 %i.ec, 2
  store i32 %i.ef, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3361
  %i.eg = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i, i64 8
  store i32 0, ptr %i.eg, align 4, !tbaa !237, !noalias !3361
  %i.eh = add i32 %i.ec, 3
  store i32 %i.eh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3361
  %i.ei = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i, i64 12
  %i.ej = add i64 %.016.i.i.i.i.i.i.i, -4         ; 2 uses
  store i32 0, ptr %i.ei, align 4, !tbaa !237, !noalias !3361
  %i.ek = add i32 %i.ec, 4
  store i32 %i.ek, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3361
  %i.el = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !36

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.s
  store i64 100, ptr %i.ct, align 8, !tbaa !233, !noalias !3361
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i

bb.t:                                             ; preds = %bb.r
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.103") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef %i.ds, i64 noundef %i.dt)
          to label %._ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i_crit_edge unwind label %bb.aa

._ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i_crit_edge: ; preds = %bb.t
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.pre981.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !91
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i: ; preds = %._ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i_crit_edge, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i
  %.pre981 = phi ptr [ %.pre981.pre, %._ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i_crit_edge ], [ null, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %.pre982 = load ptr, ptr %i.cv, align 8, !tbaa !89
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i
  %i.em = phi ptr [ %.pre982, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i ], [ null, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i ] ; 5 uses
  %i.en = phi ptr [ %.pre981, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i ], [ null, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 41 uses
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.em to i64               ; 4 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 2 uses
  %i.es = ashr exact i64 %i.er, 2                 ; 2 uses
  %i.et = icmp ult i64 %i.es, 100
  br i1 %i.et, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit
  %i.eu = sub nuw nsw i64 100, %i.es
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef %i.eu)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.u
  %.pre983 = load ptr, ptr %i.cv, align 8, !tbaa !89 ; 2 uses
  %.pre992 = ptrtoint ptr %.pre983 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.v:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit
  %.not875 = icmp eq i64 %i.er, 400
  br i1 %.not875, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 400 ; 2 uses
  %.not.i.i = icmp eq ptr %i.en, %i.ev
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.w
  store ptr %i.ev, ptr %i.eo, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.w, %bb.v
  %.pre-phi = phi i64 [ %.pre992, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.eq, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.eq, %bb.w ], [ %i.eq, %bb.v ] ; 2 uses
  %i.ew = phi ptr [ %.pre983, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.em, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.em, %bb.w ], [ %i.em, %bb.v ] ; 2 uses
  %i.ex = load i64, ptr %i.ct, align 8, !tbaa !242 ; 12 uses
  %i.ey = load ptr, ptr %i.eo, align 8, !tbaa !91 ; 2 uses
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = sub i64 %i.ez, %.pre-phi                ; 2 uses
  %i.fb = ashr exact i64 %i.fa, 2                 ; 2 uses
  %.not.i491 = icmp eq i64 %i.ex, %i.fb
  br i1 %.not.i491, label %bb.x, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit499

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.fc = load ptr, ptr %i.cr, align 8, !tbaa !235, !noalias !3362 ; 5 uses
  %.idx.i493 = shl nsw i64 %i.ex, 2
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 %.idx.i493
  %.not2324.i494 = icmp eq i64 %i.ex, 0
  br i1 %.not2324.i494, label %.thread1119, label %.lr.ph.i495

.lr.ph.i495:                                      ; preds = %bb.x, %bb.y
  %.sroa.019.026.i496 = phi ptr [ %i.fh, %bb.y ], [ %i.fc, %bb.x ] ; 2 uses
  %.sroa.015.025.i497 = phi ptr [ %i.fi, %bb.y ], [ %i.ew, %bb.x ] ; 2 uses
  %i.fe = load i32, ptr %.sroa.015.025.i497, align 4, !tbaa !67
  %i.ff = load i32, ptr %.sroa.019.026.i496, align 4, !tbaa !237
  %i.fg = icmp eq i32 %i.ff, %i.fe
  br i1 %i.fg, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit499

bb.y:                                             ; preds = %.lr.ph.i495
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i496, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i497, i64 4
  %.not23.i498 = icmp eq ptr %i.fh, %i.fd
  br i1 %.not23.i498, label %.loopexit906, label %.lr.ph.i495, !llvm.loop !23

.body:                                            ; preds = %bb.j, %bb.d, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %i.ax, %bb.j ], [ %i.ab, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

bb.z:                                             ; preds = %bb.p
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.aa:                                            ; preds = %bb.ae, %bb.ad, %bb.u, %bb.t
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

.loopexit906:                                     ; preds = %bb.y
  %i.fl = icmp ugt i64 %i.ex, 200
  br i1 %i.fl, label %.lr.ph.i.preheader.i.i.i508, label %bb.ab

.lr.ph.i.preheader.i.i.i508:                      ; preds = %.loopexit906
  %i.fm = add i64 %i.ex, -200                     ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 800 ; 2 uses
  %i.fo = add i64 %i.ex, -201
  %xtraiter1199 = and i64 %i.ex, 3                ; 2 uses
  %lcmp.mod1200.not = icmp eq i64 %xtraiter1199, 0
  br i1 %lcmp.mod1200.not, label %.lr.ph.i.i.i.i509.prol.loopexit, label %.lr.ph.i.i.i.i509.prol

.lr.ph.i.i.i.i509.prol:                           ; preds = %.lr.ph.i.preheader.i.i.i508, %.lr.ph.i.i.i.i509.prol
  %.05.i.i.i.i510.prol = phi i64 [ %i.fp, %.lr.ph.i.i.i.i509.prol ], [ %i.fm, %.lr.ph.i.preheader.i.i.i508 ]
  %storemerge4.i.i.i.i511.prol = phi ptr [ %i.fs, %.lr.ph.i.i.i.i509.prol ], [ %i.fn, %.lr.ph.i.preheader.i.i.i508 ] ; 2 uses
  %prol.iter1201 = phi i64 [ %prol.iter1201.next, %.lr.ph.i.i.i.i509.prol ], [ 0, %.lr.ph.i.preheader.i.i.i508 ]
  %i.fp = add i64 %.05.i.i.i.i510.prol, -1        ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i511.prol, align 4, !tbaa !237
  %i.fq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.fr = add i32 %i.fq, -1
  store i32 %i.fr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.fs = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i511.prol, i64 4 ; 2 uses
  %prol.iter1201.next = add i64 %prol.iter1201, 1 ; 2 uses
  %prol.iter1201.cmp.not = icmp eq i64 %prol.iter1201.next, %xtraiter1199
  br i1 %prol.iter1201.cmp.not, label %.lr.ph.i.i.i.i509.prol.loopexit, label %.lr.ph.i.i.i.i509.prol, !llvm.loop !3271

.lr.ph.i.i.i.i509.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i509.prol, %.lr.ph.i.preheader.i.i.i508
  %.05.i.i.i.i510.unr = phi i64 [ %i.fm, %.lr.ph.i.preheader.i.i.i508 ], [ %i.fp, %.lr.ph.i.i.i.i509.prol ]
  %storemerge4.i.i.i.i511.unr = phi ptr [ %i.fn, %.lr.ph.i.preheader.i.i.i508 ], [ %i.fs, %.lr.ph.i.i.i.i509.prol ]
  %i.ft = icmp ult i64 %i.fo, 3
  br i1 %i.ft, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513, label %.lr.ph.i.i.i.i509

.lr.ph.i.i.i.i509:                                ; preds = %.lr.ph.i.i.i.i509.prol.loopexit, %.lr.ph.i.i.i.i509
  %.05.i.i.i.i510 = phi i64 [ %i.gb, %.lr.ph.i.i.i.i509 ], [ %.05.i.i.i.i510.unr, %.lr.ph.i.i.i.i509.prol.loopexit ]
  %storemerge4.i.i.i.i511 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i509 ], [ %storemerge4.i.i.i.i511.unr, %.lr.ph.i.i.i.i509.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i511, align 4, !tbaa !237
  %i.fu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.fv = add i32 %i.fu, -1
  store i32 %i.fv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.fw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i511, i64 4
  store i32 -2147483648, ptr %i.fw, align 4, !tbaa !237
  %i.fx = add i32 %i.fu, -2
  store i32 %i.fx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.fy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i511, i64 8
  store i32 -2147483648, ptr %i.fy, align 4, !tbaa !237
  %i.fz = add i32 %i.fu, -3
  store i32 %i.fz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ga = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i511, i64 12
  %i.gb = add i64 %.05.i.i.i.i510, -4             ; 2 uses
  store i32 -2147483648, ptr %i.ga, align 4, !tbaa !237
  %i.gc = add i32 %i.fu, -4
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i511, i64 16
  %.not.i.i.i.i512.3 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i.i.i512.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513, label %.lr.ph.i.i.i.i509, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513: ; preds = %.lr.ph.i.i.i.i509, %.lr.ph.i.i.i.i509.prol.loopexit
  store i64 200, ptr %i.ct, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit515

bb.ab:                                            ; preds = %.loopexit906
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ex ; 2 uses
  %i.gf = sub nuw nsw i64 200, %i.ex              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.gg = load i64, ptr %i.cu, align 8, !tbaa !234, !noalias !3363
  %i.gh = sub i64 %i.gg, %i.ex
  %.not.i.i.i500 = icmp ugt i64 %i.gf, %i.gh
  br i1 %.not.i.i.i500, label %bb.ad, label %bb.ac, !prof !74

.thread1119:                                      ; preds = %bb.x
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.ex ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  %i.gj = load i64, ptr %i.cu, align 8, !tbaa !234, !noalias !3363
  %.not.i.i.i5001120 = icmp ult i64 %i.gj, 200
  br i1 %.not.i.i.i5001120, label %bb.ad, label %.lr.ph.i.i.i.i.i.i.i502.preheader, !prof !74

bb.ac:                                            ; preds = %bb.ab
  %.not14.i.i.i.i.i.i.i501 = icmp eq i64 %i.ex, 200
  br i1 %.not14.i.i.i.i.i.i.i501, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i506, label %.lr.ph.i.i.i.i.i.i.i502.preheader

.lr.ph.i.i.i.i.i.i.i502.preheader:                ; preds = %.thread1119, %bb.ac
  %.016.i.i.i.i.i.i.i503.ph = phi i64 [ 200, %.thread1119 ], [ %i.gf, %bb.ac ] ; 4 uses
  %.01315.i.i.i.i.i.i.i504.ph = phi ptr [ %i.gi, %.thread1119 ], [ %i.ge, %bb.ac ] ; 2 uses
  %i.gk = add nsw i64 %.016.i.i.i.i.i.i.i503.ph, -1
  %xtraiter1202 = and i64 %.016.i.i.i.i.i.i.i503.ph, 3 ; 2 uses
  %lcmp.mod1203.not = icmp eq i64 %xtraiter1202, 0
  br i1 %lcmp.mod1203.not, label %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i502.prol

.lr.ph.i.i.i.i.i.i.i502.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i502.preheader, %.lr.ph.i.i.i.i.i.i.i502.prol
  %.016.i.i.i.i.i.i.i503.prol = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.i.i.i502.prol ], [ %.016.i.i.i.i.i.i.i503.ph, %.lr.ph.i.i.i.i.i.i.i502.preheader ]
  %.01315.i.i.i.i.i.i.i504.prol = phi ptr [ %i.go, %.lr.ph.i.i.i.i.i.i.i502.prol ], [ %.01315.i.i.i.i.i.i.i504.ph, %.lr.ph.i.i.i.i.i.i.i502.preheader ] ; 3 uses
  %prol.iter1204 = phi i64 [ %prol.iter1204.next, %.lr.ph.i.i.i.i.i.i.i502.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i502.preheader ]
  %i.gl = add i64 %.016.i.i.i.i.i.i.i503.prol, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i504.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i504.prol, align 4, !tbaa !237, !noalias !3363
  %i.gm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3363
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3363
  %i.go = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i504.prol, i64 4 ; 2 uses
  %prol.iter1204.next = add i64 %prol.iter1204, 1 ; 2 uses
  %prol.iter1204.cmp.not = icmp eq i64 %prol.iter1204.next, %xtraiter1202
  br i1 %prol.iter1204.cmp.not, label %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i502.prol, !llvm.loop !3274

.lr.ph.i.i.i.i.i.i.i502.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i502.prol, %.lr.ph.i.i.i.i.i.i.i502.preheader
  %.016.i.i.i.i.i.i.i503.unr = phi i64 [ %.016.i.i.i.i.i.i.i503.ph, %.lr.ph.i.i.i.i.i.i.i502.preheader ], [ %i.gl, %.lr.ph.i.i.i.i.i.i.i502.prol ]
  %.01315.i.i.i.i.i.i.i504.unr = phi ptr [ %.01315.i.i.i.i.i.i.i504.ph, %.lr.ph.i.i.i.i.i.i.i502.preheader ], [ %i.go, %.lr.ph.i.i.i.i.i.i.i502.prol ]
  %i.gp = icmp ult i64 %i.gk, 3
  br i1 %i.gp, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i506, label %.lr.ph.i.i.i.i.i.i.i502

.lr.ph.i.i.i.i.i.i.i502:                          ; preds = %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i502
  %.016.i.i.i.i.i.i.i503 = phi i64 [ %i.gx, %.lr.ph.i.i.i.i.i.i.i502 ], [ %.016.i.i.i.i.i.i.i503.unr, %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit ]
  %.01315.i.i.i.i.i.i.i504 = phi ptr [ %i.gz, %.lr.ph.i.i.i.i.i.i.i502 ], [ %.01315.i.i.i.i.i.i.i504.unr, %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i504) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i504, align 4, !tbaa !237, !noalias !3363
  %i.gq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3363 ; 4 uses
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3363
  %i.gs = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i504, i64 4
  store i32 0, ptr %i.gs, align 4, !tbaa !237, !noalias !3363
  %i.gt = add i32 %i.gq, 2
  store i32 %i.gt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3363
  %i.gu = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i504, i64 8
  store i32 0, ptr %i.gu, align 4, !tbaa !237, !noalias !3363
  %i.gv = add i32 %i.gq, 3
  store i32 %i.gv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3363
  %i.gw = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i504, i64 12
  %i.gx = add i64 %.016.i.i.i.i.i.i.i503, -4      ; 2 uses
  store i32 0, ptr %i.gw, align 4, !tbaa !237, !noalias !3363
  %i.gy = add i32 %i.gq, 4
  store i32 %i.gy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3363
  %i.gz = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i504, i64 16
  %.not.i.i.i.i.i.i.i505.3 = icmp eq i64 %i.gx, 0
  br i1 %.not.i.i.i.i.i.i.i505.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i506, label %.lr.ph.i.i.i.i.i.i.i502, !llvm.loop !36

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i506: ; preds = %.lr.ph.i.i.i.i.i.i.i502.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i502, %bb.ac
  store i64 200, ptr %i.ct, align 8, !tbaa !233, !noalias !3363
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507

bb.ad:                                            ; preds = %.thread1119, %bb.ab
  %i.ha = phi i64 [ 200, %.thread1119 ], [ %i.gf, %bb.ab ]
  %i.hb = phi ptr [ %i.gi, %.thread1119 ], [ %i.ge, %bb.ab ]
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef %i.hb, i64 noundef %i.ha)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 unwind label %bb.aa

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507: ; preds = %bb.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i506
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #22
  %.pre984 = load ptr, ptr %i.eo, align 8, !tbaa !91 ; 2 uses
  %.pre985 = load ptr, ptr %i.cv, align 8, !tbaa !89 ; 2 uses
  %.pre993 = ptrtoint ptr %.pre984 to i64
  %.pre995 = ptrtoint ptr %.pre985 to i64         ; 2 uses
  %.pre997 = sub i64 %.pre993, %.pre995           ; 2 uses
  %.pre999 = ashr exact i64 %.pre997, 2
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit515

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit515: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513
  %.pre-phi1000 = phi i64 [ %.pre999, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 ], [ %i.fb, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513 ] ; 2 uses
  %.pre-phi998 = phi i64 [ %.pre997, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 ], [ %i.fa, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513 ]
  %.pre-phi996 = phi i64 [ %.pre995, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 ], [ %.pre-phi, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513 ] ; 3 uses
  %i.hc = phi ptr [ %.pre985, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 ], [ %i.ew, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513 ] ; 4 uses
  %i.hd = phi ptr [ %.pre984, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i507 ], [ %i.ey, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i513 ] ; 3 uses
  %i.he = icmp ult i64 %.pre-phi1000, 200
  br i1 %i.he, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit515
  %i.hf = sub nuw nsw i64 200, %.pre-phi1000
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef %i.hf)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge unwind label %bb.aa

._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge: ; preds = %bb.ae
  %.pre986 = load ptr, ptr %i.eo, align 8, !tbaa !91
  %.pre987 = load ptr, ptr %i.cv, align 8, !tbaa !89 ; 2 uses
  %.pre1001 = ptrtoint ptr %.pre987 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit519

bb.af:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit515
  %.not876 = icmp eq i64 %.pre-phi998, 800
  br i1 %.not876, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit519, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 800 ; 3 uses
  %.not.i.i516 = icmp eq ptr %i.hd, %i.hg
  br i1 %.not.i.i516, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit519, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517:     ; preds = %bb.ag
  store ptr %i.hg, ptr %i.eo, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit519

_ZNSt6vectorIiSaIiEE6resizeEm.exit519:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517, %bb.ag, %bb.af
  %.pre-phi1002 = phi i64 [ %.pre1001, %._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge ], [ %.pre-phi996, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517 ], [ %.pre-phi996, %bb.ag ], [ %.pre-phi996, %bb.af ]
  %i.hh = phi ptr [ %.pre987, %._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge ], [ %i.hc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517 ], [ %i.hc, %bb.ag ], [ %i.hc, %bb.af ] ; 3 uses
  %i.hi = phi ptr [ %.pre986, %._ZNSt6vectorIiSaIiEE6resizeEm.exit519_crit_edge ], [ %i.hg, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i517 ], [ %i.hd, %bb.ag ], [ %i.hd, %bb.af ] ; 2 uses
  %i.hj = load i64, ptr %i.ct, align 8, !tbaa !242 ; 7 uses
  %i.hk = ptrtoint ptr %i.hi to i64
  %i.hl = sub i64 %i.hk, %.pre-phi1002
  %i.hm = ashr exact i64 %i.hl, 2
  %.not.i520 = icmp eq i64 %i.hj, %i.hm
  br i1 %.not.i520, label %bb.ah, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit499

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit519
  %i.hn = load ptr, ptr %i.cr, align 8, !tbaa !235, !noalias !3364 ; 4 uses
  %.idx.i522 = shl nsw i64 %i.hj, 2
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 %.idx.i522
  %cond = icmp eq i64 %i.hj, 0
  br i1 %cond, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543, label %.lr.ph.i524

.lr.ph.i524:                                      ; preds = %bb.ah, %bb.ai
  %.sroa.019.026.i525 = phi ptr [ %i.hs, %bb.ai ], [ %i.hn, %bb.ah ] ; 2 uses
  %.sroa.015.025.i526 = phi ptr [ %i.ht, %bb.ai ], [ %i.hh, %bb.ah ] ; 2 uses
  %i.hp = load i32, ptr %.sroa.015.025.i526, align 4, !tbaa !67
  %i.hq = load i32, ptr %.sroa.019.026.i525, align 4, !tbaa !237
  %i.hr = icmp eq i32 %i.hq, %i.hp
  br i1 %i.hr, label %bb.ai, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit499

bb.ai:                                            ; preds = %.lr.ph.i524
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i525, i64 4 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i526, i64 4
  %.not23.i527 = icmp eq ptr %i.hs, %i.ho
  br i1 %.not23.i527, label %.lr.ph.i.i.i.i538.preheader, label %.lr.ph.i524, !llvm.loop !23

.lr.ph.i.i.i.i538.preheader:                      ; preds = %bb.ai
  %xtraiter1205 = and i64 %i.hj, 3                ; 2 uses
  %lcmp.mod1206.not = icmp eq i64 %xtraiter1205, 0
  br i1 %lcmp.mod1206.not, label %.lr.ph.i.i.i.i538.prol.loopexit, label %.lr.ph.i.i.i.i538.prol

.lr.ph.i.i.i.i538.prol:                           ; preds = %.lr.ph.i.i.i.i538.preheader, %.lr.ph.i.i.i.i538.prol
  %.05.i.i.i.i539.prol = phi i64 [ %i.hu, %.lr.ph.i.i.i.i538.prol ], [ %i.hj, %.lr.ph.i.i.i.i538.preheader ]
  %storemerge4.i.i.i.i540.prol = phi ptr [ %i.hx, %.lr.ph.i.i.i.i538.prol ], [ %i.hn, %.lr.ph.i.i.i.i538.preheader ] ; 2 uses
  %prol.iter1207 = phi i64 [ %prol.iter1207.next, %.lr.ph.i.i.i.i538.prol ], [ 0, %.lr.ph.i.i.i.i538.preheader ]
  %i.hu = add i64 %.05.i.i.i.i539.prol, -1        ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i540.prol, align 4, !tbaa !237
  %i.hv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.hw = add i32 %i.hv, -1
  store i32 %i.hw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.hx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i540.prol, i64 4 ; 2 uses
  %prol.iter1207.next = add i64 %prol.iter1207, 1 ; 2 uses
  %prol.iter1207.cmp.not = icmp eq i64 %prol.iter1207.next, %xtraiter1205
  br i1 %prol.iter1207.cmp.not, label %.lr.ph.i.i.i.i538.prol.loopexit, label %.lr.ph.i.i.i.i538.prol, !llvm.loop !3277

.lr.ph.i.i.i.i538.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i538.prol, %.lr.ph.i.i.i.i538.preheader
  %.05.i.i.i.i539.unr = phi i64 [ %i.hj, %.lr.ph.i.i.i.i538.preheader ], [ %i.hu, %.lr.ph.i.i.i.i538.prol ]
  %storemerge4.i.i.i.i540.unr = phi ptr [ %i.hn, %.lr.ph.i.i.i.i538.preheader ], [ %i.hx, %.lr.ph.i.i.i.i538.prol ]
  %i.hy = icmp ult i64 %i.hj, 4
  br i1 %i.hy, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543, label %.lr.ph.i.i.i.i538

.lr.ph.i.i.i.i538:                                ; preds = %.lr.ph.i.i.i.i538.prol.loopexit, %.lr.ph.i.i.i.i538
  %.05.i.i.i.i539 = phi i64 [ %i.ig, %.lr.ph.i.i.i.i538 ], [ %.05.i.i.i.i539.unr, %.lr.ph.i.i.i.i538.prol.loopexit ]
  %storemerge4.i.i.i.i540 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i538 ], [ %storemerge4.i.i.i.i540.unr, %.lr.ph.i.i.i.i538.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i540, align 4, !tbaa !237
  %i.hz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ia = add i32 %i.hz, -1
  store i32 %i.ia, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ib = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i540, i64 4
  store i32 -2147483648, ptr %i.ib, align 4, !tbaa !237
  %i.ic = add i32 %i.hz, -2
  store i32 %i.ic, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.id = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i540, i64 8
  store i32 -2147483648, ptr %i.id, align 4, !tbaa !237
  %i.ie = add i32 %i.hz, -3
  store i32 %i.ie, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.if = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i540, i64 12
  %i.ig = add i64 %.05.i.i.i.i539, -4             ; 2 uses
  store i32 -2147483648, ptr %i.if, align 4, !tbaa !237
  %i.ih = add i32 %i.hz, -4
  store i32 %i.ih, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ii = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i540, i64 16
  %.not.i.i.i.i541.3 = icmp eq i64 %i.ig, 0
  br i1 %.not.i.i.i.i541.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543, label %.lr.ph.i.i.i.i538, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543: ; preds = %.lr.ph.i.i.i.i538.prol.loopexit, %.lr.ph.i.i.i.i538, %bb.ah
  store i64 0, ptr %i.ct, align 8, !tbaa !233
  %.not.i.i544 = icmp eq ptr %i.hi, %i.hh
  br i1 %.not.i.i544, label %.loopexit903, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i545

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i545:     ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543
  store ptr %i.hh, ptr %i.eo, align 8, !tbaa !91
  br label %.loopexit903

.loopexit903:                                     ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i545, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit543
  %i.ij = load ptr, ptr %i.cr, align 8, !tbaa !235, !noalias !3365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %.pre988 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ik = add i32 %.pre988, 1
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit903, %.loopexit900
  %i.il = phi i64 [ 0, %.loopexit903 ], [ %i.iv, %.loopexit900 ] ; 3 uses
  %i.im = phi ptr [ %i.ij, %.loopexit903 ], [ %i.jc, %.loopexit900 ] ; 2 uses
  %i.in = phi i32 [ %i.ik, %.loopexit903 ], [ %i.jl, %.loopexit900 ]
  %storemerge908 = phi i32 [ 0, %.loopexit903 ], [ %i.jo, %.loopexit900 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store i32 %storemerge908, ptr %8, align 4, !tbaa !237
  store i32 %i.in, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.io = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.il ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ip = load i64, ptr %i.cu, align 8, !tbaa !234, !noalias !3366
  %.not.i.i556 = icmp eq i64 %i.ip, %i.il
  br i1 %.not.i.i556, label %bb.ak, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i, !prof !74

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i: ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.im) ]
  store i32 %storemerge908, ptr %i.io, align 4, !tbaa !237, !noalias !3366
  store i32 0, ptr %8, align 4, !tbaa !237, !noalias !3366
  %i.iq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3366
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3366
  %i.is = add nsw i64 %i.il, 1
  store i64 %i.is, ptr %i.ct, align 8, !tbaa !242, !noalias !3366
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEOS3_.exit461

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.103") align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef %i.io, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %8)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEOS3_.exit461 unwind label %bb.ao

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEOS3_.exit461: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.it = load ptr, ptr %i.eo, align 8, !tbaa !78
  %i.iu = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr %i.it, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.al unwind label %bb.ap     ; 0 uses

bb.al:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertENS0_12vec_iteratorIPS3_Lb1EEEOS3_.exit461
  %i.iv = load i64, ptr %i.ct, align 8, !tbaa !242 ; 8 uses
  %i.iw = load ptr, ptr %i.eo, align 8, !tbaa !91 ; 5 uses
  %i.ix = load ptr, ptr %i.cv, align 8, !tbaa !89 ; 6 uses
  %i.iy = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
end_hunk_7
begin_hunk_8_@_ZN5boost9containergeERKNS0_6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !242, !noalias !3598 ; 2 uses
  %.idx.i = shl i64 %i.c, 2                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  %i.e = load ptr, ptr %1, align 8, !tbaa !235, !noalias !3599 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !242, !noalias !3600
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not1.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %.idx.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.preheader.i
  %.sroa.02.0.i.i = phi ptr [ %i.p, %bb.d ], [ %i.e, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.i = phi ptr [ %i.o, %bb.d ], [ %i.a, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.j = icmp eq ptr %.sroa.02.0.i.i, %i.h
  br i1 %i.j, label %_ZN5boost9containerltERKNS0_6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.k = load i32, ptr %.sroa.02.0.i.i, align 4, !tbaa !237 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !237  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %_ZN5boost9containerltERKNS0_6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %_ZN5boost9containerltERKNS0_6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !38

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.a
  %i.q = phi ptr [ %i.e, %bb.a ], [ %scevgep.i, %bb.d ]
  %i.r = icmp eq ptr %i.q, %i.h
  br label %_ZN5boost9containerltERKNS0_6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit

_ZN5boost9containerltERKNS0_6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %._crit_edge.i.i.i
  %.0.i.i.i = phi i1 [ %i.r, %._crit_edge.i.i.i ], [ true, %.lr.ph.i.i.i ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignISt14_List_iteratorIiEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %1, %2
  br i1 %.not4.i.i, label %.thread41, label %.lr.ph.i.i

.thread41:                                        ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !235
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !242
  br label %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ 0, %bb.a ] ; 6 uses
  %.sroa.02.05.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.d = add nuw i64 %.06.i.i, 1                  ; 11 uses
  %i.e = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !187 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %2
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !8

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !234  ; 2 uses
  %.not = icmp ult i64 %.06.i.i, %i.g
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.h = icmp samesign ugt i64 %.06.i.i, 2305843009213693950
  br i1 %i.h, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.d, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !235    ; 5 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !242  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.e
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader, %.lr.ph.i.i19.prol
  %.05.i.i.prol = phi i64 [ %i.n, %.lr.ph.i.i19.prol ], [ %i.m, %.lr.ph.i.i19.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i19.prol ], [ %i.k, %.lr.ph.i.i19.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader ]
  %i.n = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !3601

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader
  %.05.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i19.preheader ], [ %i.n, %.lr.ph.i.i19.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i19.preheader ], [ %i.q, %.lr.ph.i.i19.prol ]
  %i.r = icmp ult i64 %i.m, 4
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.05.i.i = phi i64 [ %i.z, %.lr.ph.i.i19 ], [ %.05.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ab, %.lr.ph.i.i19 ], [ %storemerge4.i.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.t = add i32 %i.s, -1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.u, align 4, !tbaa !237
  %i.v = add i32 %i.s, -2
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.w, align 4, !tbaa !237
  %i.x = add i32 %i.s, -3
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.z = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.y, align 4, !tbaa !237
  %i.aa = add i32 %i.s, -4
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i20.3 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i20.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i19, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19, %bb.e
  store i64 0, ptr %i.l, align 8, !tbaa !242
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = icmp eq ptr %i.ac, %i.k
  br i1 %i.ad, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.ae = shl nuw nsw i64 %i.g, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ae) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.j, ptr %0, align 8, !tbaa !235
  store i64 %i.d, ptr %i.f, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, %.lr.ph.i.i21
  %i.ag = phi i32 [ %i.aj, %.lr.ph.i.i21 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ]
  %.015.i.i = phi ptr [ %i.al, %.lr.ph.i.i21 ], [ %i.j, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ak, %.lr.ph.i.i21 ], [ %1, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !67
  store i32 %i.ai, ptr %.015.i.i, align 4, !tbaa !237
  %i.aj = add i32 %i.ag, 1                        ; 2 uses
  %i.ak = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !187 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ak, %2
  br i1 %.not.i.i22, label %bb.g, label %.lr.ph.i.i21, !llvm.loop !3602

bb.g:                                             ; preds = %.lr.ph.i.i21
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.j to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 2
  store i64 %i.ap, ptr %i.af, align 8, !tbaa !233
  br label %bb.j

bb.h:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !235   ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !242 ; 10 uses
  %.not45 = icmp ugt i64 %i.as, %.06.i.i
  br i1 %.not45, label %.lr.ph.i18.i.preheader, label %bb.i

.lr.ph.i18.i.preheader:                           ; preds = %bb.h
  %xtraiter88 = and i64 %i.d, 3                   ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol

.lr.ph.i18.i.prol:                                ; preds = %.lr.ph.i18.i.preheader, %.lr.ph.i18.i.prol
  %.09.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i18.i.prol ], [ %i.aq, %.lr.ph.i18.i.preheader ] ; 2 uses
  %.048.i.i.prol = phi i64 [ %i.at, %.lr.ph.i18.i.prol ], [ %i.d, %.lr.ph.i18.i.preheader ]
  %.sroa.0.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i18.i.prol ], [ %1, %.lr.ph.i18.i.preheader ] ; 2 uses
  %prol.iter90 = phi i64 [ %prol.iter90.next, %.lr.ph.i18.i.prol ], [ 0, %.lr.ph.i18.i.preheader ]
  %i.at = add i64 %.048.i.i.prol, -1              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !67
  store i32 %i.av, ptr %.09.i.i.prol, align 4, !tbaa !237
  %i.aw = load ptr, ptr %.sroa.0.07.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 3 uses
  %prol.iter90.next = add i64 %prol.iter90, 1     ; 2 uses
  %prol.iter90.cmp.not = icmp eq i64 %prol.iter90.next, %xtraiter88
  br i1 %prol.iter90.cmp.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol, !llvm.loop !3603

.lr.ph.i18.i.prol.loopexit:                       ; preds = %.lr.ph.i18.i.prol, %.lr.ph.i18.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i18.i.preheader ], [ %i.ax, %.lr.ph.i18.i.prol ]
  %.09.i.i.unr = phi ptr [ %i.aq, %.lr.ph.i18.i.preheader ], [ %i.ax, %.lr.ph.i18.i.prol ]
  %.048.i.i.unr = phi i64 [ %i.d, %.lr.ph.i18.i.preheader ], [ %i.at, %.lr.ph.i18.i.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %1, %.lr.ph.i18.i.preheader ], [ %i.aw, %.lr.ph.i18.i.prol ]
  %i.ay = icmp ult i64 %.06.i.i, 3
  br i1 %i.ay, label %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i18.i

bb.i:                                             ; preds = %bb.h
  %.not4.i.i28 = icmp eq i64 %i.as, 0
  br i1 %.not4.i.i28, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %bb.i
  %xtraiter82 = and i64 %i.as, 3                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol

.lr.ph.i.i29.prol:                                ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29.prol
  %i.az = phi ptr [ %i.be, %.lr.ph.i.i29.prol ], [ %i.aq, %.lr.ph.i.i29.preheader ] ; 2 uses
  %.06.i.i30.prol = phi i64 [ %i.ba, %.lr.ph.i.i29.prol ], [ %i.as, %.lr.ph.i.i29.preheader ]
  %.sroa.0.05.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i29.prol ], [ %1, %.lr.ph.i.i29.preheader ] ; 2 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.lr.ph.i.i29.prol ], [ 0, %.lr.ph.i.i29.preheader ]
  %i.ba = add i64 %.06.i.i30.prol, -1             ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.prol, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !67
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !237
  %i.bd = load ptr, ptr %.sroa.0.05.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 3 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol, !llvm.loop !3604

.lr.ph.i.i29.prol.loopexit:                       ; preds = %.lr.ph.i.i29.prol, %.lr.ph.i.i29.preheader
  %.lcssa78.unr = phi ptr [ poison, %.lr.ph.i.i29.preheader ], [ %i.bd, %.lr.ph.i.i29.prol ]
  %.lcssa77.unr = phi ptr [ poison, %.lr.ph.i.i29.preheader ], [ %i.be, %.lr.ph.i.i29.prol ]
  %.unr = phi ptr [ %i.aq, %.lr.ph.i.i29.preheader ], [ %i.be, %.lr.ph.i.i29.prol ]
  %.06.i.i30.unr = phi i64 [ %i.as, %.lr.ph.i.i29.preheader ], [ %i.ba, %.lr.ph.i.i29.prol ]
  %.sroa.0.05.i.i.unr = phi ptr [ %1, %.lr.ph.i.i29.preheader ], [ %i.bd, %.lr.ph.i.i29.prol ]
  %i.bf = icmp ult i64 %i.as, 4
  br i1 %i.bf, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29
  %i.bg = phi ptr [ %i.bx, %.lr.ph.i.i29 ], [ %.unr, %.lr.ph.i.i29.prol.loopexit ] ; 5 uses
  %.06.i.i30 = phi i64 [ %i.bt, %.lr.ph.i.i29 ], [ %.06.i.i30.unr, %.lr.ph.i.i29.prol.loopexit ]
  %.sroa.0.05.i.i = phi ptr [ %i.bw, %.lr.ph.i.i29 ], [ %.sroa.0.05.i.i.unr, %.lr.ph.i.i29.prol.loopexit ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !67
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !237
  %i.bj = load ptr, ptr %.sroa.0.05.i.i, align 8, !tbaa !187 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !67
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !237
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !187 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !67
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !237
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !187 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bt = add i64 %.06.i.i30, -4                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !67
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !237
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !187 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %.not.i.i31.3 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i31.3, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i29, !llvm.loop !3605

_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29, %bb.i
  %.0.i = phi ptr [ %i.aq, %bb.i ], [ %.lcssa77.unr, %.lr.ph.i.i29.prol.loopexit ], [ %i.bx, %.lr.ph.i.i29 ] ; 4 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %1, %bb.i ], [ %.lcssa78.unr, %.lr.ph.i.i29.prol.loopexit ], [ %i.bw, %.lr.ph.i.i29 ] ; 3 uses
  %i.by = sub i64 %i.d, %i.as                     ; 3 uses
  %xtraiter85 = and i64 %i.by, 1
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.lr.ph.i15.i.prol.loopexit, label %.lr.ph.i15.i.prol

.lr.ph.i15.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %i.bz = add nsw i64 %i.by, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !67
  store i32 %i.cb, ptr %.0.i, align 4, !tbaa !237
  %i.cc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ce = load ptr, ptr %.sroa.0.0.lcssa.i.i, align 8, !tbaa !187
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  br label %.lr.ph.i15.i.prol.loopexit

.lr.ph.i15.i.prol.loopexit:                       ; preds = %.lr.ph.i15.i.prol, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %.018.i.i.unr = phi i64 [ %i.by, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.bz, %.lr.ph.i15.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.cf, %.lr.ph.i15.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.ce, %.lr.ph.i15.i.prol ]
  %i.cg = icmp eq i64 %.06.i.i, %i.as
  br i1 %i.cg, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i
  %.018.i.i = phi i64 [ %i.cn, %.lr.ph.i15.i ], [ %.018.i.i.unr, %.lr.ph.i15.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.ct, %.lr.ph.i15.i ], [ %.01417.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i = phi ptr [ %i.cs, %.lr.ph.i15.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !67
  store i32 %i.ci, ptr %.01417.i.i, align 4, !tbaa !237
  %i.cj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cl = load ptr, ptr %.sroa.0.016.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.cn = add i64 %.018.i.i, -2                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !67
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !237
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !187
  %i.ct = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %.not.i16.i.1 = icmp eq i64 %i.cn, 0
  br i1 %.not.i16.i.1, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i, !llvm.loop !3606

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i
  %.09.i.i = phi ptr [ %i.dk, %.lr.ph.i18.i ], [ %.09.i.i.unr, %.lr.ph.i18.i.prol.loopexit ] ; 5 uses
  %.048.i.i = phi i64 [ %i.dg, %.lr.ph.i18.i ], [ %.048.i.i.unr, %.lr.ph.i18.i.prol.loopexit ]
  %.sroa.0.07.i.i = phi ptr [ %i.dj, %.lr.ph.i18.i ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i18.i.prol.loopexit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !67
  store i32 %i.cv, ptr %.09.i.i, align 4, !tbaa !237
  %i.cw = load ptr, ptr %.sroa.0.07.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !67
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !237
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !187 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !67
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !237
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !187 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.dg = add i64 %.048.i.i, -4                   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !67
  store i32 %i.di, ptr %i.df, align 4, !tbaa !237
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !187
  %i.dk = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i19.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i19.i.3, label %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i18.i, !llvm.loop !3607

_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i, %.thread41
  %.0.lcssa.i.i374044 = phi i64 [ 0, %.thread41 ], [ %i.d, %.lr.ph.i18.i ], [ %i.d, %.lr.ph.i18.i.prol.loopexit ] ; 5 uses
  %i.dl = phi ptr [ %i.b, %.thread41 ], [ %i.ar, %.lr.ph.i18.i ], [ %i.ar, %.lr.ph.i18.i.prol.loopexit ] ; 3 uses
  %i.dm = phi i64 [ %i.c, %.thread41 ], [ %i.as, %.lr.ph.i18.i ], [ %i.as, %.lr.ph.i18.i.prol.loopexit ] ; 2 uses
  %.0.lcssa.i.i24 = phi ptr [ %i.a, %.thread41 ], [ %.lcssa.unr, %.lr.ph.i18.i.prol.loopexit ], [ %i.dk, %.lr.ph.i18.i ] ; 2 uses
  %i.dn = sub nuw i64 %i.dm, %.0.lcssa.i.i374044  ; 4 uses
  %.not3.i.i25 = icmp eq i64 %i.dn, 0
  br i1 %.not3.i.i25, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %xtraiter91 = and i64 %i.dn, 3                  ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.05.i.i26.prol = phi i64 [ %i.do, %.lr.ph.i21.i.prol ], [ %i.dn, %.lr.ph.i21.i.preheader ]
  %storemerge4.i.i27.prol = phi ptr [ %i.dr, %.lr.ph.i21.i.prol ], [ %.0.lcssa.i.i24, %.lr.ph.i21.i.preheader ] ; 2 uses
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.do = add i64 %.05.i.i26.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i27.prol, align 4, !tbaa !237
  %i.dp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dq = add i32 %i.dp, -1
  store i32 %i.dq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27.prol, i64 4 ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !3608

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i26.unr = phi i64 [ %i.dn, %.lr.ph.i21.i.preheader ], [ %i.do, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i27.unr = phi ptr [ %.0.lcssa.i.i24, %.lr.ph.i21.i.preheader ], [ %i.dr, %.lr.ph.i21.i.prol ]
  %i.ds = sub i64 %.0.lcssa.i.i374044, %i.dm
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i26 = phi i64 [ %i.eb, %.lr.ph.i21.i ], [ %.05.i.i26.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i27 = phi ptr [ %i.ed, %.lr.ph.i21.i ], [ %storemerge4.i.i27.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i27, align 4, !tbaa !237
  %i.du = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 4
  store i32 -2147483648, ptr %i.dw, align 4, !tbaa !237
  %i.dx = add i32 %i.du, -2
  store i32 %i.dx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 8
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !237
  %i.dz = add i32 %i.du, -3
  store i32 %i.dz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ea = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 12
  %i.eb = add i64 %.05.i.i26, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.ea, align 4, !tbaa !237
  %i.ec = add i32 %i.du, -4
  store i32 %i.ec, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ed = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.eb, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !24

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i, %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.ee = phi ptr [ %i.dl, %.lr.ph.i21.i.prol.loopexit ], [ %i.dl, %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i ], [ %i.dl, %.lr.ph.i21.i ], [ %i.ar, %.lr.ph.i15.i ], [ %i.ar, %.lr.ph.i15.i.prol.loopexit ]
  %.0.lcssa.i.i3739 = phi i64 [ %.0.lcssa.i.i374044, %.lr.ph.i21.i.prol.loopexit ], [ %.0.lcssa.i.i374044, %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test24movable_and_copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i ], [ %.0.lcssa.i.i374044, %.lr.ph.i21.i ], [ %i.d, %.lr.ph.i15.i ], [ %i.d, %.lr.ph.i15.i.prol.loopexit ]
  store i64 %.0.lcssa.i.i3739, ptr %i.ee, align 8, !tbaa !233
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS2_22input_iterator_wrapperISt14_List_iteratorIiEEEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENSF_4and_INSF_12is_differentINSF_17integral_constantIjLj1EEENSL_IjLj0EEEEENS0_3dtl21is_not_input_iteratorISE_EENSF_5bool_ILb1EEEST_EENSS_ILb0EEESV_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.102", align 8 ; 2 uses
  %5 = alloca %"class.boost::container::vec_iterator.103", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !235, !noalias !3617 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !242, !noalias !3618 ; 3 uses
  %.idx = shl nsw i64 %i.c, 2
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 5 uses
  %i.e = icmp ne ptr %1, %2
  %i.f = icmp ne i64 %i.c, 0
  %or.cond13 = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond13, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.03.015 = phi ptr [ %i.i, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.09.014 = phi ptr [ %i.j, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.09.014, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !67
  store i32 %i.h, ptr %.sroa.03.015, align 4, !tbaa !237
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.015, i64 4 ; 3 uses
  %i.j = load ptr, ptr %.sroa.09.014, align 8, !tbaa !187 ; 3 uses
  %i.k = icmp ne ptr %i.j, %2
  %i.l = icmp ne ptr %i.i, %i.d
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !3613

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.sroa.09.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.j, %.lr.ph ] ; 2 uses
  %.sroa.03.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.i, %.lr.ph ] ; 2 uses
  %i.m = icmp eq ptr %.sroa.09.0.lcssa, %2
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = ptrtoint ptr %.sroa.03.0.lcssa to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 6 uses
  %.not3.i.i = icmp eq ptr %i.d, %.sroa.03.0.lcssa
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.r ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.prol ], [ %i.q, %.lr.ph.i.preheader.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.preheader.i ]
  %i.t = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3614

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.preheader.i
  %.05.i.i.unr = phi i64 [ %i.q, %.lr.ph.i.preheader.i ], [ %i.t, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.preheader.i ], [ %i.w, %.lr.ph.i.i.prol ]
  %i.x = icmp ult i64 %i.q, 4
  br i1 %i.x, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.y = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aa, align 4, !tbaa !237
  %i.ab = add i32 %i.y, -2
  store i32 %i.ab, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.ac, align 4, !tbaa !237
  %i.ad = add i32 %i.y, -3
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.af = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.ae, align 4, !tbaa !237
  %i.ag = add i32 %i.y, -4
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %i.ai = sub i64 %i.c, %i.q
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !233
  br label %bb.d

bb.c:                                             ; preds = %.critedge
  store ptr %i.d, ptr %4, align 8, !tbaa !278, !alias.scope !3619
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS2_22input_iterator_wrapperISt14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS0_3dtl21is_not_input_iteratorISI_EENSJ_5bool_ILb0EEESR_E4typeE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.103") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dead_on_return %4, ptr %.sroa.09.0.lcssa, ptr %2, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20vector_capacity_testINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.103", align 8 ; 3 uses
  %3 = alloca %"class.boost::container::vec_iterator.103", align 8 ; 3 uses
  %4 = alloca %"class.boost::container::vec_iterator.103", align 8 ; 3 uses
  %5 = alloca %"class.boost::container::vec_iterator.103", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::small_vector.93", align 8 ; 12 uses
  %7 = alloca %"class.boost::container::small_vector.93", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !242  ; 3 uses
  %i.c = shl i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !234
end_hunk_8
begin_hunk_9_@_ZN5boost9container4test20vector_capacity_testINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:bb.a
  store i32 0, ptr %i.jp, align 4, !tbaa !237, !noalias !3653
  %i.jr = add i32 %i.jj, 4
  store i32 %i.jr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3653
  %i.js = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i130, i64 16
  %.not.i.i.i.i.i.i.i131.3 = icmp eq i64 %i.jq, 0
  br i1 %.not.i.i.i.i.i.i.i131.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132, label %.lr.ph.i.i.i.i.i.i.i128, !llvm.loop !36

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132: ; preds = %.lr.ph.i.i.i.i.i.i.i128.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i128, %bb.ac
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !233, !noalias !3653
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133

bb.ad:                                            ; preds = %bb.ab
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.103") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.iz, i64 noundef %i.ja)
  %.pre248.pre = load ptr, ptr %i.bh, align 8, !tbaa !91 ; 2 uses
  %.pre249.pre = load ptr, ptr %1, align 8, !tbaa !89 ; 2 uses
  %.pre288 = ptrtoint ptr %.pre248.pre to i64
  %.pre289 = ptrtoint ptr %.pre249.pre to i64     ; 2 uses
  %.pre290 = sub i64 %.pre288, %.pre289
  %.pre291 = ashr exact i64 %.pre290, 2
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133: ; preds = %bb.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132
  %.pre284.pre-phi = phi i64 [ %.pre291, %bb.ad ], [ %i.hw, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132 ]
  %.pre280.pre-phi = phi i64 [ %.pre289, %bb.ad ], [ %.pre-phi277, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132 ]
  %.pre249 = phi ptr [ %.pre249.pre, %bb.ad ], [ %i.hs, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132 ]
  %.pre248 = phi ptr [ %.pre248.pre, %bb.ad ], [ %.pre248260, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i132 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit140

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit140: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i139, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133
  %.pre-phi285 = phi i64 [ %i.hw, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i139 ], [ %.pre284.pre-phi, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133 ] ; 3 uses
  %.pre-phi281 = phi i64 [ %.pre-phi277, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i139 ], [ %.pre280.pre-phi, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133 ] ; 3 uses
  %i.jt = phi ptr [ %i.hs, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i139 ], [ %.pre249, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133 ] ; 4 uses
  %i.ju = phi ptr [ %.pre248260, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i139 ], [ %.pre248, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i133 ] ; 3 uses
  %i.jv = icmp ugt i64 %i.cv, %.pre-phi285
  br i1 %i.jv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit140
  %i.jw = sub nuw i64 %i.cv, %.pre-phi285
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.jw)
  %.pre250 = load ptr, ptr %i.bh, align 8, !tbaa !91
  %.pre251 = load ptr, ptr %1, align 8, !tbaa !89 ; 2 uses
  %.pre286 = ptrtoint ptr %.pre251 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit143

bb.af:                                            ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit140
  %i.jx = icmp ult i64 %i.cv, %.pre-phi285
  br i1 %i.jx, label %bb.ag, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit143

bb.ag:                                            ; preds = %bb.af
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.cv ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.ju, %i.jy
  br i1 %.not.i.i141, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit143, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142:     ; preds = %bb.ag
  store ptr %i.jy, ptr %i.bh, align 8, !tbaa !91
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit143

_ZNSt6vectorIiSaIiEE6resizeEm.exit143:            ; preds = %bb.ae, %bb.af, %bb.ag, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142
  %.pre-phi287 = phi i64 [ %.pre286, %bb.ae ], [ %.pre-phi281, %bb.af ], [ %.pre-phi281, %bb.ag ], [ %.pre-phi281, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142 ]
  %i.jz = phi ptr [ %.pre251, %bb.ae ], [ %i.jt, %bb.af ], [ %i.jt, %bb.ag ], [ %i.jt, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142 ]
  %i.ka = phi ptr [ %.pre250, %bb.ae ], [ %i.ju, %bb.af ], [ %i.ju, %bb.ag ], [ %i.jy, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i142 ]
  %i.kb = load i64, ptr %i.a, align 8, !tbaa !242 ; 3 uses
  %i.kc = ptrtoint ptr %i.ka to i64
  %i.kd = sub i64 %i.kc, %.pre-phi287
  %i.ke = ashr exact i64 %i.kd, 2
  %.not.i144 = icmp eq i64 %i.kb, %i.ke
  br i1 %.not.i144, label %bb.ah, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit143
  %i.kf = load ptr, ptr %0, align 8, !tbaa !235, !noalias !3654 ; 2 uses
  %.idx.i146 = shl nsw i64 %i.kb, 2
  %i.kg = getelementptr inbounds i8, ptr %i.kf, i64 %.idx.i146
  %.not2324.i147 = icmp eq i64 %i.kb, 0
  br i1 %.not2324.i147, label %.loopexit, label %.lr.ph.i148

.lr.ph.i148:                                      ; preds = %bb.ah, %bb.ai
  %.sroa.019.026.i149 = phi ptr [ %i.kk, %bb.ai ], [ %i.kf, %bb.ah ] ; 2 uses
  %.sroa.015.025.i150 = phi ptr [ %i.kl, %bb.ai ], [ %i.jz, %bb.ah ] ; 2 uses
  %i.kh = load i32, ptr %.sroa.015.025.i150, align 4, !tbaa !67
  %i.ki = load i32, ptr %.sroa.019.026.i149, align 4, !tbaa !237
  %i.kj = icmp eq i32 %i.ki, %i.kh
  br i1 %i.kj, label %bb.ai, label %_ZN5boost9container4test20CheckEqualContainersINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit

bb.ai:                                            ; preds = %.lr.ph.i148
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.019.026.i149, i64 4 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.015.025.i150, i64 4
  %.not23.i151 = icmp eq ptr %i.kk, %i.kg
  br i1 %.not23.i151, label %.loopexit, label %.lr.ph.i148, !llvm.loop !23

.loopexit:                                        ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.km = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store ptr %i.km, ptr %6, align 8, !tbaa !235
  %i.kn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 0, ptr %i.kn, align 8, !tbaa !233
  %i.ko = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store i64 10, ptr %i.ko, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.kp = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.kp, ptr %7, align 8, !tbaa !235
  %i.kq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  store i64 0, ptr %i.kq, align 8, !tbaa !233
  %i.kr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  store i64 10, ptr %i.kr, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.103") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %i.km, i64 noundef 1000)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.ks = load i64, ptr %i.kn, align 8, !tbaa !242 ; 4 uses
  %i.kt = load i64, ptr %i.ko, align 8, !tbaa !234 ; 3 uses
  %i.ku = udiv i64 %i.ks, 10                      ; 9 uses
  %i.kv = load i64, ptr %i.kq, align 8, !tbaa !242 ; 8 uses
  %i.kw = icmp ult i64 %i.ku, %i.kv
  br i1 %i.kw, label %.lr.ph.i.preheader.i.i.i192, label %bb.ak

.lr.ph.i.preheader.i.i.i192:                      ; preds = %bb.aj
  %i.kx = sub nuw i64 %i.kv, %i.ku                ; 4 uses
  %i.ky = load ptr, ptr %7, align 8, !tbaa !235
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kv
  %i.la = sub i64 0, %i.kx
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.la ; 2 uses
  %xtraiter379 = and i64 %i.kx, 3                 ; 2 uses
  %lcmp.mod380.not = icmp eq i64 %xtraiter379, 0
  br i1 %lcmp.mod380.not, label %.lr.ph.i.i.i.i193.prol.loopexit, label %.lr.ph.i.i.i.i193.prol

.lr.ph.i.i.i.i193.prol:                           ; preds = %.lr.ph.i.preheader.i.i.i192, %.lr.ph.i.i.i.i193.prol
  %.05.i.i.i.i194.prol = phi i64 [ %i.lc, %.lr.ph.i.i.i.i193.prol ], [ %i.kx, %.lr.ph.i.preheader.i.i.i192 ]
  %storemerge4.i.i.i.i195.prol = phi ptr [ %i.lf, %.lr.ph.i.i.i.i193.prol ], [ %i.lb, %.lr.ph.i.preheader.i.i.i192 ] ; 2 uses
  %prol.iter381 = phi i64 [ %prol.iter381.next, %.lr.ph.i.i.i.i193.prol ], [ 0, %.lr.ph.i.preheader.i.i.i192 ]
  %i.lc = add i64 %.05.i.i.i.i194.prol, -1        ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i195.prol, align 4, !tbaa !237
  %i.ld = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.le = add i32 %i.ld, -1
  store i32 %i.le, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.lf = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i195.prol, i64 4 ; 2 uses
  %prol.iter381.next = add i64 %prol.iter381, 1   ; 2 uses
  %prol.iter381.cmp.not = icmp eq i64 %prol.iter381.next, %xtraiter379
  br i1 %prol.iter381.cmp.not, label %.lr.ph.i.i.i.i193.prol.loopexit, label %.lr.ph.i.i.i.i193.prol, !llvm.loop !3642

.lr.ph.i.i.i.i193.prol.loopexit:                  ; preds = %.lr.ph.i.i.i.i193.prol, %.lr.ph.i.preheader.i.i.i192
  %.05.i.i.i.i194.unr = phi i64 [ %i.kx, %.lr.ph.i.preheader.i.i.i192 ], [ %i.lc, %.lr.ph.i.i.i.i193.prol ]
  %storemerge4.i.i.i.i195.unr = phi ptr [ %i.lb, %.lr.ph.i.preheader.i.i.i192 ], [ %i.lf, %.lr.ph.i.i.i.i193.prol ]
  %i.lg = sub i64 %i.ku, %i.kv
  %i.lh = icmp ugt i64 %i.lg, -4
  br i1 %i.lh, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i197, label %.lr.ph.i.i.i.i193

.lr.ph.i.i.i.i193:                                ; preds = %.lr.ph.i.i.i.i193.prol.loopexit, %.lr.ph.i.i.i.i193
  %.05.i.i.i.i194 = phi i64 [ %i.lp, %.lr.ph.i.i.i.i193 ], [ %.05.i.i.i.i194.unr, %.lr.ph.i.i.i.i193.prol.loopexit ]
  %storemerge4.i.i.i.i195 = phi ptr [ %i.lr, %.lr.ph.i.i.i.i193 ], [ %storemerge4.i.i.i.i195.unr, %.lr.ph.i.i.i.i193.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i.i.i195, align 4, !tbaa !237
  %i.li = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.lj = add i32 %i.li, -1
  store i32 %i.lj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.lk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i195, i64 4
  store i32 -2147483648, ptr %i.lk, align 4, !tbaa !237
  %i.ll = add i32 %i.li, -2
  store i32 %i.ll, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.lm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i195, i64 8
  store i32 -2147483648, ptr %i.lm, align 4, !tbaa !237
  %i.ln = add i32 %i.li, -3
  store i32 %i.ln, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.lo = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i195, i64 12
  %i.lp = add i64 %.05.i.i.i.i194, -4             ; 2 uses
  store i32 -2147483648, ptr %i.lo, align 4, !tbaa !237
  %i.lq = add i32 %i.li, -4
  store i32 %i.lq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.lr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.i.i195, i64 16
  %.not.i.i.i.i196.3 = icmp eq i64 %i.lp, 0
  br i1 %.not.i.i.i.i196.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i197, label %.lr.ph.i.i.i.i193, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i197: ; preds = %.lr.ph.i.i.i.i193, %.lr.ph.i.i.i.i193.prol.loopexit
  store i64 %i.ku, ptr %i.kq, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199

bb.ak:                                            ; preds = %bb.aj
  %i.ls = load ptr, ptr %7, align 8, !tbaa !235
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.kv ; 3 uses
  %i.lu = sub nuw nsw i64 %i.ku, %i.kv            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.lv = load i64, ptr %i.kr, align 8, !tbaa !234, !noalias !3655
  %i.lw = sub i64 %i.lv, %i.kv
  %.not.i.i.i184 = icmp ugt i64 %i.lu, %i.lw
  br i1 %.not.i.i.i184, label %bb.am, label %bb.al, !prof !74

bb.al:                                            ; preds = %bb.ak
  %.not14.i.i.i.i.i.i.i185 = icmp eq i64 %i.lu, 0
  br i1 %.not14.i.i.i.i.i.i.i185, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i190, label %.lr.ph.i.i.i.i.i.i.i186.preheader

.lr.ph.i.i.i.i.i.i.i186.preheader:                ; preds = %bb.al
  %xtraiter376 = and i64 %i.lu, 3                 ; 2 uses
  %lcmp.mod377.not = icmp eq i64 %xtraiter376, 0
  br i1 %lcmp.mod377.not, label %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i186.prol

.lr.ph.i.i.i.i.i.i.i186.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i186.preheader, %.lr.ph.i.i.i.i.i.i.i186.prol
  %.016.i.i.i.i.i.i.i187.prol = phi i64 [ %i.lx, %.lr.ph.i.i.i.i.i.i.i186.prol ], [ %i.lu, %.lr.ph.i.i.i.i.i.i.i186.preheader ]
  %.01315.i.i.i.i.i.i.i188.prol = phi ptr [ %i.ma, %.lr.ph.i.i.i.i.i.i.i186.prol ], [ %i.lt, %.lr.ph.i.i.i.i.i.i.i186.preheader ] ; 3 uses
  %prol.iter378 = phi i64 [ %prol.iter378.next, %.lr.ph.i.i.i.i.i.i.i186.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i186.preheader ]
  %i.lx = add i64 %.016.i.i.i.i.i.i.i187.prol, -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i188.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i188.prol, align 4, !tbaa !237, !noalias !3655
  %i.ly = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3655
  %i.lz = add i32 %i.ly, 1
  store i32 %i.lz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3655
  %i.ma = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i188.prol, i64 4 ; 2 uses
  %prol.iter378.next = add i64 %prol.iter378, 1   ; 2 uses
  %prol.iter378.cmp.not = icmp eq i64 %prol.iter378.next, %xtraiter376
  br i1 %prol.iter378.cmp.not, label %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i186.prol, !llvm.loop !3645

.lr.ph.i.i.i.i.i.i.i186.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i186.prol, %.lr.ph.i.i.i.i.i.i.i186.preheader
  %.016.i.i.i.i.i.i.i187.unr = phi i64 [ %i.lu, %.lr.ph.i.i.i.i.i.i.i186.preheader ], [ %i.lx, %.lr.ph.i.i.i.i.i.i.i186.prol ]
  %.01315.i.i.i.i.i.i.i188.unr = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i.i.i186.preheader ], [ %i.ma, %.lr.ph.i.i.i.i.i.i.i186.prol ]
  %i.mb = sub i64 %i.kv, %i.ku
  %i.mc = icmp ugt i64 %i.mb, -4
  br i1 %i.mc, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i190, label %.lr.ph.i.i.i.i.i.i.i186

.lr.ph.i.i.i.i.i.i.i186:                          ; preds = %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i186
  %.016.i.i.i.i.i.i.i187 = phi i64 [ %i.mk, %.lr.ph.i.i.i.i.i.i.i186 ], [ %.016.i.i.i.i.i.i.i187.unr, %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit ]
  %.01315.i.i.i.i.i.i.i188 = phi ptr [ %i.mm, %.lr.ph.i.i.i.i.i.i.i186 ], [ %.01315.i.i.i.i.i.i.i188.unr, %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.i.i188) ]
  store i32 0, ptr %.01315.i.i.i.i.i.i.i188, align 4, !tbaa !237, !noalias !3655
  %i.md = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3655 ; 4 uses
  %i.me = add i32 %i.md, 1
  store i32 %i.me, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3655
  %i.mf = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i188, i64 4
  store i32 0, ptr %i.mf, align 4, !tbaa !237, !noalias !3655
  %i.mg = add i32 %i.md, 2
  store i32 %i.mg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3655
  %i.mh = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i188, i64 8
  store i32 0, ptr %i.mh, align 4, !tbaa !237, !noalias !3655
  %i.mi = add i32 %i.md, 3
  store i32 %i.mi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3655
  %i.mj = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i188, i64 12
  %i.mk = add i64 %.016.i.i.i.i.i.i.i187, -4      ; 2 uses
  store i32 0, ptr %i.mj, align 4, !tbaa !237, !noalias !3655
  %i.ml = add i32 %i.md, 4
  store i32 %i.ml, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !noalias !3655
  %i.mm = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.i.i188, i64 16
  %.not.i.i.i.i.i.i.i189.3 = icmp eq i64 %i.mk, 0
  br i1 %.not.i.i.i.i.i.i.i189.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i190, label %.lr.ph.i.i.i.i.i.i.i186, !llvm.loop !36

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i190: ; preds = %.lr.ph.i.i.i.i.i.i.i186.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i186, %bb.al
  store i64 %i.ku, ptr %i.kq, align 8, !tbaa !233, !noalias !3655
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i191

bb.am:                                            ; preds = %bb.ak
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.103") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %i.lt, i64 noundef %i.lu)
          to label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i191 unwind label %bb.ao

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i191: ; preds = %bb.am, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_.exit.i.i191, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit.i.i197
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 10)
          to label %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit unwind label %bb.ao

_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit: ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199
  %i.mn = load i64, ptr %i.kr, align 8, !tbaa !234 ; 3 uses
  %.not = icmp uge i64 %i.mn, %i.kt
  %.pr.pre = load i64, ptr %i.kq, align 8, !tbaa !242 ; 2 uses
  %i.mo = icmp eq i64 %.pr.pre, %i.ks
  %or.cond = select i1 %.not, i1 %i.mo, i1 false
  br i1 %or.cond, label %bb.ap, label %thread-pre-split

bb.an:                                            ; preds = %.loopexit
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ao:                                            ; preds = %bb.aq, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6resizeEm.exit199, %bb.am
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.ap:                                            ; preds = %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit
  %i.mr = load i64, ptr %i.ko, align 8, !tbaa !234
  %i.ms = udiv i64 %i.kt, 10                      ; 2 uses
  %.not51 = icmp uge i64 %i.mr, %i.ms
  %i.mt = load i64, ptr %i.kn, align 8
  %i.mu = icmp eq i64 %i.mt, %i.ku
  %or.cond222 = select i1 %.not51, i1 %i.mu, i1 false
  br i1 %or.cond222, label %bb.aq, label %thread-pre-split

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %7, i64 noundef 10)
          to label %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 unwind label %bb.ao

_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202: ; preds = %bb.aq
  %i.mv = load i64, ptr %i.ko, align 8, !tbaa !234
  %.not53 = icmp uge i64 %i.mv, %i.kt
  %i.mw = load i64, ptr %i.kn, align 8
  %i.mx = icmp eq i64 %i.mw, %i.ks
  %or.cond224.not228.not348 = select i1 %.not53, i1 %i.mx, i1 false
  %i.my = load i64, ptr %i.kr, align 8            ; 2 uses
  %.not54 = icmp uge i64 %i.my, %i.ms
  %or.cond225.not = select i1 %or.cond224.not228.not348, i1 %.not54, i1 false
  %.pr.pre252 = load i64, ptr %i.kq, align 8, !tbaa !242 ; 2 uses
  %i.mz = icmp eq i64 %.pr.pre252, %i.ku
  %spec.select = select i1 %or.cond225.not, i1 %i.mz, i1 false
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202, %bb.ap, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit
  %i.na = phi i64 [ %i.my, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ %i.mn, %bb.ap ], [ %i.mn, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ]
  %i.nb = phi i64 [ %.pr.pre252, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ %i.ks, %bb.ap ], [ %.pr.pre, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ] ; 5 uses
  %.1 = phi i1 [ %spec.select, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit202 ], [ false, %bb.ap ], [ false, %_ZN5boost9container12small_vectorINS0_4test24movable_and_copyable_intELm10ENS0_13new_allocatorIS3_EEvE4swapERS6_.exit ]
  %i.nc = load ptr, ptr %7, align 8, !tbaa !235   ; 4 uses
  %.not3.i.i = icmp eq i64 %i.nb, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %thread-pre-split
  %xtraiter382 = and i64 %i.nb, 3                 ; 2 uses
  %lcmp.mod383.not = icmp eq i64 %xtraiter382, 0
  br i1 %lcmp.mod383.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.nd, %.lr.ph.i.i.prol ], [ %i.nb, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.ng, %.lr.ph.i.i.prol ], [ %i.nc, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter384 = phi i64 [ %prol.iter384.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.nd = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.ne = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.nf = add i32 %i.ne, -1
  store i32 %i.nf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ng = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter384.next = add i64 %prol.iter384, 1   ; 2 uses
  %prol.iter384.cmp.not = icmp eq i64 %prol.iter384.next, %xtraiter382
  br i1 %prol.iter384.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3646

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.nb, %.lr.ph.i.i.preheader ], [ %i.nd, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.nc, %.lr.ph.i.i.preheader ], [ %i.ng, %.lr.ph.i.i.prol ]
  %i.nh = icmp ult i64 %i.nb, 4
  br i1 %i.nh, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.np, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.nr, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.ni = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.nj = add i32 %i.ni, -1
  store i32 %i.nj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.nk = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.nk, align 4, !tbaa !237
  %i.nl = add i32 %i.ni, -2
  store i32 %i.nl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.nm = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.nm, align 4, !tbaa !237
  %i.nn = add i32 %i.ni, -3
  store i32 %i.nn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.no = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.np = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.no, align 4, !tbaa !237
  %i.nq = add i32 %i.ni, -4
  store i32 %i.nq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.nr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i203.3 = icmp eq i64 %i.np, 0
  br i1 %.not.i.i203.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre254 = load i64, ptr %i.kr, align 8, !tbaa !234
  br label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit, %thread-pre-split
  %i.ns = phi i64 [ %.pre254, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.loopexit ], [ %i.na, %thread-pre-split ] ; 2 uses
  %.not.i1.i = icmp eq i64 %i.ns, 0
  %i.nt = icmp eq ptr %i.kp, %i.nc
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.nt
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.nu = shl i64 %i.ns, 2
  call void @_ZdlPvm(ptr noundef %i.nc, i64 noundef %i.nu) #22
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.nv = load ptr, ptr %6, align 8, !tbaa !235   ; 4 uses
  %i.nw = load i64, ptr %i.kn, align 8, !tbaa !242 ; 5 uses
  %.not3.i.i204 = icmp eq i64 %i.nw, 0
  br i1 %.not3.i.i204, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205.preheader

.lr.ph.i.i205.preheader:                          ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit
  %xtraiter385 = and i64 %i.nw, 3                 ; 2 uses
  %lcmp.mod386.not = icmp eq i64 %xtraiter385, 0
  br i1 %lcmp.mod386.not, label %.lr.ph.i.i205.prol.loopexit, label %.lr.ph.i.i205.prol

.lr.ph.i.i205.prol:                               ; preds = %.lr.ph.i.i205.preheader, %.lr.ph.i.i205.prol
  %.05.i.i206.prol = phi i64 [ %i.nx, %.lr.ph.i.i205.prol ], [ %i.nw, %.lr.ph.i.i205.preheader ]
  %storemerge4.i.i207.prol = phi ptr [ %i.oa, %.lr.ph.i.i205.prol ], [ %i.nv, %.lr.ph.i.i205.preheader ] ; 2 uses
  %prol.iter387 = phi i64 [ %prol.iter387.next, %.lr.ph.i.i205.prol ], [ 0, %.lr.ph.i.i205.preheader ]
  %i.nx = add i64 %.05.i.i206.prol, -1            ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i207.prol, align 4, !tbaa !237
  %i.ny = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.nz = add i32 %i.ny, -1
  store i32 %i.nz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.oa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207.prol, i64 4 ; 2 uses
  %prol.iter387.next = add i64 %prol.iter387, 1   ; 2 uses
  %prol.iter387.cmp.not = icmp eq i64 %prol.iter387.next, %xtraiter385
  br i1 %prol.iter387.cmp.not, label %.lr.ph.i.i205.prol.loopexit, label %.lr.ph.i.i205.prol, !llvm.loop !3647

.lr.ph.i.i205.prol.loopexit:                      ; preds = %.lr.ph.i.i205.prol, %.lr.ph.i.i205.preheader
  %.05.i.i206.unr = phi i64 [ %i.nw, %.lr.ph.i.i205.preheader ], [ %i.nx, %.lr.ph.i.i205.prol ]
  %storemerge4.i.i207.unr = phi ptr [ %i.nv, %.lr.ph.i.i205.preheader ], [ %i.oa, %.lr.ph.i.i205.prol ]
  %i.ob = icmp ult i64 %i.nw, 4
  br i1 %i.ob, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205

.lr.ph.i.i205:                                    ; preds = %.lr.ph.i.i205.prol.loopexit, %.lr.ph.i.i205
  %.05.i.i206 = phi i64 [ %i.oj, %.lr.ph.i.i205 ], [ %.05.i.i206.unr, %.lr.ph.i.i205.prol.loopexit ]
  %storemerge4.i.i207 = phi ptr [ %i.ol, %.lr.ph.i.i205 ], [ %storemerge4.i.i207.unr, %.lr.ph.i.i205.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i207, align 4, !tbaa !237
  %i.oc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.od = add i32 %i.oc, -1
  store i32 %i.od, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.oe = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 4
  store i32 -2147483648, ptr %i.oe, align 4, !tbaa !237
  %i.of = add i32 %i.oc, -2
  store i32 %i.of, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.og = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 8
  store i32 -2147483648, ptr %i.og, align 4, !tbaa !237
  %i.oh = add i32 %i.oc, -3
  store i32 %i.oh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.oi = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 12
  %i.oj = add i64 %.05.i.i206, -4                 ; 2 uses
  store i32 -2147483648, ptr %i.oi, align 4, !tbaa !237
  %i.ok = add i32 %i.oc, -4
  store i32 %i.ok, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ol = getelementptr inbounds nuw i8, ptr %storemerge4.i.i207, i64 16
  %.not.i.i208.3 = icmp eq i64 %i.oj, 0
  br i1 %.not.i.i208.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209, label %.lr.ph.i.i205, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i209: ; preds = %.lr.ph.i.i205.prol.loopexit, %.lr.ph.i.i205, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit
  %i.om = load i64, ptr %i.ko, align 8, !tbaa !234 ; 2 uses
  %.not.i1.i210 = icmp eq i64 %i.om, 0
end_hunk_9
begin_hunk_10_@_ZN5boost9containergeERKNS0_6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !254, !noalias !4349 ; 2 uses
  %.idx.i = shl i64 %i.c, 2                       ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i
  %i.e = load ptr, ptr %1, align 8, !tbaa !247, !noalias !4350 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !254, !noalias !4351
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not1.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %.idx.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.preheader.i
  %.sroa.02.0.i.i = phi ptr [ %i.p, %bb.d ], [ %i.e, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.i = phi ptr [ %i.o, %bb.d ], [ %i.a, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.j = icmp eq ptr %.sroa.02.0.i.i, %i.h
  br i1 %i.j, label %_ZN5boost9containerltERKNS0_6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.k = load i32, ptr %.sroa.02.0.i.i, align 4, !tbaa !249 ; 2 uses
  %i.l = load i32, ptr %i.i, align 4, !tbaa !249  ; 2 uses
  %i.m = icmp slt i32 %i.k, %i.l
  br i1 %i.m, label %_ZN5boost9containerltERKNS0_6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.l, %i.k
  br i1 %i.n, label %_ZN5boost9containerltERKNS0_6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.o, %i.d
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !47

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.a
  %i.q = phi ptr [ %i.e, %bb.a ], [ %scevgep.i, %bb.d ]
  %i.r = icmp eq ptr %i.q, %i.h
  br label %_ZN5boost9containerltERKNS0_6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit

_ZN5boost9containerltERKNS0_6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvEESA_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %._crit_edge.i.i.i
  %.0.i.i.i = phi i1 [ %i.r, %._crit_edge.i.i.i ], [ true, %.lr.ph.i.i.i ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignISt14_List_iteratorIiEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %1, %2
  br i1 %.not4.i.i, label %.thread41, label %.lr.ph.i.i

.thread41:                                        ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !247
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !254
  br label %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.d, %.lr.ph.i.i ], [ 0, %bb.a ] ; 6 uses
  %.sroa.02.05.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.d = add nuw i64 %.06.i.i, 1                  ; 11 uses
  %i.e = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !187 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %2
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !8

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !246  ; 2 uses
  %.not = icmp ult i64 %.06.i.i, %i.g
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.h = icmp samesign ugt i64 %.06.i.i, 2305843009213693950
  br i1 %i.h, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = shl nuw nsw i64 %i.d, 2
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #25 ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !254  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.m, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i19.preheader

.lr.ph.i.i19.preheader:                           ; preds = %bb.e
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol

.lr.ph.i.i19.prol:                                ; preds = %.lr.ph.i.i19.preheader, %.lr.ph.i.i19.prol
  %.05.i.i.prol = phi i64 [ %i.n, %.lr.ph.i.i19.prol ], [ %i.m, %.lr.ph.i.i19.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i19.prol ], [ %i.k, %.lr.ph.i.i19.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i19.prol ], [ 0, %.lr.ph.i.i19.preheader ]
  %i.n = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.o = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i19.prol.loopexit, label %.lr.ph.i.i19.prol, !llvm.loop !4352

.lr.ph.i.i19.prol.loopexit:                       ; preds = %.lr.ph.i.i19.prol, %.lr.ph.i.i19.preheader
  %.05.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i19.preheader ], [ %i.n, %.lr.ph.i.i19.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i19.preheader ], [ %i.q, %.lr.ph.i.i19.prol ]
  %i.r = icmp ult i64 %i.m, 4
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19
  %.05.i.i = phi i64 [ %i.z, %.lr.ph.i.i19 ], [ %.05.i.i.unr, %.lr.ph.i.i19.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ab, %.lr.ph.i.i19 ], [ %storemerge4.i.i.unr, %.lr.ph.i.i19.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.s = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.t = add i32 %i.s, -1
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.u, align 4, !tbaa !249
  %i.v = add i32 %i.s, -2
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.w, align 4, !tbaa !249
  %i.x = add i32 %i.s, -3
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.z = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.y, align 4, !tbaa !249
  %i.aa = add i32 %i.s, -4
  store i32 %i.aa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i20.3 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i20.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i19, !llvm.loop !26

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i19.prol.loopexit, %.lr.ph.i.i19, %bb.e
  store i64 0, ptr %i.l, align 8, !tbaa !254
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = icmp eq ptr %i.ac, %i.k
  br i1 %i.ad, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.ae = shl nuw nsw i64 %i.g, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ae) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.j, ptr %0, align 8, !tbaa !247
  store i64 %i.d, ptr %i.f, align 8, !tbaa !84
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, %.lr.ph.i.i21
  %i.ag = phi i32 [ %i.aj, %.lr.ph.i.i21 ], [ %_ZN5boost9container4test12copyable_int5countE.promoted, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ]
  %.015.i.i = phi ptr [ %i.al, %.lr.ph.i.i21 ], [ %i.j, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ak, %.lr.ph.i.i21 ], [ %1, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !67
  store i32 %i.ai, ptr %.015.i.i, align 4, !tbaa !249
  %i.aj = add i32 %i.ag, 1                        ; 2 uses
  %i.ak = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !187 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ak, %2
  br i1 %.not.i.i22, label %bb.g, label %.lr.ph.i.i21, !llvm.loop !4353

bb.g:                                             ; preds = %.lr.ph.i.i21
  store i32 %i.aj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.j to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 2
  store i64 %i.ap, ptr %i.af, align 8, !tbaa !245
  br label %bb.j

bb.h:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aq = load ptr, ptr %0, align 8, !tbaa !247   ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !254 ; 10 uses
  %.not45 = icmp ugt i64 %i.as, %.06.i.i
  br i1 %.not45, label %.lr.ph.i18.i.preheader, label %bb.i

.lr.ph.i18.i.preheader:                           ; preds = %bb.h
  %xtraiter88 = and i64 %i.d, 3                   ; 2 uses
  %lcmp.mod89.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod89.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol

.lr.ph.i18.i.prol:                                ; preds = %.lr.ph.i18.i.preheader, %.lr.ph.i18.i.prol
  %.09.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i18.i.prol ], [ %i.aq, %.lr.ph.i18.i.preheader ] ; 2 uses
  %.048.i.i.prol = phi i64 [ %i.at, %.lr.ph.i18.i.prol ], [ %i.d, %.lr.ph.i18.i.preheader ]
  %.sroa.0.07.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i18.i.prol ], [ %1, %.lr.ph.i18.i.preheader ] ; 2 uses
  %prol.iter90 = phi i64 [ %prol.iter90.next, %.lr.ph.i18.i.prol ], [ 0, %.lr.ph.i18.i.preheader ]
  %i.at = add i64 %.048.i.i.prol, -1              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !67
  store i32 %i.av, ptr %.09.i.i.prol, align 4, !tbaa !249
  %i.aw = load ptr, ptr %.sroa.0.07.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 4 ; 3 uses
  %prol.iter90.next = add i64 %prol.iter90, 1     ; 2 uses
  %prol.iter90.cmp.not = icmp eq i64 %prol.iter90.next, %xtraiter88
  br i1 %prol.iter90.cmp.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol, !llvm.loop !4354

.lr.ph.i18.i.prol.loopexit:                       ; preds = %.lr.ph.i18.i.prol, %.lr.ph.i18.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i18.i.preheader ], [ %i.ax, %.lr.ph.i18.i.prol ]
  %.09.i.i.unr = phi ptr [ %i.aq, %.lr.ph.i18.i.preheader ], [ %i.ax, %.lr.ph.i18.i.prol ]
  %.048.i.i.unr = phi i64 [ %i.d, %.lr.ph.i18.i.preheader ], [ %i.at, %.lr.ph.i18.i.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %1, %.lr.ph.i18.i.preheader ], [ %i.aw, %.lr.ph.i18.i.prol ]
  %i.ay = icmp ult i64 %.06.i.i, 3
  br i1 %i.ay, label %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i18.i

bb.i:                                             ; preds = %bb.h
  %.not4.i.i28 = icmp eq i64 %i.as, 0
  br i1 %.not4.i.i28, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %bb.i
  %xtraiter82 = and i64 %i.as, 3                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol

.lr.ph.i.i29.prol:                                ; preds = %.lr.ph.i.i29.preheader, %.lr.ph.i.i29.prol
  %i.az = phi ptr [ %i.be, %.lr.ph.i.i29.prol ], [ %i.aq, %.lr.ph.i.i29.preheader ] ; 2 uses
  %.06.i.i30.prol = phi i64 [ %i.ba, %.lr.ph.i.i29.prol ], [ %i.as, %.lr.ph.i.i29.preheader ]
  %.sroa.0.05.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i29.prol ], [ %1, %.lr.ph.i.i29.preheader ] ; 2 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.lr.ph.i.i29.prol ], [ 0, %.lr.ph.i.i29.preheader ]
  %i.ba = add i64 %.06.i.i30.prol, -1             ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.prol, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !67
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !249
  %i.bd = load ptr, ptr %.sroa.0.05.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 3 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i.i29.prol.loopexit, label %.lr.ph.i.i29.prol, !llvm.loop !4355

.lr.ph.i.i29.prol.loopexit:                       ; preds = %.lr.ph.i.i29.prol, %.lr.ph.i.i29.preheader
  %.lcssa78.unr = phi ptr [ poison, %.lr.ph.i.i29.preheader ], [ %i.bd, %.lr.ph.i.i29.prol ]
  %.lcssa77.unr = phi ptr [ poison, %.lr.ph.i.i29.preheader ], [ %i.be, %.lr.ph.i.i29.prol ]
  %.unr = phi ptr [ %i.aq, %.lr.ph.i.i29.preheader ], [ %i.be, %.lr.ph.i.i29.prol ]
  %.06.i.i30.unr = phi i64 [ %i.as, %.lr.ph.i.i29.preheader ], [ %i.ba, %.lr.ph.i.i29.prol ]
  %.sroa.0.05.i.i.unr = phi ptr [ %1, %.lr.ph.i.i29.preheader ], [ %i.bd, %.lr.ph.i.i29.prol ]
  %i.bf = icmp ult i64 %i.as, 4
  br i1 %i.bf, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29
  %i.bg = phi ptr [ %i.bx, %.lr.ph.i.i29 ], [ %.unr, %.lr.ph.i.i29.prol.loopexit ] ; 5 uses
  %.06.i.i30 = phi i64 [ %i.bt, %.lr.ph.i.i29 ], [ %.06.i.i30.unr, %.lr.ph.i.i29.prol.loopexit ]
  %.sroa.0.05.i.i = phi ptr [ %i.bw, %.lr.ph.i.i29 ], [ %.sroa.0.05.i.i.unr, %.lr.ph.i.i29.prol.loopexit ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !67
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !249
  %i.bj = load ptr, ptr %.sroa.0.05.i.i, align 8, !tbaa !187 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !67
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !249
  %i.bn = load ptr, ptr %i.bj, align 8, !tbaa !187 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !67
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !249
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !187 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bt = add i64 %.06.i.i30, -4                  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !67
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !249
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !187 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %.not.i.i31.3 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.i31.3, label %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i29, !llvm.loop !4356

_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %.lr.ph.i.i29.prol.loopexit, %.lr.ph.i.i29, %bb.i
  %.0.i = phi ptr [ %i.aq, %bb.i ], [ %.lcssa77.unr, %.lr.ph.i.i29.prol.loopexit ], [ %i.bx, %.lr.ph.i.i29 ] ; 4 uses
  %.sroa.0.0.lcssa.i.i = phi ptr [ %1, %bb.i ], [ %.lcssa78.unr, %.lr.ph.i.i29.prol.loopexit ], [ %i.bw, %.lr.ph.i.i29 ] ; 3 uses
  %i.by = sub i64 %i.d, %i.as                     ; 3 uses
  %xtraiter85 = and i64 %i.by, 1
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.lr.ph.i15.i.prol.loopexit, label %.lr.ph.i15.i.prol

.lr.ph.i15.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %i.bz = add nsw i64 %i.by, -1
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !67
  store i32 %i.cb, ptr %.0.i, align 4, !tbaa !249
  %i.cc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ce = load ptr, ptr %.sroa.0.0.lcssa.i.i, align 8, !tbaa !187
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  br label %.lr.ph.i15.i.prol.loopexit

.lr.ph.i15.i.prol.loopexit:                       ; preds = %.lr.ph.i15.i.prol, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %.018.i.i.unr = phi i64 [ %i.by, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.bz, %.lr.ph.i15.i.prol ]
  %.01417.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.cf, %.lr.ph.i15.i.prol ]
  %.sroa.0.016.i.i.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %_ZN5boost9container18copy_n_source_destISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.ce, %.lr.ph.i15.i.prol ]
  %i.cg = icmp eq i64 %.06.i.i, %i.as
  br i1 %i.cg, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i
  %.018.i.i = phi i64 [ %i.cn, %.lr.ph.i15.i ], [ %.018.i.i.unr, %.lr.ph.i15.i.prol.loopexit ]
  %.01417.i.i = phi ptr [ %i.ct, %.lr.ph.i15.i ], [ %.01417.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i = phi ptr [ %i.cs, %.lr.ph.i15.i ], [ %.sroa.0.016.i.i.unr, %.lr.ph.i15.i.prol.loopexit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i) ]
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !67
  store i32 %i.ci, ptr %.01417.i.i, align 4, !tbaa !249
  %i.cj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cl = load ptr, ptr %.sroa.0.016.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 4
  %i.cn = add i64 %.018.i.i, -2                   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !67
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !249
  %i.cq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !187
  %i.ct = getelementptr inbounds nuw i8, ptr %.01417.i.i, i64 8
  %.not.i16.i.1 = icmp eq i64 %i.cn, 0
  br i1 %.not.i16.i.1, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i15.i, !llvm.loop !4357

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i
  %.09.i.i = phi ptr [ %i.dk, %.lr.ph.i18.i ], [ %.09.i.i.unr, %.lr.ph.i18.i.prol.loopexit ] ; 5 uses
  %.048.i.i = phi i64 [ %i.dg, %.lr.ph.i18.i ], [ %.048.i.i.unr, %.lr.ph.i18.i.prol.loopexit ]
  %.sroa.0.07.i.i = phi ptr [ %i.dj, %.lr.ph.i18.i ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i18.i.prol.loopexit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !67
  store i32 %i.cv, ptr %.09.i.i, align 4, !tbaa !249
  %i.cw = load ptr, ptr %.sroa.0.07.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !67
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !249
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !187 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !67
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !249
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !187 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 12
  %i.dg = add i64 %.048.i.i, -4                   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !67
  store i32 %i.di, ptr %i.df, align 4, !tbaa !249
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !187
  %i.dk = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16 ; 2 uses
  %.not.i19.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i19.i.3, label %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i18.i, !llvm.loop !4358

_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i, %.thread41
  %.0.lcssa.i.i374044 = phi i64 [ 0, %.thread41 ], [ %i.d, %.lr.ph.i18.i ], [ %i.d, %.lr.ph.i18.i.prol.loopexit ] ; 5 uses
  %i.dl = phi ptr [ %i.b, %.thread41 ], [ %i.ar, %.lr.ph.i18.i ], [ %i.ar, %.lr.ph.i18.i.prol.loopexit ] ; 3 uses
  %i.dm = phi i64 [ %i.c, %.thread41 ], [ %i.as, %.lr.ph.i18.i ], [ %i.as, %.lr.ph.i18.i.prol.loopexit ] ; 2 uses
  %.0.lcssa.i.i24 = phi ptr [ %i.a, %.thread41 ], [ %.lcssa.unr, %.lr.ph.i18.i.prol.loopexit ], [ %i.dk, %.lr.ph.i18.i ] ; 2 uses
  %i.dn = sub nuw i64 %i.dm, %.0.lcssa.i.i374044  ; 4 uses
  %.not3.i.i25 = icmp eq i64 %i.dn, 0
  br i1 %.not3.i.i25, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %xtraiter91 = and i64 %i.dn, 3                  ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.05.i.i26.prol = phi i64 [ %i.do, %.lr.ph.i21.i.prol ], [ %i.dn, %.lr.ph.i21.i.preheader ]
  %storemerge4.i.i27.prol = phi ptr [ %i.dr, %.lr.ph.i21.i.prol ], [ %.0.lcssa.i.i24, %.lr.ph.i21.i.preheader ] ; 2 uses
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.do = add i64 %.05.i.i26.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i27.prol, align 4, !tbaa !249
  %i.dp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dq = add i32 %i.dp, -1
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27.prol, i64 4 ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !4359

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i26.unr = phi i64 [ %i.dn, %.lr.ph.i21.i.preheader ], [ %i.do, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i27.unr = phi ptr [ %.0.lcssa.i.i24, %.lr.ph.i21.i.preheader ], [ %i.dr, %.lr.ph.i21.i.prol ]
  %i.ds = sub i64 %.0.lcssa.i.i374044, %i.dm
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i26 = phi i64 [ %i.eb, %.lr.ph.i21.i ], [ %.05.i.i26.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i27 = phi ptr [ %i.ed, %.lr.ph.i21.i ], [ %storemerge4.i.i27.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i27, align 4, !tbaa !249
  %i.du = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 4
  store i32 -2147483648, ptr %i.dw, align 4, !tbaa !249
  %i.dx = add i32 %i.du, -2
  store i32 %i.dx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dy = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 8
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !249
  %i.dz = add i32 %i.du, -3
  store i32 %i.dz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ea = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 12
  %i.eb = add i64 %.05.i.i26, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.ea, align 4, !tbaa !249
  %i.ec = add i32 %i.du, -4
  store i32 %i.ec, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ed = getelementptr inbounds nuw i8, ptr %storemerge4.i.i27, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.eb, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !26

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i, %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %i.ee = phi ptr [ %i.dl, %.lr.ph.i21.i.prol.loopexit ], [ %i.dl, %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i ], [ %i.dl, %.lr.ph.i21.i ], [ %i.ar, %.lr.ph.i15.i ], [ %i.ar, %.lr.ph.i15.i.prol.loopexit ]
  %.0.lcssa.i.i3739 = phi i64 [ %.0.lcssa.i.i374044, %.lr.ph.i21.i.prol.loopexit ], [ %.0.lcssa.i.i374044, %_ZN5boost9container6copy_nISt14_List_iteratorIiEPNS0_4test12copyable_intEEENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i ], [ %.0.lcssa.i.i374044, %.lr.ph.i21.i ], [ %i.d, %.lr.ph.i15.i ], [ %i.d, %.lr.ph.i15.i.prol.loopexit ]
  store i64 %.0.lcssa.i.i3739, ptr %i.ee, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEPS4_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS2_22input_iterator_wrapperISt14_List_iteratorIiEEEEEvT_SE_PNS_11move_detail13disable_if_orIvNSF_14is_convertibleISE_mEENSF_4and_INSF_12is_differentINSF_17integral_constantIjLj1EEENSL_IjLj0EEEEENS0_3dtl21is_not_input_iteratorISE_EENSF_5bool_ILb1EEEST_EENSS_ILb0EEESV_E4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::vec_iterator.140", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !247, !noalias !4373 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !254, !noalias !4374 ; 3 uses
  %.idx = shl nsw i64 %i.c, 2
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 %.idx ; 5 uses
  %i.e = icmp ne ptr %1, %2
  %i.f = icmp ne i64 %i.c, 0
  %or.cond15 = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond15, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.011.017 = phi ptr [ %i.j, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.sroa.05.016 = phi ptr [ %i.i, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.011.017, i64 16
  %i.h = load i32, ptr %i.g, align 4, !tbaa !67
  store i32 %i.h, ptr %.sroa.05.016, align 4, !tbaa !249
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.05.016, i64 4 ; 3 uses
  %i.j = load ptr, ptr %.sroa.011.017, align 8, !tbaa !187 ; 3 uses
  %i.k = icmp ne ptr %i.j, %2
  %i.l = icmp ne ptr %i.i, %i.d
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !4364

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.sroa.05.0.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.i, %.lr.ph ] ; 2 uses
  %.sroa.011.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.j, %.lr.ph ] ; 2 uses
  %i.m = icmp eq ptr %.sroa.011.0.lcssa, %2
  br i1 %i.m, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %.critedge
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = ptrtoint ptr %.sroa.05.0.lcssa to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 6 uses
  %.not3.i.i = icmp eq ptr %i.d, %.sroa.05.0.lcssa
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.r ; 2 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.preheader.i, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.prol ], [ %i.q, %.lr.ph.i.preheader.i ]
  %storemerge4.i.i.prol = phi ptr [ %i.w, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.preheader.i ]
  %i.t = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4365

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.preheader.i
  %.05.i.i.unr = phi i64 [ %i.q, %.lr.ph.i.preheader.i ], [ %i.t, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.preheader.i ], [ %i.w, %.lr.ph.i.i.prol ]
  %i.x = icmp ult i64 %i.q, 4
  br i1 %i.x, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.af, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.y = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aa, align 4, !tbaa !249
  %i.ab = add i32 %i.y, -2
  store i32 %i.ab, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.ac, align 4, !tbaa !249
  %i.ad = add i32 %i.y, -3
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.af = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.ae, align 4, !tbaa !249
  %i.ag = add i32 %i.y, -4
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE19priv_destroy_last_nEm.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %i.ai = sub i64 %i.c, %i.q
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6insertINS2_22input_iterator_wrapperISt14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEENSE_ISF_Lb1EEET_SI_PNS_11move_detail13disable_if_orIvNSJ_14is_convertibleISI_mEENS0_3dtl21is_not_input_iteratorISI_EENSJ_5bool_ILb0EEESR_E4typeE.exit

.lr.ph.i:                                         ; preds = %.critedge
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRiEEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i, %.lr.ph.i
  %.sroa.05.010.i = phi ptr [ %.sroa.011.0.lcssa, %.lr.ph.i ], [ %i.bo, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRiEEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i ] ; 2 uses
  %.sroa.01.09.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.bn, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE7emplaceIJRiEEENS0_12vec_iteratorIPS3_Lb0EEENSB_ISC_Lb1EEEDpOT_.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !4375
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 16 ; 3 uses
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !246, !noalias !4376
  %i.am = load i64, ptr %i.b, align 8, !tbaa !254, !noalias !4376 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.al, %i.am
  br i1 %.not.i.i.i, label %bb.g, label %bb.d, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %0, align 8, !tbaa !247, !noalias !4376 ; 5 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.am ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, %.sroa.01.09.i
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ap = load i32, ptr %i.ak, align 4, !tbaa !67, !noalias !4376
  store i32 %i.ap, ptr %i.ao, align 4, !tbaa !249, !noalias !4376
  %i.aq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !noalias !4376
  %i.ar = add i32 %i.aq, 1
end_hunk_10
