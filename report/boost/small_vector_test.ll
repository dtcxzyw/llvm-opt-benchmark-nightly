Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/small_vector_test?download=true
inline.NumInlined: 11236
inline.NumDeleted: 2906
loop-unroll.NumCompletelyUnrolled: 128
loop-unroll.NumRuntimeUnrolled: 397
loop-unroll.NumUnrolled: 526
begin_hunk_0_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
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
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.j = load i32, ptr %4, align 4, !tbaa !225
  store i32 %i.j, ptr %i.h, align 4, !tbaa !225
  store i32 0, ptr %4, align 4, !tbaa !225
  %i.k = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp eq i64 %3, 1
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.q = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !225
  store i32 %i.q, ptr %.01417.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !225
  %i.r = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !225
  store i32 %i.v, ptr %i.u, align 4, !tbaa !225
  store i32 0, ptr %i.t, align 4, !tbaa !225
  %i.w = add i32 %i.r, 2
  store i32 %i.w, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.z = add i64 %.018.i.i.i.i, -2                ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !34

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.h to i64
  %i.ab = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ad, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sub i64 0, %3
  %i.af = getelementptr [4 x i8], ptr %i.h, i64 %i.ae ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ag = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !225
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !225
  store i32 0, ptr %i.af, align 4, !tbaa !225
  %i.ai = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ag, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.af, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %i.am = icmp eq i64 %3, 1
  br i1 %i.am, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.an = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  store i32 %i.an, ptr %.01618.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  %i.ao = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.as = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !225
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !225
  store i32 0, ptr %i.aq, align 4, !tbaa !225
  %i.au = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !33

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.af
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.ay = ptrtoaddr ptr %i.g to i64               ; 2 uses
  %i.az = shl nuw nsw i64 %i.e, 2
  %i.ba = shl i64 %3, 2
  %i.bb = add i64 %i.az, %i.ay
  %i.bc = add i64 %i.bb, -4
  %i.bd = add i64 %i.ba, %i.ab
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.ay
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ab
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4
  %i.bo = add nsw i64 %i.bh, -4
  %i.bp = sub i64 %i.bo, %i.bn                    ; 2 uses
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = sub i64 %i.bp, %i.bi
  %i.bs = getelementptr i8, ptr %i.g, i64 %i.br
  %bound0 = icmp ult ptr %i.bq, %i.af
  %bound1 = icmp ult ptr %i.bs, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bt = mul i64 %n.vec, -4                      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.h, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.af, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bw ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.af, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !225, !alias.scope !3207
  %wide.load24 = load <4 x i32>, ptr %i.by, align 4, !tbaa !225, !alias.scope !3207
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !225, !alias.scope !3208, !noalias !3207
  store <4 x i32> %wide.load24, ptr %i.ca, align 4, !tbaa !225, !alias.scope !3208, !noalias !3207
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !225, !alias.scope !3207
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !225, !alias.scope !3207
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !3193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !225
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !225
  store i32 0, ptr %i.cc, align 4, !tbaa !225
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3194

_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cf = shl i64 %3, 2                           ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %4, i64 %i.cf
  %bound034 = icmp ult ptr %i.a, %i.ch
  %bound135 = icmp ult ptr %4, %i.cg
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.ci = and i64 %3, 7
  %i.cj = shl i64 %n.vec38, 2                     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.a, i64 %i.cj
  %i.cl = getelementptr i8, ptr %4, i64 %i.cj
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cm = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cm ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cm ; 3 uses
  %i.cn = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !225, !alias.scope !3209
  %wide.load44 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !225, !alias.scope !3209
  %i.co = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !225, !alias.scope !3210, !noalias !3209
  store <4 x i32> %wide.load44, ptr %i.co, align 4, !tbaa !225, !alias.scope !3210, !noalias !3209
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !225, !alias.scope !3209
  store <4 x i32> zeroinitializer, ptr %i.cn, align 4, !tbaa !225, !alias.scope !3209
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cp, label %middle.block46, label %vector.body39, !llvm.loop !3198

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ci, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ck, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %i.cq = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cr = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !225
  store i32 %i.cs, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !225
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !225
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3199

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.i.prol ]
  %i.cv = icmp ult i64 %i.cq, 3
  br i1 %i.cv, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cw = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !225
  store i32 %i.cw, ptr %.048.i.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !225
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !225
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !225
  store i32 0, ptr %i.cx, align 4, !tbaa !225
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !225
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !225
  store i32 0, ptr %i.da, align 4, !tbaa !225
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.df = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !225
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !225
  store i32 0, ptr %i.dd, align 4, !tbaa !225
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3200

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dn, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.dj, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dk = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  store i32 %i.dk, ptr %.01517.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  %i.dl = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dn, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !31

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %i.dp = getelementptr i8, ptr %4, i64 %i.ac
  %bound059 = icmp ult ptr %i.a, %i.dp
  %bound160 = icmp ult ptr %4, %i.h
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.ad, -8                    ; 3 uses
  %i.dq = and i64 %i.ad, 7
  %i.dr = shl nsw i64 %n.vec63, 2                 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.a, i64 %i.dr
  %i.dt = getelementptr i8, ptr %4, i64 %i.dr     ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.du = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.du ; 2 uses
  %next.gep67 = getelementptr i8, ptr %4, i64 %i.du ; 3 uses
  %i.dv = getelementptr i8, ptr %next.gep67, i64 16 ; 2 uses
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !225, !alias.scope !3211
  %wide.load69 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !225, !alias.scope !3211
  %i.dw = getelementptr i8, ptr %next.gep66, i64 16
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE24prot_shrink_to_fit_smallEPS3_m:bb.a
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
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67
  store i32 %i.k, ptr %i.h, align 4, !tbaa !225
  %i.l = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.n = load ptr, ptr %4, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  store i32 %i.s, ptr %.01417.i.i.i.i, align 4, !tbaa !225
  %i.t = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.v = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !67
  store i32 %i.y, ptr %i.w, align 4, !tbaa !225
  %i.z = add i32 %i.t, 2
  store i32 %i.z, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !187
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ac = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !35

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.h to i64
  %i.ae = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ag, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 0, %3
  %i.ai = getelementptr [4 x i8], ptr %i.h, i64 %i.ah ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.aj = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !225
  store i32 %i.ak, ptr %i.h, align 4, !tbaa !225
  store i32 0, ptr %i.ai, align 4, !tbaa !225
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !225
  %i.ar = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !225
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !225
  store i32 0, ptr %i.at, align 4, !tbaa !225
  %i.ax = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !33

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bb = ptrtoaddr ptr %i.g to i64               ; 2 uses
  %i.bc = shl nuw nsw i64 %i.e, 2
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %i.bb
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.bd, %i.ae
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bk = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bk, %i.bb
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.ae
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4
  %i.br = add nsw i64 %i.bk, -4
  %i.bs = sub i64 %i.br, %i.bq                    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bu = sub i64 %i.bs, %i.bl
  %i.bv = getelementptr i8, ptr %i.g, i64 %i.bu
  %bound0 = icmp ult ptr %i.bt, %i.ai
  %bound1 = icmp ult ptr %i.bv, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bw = mul i64 %n.vec, -4                      ; 2 uses
  %i.bx = getelementptr i8, ptr %i.h, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ai, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bz ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ai, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !225, !alias.scope !3225
  %wide.load24 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !225, !alias.scope !3225
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !225, !alias.scope !3226, !noalias !3225
  store <4 x i32> %wide.load24, ptr %i.cd, align 4, !tbaa !225, !alias.scope !3226, !noalias !3225
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !225, !alias.scope !3225
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !225, !alias.scope !3225
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !3220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !225
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !225
  store i32 0, ptr %i.cf, align 4, !tbaa !225
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cf
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !3221

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ci = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !67
  store i32 %i.ck, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !225
  %i.cl = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3222

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.i.prol ]
  %i.cn = icmp ult i64 %3, 4
  br i1 %i.cn, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !67
  store i32 %i.cp, ptr %.048.i.i.i.i.i, align 4, !tbaa !225
  %i.cq = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !67
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !225
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !187 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !67
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !225
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !187 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.da = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !67
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !225
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !187
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3223

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dj, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.df, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dg = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  store i32 %i.dg, ptr %.01517.i.i.i.i, align 4, !tbaa !225
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !225
  %i.dh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dj, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !31

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ag, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ag, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.do, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dl = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !67
  store i32 %i.dn, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !225
  %i.do = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !3224

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.do, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ag, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.do, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dq = icmp ult i64 %i.ag, 4
  br i1 %i.dq, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !67
  store i32 %i.ds, ptr %.048.i.i54.i.i.i, align 4, !tbaa !225
  %i.dt = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !67
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !225
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !67
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !225
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !187 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ed = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !67
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !225
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !187 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !3223

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.eg, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ei = sub i64 %3, %i.ag                       ; 3 uses
  %.neg = add nsw i64 %i.ag, 1
  %xtraiter34 = and i64 %i.ei, 1
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test11movable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !67
  store i32 %i.ek, ptr %i.h, align 4, !tbaa !225
  %i.el = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !67
  %i.en = load ptr, ptr %.lcssa, align 8, !tbaa !187
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 4
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
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
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.j = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.j, ptr %i.h, align 4, !tbaa !237
  store i32 0, ptr %4, align 4, !tbaa !237
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp eq i64 %3, 1
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.q = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !237
  store i32 %i.q, ptr %.01417.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !237
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !237
  store i32 %i.v, ptr %i.u, align 4, !tbaa !237
  store i32 0, ptr %i.t, align 4, !tbaa !237
  %i.w = add i32 %i.r, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.z = add i64 %.018.i.i.i.i, -2                ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !42

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.h to i64
  %i.ab = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = ashr exact i64 %i.ac, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ad, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sub i64 0, %3
  %i.af = getelementptr [4 x i8], ptr %i.h, i64 %i.ae ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ag = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !237
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !237
  store i32 0, ptr %i.af, align 4, !tbaa !237
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ag, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.af, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %i.am = icmp eq i64 %3, 1
  br i1 %i.am, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.an = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  store i32 %i.an, ptr %.01618.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.as = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !237
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !237
  store i32 0, ptr %i.aq, align 4, !tbaa !237
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !41

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.af
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.ay = ptrtoaddr ptr %i.g to i64               ; 2 uses
  %i.az = shl nuw nsw i64 %i.e, 2
  %i.ba = shl i64 %3, 2
  %i.bb = add i64 %i.az, %i.ay
  %i.bc = add i64 %i.bb, -4
  %i.bd = add i64 %i.ba, %i.ab
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.ay
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ab
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4
  %i.bo = add nsw i64 %i.bh, -4
  %i.bp = sub i64 %i.bo, %i.bn                    ; 2 uses
  %i.bq = getelementptr i8, ptr %i.g, i64 %i.bp
  %i.br = sub i64 %i.bp, %i.bi
  %i.bs = getelementptr i8, ptr %i.g, i64 %i.br
  %bound0 = icmp ult ptr %i.bq, %i.af
  %bound1 = icmp ult ptr %i.bs, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bt = mul i64 %n.vec, -4                      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.h, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.af, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bw ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.af, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !237, !alias.scope !3809
  %wide.load24 = load <4 x i32>, ptr %i.by, align 4, !tbaa !237, !alias.scope !3809
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !237, !alias.scope !3810, !noalias !3809
  store <4 x i32> %wide.load24, ptr %i.ca, align 4, !tbaa !237, !alias.scope !3810, !noalias !3809
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !237, !alias.scope !3809
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !237, !alias.scope !3809
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !3795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader80

