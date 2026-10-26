Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/small_vector_test?download=true
inline.NumInlined: 11236
inline.NumDeleted: 2906
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 397
loop-unroll.NumUnrolled: 532
begin_hunk_0_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3184

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !225
  %i.ao = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !225
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !225
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !225
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !22

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = icmp eq ptr %i.ay, %i.s
  br i1 %i.az, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !222
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bb) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !221
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.bc = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %i.s to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.r, ptr %1, align 8, !tbaa !223
  %i.bg = add i64 %i.bc, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !221
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.bh = getelementptr inbounds i8, ptr %i.r, i64 %i.bf
  store ptr %i.bh, ptr %0, align 8, !tbaa !273
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !271    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !230  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !223    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !225
  store i32 %i.k, ptr %i.i, align 4, !tbaa !225
  store i32 0, ptr %4, align 4, !tbaa !225
  %i.l = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !225
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !225
  %i.s = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !225
  store i32 %i.w, ptr %i.v, align 4, !tbaa !225
  store i32 0, ptr %i.u, align 4, !tbaa !225
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !34

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !225
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !225
  store i32 0, ptr %i.ag, align 4, !tbaa !225
  %i.aj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !225
  store i32 %i.au, ptr %i.as, align 4, !tbaa !225
  store i32 0, ptr %i.ar, align 4, !tbaa !225
  %i.av = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !33

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.az = shl i64 %i.e, 2
  %i.ba = shl i64 %3, 2
  %i.bb = add i64 %i.az, %i.h
  %i.bc = add i64 %i.bb, -4
  %i.bd = add i64 %i.ba, %i.ac
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl i64 %i.e, 2                         ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ac
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4                       ; 2 uses
  %i.bo = add i64 %i.bh, -4                       ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bn
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = add i64 %i.bi, %i.bn
  %i.bs = sub i64 %i.bo, %i.br
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %bound0 = icmp ult ptr %i.bq, %i.ag
  %bound1 = icmp ult ptr %i.bt, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ag, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !225, !alias.scope !3202
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !225, !alias.scope !3202
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !225, !alias.scope !3203, !noalias !3202
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !225, !alias.scope !3203, !noalias !3202
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !225, !alias.scope !3202
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !225, !alias.scope !3202
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !3188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !225
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !225
  store i32 0, ptr %i.cd, align 4, !tbaa !225
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3189

