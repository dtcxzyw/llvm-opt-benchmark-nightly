Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_tree_test?download=true
inline.NumInlined: 27414
inline.NumDeleted: 3408
loop-unroll.NumRuntimeUnrolled: 494
loop-unroll.NumUnrolled: 502
begin_hunk_0_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE24priv_set_difference_backINS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEEvT_SL_T0_:bb.a
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.v
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.38") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ab, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pre = load ptr, ptr %0, align 8, !tbaa !414
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !421
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.ac = phi ptr [ %i.r, %bb.e ], [ %.pre35, %bb.f ]
  %i.ad = phi ptr [ %i.q, %bb.e ], [ %.pre, %bb.f ] ; 6 uses
  %.not = icmp eq ptr %.0192956, %i.ad            ; 3 uses
  %i.ae = ptrtoint ptr %.0163055 to i64
  %i.af = ptrtoint ptr %.0192956 to i64           ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = ptrtoint ptr %.03154 to i64
  %i.aj = sub i64 %i.ai, %i.af
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 %i.aj
  %.120 = select i1 %.not, ptr %.0192956, ptr %i.ad
  %.117 = select i1 %.not, ptr %.0163055, ptr %i.ah
  %.1 = select i1 %.not, ptr %.03154, ptr %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !421
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.am = icmp slt i32 %i.t, %i.s
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !421
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ %i.r, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0163055, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.aq = phi ptr [ %i.al, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ao, %bb.i ] ; 3 uses
  %i.ar = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.q, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.p, %bb.i ]
  %.221 = phi ptr [ %.120, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.0192956, %bb.i ]
  %.218 = phi ptr [ %.117, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ap, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.03154, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !421   ; 2 uses
  %.not24 = icmp eq ptr %i.aq, %i.at
  br i1 %.not24, label %.loopexit, label %bb.b, !llvm.loop !13364

.loopexit:                                        ; preds = %bb.j, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEESD_RKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.177", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !419    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !416
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !413  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !419    ; 17 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !339

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !414    ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 19 uses
  %i.k = icmp eq ptr %i.j, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter90 = and i64 %3, 1
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.l = load i32, ptr %i.g, align 4, !tbaa !343, !noalias !13397
  store i32 %i.l, ptr %i.j, align 4, !tbaa !343, !noalias !13397
  store i32 0, ptr %i.g, align 4, !tbaa !343, !noalias !13397
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !13397
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !13397
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr93 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.unr93, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.015.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !343, !noalias !13397
  store i32 %i.t, ptr %.01214.i.i.i.i, align 4, !tbaa !343, !noalias !13397
  store i32 0, ptr %i.s, align 4, !tbaa !343, !noalias !13397
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !13397 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !13397
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !343, !noalias !13397
  store i32 %i.y, ptr %i.x, align 4, !tbaa !343, !noalias !13397
  store i32 0, ptr %i.w, align 4, !tbaa !343, !noalias !13397
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !13397
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.ac = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !211

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !339

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ag, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 0, %3
  %i.ai = getelementptr [4 x i8], ptr %i.j, i64 %i.ah ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.aj = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !343
  store i32 %i.ak, ptr %i.j, align 4, !tbaa !343
  store i32 0, ptr %i.ai, align 4, !tbaa !343
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !343
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !343
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !343
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !343
  store i32 0, ptr %i.at, align 4, !tbaa !343
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !13373

_ZN5boost9container26uninitialized_move_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bb = shl nuw nsw i64 %i.e, 2
  %i.bc = shl i64 %3, 2
  %i.bd = add i64 %i.bb, %i.i
  %i.be = add i64 %i.bd, -4
  %i.bf = add i64 %i.bc, %i.ae
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bj = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bk = shl i64 %3, 2                           ; 2 uses
  %i.bl = add i64 %i.bj, %i.i
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.ae
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, -4                       ; 2 uses
  %i.bq = add nsw i64 %i.bj, -4                   ; 2 uses
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = getelementptr i8, ptr %i.h, i64 %i.br
  %i.bt = add i64 %i.bk, %i.bp
  %i.bu = sub i64 %i.bq, %i.bt
  %i.bv = getelementptr i8, ptr %i.h, i64 %i.bu
  %bound0 = icmp ult ptr %i.bs, %i.ai
  %bound1 = icmp ult ptr %i.bv, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bw = mul i64 %n.vec, -4                      ; 2 uses
  %i.bx = getelementptr i8, ptr %i.j, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ai, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.bz ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ai, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep21, i64 -16 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep21, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !343, !alias.scope !13398
  %wide.load22 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !343, !alias.scope !13398
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !343, !alias.scope !13399, !noalias !13398
  store <4 x i32> %wide.load22, ptr %i.cd, align 4, !tbaa !343, !alias.scope !13399, !noalias !13398
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !343, !alias.scope !13398
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !343, !alias.scope !13398
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !13377

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader79

.lr.ph.i40.i.i.i.preheader79:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader79, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader79 ]
  %.079.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader79 ]
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !343
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !343
  store i32 0, ptr %i.cf, align 4, !tbaa !343
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cf
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !13378

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_4test16simple_allocatorINS2_24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check30 = icmp ult i64 %3, 8
  br i1 %min.iters.check30, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck31