.lr.ph.i40.i.i.i.preheader80:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader80, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader80 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !237
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !237
  store i32 0, ptr %i.cc, align 4, !tbaa !237
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3796

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check32 = icmp ult i64 %3, 8
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck33

vector.memcheck33:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cf = shl i64 %3, 2                           ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %4, i64 %i.cf
  %bound034 = icmp ult ptr %i.a, %i.ch
  %bound135 = icmp ult ptr %4, %i.cg
  %found.conflict36 = and i1 %bound034, %bound135
  br i1 %found.conflict36, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck33
  %n.vec38 = and i64 %3, -8                       ; 3 uses
  %i.ci = and i64 %3, 7
  %i.cj = shl i64 %n.vec38, 2                     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.a, i64 %i.cj
  %i.cl = getelementptr i8, ptr %4, i64 %i.cj
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.cm = shl i64 %index40, 2                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.a, i64 %i.cm ; 2 uses
  %next.gep42 = getelementptr i8, ptr %4, i64 %i.cm ; 3 uses
  %i.cn = getelementptr i8, ptr %next.gep42, i64 16 ; 2 uses
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !237, !alias.scope !3811
  %wide.load44 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !237, !alias.scope !3811
  %i.co = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !237, !alias.scope !3812, !noalias !3811
  store <4 x i32> %wide.load44, ptr %i.co, align 4, !tbaa !237, !alias.scope !3812, !noalias !3811
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !237, !alias.scope !3811
  store <4 x i32> zeroinitializer, ptr %i.cn, align 4, !tbaa !237, !alias.scope !3811
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cp, label %middle.block46, label %vector.body39, !llvm.loop !3800

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck33, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block46
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck33 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ci, %middle.block46 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck33 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ck, %middle.block46 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck33 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block46 ] ; 2 uses
  %i.cq = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter81 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cr = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !237
  store i32 %i.cs, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !237
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !237
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3801

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.i.prol ]
  %i.cv = icmp ult i64 %i.cq, 3
  br i1 %i.cv, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cw = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !237
  store i32 %i.cw, ptr %.048.i.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !237
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !237
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !237
  store i32 0, ptr %i.cx, align 4, !tbaa !237
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !237
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !237
  store i32 0, ptr %i.da, align 4, !tbaa !237
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.df = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !237
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !237
  store i32 0, ptr %i.dd, align 4, !tbaa !237
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3802

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dn, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.dj, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dk = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  store i32 %i.dk, ptr %.01517.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  %i.dl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dn, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !39

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check57 = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check57, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.memcheck58

vector.memcheck58:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %i.dp = getelementptr i8, ptr %4, i64 %i.ac
  %bound059 = icmp ult ptr %i.a, %i.dp
  %bound160 = icmp ult ptr %4, %i.h
  %found.conflict61 = and i1 %bound059, %bound160
  br i1 %found.conflict61, label %.lr.ph.i.i52.i.i.i.preheader77, label %vector.ph62

vector.ph62:                                      ; preds = %vector.memcheck58
  %n.vec63 = and i64 %i.ad, -8                    ; 3 uses
  %i.dq = and i64 %i.ad, 7
  %i.dr = shl nsw i64 %n.vec63, 2                 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.a, i64 %i.dr
  %i.dt = getelementptr i8, ptr %4, i64 %i.dr     ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.du = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.a, i64 %i.du ; 2 uses
  %next.gep67 = getelementptr i8, ptr %4, i64 %i.du ; 3 uses
  %i.dv = getelementptr i8, ptr %next.gep67, i64 16 ; 2 uses
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !237, !alias.scope !3813
  %wide.load69 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !237, !alias.scope !3813
  %i.dw = getelementptr i8, ptr %next.gep66, i64 16
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test31vector_unchecked_push_back_testINS0_12small_vectorINS1_24movable_and_copyable_intELm10ENS0_13new_allocatorIS4_EEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE:_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !234 ; 2 uses
  %.not.i1.i = icmp eq i64 %i.dk, 0
  %i.dl = icmp eq ptr %i.a, %i.cu
  %or.cond.i = select i1 %.not.i1.i, i1 true, i1 %i.dl
  br i1 %or.cond.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.dm = shl i64 %i.dk, 2
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.dm) #22
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i1 %.017

.thread88:                                        ; preds = %bb.m, %.loopexit.split-lp99, %.loopexit98
  %.sroa.058.3 = phi ptr [ %.sroa.058.1125, %bb.m ], [ %.sroa.058.0119, %.loopexit98 ], [ %.sroa.058.0119, %.loopexit.split-lp99 ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.1127, %bb.m ], [ %.sroa.29.0121, %.loopexit98 ], [ %.sroa.29.0121, %.loopexit.split-lp99 ]
  %.pn19.pn = phi { ptr, i32 } [ %lpad.phi, %bb.m ], [ %lpad.loopexit100, %.loopexit98 ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp99 ]
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
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 16 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.j = add i64 %3, -1
  %xtraiter57 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.017.i.i.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.k = add i64 %.017.i.i.i.i.prol, -1           ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.l = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.l, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !237
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3881

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.017.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.k, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp ult i64 %i.j, 3
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.q = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.q, ptr %.01416.i.i.i.i, align 4, !tbaa !237
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.u = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.u, ptr %i.t, align 4, !tbaa !237
  %i.v = add i32 %i.r, 2
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.w = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.x = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.x, ptr %i.w, align 4, !tbaa !237
  %i.y = add i32 %i.r, 3
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.aa = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.ab = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !237
  %i.ac = add i32 %i.r, 4
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3882

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %i.h to i64
  %i.af = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ah, %3
  br i1 %.not.i.i.i, label %.lr.ph.i50.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = sub i64 0, %3
  %i.aj = getelementptr [4 x i8], ptr %i.h, i64 %i.ai ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ak = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !237
  store i32 %i.al, ptr %i.h, align 4, !tbaa !237
  store i32 0, ptr %i.aj, align 4, !tbaa !237
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aj, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.ap, %.lr.ph.i.i10.i.i.prol ]
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
  br i1 %.not8.i.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bc = ptrtoaddr ptr %i.g to i64               ; 2 uses
  %i.bd = shl nuw nsw i64 %i.e, 2
  %i.be = shl i64 %3, 2
  %i.bf = add i64 %i.bd, %i.bc
  %i.bg = add i64 %i.bf, -4
  %i.bh = add i64 %i.be, %i.af
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 2
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bl = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bm = shl i64 %3, 2                           ; 2 uses
  %i.bn = add i64 %i.bl, %i.bc
  %i.bo = add i64 %i.bn, -4
  %i.bp = add i64 %i.bm, %i.af
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = and i64 %i.bq, -4
  %i.bs = add nsw i64 %i.bl, -4
  %i.bt = sub i64 %i.bs, %i.br                    ; 2 uses
  %i.bu = getelementptr i8, ptr %i.g, i64 %i.bt
  %i.bv = sub i64 %i.bt, %i.bm
  %i.bw = getelementptr i8, ptr %i.g, i64 %i.bv
  %bound0 = icmp ult ptr %i.bu, %i.aj
  %bound1 = icmp ult ptr %i.bw, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 9223372036854775800     ; 3 uses
  %i.bx = mul i64 %n.vec, -4                      ; 2 uses
  %i.by = getelementptr i8, ptr %i.h, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.aj, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ca ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.aj, i64 %i.ca ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !237, !alias.scope !3893
  %wide.load24 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !237, !alias.scope !3893
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cd, align 4, !tbaa !237, !alias.scope !3894, !noalias !3893
  store <4 x i32> %wide.load24, ptr %i.ce, align 4, !tbaa !237, !alias.scope !3894, !noalias !3893
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !237, !alias.scope !3893
  store <4 x i32> zeroinitializer, ptr %i.cc, align 4, !tbaa !237, !alias.scope !3893
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !3886

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i.preheader54

.lr.ph.i40.i.i.i.preheader54:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader54, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %.079.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader54 ]
  %i.cg = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !237
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !237
  store i32 0, ptr %i.cg, align 4, !tbaa !237
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cg
  br i1 %.not.i41.i.i.i, label %.lr.ph.i42.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !3887

.lr.ph.i42.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 4, !tbaa !237 ; 2 uses
  %min.iters.check27 = icmp ult i64 %3, 8
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph.i42.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.cj = and i64 %3, 7
  %i.ck = shl i64 %n.vec29, 2
  %i.cl = getelementptr i8, ptr %i.a, i64 %i.ck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next33, %vector.body30 ] ; 2 uses
  %i.cm = shl i64 %index31, 2
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep32, align 4, !tbaa !237
  store <4 x i32> %broadcast.splat, ptr %i.cn, align 4, !tbaa !237
  %index.next33 = add nuw i64 %index31, 8         ; 2 uses
  %i.co = icmp eq i64 %index.next33, %n.vec29
  br i1 %i.co, label %middle.block34, label %vector.body30, !llvm.loop !3888