_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cg = shl i64 %3, 2                           ; 2 uses
  %i.ch = getelementptr i8, ptr %i.a, i64 %i.cg
  %i.ci = getelementptr i8, ptr %4, i64 %i.cg
  %bound034 = icmp ult ptr %i.a, %i.ci
  %bound135 = icmp ult ptr %4, %i.ch
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.cj = and i64 %3, 7
  %i.ck = shl i64 %n.vec38, 2                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.ck
  %i.cm = getelementptr i8, ptr %4, i64 %i.ck
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cn = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cn ; 3 uses
  %i.co = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !225, !alias.scope !3204
  %wide.load44 = load <4 x i32>, ptr %i.co, align 4, !tbaa !225, !alias.scope !3204
  %i.cp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !225, !alias.scope !3205, !noalias !3204
  store <4 x i32> %wide.load44, ptr %i.cp, align 4, !tbaa !225, !alias.scope !3205, !noalias !3204
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !225, !alias.scope !3204
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !225, !alias.scope !3204
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cq, label %middle.block46, label %vector.body39, !llvm.loop !3193

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block46 ] ; 2 uses
  %i.cr = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cs = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ct = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !225
  store i32 %i.ct, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !225
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !225
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3194

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %i.cw = icmp ult i64 %i.cr, 3
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !225
  store i32 %i.cx, ptr %.048.i.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !225
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !225
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !225
  store i32 0, ptr %i.cy, align 4, !tbaa !225
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !225
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !225
  store i32 0, ptr %i.db, align 4, !tbaa !225
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dg = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !225
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !225
  store i32 0, ptr %i.de, align 4, !tbaa !225
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3195

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i48.i.i.i ], [ %i.dk, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dl = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  store i32 %i.dl, ptr %.01517.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  %i.dm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.do, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !31

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %i.dq = getelementptr i8, ptr %4, i64 %i.ad
  %bound059 = icmp ult ptr %i.a, %i.dq
  %bound160 = icmp ult ptr %4, %i.i
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.ae, -8                    ; 3 uses
  %i.dr = and i64 %i.ae, 7
  %i.ds = shl nsw i64 %n.vec63, 2                 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.a, i64 %i.ds
  %i.du = getelementptr i8, ptr %4, i64 %i.ds     ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.dv = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.dv ; 2 uses
  %next.gep67 = getelementptr i8, ptr %4, i64 %i.dv ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE24prot_shrink_to_fit_smallEPS3_m:bb.a
bb.k:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i
  %i.cq = load i64, ptr %i.a, align 8, !tbaa !222
  %i.cr = shl i64 %i.cq, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.cr) #22
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !221
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i, %bb.k
  %i.cs = phi i64 [ 0, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.i ], [ %.pre.i.i, %bb.k ], [ %i.ax, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i.i ], [ %i.ax, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIS8_EEEEEEvRT_T0_SG_SG_T1_mT2_.exit.i.thread.i ]
  store ptr %i.av, ptr %0, align 8, !tbaa !223
  store i64 %i.cs, ptr %i.d, align 8, !tbaa !221
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.sink = phi i64 [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.e, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE23priv_move_to_new_bufferEmNS_11move_detail17integral_constantIjLj1EEE.exit ], [ %2, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit29 ]
  store i64 %.sink, ptr %i.a, align 8, !tbaa !84
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.h, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::vec_iterator.75", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !230  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !222
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !223, !nonnull !76, !noundef !76
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !225
  store i32 %i.g, ptr %i.f, align 4, !tbaa !225
  store i32 0, ptr %1, align 4, !tbaa !225
  %i.h = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !tbaa !230
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.k = load ptr, ptr %0, align 8, !tbaa !223
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.b
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.75") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.l, i64 noundef 1, ptr nonnull %1)
  %i.m = load ptr, ptr %2, align 8, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSG_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !271    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !222
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !230  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !223    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !67
  store i32 %i.l, ptr %i.i, align 4, !tbaa !225
  %i.m = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.o = load ptr, ptr %4, align 8, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !67
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !225
  %i.u = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !67
  store i32 %i.z, ptr %i.x, align 4, !tbaa !225
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !187
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !35

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr [4 x i8], ptr %i.i, i64 %i.ai ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ak = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !225
  store i32 %i.al, ptr %i.i, align 4, !tbaa !225
  store i32 0, ptr %i.aj, align 4, !tbaa !225
  %i.am = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp eq i64 %3, 1
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  %i.as = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !225
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !225
  store i32 0, ptr %i.au, align 4, !tbaa !225
  %i.ay = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !33

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bc = shl i64 %i.e, 2
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %i.h
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.bd, %i.af
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bk = shl i64 %i.e, 2                         ; 2 uses
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bk, %i.h
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.af
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4                       ; 2 uses
  %i.br = add i64 %i.bk, -4                       ; 2 uses
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bu = add i64 %i.bl, %i.bq
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = getelementptr i8, ptr %i.g, i64 %i.bv
  %bound0 = icmp ult ptr %i.bt, %i.aj
  %bound1 = icmp ult ptr %i.bw, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ca ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !225, !alias.scope !3220
  %wide.load24 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !225, !alias.scope !3220
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !225, !alias.scope !3221, !noalias !3220
  store <4 x i32> %wide.load24, ptr %i.ce, align 4, !tbaa !225, !alias.scope !3221, !noalias !3220
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !225, !alias.scope !3220
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !225, !alias.scope !3220
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !3215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cg = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !225
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !225
  store i32 0, ptr %i.cg, align 4, !tbaa !225
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cg
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !3216

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cj = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !67
  store i32 %i.cl, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !225
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3217

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %i.co = icmp ult i64 %3, 4
  br i1 %i.co, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !67
  store i32 %i.cq, ptr %.048.i.i.i.i.i, align 4, !tbaa !225
  %i.cr = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !67
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !225
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !187 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !67
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !225
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !187 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !67
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !225
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !187
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3218

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i48.i.i.i ], [ %i.dg, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dh = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  store i32 %i.dh, ptr %.01517.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  %i.di = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dk, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !31

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dm = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !67
  store i32 %i.do, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !225
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !3219

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dr = icmp ult i64 %i.ah, 4
  br i1 %i.dr, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !67
  store i32 %i.dt, ptr %.048.i.i54.i.i.i, align 4, !tbaa !225
  %i.du = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !67
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !225
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !187 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !67
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !225
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !187 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ee = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !67
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !225
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !187 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !3218

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ej = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter34 = and i64 %i.ej, 1
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !67
  store i32 %i.el, ptr %i.i, align 4, !tbaa !225
  %i.em = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3786

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !237
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !237
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !237
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = icmp eq ptr %i.ay, %i.s
  br i1 %i.az, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !234
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bb) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.bc = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.bd = ptrtoint ptr %2 to i64
  %i.be = ptrtoint ptr %i.s to i64
  %i.bf = sub i64 %i.bd, %i.be
  store ptr %i.r, ptr %1, align 8, !tbaa !235
  %i.bg = add i64 %i.bc, %3
  store i64 %i.bg, ptr %i.d, align 8, !tbaa !233
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.bh = getelementptr inbounds i8, ptr %i.r, i64 %i.bf
  store ptr %i.bh, ptr %0, align 8, !tbaa !281
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !279    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !242  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !235    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.k, ptr %i.i, align 4, !tbaa !237
  store i32 0, ptr %4, align 4, !tbaa !237
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !237
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !237
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !237
  store i32 %i.w, ptr %i.v, align 4, !tbaa !237
  store i32 0, ptr %i.u, align 4, !tbaa !237
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !42

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !237
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !237
  store i32 0, ptr %i.ag, align 4, !tbaa !237
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !237
  store i32 %i.au, ptr %i.as, align 4, !tbaa !237
  store i32 0, ptr %i.ar, align 4, !tbaa !237
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !41

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.az = shl i64 %i.e, 2
  %i.ba = shl i64 %3, 2
  %i.bb = add i64 %i.az, %i.h
  %i.bc = add i64 %i.bb, -4
  %i.bd = add i64 %i.ba, %i.ac
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl i64 %i.e, 2                         ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ac
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4                       ; 2 uses
  %i.bo = add i64 %i.bh, -4                       ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bn
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = add i64 %i.bi, %i.bn
  %i.bs = sub i64 %i.bo, %i.br
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %bound0 = icmp ult ptr %i.bq, %i.ag
  %bound1 = icmp ult ptr %i.bt, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ag, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !237, !alias.scope !3804
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !237, !alias.scope !3804
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !237, !alias.scope !3805, !noalias !3804
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !237, !alias.scope !3805, !noalias !3804
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !237, !alias.scope !3804
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !237, !alias.scope !3804
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !3790

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !237
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !237
  store i32 0, ptr %i.cd, align 4, !tbaa !237
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3791

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cg = shl i64 %3, 2                           ; 2 uses
  %i.ch = getelementptr i8, ptr %i.a, i64 %i.cg
  %i.ci = getelementptr i8, ptr %4, i64 %i.cg
  %bound034 = icmp ult ptr %i.a, %i.ci
  %bound135 = icmp ult ptr %4, %i.ch
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.cj = and i64 %3, 7
  %i.ck = shl i64 %n.vec38, 2                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.ck
  %i.cm = getelementptr i8, ptr %4, i64 %i.ck
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cn = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cn ; 3 uses
  %i.co = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !237, !alias.scope !3806
  %wide.load44 = load <4 x i32>, ptr %i.co, align 4, !tbaa !237, !alias.scope !3806
  %i.cp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !237, !alias.scope !3807, !noalias !3806
  store <4 x i32> %wide.load44, ptr %i.cp, align 4, !tbaa !237, !alias.scope !3807, !noalias !3806
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !237, !alias.scope !3806
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !237, !alias.scope !3806
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cq, label %middle.block46, label %vector.body39, !llvm.loop !3795

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block46 ] ; 2 uses
  %i.cr = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cs = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ct = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !237
  store i32 %i.ct, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !237
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !237
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3796

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %i.cw = icmp ult i64 %i.cr, 3
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !237
  store i32 %i.cx, ptr %.048.i.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !237
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !237
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !237
  store i32 0, ptr %i.cy, align 4, !tbaa !237
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !237
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !237
  store i32 0, ptr %i.db, align 4, !tbaa !237
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dg = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !237
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !237
  store i32 0, ptr %i.de, align 4, !tbaa !237
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3797

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i48.i.i.i ], [ %i.dk, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dl = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  store i32 %i.dl, ptr %.01517.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  %i.dm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.do, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !39

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %i.dq = getelementptr i8, ptr %4, i64 %i.ad
  %bound059 = icmp ult ptr %i.a, %i.dq
  %bound160 = icmp ult ptr %4, %i.i
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.ae, -8                    ; 3 uses
  %i.dr = and i64 %i.ae, 7
  %i.ds = shl nsw i64 %n.vec63, 2                 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.a, i64 %i.ds
  %i.du = getelementptr i8, ptr %4, i64 %i.ds     ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.dv = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.dv ; 2 uses
  %next.gep67 = getelementptr i8, ptr %4, i64 %i.dv ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test31vector_unchecked_push_back_testINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dc, align 4, !tbaa !237
  %i.dd = add i32 %i.da, -2
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.de = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.de, align 4, !tbaa !237
  %i.df = add i32 %i.da, -3
  store i32 %i.df, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.dh = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dg, align 4, !tbaa !237
  %i.di = add i32 %i.da, -4
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i51.3 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i51.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !234 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.dk, 0
  %i.dl = icmp eq ptr %i.a, %i.cu
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.dl
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.dm = shl i64 %i.dk, 2
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.dm) #22
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %.017

.thread88:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp
  %.sroa.058.3 = phi ptr [ %.sroa.058.1125, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.058.0119, %.loopexit.split-lp99.loopexit.split-lp ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.1127, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.29.0121, %.loopexit.split-lp99.loopexit.split-lp ]
  %.pn19.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp198, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp ]
  %i.dn = ptrtoint ptr %.sroa.29.3 to i64
  %i.do = ptrtoint ptr %.sroa.058.3 to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.3, i64 noundef %i.dp) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit53