vector.memcheck31:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.ci = shl i64 %3, 2                           ; 2 uses
  %i.cj = getelementptr i8, ptr %i.a, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.g, i64 %i.ci
  %bound032 = icmp ult ptr %i.a, %i.ck
  %bound133 = icmp ult ptr %i.g, %i.cj
  %found.conflict34 = and i1 %bound032, %bound133
  br i1 %found.conflict34, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck31
  %n.vec36 = and i64 %3, -8                       ; 3 uses
  %i.cl = shl i64 %n.vec36, 2                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.g, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.a, i64 %i.cl
  %i.co = and i64 %3, 7
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next43, %vector.body37 ] ; 2 uses
  %i.cp = shl i64 %index38, 2                     ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.g, i64 %i.cp ; 3 uses
  %next.gep40 = getelementptr i8, ptr %i.a, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep39, i64 16 ; 2 uses
  %wide.load41 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !343, !alias.scope !13400, !noalias !13401
  %wide.load42 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !343, !alias.scope !13400, !noalias !13401
  %i.cr = getelementptr i8, ptr %next.gep40, i64 16
  store <4 x i32> %wide.load41, ptr %next.gep40, align 4, !tbaa !343, !alias.scope !13402, !noalias !13403
  store <4 x i32> %wide.load42, ptr %i.cr, align 4, !tbaa !343, !alias.scope !13402, !noalias !13403
  store <4 x i32> zeroinitializer, ptr %next.gep39, align 4, !tbaa !343, !alias.scope !13400, !noalias !13401
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !343, !alias.scope !13400, !noalias !13401
  %index.next43 = add nuw i64 %index38, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next43, %n.vec36
  br i1 %i.cs, label %middle.block44, label %vector.body37, !llvm.loop !13384