middle.block34:                                   ; preds = %vector.body30
  %cmp.n35 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n35, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i42.i.i.i, %middle.block34
  %.07.i.i.i.i.ph = phi i64 [ %3, %.lr.ph.i42.i.i.i ], [ %i.cj, %middle.block34 ]
  %.046.i.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i42.i.i.i ], [ %i.cl, %middle.block34 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.07.i.i.i.i = phi i64 [ %i.cp, %scalar.ph26 ], [ %.07.i.i.i.i.ph, %scalar.ph26.preheader ]
  %.046.i.i.i.i = phi ptr [ %i.cq, %scalar.ph26 ], [ %.046.i.i.i.i.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cp = add i64 %.07.i.i.i.i, -1                ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.046.i.i.i.i, align 4, !tbaa !237
  %i.cq = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i, i64 4
  %.not.i43.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i43.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %scalar.ph26, !llvm.loop !3889

.lr.ph.i50.preheader.i.i.i:                       ; preds = %bb.e
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i50.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i, %.lr.ph.i50.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i50.i.i.i ], [ %i.a, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i50.i.i.i ], [ %i.cr, %.lr.ph.i50.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.cs = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !237
  store i32 %i.cs, ptr %.01517.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !237
  %i.ct = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cv = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i51.i.i.i = icmp eq ptr %i.cv, %i.h
  br i1 %.not.i51.i.i.i, label %.lr.ph.i53.i.i.i, label %.lr.ph.i50.i.i.i, !llvm.loop !39

.lr.ph.i53.i.i.i:                                 ; preds = %.lr.ph.i50.i.i.i
  %.pre.i54.i.i.i = load i32, ptr %4, align 4, !tbaa !237 ; 2 uses
  %min.iters.check39 = icmp ult i64 %i.ah, 8
  br i1 %min.iters.check39, label %scalar.ph38.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %.lr.ph.i53.i.i.i
  %n.vec41 = and i64 %i.ah, -8                    ; 3 uses
  %i.cx = and i64 %i.ah, 7
  %i.cy = shl nsw i64 %n.vec41, 2
  %i.cz = getelementptr i8, ptr %i.a, i64 %i.cy
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %.pre.i54.i.i.i, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph40
  %index45 = phi i64 [ 0, %vector.ph40 ], [ %index.next47, %vector.body44 ] ; 2 uses
  %i.da = shl i64 %index45, 2
  %next.gep46 = getelementptr i8, ptr %i.a, i64 %i.da ; 2 uses
  %i.db = getelementptr i8, ptr %next.gep46, i64 16
  store <4 x i32> %broadcast.splat43, ptr %next.gep46, align 4, !tbaa !237
  store <4 x i32> %broadcast.splat43, ptr %i.db, align 4, !tbaa !237
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.dc = icmp eq i64 %index.next47, %n.vec41
  br i1 %i.dc, label %middle.block48, label %vector.body44, !llvm.loop !3890

middle.block48:                                   ; preds = %vector.body44
  %cmp.n49 = icmp eq i64 %i.ah, %n.vec41
  br i1 %cmp.n49, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38.preheader

scalar.ph38.preheader:                            ; preds = %.lr.ph.i53.i.i.i, %middle.block48
  %.07.i55.i.i.i.ph = phi i64 [ %i.ah, %.lr.ph.i53.i.i.i ], [ %i.cx, %middle.block48 ]
  %.046.i56.i.i.i.ph = phi ptr [ %i.a, %.lr.ph.i53.i.i.i ], [ %i.cz, %middle.block48 ]
  br label %scalar.ph38

scalar.ph38:                                      ; preds = %scalar.ph38.preheader, %scalar.ph38
  %.07.i55.i.i.i = phi i64 [ %i.dd, %scalar.ph38 ], [ %.07.i55.i.i.i.ph, %scalar.ph38.preheader ]
  %.046.i56.i.i.i = phi ptr [ %i.de, %scalar.ph38 ], [ %.046.i56.i.i.i.ph, %scalar.ph38.preheader ] ; 2 uses
  %i.dd = add i64 %.07.i55.i.i.i, -1              ; 2 uses
  store i32 %.pre.i54.i.i.i, ptr %.046.i56.i.i.i, align 4, !tbaa !237
  %i.de = getelementptr inbounds nuw i8, ptr %.046.i56.i.i.i, i64 4
  %.not.i57.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i57.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %scalar.ph38, !llvm.loop !3891

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %scalar.ph38, %middle.block48
  %i.df = sub i64 %3, %i.ah                       ; 3 uses
  %xtraiter55 = and i64 %i.df, 3                  ; 2 uses
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.prol ], [ %i.df, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.prol ], [ %i.h, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ]
  %i.dg = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.dh = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.dh, ptr %.01416.i.i.i.i.i.prol, align 4, !tbaa !237
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter55
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3892

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.df, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dg, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.h, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i ], [ %i.dk, %.lr.ph.i.i.i.i.i.prol ]
  %i.dl = sub i64 %i.ah, %3
  %i.dm = icmp ugt i64 %i.dl, -4
  br i1 %i.dm, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.dn = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.dn, ptr %.01416.i.i.i.i.i, align 4, !tbaa !237
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 4
  %i.dr = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !237
  %i.ds = add i32 %i.do, 2
  store i32 %i.ds, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
end_hunk_3
begin_hunk_4_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %i.af = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ae
  %i.ag = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.ah = load i32, ptr %4, align 4, !tbaa !237, !alias.scope !3903
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ah, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ag, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi31 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %i.ai = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !237, !alias.scope !3904, !noalias !3905
  store <4 x i32> %broadcast.splat, ptr %i.aj, align 4, !tbaa !237, !alias.scope !3904, !noalias !3905
  %i.ak = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.al = add <4 x i32> %vec.phi31, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !3899

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.al, %i.ak
  %i.an = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.an, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !alias.scope !3906, !noalias !3903
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader40

.lr.ph.i.i.i.i.preheader40:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.an, %middle.block ] ; 2 uses
  %.017.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ] ; 4 uses
  %.01416.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ] ; 2 uses
  %i.ao = add i64 %.017.i.i.i.i.ph, -1
  %xtraiter = and i64 %.017.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader40, %.lr.ph.i.i.i.i.prol
  %i.ap = phi i32 [ %i.as, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader40 ]
  %.017.i.i.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.prol ], [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.at, %.lr.ph.i.i.i.i.prol ], [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader40 ]
  %i.aq = add i64 %.017.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.ar = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.ar, ptr %.01416.i.i.i.i.prol, align 4, !tbaa !237
  %i.as = add i32 %i.ap, 1                        ; 3 uses
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !3900

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader40
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader40 ], [ %i.as, %.lr.ph.i.i.i.i.prol ]
  %.017.i.i.i.i.unr = phi i64 [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ], [ %i.aq, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ], [ %i.at, %.lr.ph.i.i.i.i.prol ]
  %i.au = icmp ult i64 %i.ao, 3
  br i1 %i.au, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.av = phi i32 [ %i.bh, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.017.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.aw = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.aw, ptr %.01416.i.i.i.i, align 4, !tbaa !237
  %i.ax = add i32 %i.av, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ay = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 4
  %i.az = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !237
  %i.ba = add i32 %i.av, 2
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.bc = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !237
  %i.bd = add i32 %i.av, 3
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.be = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.bf = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.bg = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !237
  %i.bh = add i32 %i.av, 4                        ; 2 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3901

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.bn, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.bo, %.lr.ph.i20.i.i ], [ %i.bj, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.bk = load i32, ptr %.018.i21.i.i, align 4, !tbaa !237
  store i32 %i.bk, ptr %.01517.i22.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !237
  %i.bl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bn = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bn, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !39

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter43 = and i64 %i.t, 3                   ; 2 uses
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.bp, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.bs, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter45 = phi i64 [ %prol.iter45.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bp = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bs = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter45.next = add i64 %prol.iter45, 1     ; 2 uses
  %prol.iter45.cmp.not = icmp eq i64 %prol.iter45.next, %xtraiter43
  br i1 %prol.iter45.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3902

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.bs, %.lr.ph.i.i.prol ]
  %i.bt = icmp ult i64 %i.t, 4
  br i1 %i.bt, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.cb, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.bu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.bv = add i32 %i.bu, -1
  store i32 %i.bv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bw = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.bw, align 4, !tbaa !237
  %i.bx = add i32 %i.bu, -2
  store i32 %i.bx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.by = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.by, align 4, !tbaa !237
  %i.bz = add i32 %i.bu, -3
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.cb = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !237
  %i.cc = add i32 %i.bu, -4
  store i32 %i.cc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cf = icmp eq ptr %i.ce, %i.s
  br i1 %i.cf, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !234
  %i.ch = shl i64 %i.cg, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.ch) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !233
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.ci = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.cj = ptrtoint ptr %2 to i64
  %i.ck = ptrtoint ptr %i.s to i64
  %i.cl = sub i64 %i.cj, %i.ck
  store ptr %i.r, ptr %1, align 8, !tbaa !235
  %i.cm = add i64 %i.ci, %3
  store i64 %i.cm, ptr %i.d, align 8, !tbaa !233
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.cn = getelementptr inbounds i8, ptr %i.r, i64 %i.cl
  store ptr %i.cn, ptr %0, align 8, !tbaa !281
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIS3_EEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %4                           ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !234  ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %i.e, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.a, 2
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 7 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !235    ; 5 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !242  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.j, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter98 = and i64 %i.j, 3                   ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.prol ], [ %i.h, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter100 = phi i64 [ %prol.iter100.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.k = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter100.next = add i64 %prol.iter100, 1   ; 2 uses
  %prol.iter100.cmp.not = icmp eq i64 %prol.iter100.next, %xtraiter98
  br i1 %prol.iter100.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3907

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %i.n, %.lr.ph.i.i.prol ]
  %i.o = icmp ult i64 %i.j, 4
  br i1 %i.o, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !237
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.r, align 4, !tbaa !237
  %i.s = add i32 %i.p, -2
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !237
  %i.u = add i32 %i.p, -3
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.w = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !237
  %i.x = add i32 %i.p, -4
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !24

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.i, align 8, !tbaa !242
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = icmp eq ptr %i.z, %i.h
  br i1 %i.aa, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.ab = shl nuw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ab) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.g, ptr %0, align 8, !tbaa !235
  store i64 %i.a, ptr %i.b, align 8, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not12.i.i = icmp eq i64 %2, %4
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %min.iters.check74 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check74, label %.lr.ph.i.i26.preheader88, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i26.preheader
  %i.ad = getelementptr i8, ptr %1, i64 4
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i26.preheader88, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck
  %n.vec76 = and i64 %i.a, 2305843009213693944    ; 4 uses
  %i.ae = shl nuw nsw i64 %n.vec76, 2
  %i.af = getelementptr i8, ptr %i.g, i64 %i.ae   ; 2 uses
  %i.ag = sub i64 %2, %n.vec76
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.ai = load i32, ptr %1, align 4, !tbaa !237, !alias.scope !3921
  %broadcast.splatinsert81 = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat82 = shufflevector <4 x i32> %broadcast.splatinsert81, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next83, %vector.body77 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph75 ], [ %i.al, %vector.body77 ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph75 ], [ %i.am, %vector.body77 ]
  %i.aj = shl i64 %index78, 2
  %next.gep80 = getelementptr i8, ptr %i.g, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep80, i64 16
  store <4 x i32> %broadcast.splat82, ptr %next.gep80, align 4, !tbaa !237
  store <4 x i32> %broadcast.splat82, ptr %i.ak, align 4, !tbaa !237
  %i.al = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.am = add <4 x i32> %vec.phi79, splat (i32 1) ; 2 uses
  %index.next83 = add nuw i64 %index78, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next83, %n.vec76
  br i1 %i.an, label %middle.block84, label %vector.body77, !llvm.loop !3910

middle.block84:                                   ; preds = %vector.body77
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67, !alias.scope !3922, !noalias !3921
  %cmp.n85 = icmp eq i64 %i.a, %n.vec76
  br i1 %cmp.n85, label %.loopexit, label %.lr.ph.i.i26.preheader88