_ZNSt6vectorIiSaIiEED2Ev.exit53:                  ; preds = %.thread82, %.thread88
  %.pn19.pn87 = phi { ptr, i32 } [ %i.x, %.thread82 ], [ %.pn19.pn, %.thread88 ]
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn19.pn87
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !279    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !242  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !235    ; 5 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 16 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter57 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.l = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.m = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.m, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !237
  %i.n = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3876

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.017.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.r = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.r, ptr %.01416.i.i.i.i, align 4, !tbaa !237
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.v = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.v, ptr %i.u, align 4, !tbaa !237
  %i.w = add i32 %i.s, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.y = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.y, ptr %i.x, align 4, !tbaa !237
  %i.z = add i32 %i.s, 3
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.ab = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !237
  %i.ad = add i32 %i.s, 4
  store i32 %i.ad, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3877

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ai, %3
  br i1 %.not.i.i.i, label %.lr.ph.i50.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sub i64 0, %3
  %i.ak = getelementptr [4 x i8], ptr %i.i, i64 %i.aj ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.al = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !237
  store i32 %i.am, ptr %i.i, align 4, !tbaa !237
  store i32 0, ptr %i.ak, align 4, !tbaa !237
  %i.an = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ak, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.aq, %.lr.ph.i.i10.i.i.prol ]
  %i.ar = icmp eq i64 %3, 1
  br i1 %i.ar, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.as = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  store i32 %i.as, ptr %.01618.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ax = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ay = load i32, ptr %i.av, align 4, !tbaa !237
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !237
  store i32 0, ptr %i.av, align 4, !tbaa !237
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !41

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ak
  br i1 %.not8.i.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bd = shl i64 %i.e, 2
  %i.be = shl i64 %3, 2
  %i.bf = add i64 %i.bd, %i.h
  %i.bg = add i64 %i.bf, -4
  %i.bh = add i64 %i.be, %i.ag
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bl = shl i64 %i.e, 2                         ; 2 uses
  %i.bm = shl i64 %3, 2                           ; 2 uses
  %i.bn = add i64 %i.bl, %i.h
  %i.bo = add i64 %i.bn, -4
  %i.bp = add i64 %i.bm, %i.ag
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = and i64 %i.bq, -4                       ; 2 uses
  %i.bs = add i64 %i.bl, -4                       ; 2 uses
  %i.bt = sub i64 %i.bs, %i.br
  %i.bu = getelementptr i8, ptr %i.g, i64 %i.bt
  %i.bv = add i64 %i.bm, %i.br
  %i.bw = sub i64 %i.bs, %i.bv
  %i.bx = getelementptr i8, ptr %i.g, i64 %i.bw
  %bound0 = icmp ult ptr %i.bu, %i.ak
  %bound1 = icmp ult ptr %i.bx, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 9223372036854775800     ; 3 uses
  %i.by = mul i64 %n.vec, -4                      ; 2 uses
  %i.bz = getelementptr i8, ptr %i.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.ak, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.cb ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 %i.cb ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !237, !alias.scope !3888
  %wide.load24 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !237, !alias.scope !3888
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ce, align 4, !tbaa !237, !alias.scope !3889, !noalias !3888
  store <4 x i32> %wide.load24, ptr %i.cf, align 4, !tbaa !237, !alias.scope !3889, !noalias !3888
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !237, !alias.scope !3888
  store <4 x i32> zeroinitializer, ptr %i.cd, align 4, !tbaa !237, !alias.scope !3888
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !3881

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader54

.lr.ph.i40.i.i.i.preheader54:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i40.i.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader54, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %.079.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %i.ch = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ci = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !237
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !237
  store i32 0, ptr %i.ch, align 4, !tbaa !237
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ch
  br i1 %.not.i41.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3882