middle.block44:                                   ; preds = %vector.body37
  %cmp.n45 = icmp eq i64 %3, %n.vec36
  br i1 %cmp.n45, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck31, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block44
  %.ph77 = phi ptr [ %i.g, %vector.memcheck31 ], [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block44 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck31 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cn, %middle.block44 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck31 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.co, %middle.block44 ] ; 4 uses
  %i.ct = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter80 = and i64 %.035.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.cu = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.prol ], [ %.ph77, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cv = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !343, !noalias !13401
  store i32 %i.cw, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !343, !noalias !13401
  store i32 0, ptr %i.cu, align 4, !tbaa !343, !noalias !13401
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter80
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !13385

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph77, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %i.cz = icmp ult i64 %i.ct, 3
  br i1 %i.cz, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.da = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.06.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.db = load i32, ptr %i.da, align 4, !tbaa !343, !noalias !13401
  store i32 %i.db, ptr %.06.i.i.i.i.i, align 4, !tbaa !343, !noalias !13401
  store i32 0, ptr %i.da, align 4, !tbaa !343, !noalias !13401
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !343, !noalias !13401
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !343, !noalias !13401
  store i32 0, ptr %i.dc, align 4, !tbaa !343, !noalias !13401
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !343, !noalias !13401
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !343, !noalias !13401
  store i32 0, ptr %i.df, align 4, !tbaa !343, !noalias !13401
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 12 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dk = add i64 %.035.i.i.i.i.i, -4             ; 2 uses
  %i.dl = load i32, ptr %i.di, align 4, !tbaa !343, !noalias !13401
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !343, !noalias !13401
  store i32 0, ptr %i.di, align 4, !tbaa !343, !noalias !13401
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS2_16simple_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !13386

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i48.i.i.i ], [ %i.do, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !343
  store i32 %i.dp, ptr %.01517.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !343
  %i.dq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ds = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ds, %i.j
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !43

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check55 = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i51.i.i.i.preheader75, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph.i.i51.i.i.i.preheader
  %i.du = getelementptr i8, ptr %i.g, i64 %i.af
  %bound057 = icmp ult ptr %i.a, %i.du
  %bound158 = icmp ult ptr %i.g, %i.j
  %found.conflict59 = and i1 %bound057, %bound158
  br i1 %found.conflict59, label %.lr.ph.i.i51.i.i.i.preheader75, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck56
  %n.vec61 = and i64 %i.ag, -8                    ; 3 uses
  %i.dv = shl nsw i64 %n.vec61, 2                 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.g, i64 %i.dv   ; 2 uses
  %i.dx = getelementptr i8, ptr %i.a, i64 %i.dv
  %i.dy = and i64 %i.ag, 7
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.dz = shl i64 %index63, 2                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.g, i64 %i.dz ; 3 uses
  %next.gep65 = getelementptr i8, ptr %i.a, i64 %i.dz ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE24priv_set_difference_backINS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEEvT_SK_T0_:bb.a
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.v
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.38") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ab, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pre = load ptr, ptr %0, align 8, !tbaa !432
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !421
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.ac = phi ptr [ %i.r, %bb.e ], [ %.pre35, %bb.f ]
  %i.ad = phi ptr [ %i.q, %bb.e ], [ %.pre, %bb.f ] ; 6 uses
  %.not = icmp eq ptr %.0192956, %i.ad            ; 3 uses
  %i.ae = ptrtoint ptr %.0163055 to i64
  %i.af = ptrtoint ptr %.0192956 to i64           ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = ptrtoint ptr %.03154 to i64
  %i.aj = sub i64 %i.ai, %i.af
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 %i.aj
  %.120 = select i1 %.not, ptr %.0192956, ptr %i.ad
  %.117 = select i1 %.not, ptr %.0163055, ptr %i.ah
  %.1 = select i1 %.not, ptr %.03154, ptr %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !421
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.am = icmp slt i32 %i.t, %i.s
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !421
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ %i.r, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0163055, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.aq = phi ptr [ %i.al, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ao, %bb.i ] ; 3 uses
  %i.ar = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.q, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.p, %bb.i ]
  %.221 = phi ptr [ %.120, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.0192956, %bb.i ]
  %.218 = phi ptr [ %.117, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ap, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.03154, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !421   ; 2 uses
  %.not24 = icmp eq ptr %i.aq, %i.at
  br i1 %.not24, label %.loopexit, label %bb.b, !llvm.loop !15117

.loopexit:                                        ; preds = %bb.j, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEESC_RKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.196", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !419    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !434
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !431  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !419    ; 17 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !339

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !432    ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 19 uses
  %i.k = icmp eq ptr %i.j, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter90 = and i64 %3, 1
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.l = load i32, ptr %i.g, align 4, !tbaa !343, !noalias !15150
  store i32 %i.l, ptr %i.j, align 4, !tbaa !343, !noalias !15150
  store i32 0, ptr %i.g, align 4, !tbaa !343, !noalias !15150
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !15150
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !15150
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr93 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.unr93, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.015.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !343, !noalias !15150
  store i32 %i.t, ptr %.01214.i.i.i.i, align 4, !tbaa !343, !noalias !15150
  store i32 0, ptr %i.s, align 4, !tbaa !343, !noalias !15150
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !15150 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !15150
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !343, !noalias !15150
  store i32 %i.y, ptr %i.x, align 4, !tbaa !343, !noalias !15150
  store i32 0, ptr %i.w, align 4, !tbaa !343, !noalias !15150
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !15150
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.ac = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !260

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !339

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ag, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 0, %3
  %i.ai = getelementptr [4 x i8], ptr %i.j, i64 %i.ah ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.aj = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !343
  store i32 %i.ak, ptr %i.j, align 4, !tbaa !343
  store i32 0, ptr %i.ai, align 4, !tbaa !343
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !343
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !343
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !343
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !343
  store i32 0, ptr %i.at, align 4, !tbaa !343
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !15126

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %i.bb = shl nuw nsw i64 %i.e, 2
  %i.bc = shl i64 %3, 2
  %i.bd = add i64 %i.bb, %i.i
  %i.be = add i64 %i.bd, -4
  %i.bf = add i64 %i.bc, %i.ae
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bj = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bk = shl i64 %3, 2                           ; 2 uses
  %i.bl = add i64 %i.bj, %i.i
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.ae
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, -4                       ; 2 uses
  %i.bq = add nsw i64 %i.bj, -4                   ; 2 uses
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = getelementptr i8, ptr %i.h, i64 %i.br
  %i.bt = add i64 %i.bk, %i.bp
  %i.bu = sub i64 %i.bq, %i.bt
  %i.bv = getelementptr i8, ptr %i.h, i64 %i.bu
  %bound0 = icmp ult ptr %i.bs, %i.ai
  %bound1 = icmp ult ptr %i.bv, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bw = mul i64 %n.vec, -4                      ; 2 uses
  %i.bx = getelementptr i8, ptr %i.j, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ai, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.bz ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ai, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep21, i64 -16 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep21, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !343, !alias.scope !15151
  %wide.load22 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !343, !alias.scope !15151
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !343, !alias.scope !15152, !noalias !15151
  store <4 x i32> %wide.load22, ptr %i.cd, align 4, !tbaa !343, !alias.scope !15152, !noalias !15151
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !343, !alias.scope !15151
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !343, !alias.scope !15151
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !15130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader79

.lr.ph.i40.i.i.i.preheader79:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader79, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader79 ]
  %.079.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader79 ]
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !343
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !343
  store i32 0, ptr %i.cf, align 4, !tbaa !343
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cf
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !15131

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i.i.i
  %min.iters.check30 = icmp ult i64 %3, 8
  br i1 %min.iters.check30, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck31