.lr.ph.i.i26.preheader88:                         ; preds = %vector.memcheck, %.lr.ph.i.i26.preheader, %middle.block84
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i26.preheader ], [ %i.ao, %middle.block84 ] ; 2 uses
  %.014.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i26.preheader ], [ %i.af, %middle.block84 ] ; 2 uses
  %.sroa.2.013.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i26.preheader ], [ %i.ag, %middle.block84 ] ; 4 uses
  %i.ap = sub i64 %.sroa.2.013.i.i.ph, %4
  %xtraiter101 = and i64 %i.ap, 3                 ; 2 uses
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.lr.ph.i.i26.prol.loopexit, label %.lr.ph.i.i26.prol

.lr.ph.i.i26.prol:                                ; preds = %.lr.ph.i.i26.preheader88, %.lr.ph.i.i26.prol
  %i.aq = phi i32 [ %i.as, %.lr.ph.i.i26.prol ], [ %.ph, %.lr.ph.i.i26.preheader88 ]
  %.014.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i26.prol ], [ %.014.i.i.ph, %.lr.ph.i.i26.preheader88 ] ; 2 uses
  %.sroa.2.013.i.i.prol = phi i64 [ %i.at, %.lr.ph.i.i26.prol ], [ %.sroa.2.013.i.i.ph, %.lr.ph.i.i26.preheader88 ]
  %prol.iter103 = phi i64 [ %prol.iter103.next, %.lr.ph.i.i26.prol ], [ 0, %.lr.ph.i.i26.preheader88 ]
  %i.ar = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.ar, ptr %.014.i.i.prol, align 4, !tbaa !237
  %i.as = add i32 %i.aq, 1                        ; 3 uses
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.at = add i64 %.sroa.2.013.i.i.prol, -1       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.014.i.i.prol, i64 4 ; 3 uses
  %prol.iter103.next = add i64 %prol.iter103, 1   ; 2 uses
  %prol.iter103.cmp.not = icmp eq i64 %prol.iter103.next, %xtraiter101
  br i1 %prol.iter103.cmp.not, label %.lr.ph.i.i26.prol.loopexit, label %.lr.ph.i.i26.prol, !llvm.loop !3912

.lr.ph.i.i26.prol.loopexit:                       ; preds = %.lr.ph.i.i26.prol, %.lr.ph.i.i26.preheader88
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i26.preheader88 ], [ %i.au, %.lr.ph.i.i26.prol ]
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i26.preheader88 ], [ %i.as, %.lr.ph.i.i26.prol ]
  %.014.i.i.unr = phi ptr [ %.014.i.i.ph, %.lr.ph.i.i26.preheader88 ], [ %i.au, %.lr.ph.i.i26.prol ]
  %.sroa.2.013.i.i.unr = phi i64 [ %.sroa.2.013.i.i.ph, %.lr.ph.i.i26.preheader88 ], [ %i.at, %.lr.ph.i.i26.prol ]
  %i.av = sub i64 %4, %.sroa.2.013.i.i.ph
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.loopexit, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.prol.loopexit, %.lr.ph.i.i26
  %i.ax = phi i32 [ %i.bi, %.lr.ph.i.i26 ], [ %.unr, %.lr.ph.i.i26.prol.loopexit ] ; 4 uses
  %.014.i.i = phi ptr [ %i.bk, %.lr.ph.i.i26 ], [ %.014.i.i.unr, %.lr.ph.i.i26.prol.loopexit ] ; 5 uses
  %.sroa.2.013.i.i = phi i64 [ %i.bj, %.lr.ph.i.i26 ], [ %.sroa.2.013.i.i.unr, %.lr.ph.i.i26.prol.loopexit ]
  %i.ay = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.ay, ptr %.014.i.i, align 4, !tbaa !237
  %i.az = add i32 %i.ax, 1
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4
  %i.bb = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !237
  %i.bc = add i32 %i.ax, 2
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %i.be = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !237
  %i.bf = add i32 %i.ax, 3
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 12
  %i.bh = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !237
  %i.bi = add i32 %i.ax, 4                        ; 2 uses
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.bj = add i64 %.sroa.2.013.i.i, -4            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16 ; 2 uses
  %.not.i.i27.3 = icmp eq i64 %i.bj, %4
  br i1 %.not.i.i27.3, label %.loopexit, label %.lr.ph.i.i26, !llvm.loop !3913

.loopexit:                                        ; preds = %.lr.ph.i.i26.prol.loopexit, %.lr.ph.i.i26, %middle.block84, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.g, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.af, %middle.block84 ], [ %.lcssa.unr, %.lr.ph.i.i26.prol.loopexit ], [ %i.bk, %.lr.ph.i.i26 ]
  %i.bl = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bm = ptrtoint ptr %i.g to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2
  store i64 %i.bo, ptr %i.ac, align 8, !tbaa !233
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bp = load ptr, ptr %0, align 8, !tbaa !235   ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !242 ; 11 uses
  %i.bs = icmp ult i64 %i.br, %i.a
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not4.i.i = icmp eq i64 %i.br, 0
  br i1 %.not4.i.i, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %bb.h
  %.pre.i.i = load i32, ptr %1, align 4, !tbaa !237 ; 2 uses
  %min.iters.check60 = icmp ult i64 %i.br, 8
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.i32
  %n.vec62 = and i64 %i.br, -8                    ; 3 uses
  %i.bt = shl i64 %n.vec62, 2
  %i.bu = getelementptr i8, ptr %i.bp, i64 %i.bt  ; 2 uses
  %i.bv = and i64 %i.br, 7
  %broadcast.splatinsert63 = insertelement <4 x i32> poison, i32 %.pre.i.i, i64 0
  %broadcast.splat64 = shufflevector <4 x i32> %broadcast.splatinsert63, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph61
  %index66 = phi i64 [ 0, %vector.ph61 ], [ %index.next68, %vector.body65 ] ; 2 uses
  %i.bw = shl i64 %index66, 2
  %next.gep67 = getelementptr i8, ptr %i.bp, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep67, i64 16
  store <4 x i32> %broadcast.splat64, ptr %next.gep67, align 4, !tbaa !237
  store <4 x i32> %broadcast.splat64, ptr %i.bx, align 4, !tbaa !237
  %index.next68 = add nuw i64 %index66, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next68, %n.vec62
  br i1 %i.by, label %middle.block69, label %vector.body65, !llvm.loop !3914

middle.block69:                                   ; preds = %vector.body65
  %cmp.n70 = icmp eq i64 %i.br, %n.vec62
  br i1 %cmp.n70, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %.lr.ph.i.i32, %middle.block69
  %.ph91 = phi ptr [ %i.bp, %.lr.ph.i.i32 ], [ %i.bu, %middle.block69 ]
  %.06.i.i.ph = phi i64 [ %i.br, %.lr.ph.i.i32 ], [ %i.bv, %middle.block69 ]
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %i.bz = phi ptr [ %i.cb, %scalar.ph59 ], [ %.ph91, %scalar.ph59.preheader ] ; 2 uses
  %.06.i.i = phi i64 [ %i.ca, %scalar.ph59 ], [ %.06.i.i.ph, %scalar.ph59.preheader ]
  %i.ca = add i64 %.06.i.i, -1                    ; 2 uses
  store i32 %.pre.i.i, ptr %i.bz, align 4, !tbaa !237
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %.not.i.i33 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i33, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %scalar.ph59, !llvm.loop !3915

_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %scalar.ph59, %middle.block69, %bb.h
  %.0.i = phi ptr [ %i.bp, %bb.h ], [ %i.bu, %middle.block69 ], [ %i.cb, %scalar.ph59 ] ; 2 uses
  %i.cc = sub i64 %i.a, %i.br                     ; 3 uses
  %xtraiter95 = and i64 %i.cc, 3                  ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.lr.ph.i19.i.prol.loopexit, label %.lr.ph.i19.i.prol

.lr.ph.i19.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, %.lr.ph.i19.i.prol
  %.016.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i19.i.prol ], [ %i.cc, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %.01315.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i19.i.prol ], [ %.0.i, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 3 uses
  %prol.iter97 = phi i64 [ %prol.iter97.next, %.lr.ph.i19.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %i.cd = add i64 %.016.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.prol) ]
  %i.ce = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.ce, ptr %.01315.i.i.prol, align 4, !tbaa !237
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %.01315.i.i.prol, i64 4 ; 2 uses
  %prol.iter97.next = add i64 %prol.iter97, 1     ; 2 uses
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95
  br i1 %prol.iter97.cmp.not, label %.lr.ph.i19.i.prol.loopexit, label %.lr.ph.i19.i.prol, !llvm.loop !3916

.lr.ph.i19.i.prol.loopexit:                       ; preds = %.lr.ph.i19.i.prol, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %.016.i.i.unr = phi i64 [ %i.cc, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.cd, %.lr.ph.i19.i.prol ]
  %.01315.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.ch, %.lr.ph.i19.i.prol ]
  %i.ci = sub i64 %i.br, %2
  %i.cj = add i64 %i.ci, %4
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.prol.loopexit, %.lr.ph.i19.i
  %.016.i.i = phi i64 [ %i.cv, %.lr.ph.i19.i ], [ %.016.i.i.unr, %.lr.ph.i19.i.prol.loopexit ]
  %.01315.i.i = phi ptr [ %i.cy, %.lr.ph.i19.i ], [ %.01315.i.i.unr, %.lr.ph.i19.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i) ]
  %i.cl = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.cl, ptr %.01315.i.i, align 4, !tbaa !237
  %i.cm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 4
  %i.cp = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !237
  %i.cq = add i32 %i.cm, 2
  store i32 %i.cq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 8
  %i.cs = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !237
  %i.ct = add i32 %i.cm, 3
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cu = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 12
  %i.cv = add i64 %.016.i.i, -4                   ; 2 uses
  %i.cw = load i32, ptr %1, align 4, !tbaa !237
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !237
  %i.cx = add i32 %i.cm, 4
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 16
  %.not.i20.i.3 = icmp eq i64 %i.cv, 0
  br i1 %.not.i20.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i19.i, !llvm.loop !3917

bb.i:                                             ; preds = %bb.g
  %.not5.i.i = icmp eq i64 %i.a, 0
  br i1 %.not5.i.i, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.pre.i22.i = load i32, ptr %1, align 4, !tbaa !237 ; 2 uses
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i23.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.a, -8                       ; 3 uses
  %i.cz = shl i64 %n.vec, 2
  %i.da = getelementptr i8, ptr %i.bp, i64 %i.cz  ; 2 uses
  %i.db = and i64 %i.a, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i22.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bp, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !237
  store <4 x i32> %broadcast.splat, ptr %i.dd, align 4, !tbaa !237
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !3918

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.07.i.i.ph = phi ptr [ %i.bp, %.lr.ph.preheader.i.i ], [ %i.da, %middle.block ]
  %.046.i.i.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i ], [ %i.db, %middle.block ]
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i.preheader, %.lr.ph.i23.i
  %.07.i.i = phi ptr [ %i.dg, %.lr.ph.i23.i ], [ %.07.i.i.ph, %.lr.ph.i23.i.preheader ] ; 2 uses
  %.046.i.i = phi i64 [ %i.df, %.lr.ph.i23.i ], [ %.046.i.i.ph, %.lr.ph.i23.i.preheader ]
  %i.df = add i64 %.046.i.i, -1                   ; 2 uses
  store i32 %.pre.i22.i, ptr %.07.i.i, align 4, !tbaa !237
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 4 ; 2 uses
  %.not.i24.i = icmp eq i64 %i.df, 0
  br i1 %.not.i24.i, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i23.i, !llvm.loop !3919