.lr.ph.i42.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !237 ; 2 uses
  %min.iters.check27 = icmp ult i64 %3, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i42.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.ck = and i64 %3, 7
  %i.cl = shl i64 %n.vec29, 2
  %i.cm = getelementptr i8, ptr %i.a, i64 %i.cl
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.cn = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep32, align 4, !tbaa !237
  store <4 x i32> %broadcast.splat, ptr %i.co, align 4, !tbaa !237
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.cp, label %middle.block34, label %vector.body30, !llvm.loop !3883

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n35, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i42.i.i.i, %middle.block34
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i42.i.i.i ], [ %i.ck, %middle.block34 ]
  %.046.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i42.i.i.i ], [ %i.cm, %middle.block34 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i.i.i.i = phi i64 [ %i.cq, %scalar.ph26 ], [ %.07.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.cr, %scalar.ph26 ], [ %.046.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cq = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.046.i.i.i.i, align 4, !tbaa !237
  %i.cr = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 4
  %.not.i43.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not.i43.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26, !llvm.loop !3884

.lr.ph.i50.preheader.i.i.i:                       ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i50.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i, %.lr.ph.i50.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i50.i.i.i ], [ %i.a, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.cx, %.lr.ph.i50.i.i.i ], [ %i.cs, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ct = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !237
  store i32 %i.ct, ptr %.01517.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !237
  %i.cu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cw = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i51.i.i.i = icmp eq ptr %i.cw, %i.i
  br i1 %.not.i51.i.i.i, label %.lr.ph.i53.i.i.i, label %.lr.ph.i50.i.i.i, !llvm.loop !39

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i
  %.pre.i54.i.i.i = load i32, ptr %4, align 4, !tbaa !237 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i53.i.i.i
  %n.vec41 = and i64 %i.ai, -8                    ; 3 uses
  %i.cy = and i64 %i.ai, 7
  %i.cz = shl nsw i64 %n.vec41, 2
  %i.da = getelementptr i8, ptr %i.a, i64 %i.cz
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i54.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.db = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !237
  store <4 x i32> %broadcast.splat43, ptr %i.dc, align 4, !tbaa !237
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.dd = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.dd, label %middle.block48, label %vector.body44, !llvm.loop !3885

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ai, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i53.i.i.i, %middle.block48
  %.07.i55.i.i.i.ph = phi i64 [ %i.ai, %.lr.ph.i53.i.i.i ], [ %i.cy, %middle.block48 ]
  %.046.i56.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i53.i.i.i ], [ %i.da, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i55.i.i.i = phi i64 [ %i.de, %scalar.ph38 ], [ %.07.i55.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i56.i.i.i = phi ptr [ %i.df, %scalar.ph38 ], [ %.046.i56.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.de = add i64 %.07.i55.i.i.i, -1              ; 2 uses
  store i32 %.pre.i54.i.i.i, ptr %.046.i56.i.i.i, align 4, !tbaa !237
  %i.df = getelementptr inbounds nuw i8, ptr %.046.i56.i.i.i, i64 4
  %.not.i57.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i57.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38, !llvm.loop !3886

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.dg = sub i64 %3, %i.ai                       ; 3 uses
  %xtraiter55 = and i64 %i.dg, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %i.dg, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %i.dh = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.di = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.di, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !237
  %i.dj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dk = add i32 %i.dj, 1
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter55
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3887

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.dg, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dl, %.lr.ph.i.i.i.i.i.prol ]
  %i.dm = sub i64 %i.ai, %3
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.do = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.do, ptr %.01416.i.i.i.i.i, align 4, !tbaa !237
  %i.dp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dq = add i32 %i.dp, 1
  store i32 %i.dq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignIPS3_EEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE:bb.a
  br i1 %.not3.i.i20, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  %xtraiter106 = and i64 %i.fq, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol

.lr.ph.i21.i.prol:                                ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i.prol
  %.05.i.i21.prol = phi i64 [ %i.fr, %.lr.ph.i21.i.prol ], [ %i.fq, %.lr.ph.i21.i.preheader ]
  %storemerge4.i.i22.prol = phi ptr [ %i.fu, %.lr.ph.i21.i.prol ], [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ] ; 2 uses
  %prol.iter108 = phi i64 [ %prol.iter108.next, %.lr.ph.i21.i.prol ], [ 0, %.lr.ph.i21.i.preheader ]
  %i.fr = add i64 %.05.i.i21.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i22.prol, align 4, !tbaa !237
  %i.fs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ft = add i32 %i.fs, -1
  store i32 %i.ft, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22.prol, i64 4 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !3975

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i21.unr = phi i64 [ %i.fq, %.lr.ph.i21.i.preheader ], [ %i.fr, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i22.unr = phi ptr [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ], [ %i.fu, %.lr.ph.i21.i.prol ]
  %i.fv = sub i64 %i.d, %i.bj
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i21 = phi i64 [ %i.ge, %.lr.ph.i21.i ], [ %.05.i.i21.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i22 = phi ptr [ %i.gg, %.lr.ph.i21.i ], [ %storemerge4.i.i22.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i22, align 4, !tbaa !237
  %i.fx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 4
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !237
  %i.ga = add i32 %i.fx, -2
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 8
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !237
  %i.gc = add i32 %i.fx, -3
  store i32 %i.gc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 12
  %i.ge = add i64 %.05.i.i21, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gd, align 4, !tbaa !237
  %i.gf = add i32 %i.fx, -4
  store i32 %i.gf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.ge, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !24

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i, %_ZN5boost9container6copy_nIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  store i64 %i.d, ptr %i.bi, align 8, !tbaa !233
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSG_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !279    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !234
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !242  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !235    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !67
  store i32 %i.l, ptr %i.i, align 4, !tbaa !237
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.o = load ptr, ptr %4, align 8, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !67
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !237
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !67
  store i32 %i.z, ptr %i.x, align 4, !tbaa !237
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !187
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !43

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr [4 x i8], ptr %i.i, i64 %i.ai ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ak = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !237
  store i32 %i.al, ptr %i.i, align 4, !tbaa !237
  store i32 0, ptr %i.aj, align 4, !tbaa !237
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp eq i64 %3, 1
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  %i.as = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !237
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !237
  store i32 0, ptr %i.au, align 4, !tbaa !237
  %i.ay = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !41

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bc = shl i64 %i.e, 2
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %i.h
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.bd, %i.af
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bk = shl i64 %i.e, 2                         ; 2 uses
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bk, %i.h
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.af
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4                       ; 2 uses
  %i.br = add i64 %i.bk, -4                       ; 2 uses
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bu = add i64 %i.bl, %i.bq
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = getelementptr i8, ptr %i.g, i64 %i.bv
  %bound0 = icmp ult ptr %i.bt, %i.aj
  %bound1 = icmp ult ptr %i.bw, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.i, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.ca ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !237, !alias.scope !3986
  %wide.load24 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !237, !alias.scope !3986
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !237, !alias.scope !3987, !noalias !3986
  store <4 x i32> %wide.load24, ptr %i.ce, align 4, !tbaa !237, !alias.scope !3987, !noalias !3986
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !237, !alias.scope !3986
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !237, !alias.scope !3986
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !3981

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cg = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !237
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !237
  store i32 0, ptr %i.cg, align 4, !tbaa !237
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cg
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !3982

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cj = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !67
  store i32 %i.cl, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !237
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3983

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %i.co = icmp ult i64 %3, 4
  br i1 %i.co, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !67
  store i32 %i.cq, ptr %.048.i.i.i.i.i, align 4, !tbaa !237
  %i.cr = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !67
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !237
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !187 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !67
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !237
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !187 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !67
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !237
  %i.de = load ptr, ptr %i.cz, align 8, !tbaa !187
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3984

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i48.i.i.i ], [ %i.dg, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dh = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  store i32 %i.dh, ptr %.01517.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dk, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !39

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dm = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !67
  store i32 %i.do, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !237
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !3985

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dq, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dr = icmp ult i64 %i.ah, 4
  br i1 %i.dr, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !67
  store i32 %i.dt, ptr %.048.i.i54.i.i.i, align 4, !tbaa !237
  %i.du = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !67
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !237
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !187 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !67
  store i32 %i.eb, ptr %i.dz, align 4, !tbaa !237
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !187 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ee = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !67
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !237
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !187 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !3984

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.eh, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ej = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter34 = and i64 %i.ej, 1
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !67
  store i32 %i.el, ptr %i.i, align 4, !tbaa !237
  %i.em = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
end_hunk_4
begin_hunk_5_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS_13move_iteratorIPS3_EEEEvT_SD_PNS_11move_detail13disable_if_orIvNSE_7is_sameINSE_17integral_constantIjLj1EEENSH_IjLj0EEEEENSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEEE4typeE:bb.a
  %prol.iter110.cmp.not = icmp eq i64 %prol.iter110.next, %xtraiter108
  br i1 %prol.iter110.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !4545

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i23.unr = phi i64 [ %i.fq, %.lr.ph.i21.i.preheader ], [ %i.fr, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i24.unr = phi ptr [ %.0.lcssa.i.i21, %.lr.ph.i21.i.preheader ], [ %i.fu, %.lr.ph.i21.i.prol ]
  %i.fv = sub i64 %i.d, %i.bj
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i23 = phi i64 [ %i.ge, %.lr.ph.i21.i ], [ %.05.i.i23.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i24 = phi ptr [ %i.gg, %.lr.ph.i21.i ], [ %storemerge4.i.i24.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i24, align 4, !tbaa !249
  %i.fx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i24, i64 4
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !249
  %i.ga = add i32 %i.fx, -2
  store i32 %i.ga, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i24, i64 8
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !249
  %i.gc = add i32 %i.fx, -3
  store i32 %i.gc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i24, i64 12
  %i.ge = add i64 %.05.i.i23, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gd, align 4, !tbaa !249
  %i.gf = add i32 %i.fx, -4
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i24, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.ge, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !26

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i15.i.prol.loopexit, %.lr.ph.i15.i, %_ZN5boost9container6copy_nINS_13move_iteratorIPNS0_4test12copyable_intEEES5_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  store i64 %i.d, ptr %i.bi, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS_13move_iteratorIPS4_EES9_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !285    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !254  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !247    ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 13 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not14.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter42 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod43.not = icmp eq i64 %xtraiter42, 0
  br i1 %lcmp.mod43.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.016.i.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter44 = phi i64 [ %prol.iter44.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.k = add i64 %.016.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.prol, align 4, !tbaa !249
  %i.l = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter44.next = add i64 %prol.iter44, 1     ; 2 uses
  %prol.iter44.cmp.not = icmp eq i64 %prol.iter44.next, %xtraiter42
  br i1 %prol.iter44.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4548

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.016.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.o = icmp ult i64 %3, 4
  br i1 %i.o, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.016.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 0, ptr %.01315.i.i.i.i, align 4, !tbaa !249
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  store i32 0, ptr %i.r, align 4, !tbaa !249
  %i.s = add i32 %i.p, 2
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  store i32 0, ptr %i.t, align 4, !tbaa !249
  %i.u = add i32 %i.p, 3
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.w = add i64 %.016.i.i.i.i, -4                ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !249
  %i.x = add i32 %i.p, 4
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4549

bb.d:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.z = ptrtoint ptr %i.i to i64
  %i.aa = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ac, %3
  br i1 %.not.i.i.i, label %.lr.ph.i53.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = sub i64 0, %3
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ad ; 6 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aj, %.lr.ph.i.i10.i.i.prol ], [ %i.ae, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ak, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.af = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.ag = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.ag, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !249
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ai = add i32 %i.ah, 1                        ; 2 uses
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !4550

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.lcssa31.unr = phi i32 [ poison, %bb.f ], [ %i.ai, %.lr.ph.i.i10.i.i.prol ]
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.af, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ae, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %i.al = icmp ult i64 %3, 4
  br i1 %i.al, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.az, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.am = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !249
  store i32 %i.am, ptr %.01618.i.i.i.i, align 4, !tbaa !249
  %i.an = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.ao = add i32 %i.an, 1
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !249
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !249
  %i.as = add i32 %i.an, 2
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.av = load i32, ptr %i.at, align 4, !tbaa !249
  store i32 %i.av, ptr %i.au, align 4, !tbaa !249
  %i.aw = add i32 %i.an, 3
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.az = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !249
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !249
  %i.bb = add i32 %i.an, 4                        ; 2 uses
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !44

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.lcssa31 = phi i32 [ %.lcssa31.unr, %.lr.ph.i.i10.i.i.prol.loopexit ], [ %i.bb, %.lr.ph.i.i10.i.i ]
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ae
  br i1 %.not8.i.i.i.i, label %.lr.ph.preheader.i.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.be = shl i64 %i.e, 2
  %i.bf = shl i64 %3, 2
  %i.bg = add i64 %i.be, %i.h
  %i.bh = add i64 %i.bg, -4
  %i.bi = add i64 %i.bf, %i.aa
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 60
  %i.bm = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bm, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bl, 9223372036854775800     ; 3 uses
  %i.bn = mul i64 %n.vec, -4                      ; 2 uses
  %i.bo = getelementptr i8, ptr %i.i, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.ae, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bq ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.ae, i64 %i.bq ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %next.gep25, i64 -16
  %i.bs = getelementptr inbounds i8, ptr %next.gep25, i64 -32
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !249
  %wide.load26 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !249
  %i.bt = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bu = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bt, align 4, !tbaa !249
  store <4 x i32> %wide.load26, ptr %i.bu, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !4551

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i.loopexit.i.i, label %.lr.ph.i40.i.i.i.preheader30

.lr.ph.i40.i.i.i.preheader30:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ae, %.lr.ph.i40.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader30, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader30 ]
  %.079.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader30 ]
  %i.bw = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.bx = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !249
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !249
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.bw
  br i1 %.not.i41.i.i.i, label %.lr.ph.preheader.i.i.loopexit.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !4552

.lr.ph.preheader.i.i.loopexit.i.i:                ; preds = %.lr.ph.i40.i.i.i, %middle.block
  %.pre.i.i.pre.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  br label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.lr.ph.preheader.i.i.loopexit.i.i, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %.pre.i.i.i.i = phi i32 [ %.pre.i.i.pre.i.i, %.lr.ph.preheader.i.i.loopexit.i.i ], [ %.lcssa31, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i ]
  %i.bz = add i32 %.pre.i.i.i.i, 1                ; 2 uses
  %xtraiter32 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i43.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.prol

.lr.ph.i43.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i.i.i.i, %.lr.ph.i43.i.i.i.prol
  %i.ca = phi i32 [ %i.cd, %.lr.ph.i43.i.i.i.prol ], [ %i.bz, %.lr.ph.preheader.i.i.i.i ]
  %.010.i44.i.i.i.prol = phi ptr [ %i.cc, %.lr.ph.i43.i.i.i.prol ], [ %i.a, %.lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.079.i45.i.i.i.prol = phi i64 [ %i.cb, %.lr.ph.i43.i.i.i.prol ], [ %3, %.lr.ph.preheader.i.i.i.i ]
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i43.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i.i ]
  %i.cb = add i64 %.079.i45.i.i.i.prol, -1        ; 2 uses
  store i32 %i.ca, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  store i32 0, ptr %.010.i44.i.i.i.prol, align 4, !tbaa !249
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i.prol, i64 4 ; 2 uses
  %i.cd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i43.i.i.i.prol.loopexit, label %.lr.ph.i43.i.i.i.prol, !llvm.loop !4553

.lr.ph.i43.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i43.i.i.i.prol, %.lr.ph.preheader.i.i.i.i
  %.unr = phi i32 [ %i.bz, %.lr.ph.preheader.i.i.i.i ], [ %i.cd, %.lr.ph.i43.i.i.i.prol ]
  %.010.i44.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.preheader.i.i.i.i ], [ %i.cc, %.lr.ph.i43.i.i.i.prol ]
  %.079.i45.i.i.i.unr = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i ], [ %i.cb, %.lr.ph.i43.i.i.i.prol ]
  %i.cf = icmp ult i64 %3, 4
  br i1 %i.cf, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i43.i.i.i

.lr.ph.i43.i.i.i:                                 ; preds = %.lr.ph.i43.i.i.i.prol.loopexit, %.lr.ph.i43.i.i.i
  %i.cg = phi i32 [ %i.cm, %.lr.ph.i43.i.i.i ], [ %.unr, %.lr.ph.i43.i.i.i.prol.loopexit ]
  %.010.i44.i.i.i = phi ptr [ %i.cl, %.lr.ph.i43.i.i.i ], [ %.010.i44.i.i.i.unr, %.lr.ph.i43.i.i.i.prol.loopexit ] ; 5 uses
  %.079.i45.i.i.i = phi i64 [ %i.ck, %.lr.ph.i43.i.i.i ], [ %.079.i45.i.i.i.unr, %.lr.ph.i43.i.i.i.prol.loopexit ]
  store i32 %i.cg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  store i32 0, ptr %.010.i44.i.i.i, align 4, !tbaa !249
  %i.ch = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 4
  store i32 0, ptr %i.ch, align 4, !tbaa !249
  %i.ci = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 8
  store i32 0, ptr %i.ci, align 4, !tbaa !249
  %i.cj = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 12
  %i.ck = add i64 %.079.i45.i.i.i, -4             ; 2 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !249
  %i.cl = getelementptr inbounds nuw i8, ptr %.010.i44.i.i.i, i64 16
  %i.cm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not.i46.i.i.i.3 = icmp eq i64 %i.ck, 0
  br i1 %.not.i46.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl32insert_value_initialized_n_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i43.i.i.i, !llvm.loop !4554

.lr.ph.i53.preheader.i.i.i:                       ; preds = %bb.e
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i53.i.i.i

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i53.i.i.i, %.lr.ph.i53.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i53.i.i.i ], [ %i.a, %.lr.ph.i53.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i53.i.i.i ], [ %i.co, %.lr.ph.i53.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.cp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !249
  store i32 %i.cp, ptr %.01517.i.i.i.i, align 4, !tbaa !249
  %i.cq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i54.i.i.i = icmp eq ptr %i.cs, %i.i
  br i1 %.not.i54.i.i.i, label %.lr.ph.preheader.i56.i.i.i, label %.lr.ph.i53.i.i.i, !llvm.loop !45

.lr.ph.preheader.i56.i.i.i:                       ; preds = %.lr.ph.i53.i.i.i
  %i.cu = add i32 %i.cq, 2                        ; 2 uses
  %xtraiter35 = and i64 %i.ac, 3                  ; 2 uses
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i58.i.i.i.prol.loopexit, label %.lr.ph.i58.i.i.i.prol

.lr.ph.i58.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i56.i.i.i, %.lr.ph.i58.i.i.i.prol
  %i.cv = phi i32 [ %i.cy, %.lr.ph.i58.i.i.i.prol ], [ %i.cu, %.lr.ph.preheader.i56.i.i.i ]
  %.010.i59.i.i.i.prol = phi ptr [ %i.cx, %.lr.ph.i58.i.i.i.prol ], [ %i.a, %.lr.ph.preheader.i56.i.i.i ] ; 2 uses
  %.079.i60.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i58.i.i.i.prol ], [ %i.ac, %.lr.ph.preheader.i56.i.i.i ]
  %prol.iter37 = phi i64 [ %prol.iter37.next, %.lr.ph.i58.i.i.i.prol ], [ 0, %.lr.ph.preheader.i56.i.i.i ]
  %i.cw = add i64 %.079.i60.i.i.i.prol, -1        ; 2 uses
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  store i32 0, ptr %.010.i59.i.i.i.prol, align 4, !tbaa !249
  %i.cx = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i.prol, i64 4 ; 2 uses
  %i.cy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.cz = add i32 %i.cy, -1
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %prol.iter37.next = add i64 %prol.iter37, 1     ; 2 uses
  %prol.iter37.cmp.not = icmp eq i64 %prol.iter37.next, %xtraiter35
  br i1 %prol.iter37.cmp.not, label %.lr.ph.i58.i.i.i.prol.loopexit, label %.lr.ph.i58.i.i.i.prol, !llvm.loop !4555

.lr.ph.i58.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i58.i.i.i.prol, %.lr.ph.preheader.i56.i.i.i
  %.unr38 = phi i32 [ %i.cu, %.lr.ph.preheader.i56.i.i.i ], [ %i.cy, %.lr.ph.i58.i.i.i.prol ]
  %.010.i59.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.preheader.i56.i.i.i ], [ %i.cx, %.lr.ph.i58.i.i.i.prol ]
  %.079.i60.i.i.i.unr = phi i64 [ %i.ac, %.lr.ph.preheader.i56.i.i.i ], [ %i.cw, %.lr.ph.i58.i.i.i.prol ]
  %i.da = icmp ult i64 %i.ac, 4
  br i1 %i.da, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i, label %.lr.ph.i58.i.i.i

.lr.ph.i58.i.i.i:                                 ; preds = %.lr.ph.i58.i.i.i.prol.loopexit, %.lr.ph.i58.i.i.i
  %i.db = phi i32 [ %i.dh, %.lr.ph.i58.i.i.i ], [ %.unr38, %.lr.ph.i58.i.i.i.prol.loopexit ]
  %.010.i59.i.i.i = phi ptr [ %i.dg, %.lr.ph.i58.i.i.i ], [ %.010.i59.i.i.i.unr, %.lr.ph.i58.i.i.i.prol.loopexit ] ; 5 uses
  %.079.i60.i.i.i = phi i64 [ %i.df, %.lr.ph.i58.i.i.i ], [ %.079.i60.i.i.i.unr, %.lr.ph.i58.i.i.i.prol.loopexit ]
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  store i32 0, ptr %.010.i59.i.i.i, align 4, !tbaa !249
  %i.dc = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 4
  store i32 0, ptr %i.dc, align 4, !tbaa !249
  %i.dd = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 8
  store i32 0, ptr %i.dd, align 4, !tbaa !249
  %i.de = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 12
  %i.df = add i64 %.079.i60.i.i.i, -4             ; 2 uses
  store i32 0, ptr %i.de, align 4, !tbaa !249
  %i.dg = getelementptr inbounds nuw i8, ptr %.010.i59.i.i.i, i64 16
  %i.dh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not.i61.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i61.i.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i, label %.lr.ph.i58.i.i.i, !llvm.loop !4554

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i: ; preds = %.lr.ph.i58.i.i.i, %.lr.ph.i58.i.i.i.prol.loopexit
  %i.dj = sub i64 %3, %i.ac                       ; 3 uses
  %xtraiter39 = and i64 %i.dj, 3                  ; 2 uses
  %lcmp.mod40.not = icmp eq i64 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.016.i.i.i.i.i.prol = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i.prol ], [ %i.dj, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i ]
  %.01315.i.i.i.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i ] ; 3 uses
  %prol.iter41 = phi i64 [ %prol.iter41.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i ]
  %i.dk = add i64 %.016.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.prol) ]
  store i32 0, ptr %.01315.i.i.i.i.i.prol, align 4, !tbaa !249
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter41.next = add i64 %prol.iter41, 1     ; 2 uses
  %prol.iter41.cmp.not = icmp eq i64 %prol.iter41.next, %xtraiter39
  br i1 %prol.iter41.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4556

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i
  %.016.i.i.i.i.i.unr = phi i64 [ %i.dj, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit62.i.i.i ], [ %i.dk, %.lr.ph.i.i.i.i.i.prol ]