vector.memcheck31:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.ci = shl i64 %3, 2                           ; 2 uses
  %i.cj = getelementptr i8, ptr %i.a, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.g, i64 %i.ci
  %bound032 = icmp ult ptr %i.a, %i.ck
  %bound133 = icmp ult ptr %i.g, %i.cj
  %found.conflict34 = and i1 %bound032, %bound133
  br i1 %found.conflict34, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck31
  %n.vec36 = and i64 %3, -8                       ; 3 uses
  %i.cl = shl i64 %n.vec36, 2                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.g, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.a, i64 %i.cl
  %i.co = and i64 %3, 7
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next43, %vector.body37 ] ; 2 uses
  %i.cp = shl i64 %index38, 2                     ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.g, i64 %i.cp ; 3 uses
  %next.gep40 = getelementptr i8, ptr %i.a, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep39, i64 16 ; 2 uses
  %wide.load41 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !343, !alias.scope !15153, !noalias !15154
  %wide.load42 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !343, !alias.scope !15153, !noalias !15154
  %i.cr = getelementptr i8, ptr %next.gep40, i64 16
  store <4 x i32> %wide.load41, ptr %next.gep40, align 4, !tbaa !343, !alias.scope !15155, !noalias !15156
  store <4 x i32> %wide.load42, ptr %i.cr, align 4, !tbaa !343, !alias.scope !15155, !noalias !15156
  store <4 x i32> zeroinitializer, ptr %next.gep39, align 4, !tbaa !343, !alias.scope !15153, !noalias !15154
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !343, !alias.scope !15153, !noalias !15154
  %index.next43 = add nuw i64 %index38, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next43, %n.vec36
  br i1 %i.cs, label %middle.block44, label %vector.body37, !llvm.loop !15137