_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i23.i, %middle.block, %bb.i
  %.0.lcssa.i.i28 = phi ptr [ %i.bp, %bb.i ], [ %i.da, %middle.block ], [ %i.dg, %.lr.ph.i23.i ] ; 2 uses
  %i.dh = sub nuw i64 %i.br, %i.a                 ; 4 uses
  %.not3.i.i29 = icmp eq i64 %i.dh, 0
  br i1 %.not3.i.i29, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %xtraiter = and i64 %i.dh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i26.i.prol.loopexit, label %.lr.ph.i26.i.prol

.lr.ph.i26.i.prol:                                ; preds = %.lr.ph.i26.i.preheader, %.lr.ph.i26.i.prol
  %.05.i.i30.prol = phi i64 [ %i.di, %.lr.ph.i26.i.prol ], [ %i.dh, %.lr.ph.i26.i.preheader ]
  %storemerge4.i.i31.prol = phi ptr [ %i.dl, %.lr.ph.i26.i.prol ], [ %.0.lcssa.i.i28, %.lr.ph.i26.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i26.i.prol ], [ 0, %.lr.ph.i26.i.preheader ]
  %i.di = add i64 %.05.i.i30.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i31.prol, align 4, !tbaa !237
  %i.dj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i26.i.prol.loopexit, label %.lr.ph.i26.i.prol, !llvm.loop !3920

.lr.ph.i26.i.prol.loopexit:                       ; preds = %.lr.ph.i26.i.prol, %.lr.ph.i26.i.preheader
  %.05.i.i30.unr = phi i64 [ %i.dh, %.lr.ph.i26.i.preheader ], [ %i.di, %.lr.ph.i26.i.prol ]
  %storemerge4.i.i31.unr = phi ptr [ %.0.lcssa.i.i28, %.lr.ph.i26.i.preheader ], [ %i.dl, %.lr.ph.i26.i.prol ]
  %i.dm = sub i64 %i.a, %i.br
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.prol.loopexit, %.lr.ph.i26.i
  %.05.i.i30 = phi i64 [ %i.dv, %.lr.ph.i26.i ], [ %.05.i.i30.unr, %.lr.ph.i26.i.prol.loopexit ]
  %storemerge4.i.i31 = phi ptr [ %i.dx, %.lr.ph.i26.i ], [ %storemerge4.i.i31.unr, %.lr.ph.i26.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i31, align 4, !tbaa !237
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 4
  store i32 -2147483648, ptr %i.dq, align 4, !tbaa !237
  %i.dr = add i32 %i.do, -2
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 8
  store i32 -2147483648, ptr %i.ds, align 4, !tbaa !237
  %i.dt = add i32 %i.do, -3
  store i32 %i.dt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.du = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 12
  %i.dv = add i64 %.05.i.i30, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.du, align 4, !tbaa !237
  %i.dw = add i32 %i.do, -4
  store i32 %i.dw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 16
  %.not.i27.i.3 = icmp eq i64 %i.dv, 0
  br i1 %.not.i27.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i, !llvm.loop !24

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i26.i.prol.loopexit, %.lr.ph.i26.i, %.lr.ph.i19.i.prol.loopexit, %.lr.ph.i19.i, %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test24movable_and_copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  store i64 %i.a, ptr %i.bq, align 8, !tbaa !233
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.103") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !234  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !233  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !235    ; 9 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !242  ; 8 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge, label %.lr.ph.i.i.i

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  br label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.v = load i32, ptr %.018.i.i.i, align 4, !tbaa !237
  store i32 %i.v, ptr %.01517.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !237
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !39

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge
  %i.aa = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.x, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %i.ab = load i32, ptr %4, align 4, !tbaa !237
  store i32 %i.ab, ptr %.015.lcssa.i.i.i, align 4, !tbaa !237
  %i.ac = add i32 %i.aa, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.ah, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ai, %.lr.ph.i20.i.i ], [ %i.ad, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %i.ae = load i32, ptr %.018.i21.i.i, align 4, !tbaa !237
  store i32 %i.ae, ptr %.01517.i22.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !237
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !39

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !237
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !3923

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
  br i1 %i.az, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEEvPS3_mSF_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !234
  %i.bb = shl i64 %i.ba, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bb) #22
end_hunk_4
begin_hunk_5_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignIPS3_EEvT_SB_PNS_11move_detail13disable_if_orIvNSC_7is_sameINSC_17integral_constantIjLj1EEENSF_IjLj0EEEEENSC_14is_convertibleISB_mEENS0_3dtl17is_input_iteratorISB_Xsr21has_iterator_categoryISB_EE5valueEEENSC_5bool_ILb0EEEE4typeE:bb.a
  %prol.iter106.cmp.not = icmp eq i64 %prol.iter106.next, %xtraiter104
  br i1 %prol.iter106.cmp.not, label %.lr.ph.i21.i.prol.loopexit, label %.lr.ph.i21.i.prol, !llvm.loop !3980

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
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 18 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter37 = and i64 %3, 1
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %i.j, align 4, !tbaa !67
  store i32 %i.k, ptr %i.h, align 4, !tbaa !237
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.n = load ptr, ptr %4, align 8, !tbaa !187
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  store i32 %i.s, ptr %.01417.i.i.i.i, align 4, !tbaa !237
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67 ; 2 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.v = load ptr, ptr %.sroa.0.016.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !67
  store i32 %i.y, ptr %i.w, align 4, !tbaa !237
  %i.z = add i32 %i.t, 2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !187
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ac = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !43

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.h to i64
  %i.ae = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ag, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 0, %3
  %i.ai = getelementptr [4 x i8], ptr %i.h, i64 %i.ah ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.aj = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !237
  store i32 %i.ak, ptr %i.h, align 4, !tbaa !237
  store i32 0, ptr %i.ai, align 4, !tbaa !237
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !237
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !237
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !237
  store i32 0, ptr %i.at, align 4, !tbaa !237
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !41

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bb = ptrtoaddr ptr %i.g to i64               ; 2 uses
  %i.bc = shl nuw nsw i64 %i.e, 2
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %i.bb
  %i.bf = add i64 %i.be, -4
  %i.bg = add i64 %i.bd, %i.ae
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bh, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bk = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bk, %i.bb
  %i.bn = add i64 %i.bm, -4
  %i.bo = add i64 %i.bl, %i.ae
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, -4
  %i.br = add nsw i64 %i.bk, -4
  %i.bs = sub i64 %i.br, %i.bq                    ; 2 uses
  %i.bt = getelementptr i8, ptr %i.g, i64 %i.bs
  %i.bu = sub i64 %i.bs, %i.bl
  %i.bv = getelementptr i8, ptr %i.g, i64 %i.bu
  %bound0 = icmp ult ptr %i.bt, %i.ai
  %bound1 = icmp ult ptr %i.bv, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bj, 9223372036854775800     ; 3 uses
  %i.bw = mul i64 %n.vec, -4                      ; 2 uses
  %i.bx = getelementptr i8, ptr %i.h, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ai, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bz ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ai, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !237, !alias.scope !3991
  %wide.load24 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !237, !alias.scope !3991
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !237, !alias.scope !3992, !noalias !3991
  store <4 x i32> %wide.load24, ptr %i.cd, align 4, !tbaa !237, !alias.scope !3992, !noalias !3991
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !237, !alias.scope !3991
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !237, !alias.scope !3991
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !3986

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader28