end_hunk_5
begin_hunk_6_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cv = icmp eq ptr %i.cu, %i.t
  br i1 %i.cv, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !246
  %i.cx = shl i64 %i.cw, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.cx) #22
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.cy = phi i64 [ %i.v, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.v, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.cz = ptrtoint ptr %2 to i64
  %i.da = ptrtoint ptr %i.t to i64
  %i.db = sub i64 %i.cz, %i.da
  store ptr %i.s, ptr %1, align 8, !tbaa !247
  %i.dc = add i64 %i.cy, %3
  store i64 %i.dc, ptr %i.e, align 8, !tbaa !245
  store i64 %i.p, ptr %i.b, align 8, !tbaa !84
  %i.dd = getelementptr inbounds i8, ptr %i.s, i64 %i.db
  store ptr %i.dd, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !285    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !246
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !254  ; 4 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !247    ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 13 uses
  %i.k = icmp eq ptr %i.j, %i.b
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.l = add i64 %3, -1
  %xtraiter82 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.m = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.m, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !249
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.r = add i64 %.018.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4604

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.l, 3
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !249
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !249
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !249
  store i32 %i.y, ptr %i.x, align 4, !tbaa !249
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !249
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !249
  %i.ad = add i32 %i.u, 3
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !249
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !249
  %i.ah = add i32 %i.u, 4
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.ak = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4605

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.al = ptrtoint ptr %i.j to i64
  %i.am = ptrtoint ptr %i.b to i64                ; 4 uses
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ao, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = sub i64 0, %3
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ap ; 6 uses
  %i.ar = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i.prol ], [ %i.aq, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i.prol ], [ %i.j, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.as = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.at = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.at, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !249
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !4606

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.as, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aq, %bb.f ], [ %i.aw, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ax, %.lr.ph.i.i10.i.i.prol ]
  %i.ay = icmp ult i64 %i.ar, 3
  br i1 %i.ay, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.az = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !249
  store i32 %i.az, ptr %.01618.i.i.i.i, align 4, !tbaa !249
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !249
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !249
  %i.bf = add i32 %i.ba, 2
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !249
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !249
  %i.bj = add i32 %i.ba, 3
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bm = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !249
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !249
  %i.bo = add i32 %i.ba, 4
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !44

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.aq
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.br = shl i64 %i.f, 2
  %i.bs = shl i64 %3, 2
  %i.bt = add i64 %i.br, %i.i
  %i.bu = add i64 %i.bt, -4
  %i.bv = add i64 %i.bs, %i.am
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 60
  %i.bz = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bz, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.ca = mul i64 %n.vec, -4                      ; 2 uses
  %i.cb = getelementptr i8, ptr %i.j, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.aq, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.cd ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aq, i64 %i.cd ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ce, align 4, !tbaa !249
  %wide.load24 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !249
  %i.cg = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cg, align 4, !tbaa !249
  store <4 x i32> %wide.load24, ptr %i.ch, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !4607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader72