middle.block44:                                   ; preds = %vector.body37
  %cmp.n45 = icmp eq i64 %3, %n.vec36
  br i1 %cmp.n45, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck31, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block44
  %.ph77 = phi ptr [ %i.g, %vector.memcheck31 ], [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block44 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck31 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cn, %middle.block44 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck31 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.co, %middle.block44 ] ; 4 uses
  %i.ct = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter80 = and i64 %.035.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.cu = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.prol ], [ %.ph77, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cv = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !343, !noalias !15154
  store i32 %i.cw, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !343, !noalias !15154
  store i32 0, ptr %i.cu, align 4, !tbaa !343, !noalias !15154
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter80
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !15138

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph77, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %i.cz = icmp ult i64 %i.ct, 3
  br i1 %i.cz, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.da = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.06.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.db = load i32, ptr %i.da, align 4, !tbaa !343, !noalias !15154
  store i32 %i.db, ptr %.06.i.i.i.i.i, align 4, !tbaa !343, !noalias !15154
  store i32 0, ptr %i.da, align 4, !tbaa !343, !noalias !15154
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !343, !noalias !15154
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !343, !noalias !15154
  store i32 0, ptr %i.dc, align 4, !tbaa !343, !noalias !15154
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !343, !noalias !15154
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !343, !noalias !15154
  store i32 0, ptr %i.df, align 4, !tbaa !343, !noalias !15154
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 12 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dk = add i64 %.035.i.i.i.i.i, -4             ; 2 uses
  %i.dl = load i32, ptr %i.di, align 4, !tbaa !343, !noalias !15154
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !343, !noalias !15154
  store i32 0, ptr %i.di, align 4, !tbaa !343, !noalias !15154
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS4_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15139

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i48.i.i.i ], [ %i.do, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !343
  store i32 %i.dp, ptr %.01517.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !343
  %i.dq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ds = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ds, %i.j
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !54

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check55 = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i51.i.i.i.preheader75, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph.i.i51.i.i.i.preheader
  %i.du = getelementptr i8, ptr %i.g, i64 %i.af
  %bound057 = icmp ult ptr %i.a, %i.du
  %bound158 = icmp ult ptr %i.g, %i.j
  %found.conflict59 = and i1 %bound057, %bound158
  br i1 %found.conflict59, label %.lr.ph.i.i51.i.i.i.preheader75, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck56
  %n.vec61 = and i64 %i.ag, -8                    ; 3 uses
  %i.dv = shl nsw i64 %n.vec61, 2                 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.g, i64 %i.dv   ; 2 uses
  %i.dx = getelementptr i8, ptr %i.a, i64 %i.dv
  %i.dy = and i64 %i.ag, 7
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.dz = shl i64 %index63, 2                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.g, i64 %i.dz ; 3 uses
  %next.gep65 = getelementptr i8, ptr %i.a, i64 %i.dz ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_vvEEEEvRT_m:bb.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i94.prol.loopexit, label %.lr.ph.i94.prol, !llvm.loop !15248

.lr.ph.i94.prol.loopexit:                         ; preds = %.lr.ph.i94.prol, %.lr.ph.i94.preheader
  %.05.i95.unr = phi i64 [ %i.by, %.lr.ph.i94.preheader ], [ %i.bz, %.lr.ph.i94.prol ]
  %storemerge4.i96.unr = phi ptr [ %i.bs, %.lr.ph.i94.preheader ], [ %i.cc, %.lr.ph.i94.prol ]
  %i.cd = sub i64 %i.bp, %i.bx
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.lr.ph.i94.prol.loopexit, %.lr.ph.i94
  %.05.i95 = phi i64 [ %i.cm, %.lr.ph.i94 ], [ %.05.i95.unr, %.lr.ph.i94.prol.loopexit ]
  %storemerge4.i96 = phi ptr [ %i.co, %.lr.ph.i94 ], [ %storemerge4.i96.unr, %.lr.ph.i94.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i96, align 4, !tbaa !343
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341 ; 4 uses
  %i.cg = add i32 %i.cf, -1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 4
  store i32 -2147483648, ptr %i.ch, align 4, !tbaa !343
  %i.ci = add i32 %i.cf, -2
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 8
  store i32 -2147483648, ptr %i.cj, align 4, !tbaa !343
  %i.ck = add i32 %i.cf, -3
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 12
  %i.cm = add i64 %.05.i95, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.cl, align 4, !tbaa !343
  %i.cn = add i32 %i.cf, -4
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 16
  %.not.i97.3 = icmp eq i64 %i.cm, 0
  br i1 %.not.i97.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, label %.lr.ph.i94, !llvm.loop !56

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98: ; preds = %.lr.ph.i94.prol.loopexit, %.lr.ph.i94, %._crit_edge
  store i64 %i.bp, ptr %i.bu, align 8, !tbaa !439
  br label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0113 = phi i64 [ %i.cx, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %.0113 ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %.0113 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !343
  store i32 0, ptr %i.cp, align 4, !tbaa !343
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !343
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !343
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !343
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.cx = add nuw i64 %.0113, 1                   ; 2 uses
  %.not79 = icmp eq i64 %i.cx, %i.bp
  br i1 %.not79, label %._crit_edge, label %.lr.ph, !llvm.loop !15249

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE9priv_swapINS0_17small_vector_baseIS3_vvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !419    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !440
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !442  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !339

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !438    ; 7 uses
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
  %i.k = load i32, ptr %4, align 4, !tbaa !343
  store i32 %i.k, ptr %i.i, align 4, !tbaa !343
  store i32 0, ptr %4, align 4, !tbaa !343
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
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
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !343
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !343
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !343
  store i32 %i.w, ptr %i.v, align 4, !tbaa !343
  store i32 0, ptr %i.u, align 4, !tbaa !343
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !262

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !339

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
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !343
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !343
  store i32 0, ptr %i.ag, align 4, !tbaa !343
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
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
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !343
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !343
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !343
  store i32 %i.au, ptr %i.as, align 4, !tbaa !343
  store i32 0, ptr %i.ar, align 4, !tbaa !343
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !261

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.az = shl nuw nsw i64 %i.e, 2
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
  %i.bh = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.h
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ac
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4                       ; 2 uses
  %i.bo = add nsw i64 %i.bh, -4                   ; 2 uses
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
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !343, !alias.scope !15269
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !343, !alias.scope !15269
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !343, !alias.scope !15270, !noalias !15269
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !343, !alias.scope !15270, !noalias !15269
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !343, !alias.scope !15269
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !343, !alias.scope !15269
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !15255

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
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !343
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !343
  store i32 0, ptr %i.cd, align 4, !tbaa !343
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !15256

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
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !343, !alias.scope !15271
  %wide.load44 = load <4 x i32>, ptr %i.co, align 4, !tbaa !343, !alias.scope !15271
  %i.cp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !343, !alias.scope !15272, !noalias !15271
  store <4 x i32> %wide.load44, ptr %i.cp, align 4, !tbaa !343, !alias.scope !15272, !noalias !15271
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !343, !alias.scope !15271
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !343, !alias.scope !15271
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cq, label %middle.block46, label %vector.body39, !llvm.loop !15260

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
  %i.ct = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !343
  store i32 %i.ct, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !343
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !343
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !15261

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
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !343
  store i32 %i.cx, ptr %.048.i.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !343
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !343
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !343
  store i32 0, ptr %i.cy, align 4, !tbaa !343
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !343
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !343
  store i32 0, ptr %i.db, align 4, !tbaa !343
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dg = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !343
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !343
  store i32 0, ptr %i.de, align 4, !tbaa !343
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15262

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i48.i.i.i ], [ %i.dk, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dl = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !343
  store i32 %i.dl, ptr %.01517.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !343
  %i.dm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.do, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !63

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
begin_hunk_3_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE24priv_set_difference_backINS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEEvT_SN_T0_:bb.a
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.v
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS7_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.38") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ab, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.pre = load ptr, ptr %0, align 8, !tbaa !438
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !421
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.ac = phi ptr [ %i.r, %bb.e ], [ %.pre35, %bb.f ]
  %i.ad = phi ptr [ %i.q, %bb.e ], [ %.pre, %bb.f ] ; 6 uses
  %.not = icmp eq ptr %.0192956, %i.ad            ; 3 uses
  %i.ae = ptrtoint ptr %.0163055 to i64
  %i.af = ptrtoint ptr %.0192956 to i64           ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = ptrtoint ptr %.03154 to i64
  %i.aj = sub i64 %i.ai, %i.af
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 %i.aj
  %.120 = select i1 %.not, ptr %.0192956, ptr %i.ad
  %.117 = select i1 %.not, ptr %.0163055, ptr %i.ah
  %.1 = select i1 %.not, ptr %.03154, ptr %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !421
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.am = icmp slt i32 %i.t, %i.s
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !421
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ %i.r, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0163055, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.aq = phi ptr [ %i.al, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ao, %bb.i ] ; 3 uses
  %i.ar = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.q, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.p, %bb.i ]
  %.221 = phi ptr [ %.120, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.0192956, %bb.i ]
  %.218 = phi ptr [ %.117, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ap, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.03154, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !421   ; 2 uses
  %.not24 = icmp eq ptr %i.aq, %i.at
  br i1 %.not24, label %.loopexit, label %bb.b, !llvm.loop !15283

.loopexit:                                        ; preds = %bb.j, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEESF_RKSE_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.38") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.206", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !419    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !440
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !442  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !419    ; 17 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !339

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !438    ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 19 uses
  %i.k = icmp eq ptr %i.j, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter90 = and i64 %3, 1
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.l = load i32, ptr %i.g, align 4, !tbaa !343, !noalias !15315
  store i32 %i.l, ptr %i.j, align 4, !tbaa !343, !noalias !15315
  store i32 0, ptr %i.g, align 4, !tbaa !343, !noalias !15315
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !15315
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !15315
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr93 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.unr93, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.015.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !343, !noalias !15315
  store i32 %i.t, ptr %.01214.i.i.i.i, align 4, !tbaa !343, !noalias !15315
  store i32 0, ptr %i.s, align 4, !tbaa !343, !noalias !15315
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !15315 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !15315
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !343, !noalias !15315
  store i32 %i.y, ptr %i.x, align 4, !tbaa !343, !noalias !15315
  store i32 0, ptr %i.w, align 4, !tbaa !343, !noalias !15315
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341, !noalias !15315
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.ac = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !263

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !339

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ag, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 0, %3
  %i.ai = getelementptr [4 x i8], ptr %i.j, i64 %i.ah ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.aj = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !343
  store i32 %i.ak, ptr %i.j, align 4, !tbaa !343
  store i32 0, ptr %i.ai, align 4, !tbaa !343
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !343
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !343
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !343
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !343
  store i32 0, ptr %i.at, align 4, !tbaa !343
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !261

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.bb = shl nuw nsw i64 %i.e, 2
  %i.bc = shl i64 %3, 2
  %i.bd = add i64 %i.bb, %i.i
  %i.be = add i64 %i.bd, -4
  %i.bf = add i64 %i.bc, %i.ae
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bg, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader79, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bj = shl nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bk = shl i64 %3, 2                           ; 2 uses
  %i.bl = add i64 %i.bj, %i.i
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.ae
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, -4                       ; 2 uses
  %i.bq = add nsw i64 %i.bj, -4                   ; 2 uses
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = getelementptr i8, ptr %i.h, i64 %i.br
  %i.bt = add i64 %i.bk, %i.bp
  %i.bu = sub i64 %i.bq, %i.bt
  %i.bv = getelementptr i8, ptr %i.h, i64 %i.bu
  %bound0 = icmp ult ptr %i.bs, %i.ai
  %bound1 = icmp ult ptr %i.bv, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader79, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bi, 9223372036854775800     ; 3 uses
  %i.bw = mul i64 %n.vec, -4                      ; 2 uses
  %i.bx = getelementptr i8, ptr %i.j, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.ai, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.bz ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ai, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep21, i64 -16 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %next.gep21, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !343, !alias.scope !15316
  %wide.load22 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !343, !alias.scope !15316
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !343, !alias.scope !15317, !noalias !15316
  store <4 x i32> %wide.load22, ptr %i.cd, align 4, !tbaa !343, !alias.scope !15317, !noalias !15316
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !343, !alias.scope !15316
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !343, !alias.scope !15316
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !15295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader79

.lr.ph.i40.i.i.i.preheader79:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader79, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader79 ]
  %.079.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader79 ]
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !343
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !343
  store i32 0, ptr %i.cf, align 4, !tbaa !343
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cf
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !15296

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check30 = icmp ult i64 %3, 8
  br i1 %min.iters.check30, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck31

vector.memcheck31:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.ci = shl i64 %3, 2                           ; 2 uses
  %i.cj = getelementptr i8, ptr %i.a, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.g, i64 %i.ci
  %bound032 = icmp ult ptr %i.a, %i.ck
  %bound133 = icmp ult ptr %i.g, %i.cj
  %found.conflict34 = and i1 %bound032, %bound133
  br i1 %found.conflict34, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck31
  %n.vec36 = and i64 %3, -8                       ; 3 uses
  %i.cl = shl i64 %n.vec36, 2                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.g, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.a, i64 %i.cl
  %i.co = and i64 %3, 7
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next43, %vector.body37 ] ; 2 uses
  %i.cp = shl i64 %index38, 2                     ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.g, i64 %i.cp ; 3 uses
  %next.gep40 = getelementptr i8, ptr %i.a, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep39, i64 16 ; 2 uses
  %wide.load41 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !343, !alias.scope !15318, !noalias !15319
  %wide.load42 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !343, !alias.scope !15318, !noalias !15319
  %i.cr = getelementptr i8, ptr %next.gep40, i64 16
  store <4 x i32> %wide.load41, ptr %next.gep40, align 4, !tbaa !343, !alias.scope !15320, !noalias !15321
  store <4 x i32> %wide.load42, ptr %i.cr, align 4, !tbaa !343, !alias.scope !15320, !noalias !15321
  store <4 x i32> zeroinitializer, ptr %next.gep39, align 4, !tbaa !343, !alias.scope !15318, !noalias !15319
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !343, !alias.scope !15318, !noalias !15319
  %index.next43 = add nuw i64 %index38, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next43, %n.vec36
  br i1 %i.cs, label %middle.block44, label %vector.body37, !llvm.loop !15302