.lr.ph.i40.i.i.i.preheader28:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i40.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader28, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %.079.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader28 ]
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !237
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !237
  store i32 0, ptr %i.cf, align 4, !tbaa !237
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cf
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !3987

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %xtraiter29 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ci = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 16
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !67
  store i32 %i.ck, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !237
  %i.cl = load ptr, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !187 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter29
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3988

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.i.prol ]
  %i.cn = icmp ult i64 %3, 4
  br i1 %i.cn, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !67
  store i32 %i.cp, ptr %.048.i.i.i.i.i, align 4, !tbaa !237
  %i.cq = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !67
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !237
  %i.cu = load ptr, ptr %i.cq, align 8, !tbaa !187 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !67
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !237
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !187 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.da = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !67
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !237
  %i.dd = load ptr, ptr %i.cy, align 8, !tbaa !187
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.da, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_St14_List_iteratorIiEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3989

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dj, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i48.i.i.i ], [ %i.df, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dg = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  store i32 %i.dg, ptr %.01517.i.i.i.i, align 4, !tbaa !237
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !237
  %i.dh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dj, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !39

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter31 = and i64 %i.ag, 3                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %.09.i.i53.i.i.i.prol = phi i64 [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ag, %.lr.ph.i.i52.i.i.i.preheader ]
  %.048.i.i54.i.i.i.prol = phi ptr [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ], [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.i.i.prol = phi ptr [ %i.do, %.lr.ph.i.i52.i.i.i.prol ], [ %4, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dl = add i64 %.09.i.i53.i.i.i.prol, -1       ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i.prol, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !67
  store i32 %i.dn, ptr %.048.i.i54.i.i.i.prol, align 4, !tbaa !237
  %i.do = load ptr, ptr %.sroa.0.07.i.i55.i.i.i.prol, align 8, !tbaa !187 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !3990

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.do, %.lr.ph.i.i52.i.i.i.prol ]
  %.09.i.i53.i.i.i.unr = phi i64 [ %i.ag, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ]
  %.048.i.i54.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dp, %.lr.ph.i.i52.i.i.i.prol ]
  %.sroa.0.07.i.i55.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.do, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dq = icmp ult i64 %i.ag, 4
  br i1 %i.dq, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %.09.i.i53.i.i.i = phi i64 [ %i.ed, %.lr.ph.i.i52.i.i.i ], [ %.09.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %.048.i.i54.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i52.i.i.i ], [ %.048.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i52.i.i.i ], [ %.sroa.0.07.i.i55.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.i.i, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !67
  store i32 %i.ds, ptr %.048.i.i54.i.i.i, align 4, !tbaa !237
  %i.dt = load ptr, ptr %.sroa.0.07.i.i55.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !67
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !237
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !67
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !237
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !187 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 12
  %i.ed = add i64 %.09.i.i53.i.i.i, -4            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !67
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !237
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !187 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.i.i, i64 16
  %.not.i.i56.i.i.i.3 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i56.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !3989

_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i: ; preds = %.lr.ph.i.i52.i.i.i, %.lr.ph.i.i52.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ], [ %i.eg, %.lr.ph.i.i52.i.i.i ] ; 3 uses
  %i.ei = sub i64 %3, %i.ag                       ; 3 uses
  %.neg = add nsw i64 %i.ag, 1
  %xtraiter34 = and i64 %i.ei, 1
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i.i60.i.i.i.prol.loopexit, label %.lr.ph.i.i60.i.i.i.prol

.lr.ph.i.i60.i.i.i.prol:                          ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS8_T_m.exit58.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !67
  store i32 %i.ek, ptr %i.h, align 4, !tbaa !237
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !67
  %i.en = load ptr, ptr %.lcssa, align 8, !tbaa !187
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 4
end_hunk_5
begin_hunk_6_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS7_EEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  store i32 %i.bv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bw = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 8
  %i.bx = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !249
  %i.by = add i32 %i.bq, 3
  store i32 %i.by, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bz = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 12
  %i.ca = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.cb = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !249
  %i.cc = add i32 %i.bq, 4                        ; 2 uses
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cd = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 16
  %.not.i.i.i.i.3 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4758

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block77, %_ZN5boost9container24uninitialized_move_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %i.ce = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %.pre9 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %i.cf = ptrtoaddr ptr %i.s to i64               ; 2 uses
  %i.cg = shl i64 %i.t, 2
  %i.ch = ptrtoaddr ptr %2 to i64                 ; 2 uses
  %i.ci = add i64 %i.cg, %i.cf
  %i.cj = add i64 %i.ci, -4
  %i.ck = sub i64 %i.cj, %i.ch                    ; 2 uses
  %i.cl = lshr i64 %i.ck, 2
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check97 = icmp ult i64 %i.ck, 156
  br i1 %min.iters.check97, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck98

vector.memcheck98:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.cn = shl i64 %3, 2
  %i.co = shl i64 %i.t, 2
  %i.cp = add i64 %i.co, %i.cf
  %i.cq = add i64 %i.cp, -4
  %i.cr = sub i64 %i.cq, %i.ch
  %i.cs = and i64 %i.cr, -4                       ; 2 uses
  %i.ct = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.cn
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.cs
  %i.cv = getelementptr i8, ptr %i.cu, i64 4      ; 2 uses
  %i.cw = getelementptr i8, ptr %2, i64 %i.cs
  %i.cx = getelementptr i8, ptr %i.cw, i64 4      ; 2 uses
  %bound099 = icmp ult ptr %i.ce, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1100 = icmp ugt ptr %i.cv, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict101 = and i1 %bound099, %bound1100
  %bound0102 = icmp ult ptr %i.ce, %i.cx
  %bound1103 = icmp ult ptr %2, %i.cv
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %found.conflict101, %found.conflict104
  %bound0106 = icmp ugt ptr %i.cx, @_ZN5boost9container4test12copyable_int5countE
  %bound1107 = icmp ult ptr %2, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %conflict.rdx105, %found.conflict108
  br i1 %conflict.rdx109, label %.lr.ph.i20.i.i.preheader, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck98
  %n.vec111 = and i64 %i.cm, 9223372036854775800  ; 3 uses
  %i.cy = shl i64 %n.vec111, 2                    ; 2 uses
  %i.cz = getelementptr i8, ptr %2, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.ce, i64 %i.cy
  %i.db = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre9, i64 0
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next127, %vector.body112 ] ; 2 uses
  %vec.phi114 = phi <4 x i32> [ %i.db, %vector.ph110 ], [ %i.df, %vector.body112 ]
  %vec.phi115 = phi <4 x i32> [ zeroinitializer, %vector.ph110 ], [ %i.dg, %vector.body112 ]
  %i.dc = shl i64 %index113, 2                    ; 2 uses
  %next.gep116 = getelementptr i8, ptr %2, i64 %i.dc ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.ce, i64 %i.dc ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep117) ]
  %i.dd = getelementptr i8, ptr %next.gep116, i64 16
  %wide.load125 = load <4 x i32>, ptr %next.gep116, align 4, !tbaa !249, !alias.scope !4774
  %wide.load126 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !249, !alias.scope !4774
  %i.de = getelementptr i8, ptr %next.gep117, i64 16
  store <4 x i32> %wide.load125, ptr %next.gep117, align 4, !tbaa !249, !alias.scope !4775, !noalias !4776
  store <4 x i32> %wide.load126, ptr %i.de, align 4, !tbaa !249, !alias.scope !4775, !noalias !4776
  %i.df = add <4 x i32> %vec.phi114, splat (i32 1) ; 2 uses
  %i.dg = add <4 x i32> %vec.phi115, splat (i32 1) ; 2 uses
  %index.next127 = add nuw i64 %index113, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next127, %n.vec111
  br i1 %i.dh, label %middle.block128, label %vector.body112, !llvm.loop !4763

middle.block128:                                  ; preds = %vector.body112
  %bin.rdx129 = add <4 x i32> %i.dg, %i.df
  %i.di = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx129) ; 2 uses
  store i32 %i.di, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4777, !noalias !4774
  %cmp.n130 = icmp eq i64 %i.cm, %n.vec111
  br i1 %cmp.n130, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck98, %.lr.ph.i20.preheader.i.i, %middle.block128
  %.ph = phi i32 [ %.pre9, %vector.memcheck98 ], [ %.pre9, %.lr.ph.i20.preheader.i.i ], [ %i.di, %middle.block128 ]
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck98 ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.cz, %middle.block128 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.ce, %vector.memcheck98 ], [ %i.ce, %.lr.ph.i20.preheader.i.i ], [ %i.da, %middle.block128 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.dj = phi i32 [ %i.dl, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i21.i.i = phi ptr [ %i.dm, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.dn, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.dk = load i32, ptr %.018.i21.i.i, align 4, !tbaa !249
  store i32 %i.dk, ptr %.01517.i22.i.i, align 4, !tbaa !249
  %i.dl = add i32 %i.dj, 1                        ; 2 uses
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dm = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.dm, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !4764

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block128, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEE31uninitialized_copy_n_and_updateIPS5_EEvRS8_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter144 = and i64 %i.t, 3                  ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.do, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.dr, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter146 = phi i64 [ %prol.iter146.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.do = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.dp = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dq = add i32 %i.dp, -1
  store i32 %i.dq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter146.next = add i64 %prol.iter146, 1   ; 2 uses
  %prol.iter146.cmp.not = icmp eq i64 %prol.iter146.next, %xtraiter144
  br i1 %prol.iter146.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4765

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.do, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.dr, %.lr.ph.i.i.prol ]
  %i.ds = icmp ult i64 %i.t, 4
  br i1 %i.ds, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.ea, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.dt = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.du = add i32 %i.dt, -1
  store i32 %i.du, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.dv, align 4, !tbaa !249
  %i.dw = add i32 %i.dt, -2
  store i32 %i.dw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.dx, align 4, !tbaa !249
  %i.dy = add i32 %i.dt, -3
  store i32 %i.dy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dz = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.ea = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.dz, align 4, !tbaa !249
  %i.eb = add i32 %i.dt, -4
  store i32 %i.eb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ec = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ee = icmp eq ptr %i.ed, %i.s
  br i1 %i.ee, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !246
  %i.eg = shl i64 %i.ef, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.eg) #22
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !245
  br label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS7_EEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i, %bb.h
  %i.eh = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl21insert_n_copies_proxyIS7_EEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ], [ %i.t, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit.i ]
  %i.ei = ptrtoint ptr %2 to i64
  %i.ej = ptrtoint ptr %i.s to i64
  %i.ek = sub i64 %i.ei, %i.ej
  store ptr %i.r, ptr %1, align 8, !tbaa !247
  %i.el = add i64 %i.eh, %3
  store i64 %i.el, ptr %i.d, align 8, !tbaa !245
  store i64 %i.o, ptr %i.a, align 8, !tbaa !84
  %i.em = getelementptr inbounds i8, ptr %i.r, i64 %i.ek
  store ptr %i.em, ptr %0, align 8, !tbaa !289
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE6assignINS0_17constant_iteratorIS3_EEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %4                           ; 18 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !246  ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.a, 2305843009213693951
  br i1 %i.e, label %bb.c, label %bb.d, !prof !74

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.a, 2
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 7 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !247    ; 5 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !254  ; 5 uses
  %.not3.i.i = icmp eq i64 %i.j, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %xtraiter98 = and i64 %i.j, 3                   ; 2 uses
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.k, %.lr.ph.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.n, %.lr.ph.i.i.prol ], [ %i.h, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter100 = phi i64 [ %prol.iter100.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.k = add i64 %.05.i.i.prol, -1                ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !249
  %i.l = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter100.next = add i64 %prol.iter100, 1   ; 2 uses
  %prol.iter100.cmp.not = icmp eq i64 %prol.iter100.next, %xtraiter98
  br i1 %prol.iter100.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !4778

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %i.n, %.lr.ph.i.i.prol ]
  %i.o = icmp ult i64 %i.j, 4
  br i1 %i.o, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.w, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !249
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.r, align 4, !tbaa !249
  %i.s = add i32 %i.p, -2
  store i32 %i.s, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.t, align 4, !tbaa !249
  %i.u = add i32 %i.p, -3
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.w = add i64 %.05.i.i, -4                     ; 2 uses
  store i32 -2147483648, ptr %i.v, align 4, !tbaa !249
  %i.x = add i32 %i.p, -4
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, label %.lr.ph.i.i, !llvm.loop !26

_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.e
  store i64 0, ptr %i.i, align 8, !tbaa !254
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = icmp eq ptr %i.z, %i.h
  br i1 %i.aa, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit
  %i.ab = shl nuw i64 %i.c, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.ab) #22
  br label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit: ; preds = %bb.f, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.g, ptr %0, align 8, !tbaa !247
  store i64 %i.a, ptr %i.b, align 8, !tbaa !84
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not12.i.i = icmp eq i64 %2, %4
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 3 uses
  %min.iters.check74 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check74, label %.lr.ph.i.i26.preheader88, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i26.preheader
  %i.ad = getelementptr i8, ptr %1, i64 4
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test12copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i26.preheader88, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck
  %n.vec76 = and i64 %i.a, 2305843009213693944    ; 4 uses
  %i.ae = shl nuw nsw i64 %n.vec76, 2
  %i.af = getelementptr i8, ptr %i.g, i64 %i.ae   ; 2 uses
  %i.ag = sub i64 %2, %n.vec76
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  %i.ai = load i32, ptr %1, align 4, !tbaa !249, !alias.scope !4792
  %broadcast.splatinsert81 = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat82 = shufflevector <4 x i32> %broadcast.splatinsert81, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next83, %vector.body77 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph75 ], [ %i.al, %vector.body77 ]
  %vec.phi79 = phi <4 x i32> [ zeroinitializer, %vector.ph75 ], [ %i.am, %vector.body77 ]
  %i.aj = shl i64 %index78, 2
  %next.gep80 = getelementptr i8, ptr %i.g, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep80, i64 16
  store <4 x i32> %broadcast.splat82, ptr %next.gep80, align 4, !tbaa !249
  store <4 x i32> %broadcast.splat82, ptr %i.ak, align 4, !tbaa !249
  %i.al = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.am = add <4 x i32> %vec.phi79, splat (i32 1) ; 2 uses
  %index.next83 = add nuw i64 %index78, 8         ; 2 uses
  %i.an = icmp eq i64 %index.next83, %n.vec76
  br i1 %i.an, label %middle.block84, label %vector.body77, !llvm.loop !4781