.lr.ph.i40.i.i.i.preheader72:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.cb, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aq, %.lr.ph.i40.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader72, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader72 ]
  %.079.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader72 ]
  %i.cj = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !249
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !249
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.cj
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !4608

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check29 = icmp ult i64 %3, 8
  %i.cm = sub i64 %i.a, %i.am
  %diff.check31 = icmp ugt i64 %i.cm, -32
  %or.cond66 = select i1 %min.iters.check29, i1 true, i1 %diff.check31
  br i1 %or.cond66, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec33 = and i64 %3, -8                       ; 3 uses
  %i.cn = and i64 %3, 7
  %i.co = shl i64 %n.vec33, 2                     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.b, i64 %i.co
  %i.cq = getelementptr i8, ptr %4, i64 %i.co
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %i.cr = shl i64 %index35, 2                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.b, i64 %i.cr ; 2 uses
  %next.gep37 = getelementptr i8, ptr %4, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep37, i64 16
  %wide.load38 = load <4 x i32>, ptr %next.gep37, align 4, !tbaa !249
  %wide.load39 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !249
  %i.ct = getelementptr i8, ptr %next.gep36, i64 16
  store <4 x i32> %wide.load38, ptr %next.gep36, align 4, !tbaa !249
  store <4 x i32> %wide.load39, ptr %i.ct, align 4, !tbaa !249
  %index.next40 = add nuw i64 %index35, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.cu, label %middle.block41, label %vector.body34, !llvm.loop !4609

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %3, %n.vec33
  br i1 %cmp.n42, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block41
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cn, %middle.block41 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.b, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cp, %middle.block41 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cq, %middle.block41 ] ; 2 uses
  %i.cv = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter73 = and i64 %.09.i.i.i.i.i.ph, 7      ; 2 uses
  %lcmp.mod74.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod74.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter75 = phi i64 [ %prol.iter75.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cw = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.cx, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !249
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4610

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %i.da = icmp ult i64 %i.cv, 7
  br i1 %i.da, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.db = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !249
  store i32 %i.db, ptr %.048.i.i.i.i.i, align 4, !tbaa !249
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !249
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !249
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !249
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !249
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !249
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !249
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !249
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !249
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 20
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !249
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !249
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 24
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !249
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !249
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 28
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 28
  %i.dw = add i64 %.09.i.i.i.i.i, -8              ; 2 uses
  %i.dx = load i32, ptr %i.du, align 4, !tbaa !249
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !249
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4611

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.ee, %.lr.ph.i48.i.i.i ], [ %i.b, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i48.i.i.i ], [ %i.ea, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.eb = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !249
  store i32 %i.eb, ptr %.01517.i.i.i.i, align 4, !tbaa !249
  %i.ec = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ee = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ee, %i.j
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !45

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check49 = icmp ult i64 %i.ao, 8
  %i.eg = sub i64 %i.a, %i.am
  %diff.check51 = icmp ugt i64 %i.eg, -32
  %or.cond67 = select i1 %min.iters.check49, i1 true, i1 %diff.check51
  br i1 %or.cond67, label %.lr.ph.i.i52.i.i.i.preheader69, label %vector.ph52

vector.ph52:                                      ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %n.vec53 = and i64 %i.ao, -8                    ; 3 uses
  %i.eh = and i64 %i.ao, 7
  %i.ei = shl nsw i64 %n.vec53, 2                 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.b, i64 %i.ei
  %i.ek = getelementptr i8, ptr %4, i64 %i.ei     ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph52
  %index55 = phi i64 [ 0, %vector.ph52 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.el = shl i64 %index55, 2                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.b, i64 %i.el ; 2 uses
  %next.gep57 = getelementptr i8, ptr %4, i64 %i.el ; 2 uses
  %i.em = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load58 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !249
end_hunk_6
begin_hunk_7_@_ZN5boost9container4test31vector_unchecked_push_back_testINS0_12small_vectorINS1_12copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i51.3 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i51.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !246 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.dk, 0
  %i.dl = icmp eq ptr %i.a, %i.cu
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.dl
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.dm = shl i64 %i.dk, 2
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.dm) #22
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %.017

.thread88:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp
  %.sroa.058.3 = phi ptr [ %.sroa.058.1125, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.058.0119, %.loopexit.split-lp99.loopexit.split-lp ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.1127, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.29.0121, %.loopexit.split-lp99.loopexit.split-lp ]
  %.pn19.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp198, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp99.loopexit.split-lp ]
  %i.dn = ptrtoint ptr %.sroa.29.3 to i64
  %i.do = ptrtoint ptr %.sroa.058.3 to i64
  %i.dp = sub i64 %i.dn, %i.do
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.058.3, i64 noundef %i.dp) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit53

