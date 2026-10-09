Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_small_vector_test?download=true
inline.NumInlined: 2912
inline.NumDeleted: 1057
loop-unroll.NumRuntimeUnrolled: 100
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_m:bb.a
  %i.ci = add i32 %i.cf, -2
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 8
  store i32 -2147483648, ptr %i.cj, align 4, !tbaa !79
  %i.ck = add i32 %i.cf, -3
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 12
  %i.cm = add i64 %.05.i95, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.cl, align 4, !tbaa !79
  %i.cn = add i32 %i.cf, -4
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 16
  %.not.i97.3 = icmp eq i64 %i.cm, 0
  br i1 %.not.i97.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, label %.lr.ph.i94, !llvm.loop !1

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98: ; preds = %.lr.ph.i94.prol.loopexit, %.lr.ph.i94, %._crit_edge
  store i64 %i.bp, ptr %i.bu, align 8, !tbaa !76
  br label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0113 = phi i64 [ %i.cx, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %.0113 ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %.0113 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !79
  store i32 0, ptr %i.cp, align 4, !tbaa !79
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !79
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !79
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !79
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cx = add nuw i64 %.0113, 1                   ; 2 uses
  %.not79 = icmp eq i64 %i.cx, %i.bp
  br i1 %.not79, label %._crit_edge, label %.lr.ph, !llvm.loop !563

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE9priv_swapINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !85     ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !82   ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !75     ; 7 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.j = load i32, ptr %4, align 4, !tbaa !79
  store i32 %i.j, ptr %i.h, align 4, !tbaa !79
  store i32 0, ptr %4, align 4, !tbaa !79
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp eq i64 %3, 1
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.q = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !79
  store i32 %i.q, ptr %.01417.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !79
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !79
  store i32 %i.v, ptr %i.u, align 4, !tbaa !79
  store i32 0, ptr %i.t, align 4, !tbaa !79
  %i.w = add i32 %i.r, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.z = add i64 %.018.i.i.i.i, -2                ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !11

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !32

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
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !79
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !79
  store i32 0, ptr %i.af, align 4, !tbaa !79
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ag, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.af, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %i.am = icmp eq i64 %3, 1
  br i1 %i.am, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.an = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !79
  store i32 %i.an, ptr %.01618.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !79
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.as = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !79
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !79
  store i32 0, ptr %i.aq, align 4, !tbaa !79
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !10

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.af
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
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
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !79, !alias.scope !583
  %wide.load24 = load <4 x i32>, ptr %i.by, align 4, !tbaa !79, !alias.scope !583
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !79, !alias.scope !584, !noalias !583
  store <4 x i32> %wide.load24, ptr %i.ca, align 4, !tbaa !79, !alias.scope !584, !noalias !583
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !79, !alias.scope !583
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !79, !alias.scope !583
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !569

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
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !79
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !79
  store i32 0, ptr %i.cc, align 4, !tbaa !79
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !570

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
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
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !79, !alias.scope !585
  %wide.load44 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !79, !alias.scope !585
  %i.co = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !79, !alias.scope !586, !noalias !585
  store <4 x i32> %wide.load44, ptr %i.co, align 4, !tbaa !79, !alias.scope !586, !noalias !585
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !79, !alias.scope !585
  store <4 x i32> zeroinitializer, ptr %i.cn, align 4, !tbaa !79, !alias.scope !585
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cp, label %middle.block46, label %vector.body39, !llvm.loop !574

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

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
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 %i.cs, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !575

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.i.prol ]
  %i.cv = icmp ult i64 %i.cq, 3
  br i1 %i.cv, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cw = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  store i32 %i.cw, ptr %.048.i.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !79
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !79
  store i32 0, ptr %i.cx, align 4, !tbaa !79
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !79
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !79
  store i32 0, ptr %i.da, align 4, !tbaa !79
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.df = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !79
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !79
  store i32 0, ptr %i.dd, align 4, !tbaa !79
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !576

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dn, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.dj, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dk = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  store i32 %i.dk, ptr %.01517.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  %i.dl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dn, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !12

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
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !79, !alias.scope !587
  %wide.load69 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !79, !alias.scope !587
  %i.dw = getelementptr i8, ptr %next.gep66, i64 16
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_Lj2ELj0EEEvEEEEvRT_m:bb.a
  %i.ci = add i32 %i.cf, -2
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge4.i93, i64 8
  store i32 -2147483648, ptr %i.cj, align 4, !tbaa !79
  %i.ck = add i32 %i.cf, -3
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge4.i93, i64 12
  %i.cm = add i64 %.05.i92, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.cl, align 4, !tbaa !79
  %i.cn = add i32 %i.cf, -4
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i93, i64 16
  %.not.i94.3 = icmp eq i64 %i.cm, 0
  br i1 %.not.i94.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95, label %.lr.ph.i91, !llvm.loop !6

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95: ; preds = %.lr.ph.i91.prol.loopexit, %.lr.ph.i91, %._crit_edge
  store i64 %i.bp, ptr %i.bu, align 8, !tbaa !88
  br label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0104 = phi i64 [ %i.cx, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %.0104 ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %.0104 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !79
  store i32 0, ptr %i.cp, align 4, !tbaa !79
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !79
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !79
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !79
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.cx = add nuw i64 %.0104, 1                   ; 2 uses
  %.not79 = icmp eq i64 %i.cx, %i.bp
  br i1 %.not79, label %._crit_edge, label %.lr.ph, !llvm.loop !638

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE9priv_swapINS0_17small_vector_baseIS3_NS5_IS3_Lj2ELj0EEEvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !85     ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91   ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !87     ; 7 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.i = icmp eq ptr %i.h, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.j = load i32, ptr %4, align 4, !tbaa !79
  store i32 %i.j, ptr %i.h, align 4, !tbaa !79
  store i32 0, ptr %4, align 4, !tbaa !79
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %i.p = icmp eq i64 %3, 1
  br i1 %i.p, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.q = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !79
  store i32 %i.q, ptr %.01417.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !79
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62 ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !79
  store i32 %i.v, ptr %i.u, align 4, !tbaa !79
  store i32 0, ptr %i.t, align 4, !tbaa !79
  %i.w = add i32 %i.r, 2
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.z = add i64 %.018.i.i.i.i, -2                ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !14

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !32

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
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !79
  store i32 %i.ah, ptr %i.h, align 4, !tbaa !79
  store i32 0, ptr %i.af, align 4, !tbaa !79
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ag, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.af, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.h, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %i.am = icmp eq i64 %3, 1
  br i1 %i.am, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.an = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !79
  store i32 %i.an, ptr %.01618.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !79
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.as = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !79
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !79
  store i32 0, ptr %i.aq, align 4, !tbaa !79
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !15

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.af
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
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
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !79, !alias.scope !658
  %wide.load24 = load <4 x i32>, ptr %i.by, align 4, !tbaa !79, !alias.scope !658
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !79, !alias.scope !659, !noalias !658
  store <4 x i32> %wide.load24, ptr %i.ca, align 4, !tbaa !79, !alias.scope !659, !noalias !658
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !79, !alias.scope !658
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !79, !alias.scope !658
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !644

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
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !79
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !79
  store i32 0, ptr %i.cc, align 4, !tbaa !79
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !645

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
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
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !79, !alias.scope !660
  %wide.load44 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !79, !alias.scope !660
  %i.co = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !79, !alias.scope !661, !noalias !660
  store <4 x i32> %wide.load44, ptr %i.co, align 4, !tbaa !79, !alias.scope !661, !noalias !660
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !79, !alias.scope !660
  store <4 x i32> zeroinitializer, ptr %i.cn, align 4, !tbaa !79, !alias.scope !660
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cp, label %middle.block46, label %vector.body39, !llvm.loop !649

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

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
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 %i.cs, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !79
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !650

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cr, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.i.prol ]
  %i.cv = icmp ult i64 %i.cq, 3
  br i1 %i.cv, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cw = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  store i32 %i.cw, ptr %.048.i.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !79
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !79
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !79
  store i32 0, ptr %i.cx, align 4, !tbaa !79
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !79
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !79
  store i32 0, ptr %i.da, align 4, !tbaa !79
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.df = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !79
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !79
  store i32 0, ptr %i.dd, align 4, !tbaa !79
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !651

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dn, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.dj, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dk = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  store i32 %i.dk, ptr %.01517.i.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !79
  %i.dl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !62
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dn, %i.h
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !13

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
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 4, !tbaa !79, !alias.scope !662
  %wide.load69 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !79, !alias.scope !662
  %i.dw = getelementptr i8, ptr %next.gep66, i64 16
end_hunk_1