middle.block84:                                   ; preds = %vector.body77
  %bin.rdx = add <4 x i32> %i.am, %i.al
  %i.ao = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ao, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4793, !noalias !4792
  %cmp.n85 = icmp eq i64 %i.a, %n.vec76
  br i1 %cmp.n85, label %.loopexit, label %.lr.ph.i.i26.preheader88

.lr.ph.i.i26.preheader88:                         ; preds = %vector.memcheck, %.lr.ph.i.i26.preheader, %middle.block84
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i26.preheader ], [ %i.ao, %middle.block84 ] ; 2 uses
  %.014.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i26.preheader ], [ %i.af, %middle.block84 ] ; 2 uses
  %.sroa.2.013.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i26.preheader ], [ %i.ag, %middle.block84 ] ; 4 uses
  %i.ap = sub i64 %.sroa.2.013.i.i.ph, %4
  %xtraiter101 = and i64 %i.ap, 3                 ; 2 uses
  %lcmp.mod102.not = icmp eq i64 %xtraiter101, 0
  br i1 %lcmp.mod102.not, label %.lr.ph.i.i26.prol.loopexit, label %.lr.ph.i.i26.prol

.lr.ph.i.i26.prol:                                ; preds = %.lr.ph.i.i26.preheader88, %.lr.ph.i.i26.prol
  %i.aq = phi i32 [ %i.as, %.lr.ph.i.i26.prol ], [ %.ph, %.lr.ph.i.i26.preheader88 ]
  %.014.i.i.prol = phi ptr [ %i.au, %.lr.ph.i.i26.prol ], [ %.014.i.i.ph, %.lr.ph.i.i26.preheader88 ] ; 2 uses
  %.sroa.2.013.i.i.prol = phi i64 [ %i.at, %.lr.ph.i.i26.prol ], [ %.sroa.2.013.i.i.ph, %.lr.ph.i.i26.preheader88 ]
  %prol.iter103 = phi i64 [ %prol.iter103.next, %.lr.ph.i.i26.prol ], [ 0, %.lr.ph.i.i26.preheader88 ]
  %i.ar = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.ar, ptr %.014.i.i.prol, align 4, !tbaa !249
  %i.as = add i32 %i.aq, 1                        ; 3 uses
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.at = add i64 %.sroa.2.013.i.i.prol, -1       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.014.i.i.prol, i64 4 ; 3 uses
  %prol.iter103.next = add i64 %prol.iter103, 1   ; 2 uses
  %prol.iter103.cmp.not = icmp eq i64 %prol.iter103.next, %xtraiter101
  br i1 %prol.iter103.cmp.not, label %.lr.ph.i.i26.prol.loopexit, label %.lr.ph.i.i26.prol, !llvm.loop !4783

.lr.ph.i.i26.prol.loopexit:                       ; preds = %.lr.ph.i.i26.prol, %.lr.ph.i.i26.preheader88
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i26.preheader88 ], [ %i.au, %.lr.ph.i.i26.prol ]
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i26.preheader88 ], [ %i.as, %.lr.ph.i.i26.prol ]
  %.014.i.i.unr = phi ptr [ %.014.i.i.ph, %.lr.ph.i.i26.preheader88 ], [ %i.au, %.lr.ph.i.i26.prol ]
  %.sroa.2.013.i.i.unr = phi i64 [ %.sroa.2.013.i.i.ph, %.lr.ph.i.i26.preheader88 ], [ %i.at, %.lr.ph.i.i26.prol ]
  %i.av = sub i64 %4, %.sroa.2.013.i.i.ph
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %.loopexit, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.prol.loopexit, %.lr.ph.i.i26
  %i.ax = phi i32 [ %i.bi, %.lr.ph.i.i26 ], [ %.unr, %.lr.ph.i.i26.prol.loopexit ] ; 4 uses
  %.014.i.i = phi ptr [ %i.bk, %.lr.ph.i.i26 ], [ %.014.i.i.unr, %.lr.ph.i.i26.prol.loopexit ] ; 5 uses
  %.sroa.2.013.i.i = phi i64 [ %i.bj, %.lr.ph.i.i26 ], [ %.sroa.2.013.i.i.unr, %.lr.ph.i.i26.prol.loopexit ]
  %i.ay = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.ay, ptr %.014.i.i, align 4, !tbaa !249
  %i.az = add i32 %i.ax, 1
  store i32 %i.az, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 4
  %i.bb = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !249
  %i.bc = add i32 %i.ax, 2
  store i32 %i.bc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bd = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  %i.be = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !249
  %i.bf = add i32 %i.ax, 3
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bg = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 12
  %i.bh = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !249
  %i.bi = add i32 %i.ax, 4                        ; 2 uses
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.bj = add i64 %.sroa.2.013.i.i, -4            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 16 ; 2 uses
  %.not.i.i27.3 = icmp eq i64 %i.bj, %4
  br i1 %.not.i.i27.3, label %.loopexit, label %.lr.ph.i.i26, !llvm.loop !4784

.loopexit:                                        ; preds = %.lr.ph.i.i26.prol.loopexit, %.lr.ph.i.i26, %middle.block84, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit
  %.0.lcssa.i.i = phi ptr [ %i.g, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE10deallocateERKPS4_m.exit ], [ %i.af, %middle.block84 ], [ %.lcssa.unr, %.lr.ph.i.i26.prol.loopexit ], [ %i.bk, %.lr.ph.i.i26 ]
  %i.bl = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.bm = ptrtoint ptr %i.g to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2
  store i64 %i.bo, ptr %i.ac, align 8, !tbaa !245
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.bp = load ptr, ptr %0, align 8, !tbaa !247   ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !254 ; 11 uses
  %i.bs = icmp ult i64 %i.br, %i.a
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not4.i.i = icmp eq i64 %i.br, 0
  br i1 %.not4.i.i, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %.lr.ph.i.i32

.lr.ph.i.i32:                                     ; preds = %bb.h
  %.pre.i.i = load i32, ptr %1, align 4, !tbaa !249 ; 2 uses
  %min.iters.check60 = icmp ult i64 %i.br, 8
  br i1 %min.iters.check60, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.i32
  %n.vec62 = and i64 %i.br, -8                    ; 3 uses
  %i.bt = shl i64 %n.vec62, 2
  %i.bu = getelementptr i8, ptr %i.bp, i64 %i.bt  ; 2 uses
  %i.bv = and i64 %i.br, 7
  %broadcast.splatinsert63 = insertelement <4 x i32> poison, i32 %.pre.i.i, i64 0
  %broadcast.splat64 = shufflevector <4 x i32> %broadcast.splatinsert63, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph61
  %index66 = phi i64 [ 0, %vector.ph61 ], [ %index.next68, %vector.body65 ] ; 2 uses
  %i.bw = shl i64 %index66, 2
  %next.gep67 = getelementptr i8, ptr %i.bp, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep67, i64 16
  store <4 x i32> %broadcast.splat64, ptr %next.gep67, align 4, !tbaa !249
  store <4 x i32> %broadcast.splat64, ptr %i.bx, align 4, !tbaa !249
  %index.next68 = add nuw i64 %index66, 8         ; 2 uses
  %i.by = icmp eq i64 %index.next68, %n.vec62
  br i1 %i.by, label %middle.block69, label %vector.body65, !llvm.loop !4785

middle.block69:                                   ; preds = %vector.body65
  %cmp.n70 = icmp eq i64 %i.br, %n.vec62
  br i1 %cmp.n70, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %.lr.ph.i.i32, %middle.block69
  %.ph91 = phi ptr [ %i.bp, %.lr.ph.i.i32 ], [ %i.bu, %middle.block69 ]
  %.06.i.i.ph = phi i64 [ %i.br, %.lr.ph.i.i32 ], [ %i.bv, %middle.block69 ]
  br label %scalar.ph59

scalar.ph59:                                      ; preds = %scalar.ph59.preheader, %scalar.ph59
  %i.bz = phi ptr [ %i.cb, %scalar.ph59 ], [ %.ph91, %scalar.ph59.preheader ] ; 2 uses
  %.06.i.i = phi i64 [ %i.ca, %scalar.ph59 ], [ %.06.i.i.ph, %scalar.ph59.preheader ]
  %i.ca = add i64 %.06.i.i, -1                    ; 2 uses
  store i32 %.pre.i.i, ptr %i.bz, align 4, !tbaa !249
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %.not.i.i33 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i33, label %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, label %scalar.ph59, !llvm.loop !4786

_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i: ; preds = %scalar.ph59, %middle.block69, %bb.h
  %.0.i = phi ptr [ %i.bp, %bb.h ], [ %i.bu, %middle.block69 ], [ %i.cb, %scalar.ph59 ] ; 2 uses
  %i.cc = sub i64 %i.a, %i.br                     ; 3 uses
  %xtraiter95 = and i64 %i.cc, 3                  ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %.lr.ph.i19.i.prol.loopexit, label %.lr.ph.i19.i.prol

.lr.ph.i19.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i, %.lr.ph.i19.i.prol
  %.016.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i19.i.prol ], [ %i.cc, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %.01315.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i19.i.prol ], [ %.0.i, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ] ; 3 uses
  %prol.iter97 = phi i64 [ %prol.iter97.next, %.lr.ph.i19.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ]
  %i.cd = add i64 %.016.i.i.prol, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.prol) ]
  %i.ce = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.ce, ptr %.01315.i.i.prol, align 4, !tbaa !249
  %i.cf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %.01315.i.i.prol, i64 4 ; 2 uses
  %prol.iter97.next = add i64 %prol.iter97, 1     ; 2 uses
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95
  br i1 %prol.iter97.cmp.not, label %.lr.ph.i19.i.prol.loopexit, label %.lr.ph.i19.i.prol, !llvm.loop !4787