_ZNSt6vectorIiSaIiEED2Ev.exit53:                  ; preds = %.thread82, %.thread88
  %.pn19.pn87 = phi { ptr, i32 } [ %i.x, %.thread82 ], [ %.pn19.pn, %.thread88 ]
  call void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn19.pn87
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !285    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !254  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !247    ; 2 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 13 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter58 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod59.not = icmp eq i64 %xtraiter58, 0
  br i1 %lcmp.mod59.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.l = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.m = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.m, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !249
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
  br i1 %prol.iter60.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4717

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.017.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.ab, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.r = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.r, ptr %.01416.i.i.i.i, align 4, !tbaa !249
  %i.s = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.u = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.v = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.v, ptr %i.u, align 4, !tbaa !249
  %i.w = add i32 %i.s, 2
  store i32 %i.w, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.y = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.y, ptr %i.x, align 4, !tbaa !249
  %i.z = add i32 %i.s, 3
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aa = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.ab = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.ac = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !249
  %i.ad = add i32 %i.s, 4
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !46

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.i to i64
  %i.ag = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ai, %3
  br i1 %.not.i.i.i, label %.lr.ph.i50.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = sub i64 0, %3
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aj ; 6 uses
  %i.al = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.aq, %.lr.ph.i.i10.i.i.prol ], [ %i.ak, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.am = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.an = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.an, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !249
  %i.ao = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !4718

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ak, %bb.f ], [ %i.aq, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ar, %.lr.ph.i.i10.i.i.prol ]
  %i.as = icmp ult i64 %i.al, 3
  br i1 %i.as, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.at = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !249
  store i32 %i.at, ptr %.01618.i.i.i.i, align 4, !tbaa !249
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !249
  store i32 %i.ay, ptr %i.ax, align 4, !tbaa !249
  %i.az = add i32 %i.au, 2
  store i32 %i.az, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !249
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !249
  %i.bd = add i32 %i.au, 3
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bg = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !249
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !249
  %i.bi = add i32 %i.au, 4
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !44

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ak
  br i1 %.not8.i.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bl = shl i64 %i.e, 2
  %i.bm = shl i64 %3, 2
  %i.bn = add i64 %i.bl, %i.h
  %i.bo = add i64 %i.bn, -4
  %i.bp = add i64 %i.bm, %i.ag
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = lshr i64 %i.bq, 2
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bq, 60
  %i.bt = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bt, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bs, 9223372036854775800     ; 3 uses
  %i.bu = mul i64 %n.vec, -4                      ; 2 uses
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.ak, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bx ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ak, i64 %i.bx ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !249
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !249
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !249
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !4719

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bs, %n.vec
  br i1 %cmp.n, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader54

.lr.ph.i40.i.i.i.preheader54:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i40.i.i.i.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader54, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %.079.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %i.cd = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.ce = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !249
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !249
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !4720