middle.block44:                                   ; preds = %vector.body37
  %cmp.n45 = icmp eq i64 %3, %n.vec36
  br i1 %cmp.n45, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck31, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block44
  %.ph77 = phi ptr [ %i.g, %vector.memcheck31 ], [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block44 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck31 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cn, %middle.block44 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck31 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.co, %middle.block44 ] ; 4 uses
  %i.ct = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter80 = and i64 %.035.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  br i1 %lcmp.mod81.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.cu = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.prol ], [ %.ph77, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cv = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !343, !noalias !15319
  store i32 %i.cw, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !343, !noalias !15319
  store i32 0, ptr %i.cu, align 4, !tbaa !343, !noalias !15319
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter80
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !15303

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph77, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %i.cz = icmp ult i64 %i.ct, 3
  br i1 %i.cz, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.da = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.06.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.db = load i32, ptr %i.da, align 4, !tbaa !343, !noalias !15319
  store i32 %i.db, ptr %.06.i.i.i.i.i, align 4, !tbaa !343, !noalias !15319
  store i32 0, ptr %i.da, align 4, !tbaa !343, !noalias !15319
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !343, !noalias !15319
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !343, !noalias !15319
  store i32 0, ptr %i.dc, align 4, !tbaa !343, !noalias !15319
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !343, !noalias !15319
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !343, !noalias !15319
  store i32 0, ptr %i.df, align 4, !tbaa !343, !noalias !15319
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 12 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dk = add i64 %.035.i.i.i.i.i, -4             ; 2 uses
  %i.dl = load i32, ptr %i.di, align 4, !tbaa !343, !noalias !15319
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !343, !noalias !15319
  store i32 0, ptr %i.di, align 4, !tbaa !343, !noalias !15319
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_13new_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSE_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15304

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i48.i.i.i ], [ %i.do, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !343
  store i32 %i.dp, ptr %.01517.i.i.i.i, align 4, !tbaa !343
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !343
  %i.dq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !341
  %i.ds = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ds, %i.j
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !63

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check55 = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i51.i.i.i.preheader75, label %vector.memcheck56

vector.memcheck56:                                ; preds = %.lr.ph.i.i51.i.i.i.preheader
  %i.du = getelementptr i8, ptr %i.g, i64 %i.af
  %bound057 = icmp ult ptr %i.a, %i.du
  %bound158 = icmp ult ptr %i.g, %i.j
  %found.conflict59 = and i1 %bound057, %bound158
  br i1 %found.conflict59, label %.lr.ph.i.i51.i.i.i.preheader75, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck56
  %n.vec61 = and i64 %i.ag, -8                    ; 3 uses
  %i.dv = shl nsw i64 %n.vec61, 2                 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.g, i64 %i.dv   ; 2 uses
  %i.dx = getelementptr i8, ptr %i.a, i64 %i.dv
  %i.dy = and i64 %i.ag, 7
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.dz = shl i64 %index63, 2                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.g, i64 %i.dz ; 3 uses
  %next.gep65 = getelementptr i8, ptr %i.a, i64 %i.dz ; 2 uses
end_hunk_3