.lr.ph.i19.i.prol.loopexit:                       ; preds = %.lr.ph.i19.i.prol, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i
  %.016.i.i.unr = phi i64 [ %i.cc, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.cd, %.lr.ph.i19.i.prol ]
  %.01315.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S9_E4typeES9_mRSA_.exit.i ], [ %i.ch, %.lr.ph.i19.i.prol ]
  %i.ci = sub i64 %i.br, %2
  %i.cj = add i64 %i.ci, %4
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.prol.loopexit, %.lr.ph.i19.i
  %.016.i.i = phi i64 [ %i.cv, %.lr.ph.i19.i ], [ %.016.i.i.unr, %.lr.ph.i19.i.prol.loopexit ]
  %.01315.i.i = phi ptr [ %i.cy, %.lr.ph.i19.i ], [ %.01315.i.i.unr, %.lr.ph.i19.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i) ]
  %i.cl = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.cl, ptr %.01315.i.i, align 4, !tbaa !249
  %i.cm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.co = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 4
  %i.cp = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !249
  %i.cq = add i32 %i.cm, 2
  store i32 %i.cq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 8
  %i.cs = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !249
  %i.ct = add i32 %i.cm, 3
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cu = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 12
  %i.cv = add i64 %.016.i.i, -4                   ; 2 uses
  %i.cw = load i32, ptr %1, align 4, !tbaa !249
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !249
  %i.cx = add i32 %i.cm, 4
  store i32 %i.cx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.cy = getelementptr inbounds nuw i8, ptr %.01315.i.i, i64 16
  %.not.i20.i.3 = icmp eq i64 %i.cv, 0
  br i1 %.not.i20.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i19.i, !llvm.loop !4788

bb.i:                                             ; preds = %bb.g
  %.not5.i.i = icmp eq i64 %i.a, 0
  br i1 %.not5.i.i, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %.pre.i22.i = load i32, ptr %1, align 4, !tbaa !249 ; 2 uses
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i23.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %i.a, -8                       ; 3 uses
  %i.cz = shl i64 %n.vec, 2
  %i.da = getelementptr i8, ptr %i.bp, i64 %i.cz  ; 2 uses
  %i.db = and i64 %i.a, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i22.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dc = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.bp, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !249
  store <4 x i32> %broadcast.splat, ptr %i.dd, align 4, !tbaa !249
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !4789

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block
  %.07.i.i.ph = phi ptr [ %i.bp, %.lr.ph.preheader.i.i ], [ %i.da, %middle.block ]
  %.046.i.i.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i ], [ %i.db, %middle.block ]
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i.preheader, %.lr.ph.i23.i
  %.07.i.i = phi ptr [ %i.dg, %.lr.ph.i23.i ], [ %.07.i.i.ph, %.lr.ph.i23.i.preheader ] ; 2 uses
  %.046.i.i = phi i64 [ %i.df, %.lr.ph.i23.i ], [ %.046.i.i.ph, %.lr.ph.i23.i.preheader ]
  %i.df = add i64 %.046.i.i, -1                   ; 2 uses
  store i32 %.pre.i22.i, ptr %.07.i.i, align 4, !tbaa !249
  %i.dg = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 4 ; 2 uses
  %.not.i24.i = icmp eq i64 %i.df, 0
  br i1 %.not.i24.i, label %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i, label %.lr.ph.i23.i, !llvm.loop !4790

_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i: ; preds = %.lr.ph.i23.i, %middle.block, %bb.i
  %.0.lcssa.i.i28 = phi ptr [ %i.bp, %bb.i ], [ %i.da, %middle.block ], [ %i.dg, %.lr.ph.i23.i ] ; 2 uses
  %i.dh = sub nuw i64 %i.br, %i.a                 ; 4 uses
  %.not3.i.i29 = icmp eq i64 %i.dh, 0
  br i1 %.not3.i.i29, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i.preheader

.lr.ph.i26.i.preheader:                           ; preds = %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  %xtraiter = and i64 %i.dh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i26.i.prol.loopexit, label %.lr.ph.i26.i.prol

.lr.ph.i26.i.prol:                                ; preds = %.lr.ph.i26.i.preheader, %.lr.ph.i26.i.prol
  %.05.i.i30.prol = phi i64 [ %i.di, %.lr.ph.i26.i.prol ], [ %i.dh, %.lr.ph.i26.i.preheader ]
  %storemerge4.i.i31.prol = phi ptr [ %i.dl, %.lr.ph.i26.i.prol ], [ %.0.lcssa.i.i28, %.lr.ph.i26.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i26.i.prol ], [ 0, %.lr.ph.i26.i.preheader ]
  %i.di = add i64 %.05.i.i30.prol, -1             ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i31.prol, align 4, !tbaa !249
  %i.dj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dk = add i32 %i.dj, -1
  store i32 %i.dk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i26.i.prol.loopexit, label %.lr.ph.i26.i.prol, !llvm.loop !4791

.lr.ph.i26.i.prol.loopexit:                       ; preds = %.lr.ph.i26.i.prol, %.lr.ph.i26.i.preheader
  %.05.i.i30.unr = phi i64 [ %i.dh, %.lr.ph.i26.i.preheader ], [ %i.di, %.lr.ph.i26.i.prol ]
  %storemerge4.i.i31.unr = phi ptr [ %.0.lcssa.i.i28, %.lr.ph.i26.i.preheader ], [ %i.dl, %.lr.ph.i26.i.prol ]
  %i.dm = sub i64 %i.a, %i.br
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %.lr.ph.i26.i.prol.loopexit, %.lr.ph.i26.i
  %.05.i.i30 = phi i64 [ %i.dv, %.lr.ph.i26.i ], [ %.05.i.i30.unr, %.lr.ph.i26.i.prol.loopexit ]
  %storemerge4.i.i31 = phi ptr [ %i.dx, %.lr.ph.i26.i ], [ %storemerge4.i.i31.unr, %.lr.ph.i26.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i31, align 4, !tbaa !249
  %i.do = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 4
  store i32 -2147483648, ptr %i.dq, align 4, !tbaa !249
  %i.dr = add i32 %i.do, -2
  store i32 %i.dr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.ds = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 8
  store i32 -2147483648, ptr %i.ds, align 4, !tbaa !249
  %i.dt = add i32 %i.do, -3
  store i32 %i.dt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.du = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 12
  %i.dv = add i64 %.05.i.i30, -4                  ; 2 uses
  store i32 -2147483648, ptr %i.du, align 4, !tbaa !249
  %i.dw = add i32 %i.do, -4
  store i32 %i.dw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.dx = getelementptr inbounds nuw i8, ptr %storemerge4.i.i31, i64 16
  %.not.i27.i.3 = icmp eq i64 %i.dv, 0
  br i1 %.not.i27.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit, label %.lr.ph.i26.i, !llvm.loop !26

_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i26.i.prol.loopexit, %.lr.ph.i26.i, %.lr.ph.i19.i.prol.loopexit, %.lr.ph.i19.i, %_ZN5boost9container6copy_nINS0_17constant_iteratorINS0_4test12copyable_intEEEPS4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SA_E4typeES9_mSA_.exit.i
  store i64 %i.a, ptr %i.bq, align 8, !tbaa !245
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEENS0_17constant_iteratorIS4_EEPS4_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESG_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.140") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !246  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !245  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !74

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.7) #27
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 10 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !247    ; 17 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !254  ; 10 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  %.pre = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67 ; 4 uses
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.v = ptrtoaddr ptr %2 to i64
  %i.w = ptrtoaddr ptr %i.s to i64
  %i.x = add i64 %i.v, -4
  %i.y = sub i64 %i.x, %i.w                       ; 3 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 124
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader80, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ab = and i64 %i.y, -4
  %i.ac = add i64 %i.ab, 4                        ; 2 uses
  %i.ad = getelementptr i8, ptr %i.r, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.ac   ; 2 uses
  %bound0 = icmp ult ptr %i.r, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.ad, @_ZN5boost9container4test12copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound024 = icmp ult ptr %i.r, %i.ae
  %bound125 = icmp ult ptr %i.s, %i.ad
  %found.conflict26 = and i1 %bound024, %bound125
  %conflict.rdx = or i1 %found.conflict, %found.conflict26
  %bound027 = icmp ugt ptr %i.ae, @_ZN5boost9container4test12copyable_int5countE
  %bound128 = icmp ult ptr %i.s, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test12copyable_int5countE, i64 4)
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx30 = or i1 %conflict.rdx, %found.conflict29
  br i1 %conflict.rdx30, label %.lr.ph.i.i.i.preheader80, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.s, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.r, i64 %i.af   ; 2 uses
  %i.ai = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ai, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi31 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %i.aj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.aj ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.r, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !249, !alias.scope !4807
  %wide.load33 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !249, !alias.scope !4807
  %i.al = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %wide.load, ptr %next.gep32, align 4, !tbaa !249, !alias.scope !4808, !noalias !4809
  store <4 x i32> %wide.load33, ptr %i.al, align 4, !tbaa !249, !alias.scope !4808, !noalias !4809
  %i.am = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.an = add <4 x i32> %vec.phi31, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !4798

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.an, %i.am
  %i.ap = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  store i32 %i.ap, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67, !alias.scope !4810, !noalias !4807
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader80

.lr.ph.i.i.i.preheader80:                         ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph81 = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %vector.memcheck ], [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader80, %.lr.ph.i.i.i
  %i.aq = phi i32 [ %i.as, %.lr.ph.i.i.i ], [ %.ph81, %.lr.ph.i.i.i.preheader80 ]
  %.018.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader80 ] ; 2 uses
  %i.ar = load i32, ptr %.018.i.i.i, align 4, !tbaa !249
  store i32 %i.ar, ptr %.01517.i.i.i, align 4, !tbaa !249
  %i.as = add i32 %i.aq, 1                        ; 3 uses
  store i32 %i.as, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.at, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4799

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.av = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ap, %middle.block ], [ %i.as, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ah, %middle.block ], [ %i.au, %.lr.ph.i.i.i ] ; 3 uses
  %i.aw = load i32, ptr %4, align 4, !tbaa !249
  store i32 %i.aw, ptr %.015.lcssa.i.i.i, align 4, !tbaa !249
  %i.ax = add i32 %i.av, 1                        ; 4 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !67
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_22small_vector_allocatorINS0_4test12copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_NS0_3dtl20insert_emplace_proxyIS7_JRKS4_EEEEEvRT_T0_SG_SG_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ay = getelementptr [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %i.az = ptrtoaddr ptr %i.s to i64               ; 2 uses
  %i.ba = shl i64 %i.t, 2
  %i.bb = ptrtoaddr ptr %2 to i64                 ; 2 uses
  %i.bc = add i64 %i.ba, %i.az
  %i.bd = add i64 %i.bc, -4
  %i.be = sub i64 %i.bd, %i.bb                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check49 = icmp ult i64 %i.be, 156
  br i1 %min.iters.check49, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck50

vector.memcheck50:                                ; preds = %.lr.ph.i20.preheader.i.i
  %i.bh = shl i64 %3, 2
  %i.bi = shl i64 %i.t, 2
  %i.bj = add i64 %i.bi, %i.az
  %i.bk = add i64 %i.bj, -4
  %i.bl = sub i64 %i.bk, %i.bb
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
end_hunk_6