.lr.ph.i42.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !249 ; 2 uses
  %min.iters.check27 = icmp ult i64 %3, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i42.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.cg = and i64 %3, 7
  %i.ch = shl i64 %n.vec29, 2
  %i.ci = getelementptr i8, ptr %i.a, i64 %i.ch
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.cj = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep32, align 4, !tbaa !249
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 4, !tbaa !249
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.cl = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.cl, label %middle.block34, label %vector.body30, !llvm.loop !4721

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n35, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i42.i.i.i, %middle.block34
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i42.i.i.i ], [ %i.cg, %middle.block34 ]
  %.046.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i42.i.i.i ], [ %i.ci, %middle.block34 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i.i.i.i = phi i64 [ %i.cm, %scalar.ph26 ], [ %.07.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.cn, %scalar.ph26 ], [ %.046.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cm = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.046.i.i.i.i, align 4, !tbaa !249
  %i.cn = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 4
  %.not.i43.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i43.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26, !llvm.loop !4722

.lr.ph.i50.preheader.i.i.i:                       ; preds = %bb.e
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i50.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i, %.lr.ph.i50.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i50.i.i.i ], [ %i.a, %.lr.ph.i50.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i50.i.i.i ], [ %i.co, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.cp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !249
  store i32 %i.cp, ptr %.01517.i.i.i.i, align 4, !tbaa !249
  %i.cq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cs = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i51.i.i.i = icmp eq ptr %i.cs, %i.i
  br i1 %.not.i51.i.i.i, label %.lr.ph.i53.i.i.i, label %.lr.ph.i50.i.i.i, !llvm.loop !45

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i
  %.pre.i54.i.i.i = load i32, ptr %4, align 4, !tbaa !249 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ai, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i53.i.i.i
  %n.vec41 = and i64 %i.ai, -8                    ; 3 uses
  %i.cu = and i64 %i.ai, 7
  %i.cv = shl nsw i64 %n.vec41, 2
  %i.cw = getelementptr i8, ptr %i.a, i64 %i.cv
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i54.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.cx = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !249
  store <4 x i32> %broadcast.splat43, ptr %i.cy, align 4, !tbaa !249
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.cz = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.cz, label %middle.block48, label %vector.body44, !llvm.loop !4723

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ai, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i53.i.i.i, %middle.block48
  %.07.i55.i.i.i.ph = phi i64 [ %i.ai, %.lr.ph.i53.i.i.i ], [ %i.cu, %middle.block48 ]
  %.046.i56.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i53.i.i.i ], [ %i.cw, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i55.i.i.i = phi i64 [ %i.da, %scalar.ph38 ], [ %.07.i55.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i56.i.i.i = phi ptr [ %i.db, %scalar.ph38 ], [ %.046.i56.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.da = add i64 %.07.i55.i.i.i, -1              ; 2 uses
  store i32 %.pre.i54.i.i.i, ptr %.046.i56.i.i.i, align 4, !tbaa !249
  %i.db = getelementptr inbounds nuw i8, ptr %.046.i56.i.i.i, i64 4
  %.not.i57.i.i.i = icmp eq i64 %i.da, 0
  br i1 %.not.i57.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38, !llvm.loop !4724

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.dc = sub i64 %3, %i.ai                       ; 3 uses
  %xtraiter55 = and i64 %i.dc, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dd, %.lr.ph.i.i.i.i.i.prol ], [ %i.dc, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ] ; 3 uses
  %prol.iter57 = phi i64 [ %prol.iter57.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %i.dd = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.de = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.de, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !249
  %i.df = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dh = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter57.next = add i64 %prol.iter57, 1     ; 2 uses
  %prol.iter57.cmp.not = icmp eq i64 %prol.iter57.next, %xtraiter55
  br i1 %prol.iter57.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4725

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.dc, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %i.di = sub i64 %i.ai, %3
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.dk = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.dk, ptr %.01416.i.i.i.i.i, align 4, !tbaa !249
  %i.dl = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
  %i.do = load i32, ptr %4, align 4, !tbaa !249
end_hunk_7
begin_hunk_8_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignIPS3_EEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE:bb.a
  %i.ft = add i32 %i.fs, -1
  store i32 %i.ft, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.fu = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22.prol, i64 4 ; 2 uses
  %prol.iter108.next = add i64 %prol.iter108, 1   ; 2 uses
  %prol.iter108.cmp.not = icmp eq i64 %prol.iter108.next, %xtraiter106
  br i1 %prol.iter108.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !4861

.lr.ph.i21.i.prol.loopexit:                       ; preds = %.lr.ph.i21.i.prol, %.lr.ph.i21.i.preheader
  %.05.i.i21.unr = phi i64 [ %i.fq, %.lr.ph.i21.i.preheader ], [ %i.fr, %.lr.ph.i21.i.prol ]
  %storemerge4.i.i22.unr = phi ptr [ %.0.lcssa.i20.i, %.lr.ph.i21.i.preheader ], [ %i.fu, %.lr.ph.i21.i.prol ]
  %i.fv = sub i64 %i.d, %i.bj
  %i.fw = icmp ugt i64 %i.fv, -4
  br i1 %i.fw, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i
  %.05.i.i21 = phi i64 [ %i.ge, %.lr.ph.i21.i ], [ %.05.i.i21.unr, %.lr.ph.i21.i.prol.loopexit ]
  %storemerge4.i.i22 = phi ptr [ %i.gg, %.lr.ph.i21.i ], [ %storemerge4.i.i22.unr, %.lr.ph.i21.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i22, align 4, !tbaa !249
  %i.fx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.fz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 4
  store i32 -2147483648, ptr %i.fz, align 4, !tbaa !249
  %i.ga = add i32 %i.fx, -2
  store i32 %i.ga, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gb = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 8
  store i32 -2147483648, ptr %i.gb, align 4, !tbaa !249
  %i.gc = add i32 %i.fx, -3
  store i32 %i.gc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 12
  %i.ge = add i64 %.05.i.i21, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.gd, align 4, !tbaa !249
  %i.gf = add i32 %i.fx, -4
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.gg = getelementptr inbounds nuw i8, ptr %storemerge4.i.i22, i64 16
  %.not.i22.i.3 = icmp eq i64 %i.ge, 0
  br i1 %.not.i22.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i21.i, !llvm.loop !26

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i21.i.prol.loopexit, %.lr.ph.i21.i, %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i, %_ZN5boost9container6copy_nIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i
  store i64 %i.d, ptr %i.bi, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSG_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !285    ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !254  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !247    ; 4 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 15 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter38 = and i64 %3, 1
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.l = load i32, ptr %i.k, align 4, !tbaa !67
  store i32 %i.l, ptr %i.i, align 4, !tbaa !249
  %i.m = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.o = load ptr, ptr %4, align 8, !tbaa !187
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ad, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !67
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !249
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.w = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !67
  store i32 %i.z, ptr %i.x, align 4, !tbaa !249
  %i.aa = add i32 %i.u, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !187
  %i.ac = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ad = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !49

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.i to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ai ; 6 uses
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.ak, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.ao, %.lr.ph.i.i10.i.i.prol ], [ %i.aj, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ap, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.ak = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.al = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !249
  store i32 %i.al, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !249
  %i.am = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !4864

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
  %i.aq = icmp ult i64 %3, 4
  br i1 %i.aq, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ar = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !249
  store i32 %i.ar, ptr %.01618.i.i.i.i, align 4, !tbaa !249
  %i.as = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.at = add i32 %i.as, 1
  store i32 %i.at, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !249
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !249
  %i.ax = add i32 %i.as, 2
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !249
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !249
  %i.bb = add i32 %i.as, 3
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.be = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !249
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !249
  %i.bg = add i32 %i.as, 4
  store i32 %i.bg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !44

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.aj
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bj = shl i64 %i.e, 2
  %i.bk = shl i64 %3, 2
  %i.bl = add i64 %i.bj, %i.h
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.af
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bo, 60
  %i.br = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.br, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bq, 9223372036854775800     ; 3 uses
  %i.bs = mul i64 %n.vec, -4                      ; 2 uses
  %i.bt = getelementptr i8, ptr %i.i, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.aj, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bv ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.bv ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.bx = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.bw, align 4, !tbaa !249
  %wide.load24 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !249
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.by, align 4, !tbaa !249
  store <4 x i32> %wide.load24, ptr %i.bz, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !4865

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bq, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bt, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cb = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !249
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !249
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cb
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !4866

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter31 = phi i64 [ %prol.iter31.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ce = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !67
  store i32 %i.cg, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !249
  %i.ch = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter31.next = add i64 %prol.iter31, 1     ; 2 uses
  %prol.iter31.cmp.not = icmp eq i64 %prol.iter31.next, %xtraiter29
  br i1 %prol.iter31.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4867

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.prol ]
  %i.cj = icmp ult i64 %3, 4
  br i1 %i.cj, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !67
  store i32 %i.cl, ptr %.048.i.i.i.i.i, align 4, !tbaa !249
  %i.cm = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !67
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !249
  %i.cq = load ptr, ptr %i.cm, align 8, !tbaa !187 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !67
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !249
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !187 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.cw = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !67
  store i32 %i.cy, ptr %i.cv, align 4, !tbaa !249
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !187
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4868

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.df, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i48.i.i.i ], [ %i.db, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dc = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !249
  store i32 %i.dc, ptr %.01517.i.i.i.i, align 4, !tbaa !249
  %i.dd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.df = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.df, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !45

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter32 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter34 = phi i64 [ %prol.iter34.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dh = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !67
  store i32 %i.dj, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !249
  %i.dk = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter34.next = add i64 %prol.iter34, 1     ; 2 uses
  %prol.iter34.cmp.not = icmp eq i64 %prol.iter34.next, %xtraiter32
  br i1 %prol.iter34.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !4869

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ah, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dm = icmp ult i64 %i.ah, 4
  br i1 %i.dm, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !67
  store i32 %i.do, ptr %.048.i.i54.i.i.i, align 4, !tbaa !249
  %i.dp = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !67
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !249
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !187 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !67
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !249
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.dz = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !67
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !249
  %i.ec = load ptr, ptr %i.dx, align 8, !tbaa !187 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !4868

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.ec, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ee = sub i64 %3, %i.ah                       ; 3 uses
  %.neg = add nsw i64 %i.ah, 1
  %xtraiter35 = and i64 %i.ee, 1
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !67
  store i32 %i.eg, ptr %i.i, align 4, !tbaa !249
  %i.eh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ei = add i32 %i.eh, 1
end_hunk_8
