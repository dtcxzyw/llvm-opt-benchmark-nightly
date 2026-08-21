Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_small_vector_test?download=true
inline.NumInlined: 2912
inline.NumDeleted: 1057
loop-unroll.NumRuntimeUnrolled: 100
loop-unroll.NumUnrolled: 100
begin_hunk_0_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_m:bb.a

.lr.ph.i94.prol.loopexit:                         ; preds = %.lr.ph.i94.prol, %.lr.ph.i94.preheader
  %.05.i95.unr = phi i64 [ %i.by, %.lr.ph.i94.preheader ], [ %i.bz, %.lr.ph.i94.prol ]
  %storemerge4.i96.unr = phi ptr [ %i.bs, %.lr.ph.i94.preheader ], [ %i.cc, %.lr.ph.i94.prol ]
  %i.cd = sub i64 %i.bp, %i.bx
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %.lr.ph.i94.prol.loopexit, %.lr.ph.i94
  %.05.i95 = phi i64 [ %i.cm, %.lr.ph.i94 ], [ %.05.i95.unr, %.lr.ph.i94.prol.loopexit ]
  %storemerge4.i96 = phi ptr [ %i.co, %.lr.ph.i94 ], [ %storemerge4.i96.unr, %.lr.ph.i94.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i96, align 4, !tbaa !309
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176 ; 4 uses
  %i.cg = add i32 %i.cf, -1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 4
  store i32 -2147483648, ptr %i.ch, align 4, !tbaa !309
  %i.ci = add i32 %i.cf, -2
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 8
  store i32 -2147483648, ptr %i.cj, align 4, !tbaa !309
  %i.ck = add i32 %i.cf, -3
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 12
  %i.cm = add i64 %.05.i95, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.cl, align 4, !tbaa !309
  %i.cn = add i32 %i.cf, -4
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i96, i64 16
  %.not.i97.3 = icmp eq i64 %i.cm, 0
  br i1 %.not.i97.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, label %.lr.ph.i94, !llvm.loop !317

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98: ; preds = %.lr.ph.i94.prol.loopexit, %.lr.ph.i94, %._crit_edge
  store i64 %i.bp, ptr %i.bu, align 8, !tbaa !307
  br label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0113 = phi i64 [ %i.cx, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %.0113 ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %.0113 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !309
  store i32 0, ptr %i.cp, align 4, !tbaa !309
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !309
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !309
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !309
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.cx = add nuw i64 %.0113, 1                   ; 2 uses
  %.not79 = icmp eq i64 %i.cx, %i.bp
  br i1 %.not79, label %._crit_edge, label %.lr.ph, !llvm.loop !557

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE9priv_swapINS0_17small_vector_baseIS3_NS5_IS3_EEvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit98, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !333    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !308
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !314  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !304    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter83 = and i64 %3, 1
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !309
  store i32 %i.k, ptr %i.i, align 4, !tbaa !309
  store i32 0, ptr %4, align 4, !tbaa !309
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !309
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !309
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !309
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !309
  store i32 %i.w, ptr %i.v, align 4, !tbaa !309
  store i32 0, ptr %i.u, align 4, !tbaa !309
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !558

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !309
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !309
  store i32 0, ptr %i.ag, align 4, !tbaa !309
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !309
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !309
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !309
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !309
  store i32 %i.au, ptr %i.as, align 4, !tbaa !309
  store i32 0, ptr %i.ar, align 4, !tbaa !309
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !548

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.az = shl nuw nsw i64 %i.e, 2
  %5 = add i64 %i.az, %i.h
  %i.ba = add i64 %5, -4
  %6 = shl i64 %3, 2
  %i.bb = add i64 %6, %i.ac
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bf = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = add i64 %i.bf, %i.h
  %i.bi = add i64 %i.bh, -4
  %i.bj = shl i64 %3, 2                           ; 2 uses
  %i.bk = add i64 %i.bj, %i.ac
  %i.bl = sub i64 %i.bi, %i.bk
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = sub i64 %i.bg, %i.bm
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.bn
  %i.bo = add nsw i64 %i.bf, -4
  %i.bp = add i64 %i.bj, %i.bm
  %i.bq = sub i64 %i.bo, %i.bp
  %scevgep22 = getelementptr i8, ptr %i.g, i64 %i.bq
  %bound0 = icmp ult ptr %scevgep, %i.ag
  %bound1 = icmp ult ptr %scevgep22, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.br = mul i64 %n.vec, -4                      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ag, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bu ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !309, !alias.scope !559
  %wide.load24 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !309, !alias.scope !559
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bx, align 4, !tbaa !309, !alias.scope !562, !noalias !559
  store <4 x i32> %wide.load24, ptr %i.by, align 4, !tbaa !309, !alias.scope !562, !noalias !559
  store <4 x i32> zeroinitializer, ptr %i.bv, align 4, !tbaa !309, !alias.scope !559
  store <4 x i32> zeroinitializer, ptr %i.bw, align 4, !tbaa !309, !alias.scope !559
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !564

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader74

.lr.ph.i40.i.i.i.preheader74:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader74, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %.079.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %i.ca = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !309
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !309
  store i32 0, ptr %i.ca, align 4, !tbaa !309
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ca
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !565

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS3_16simple_allocatorIvEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check33 = icmp ult i64 %3, 8
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cd = shl i64 %3, 2                           ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.a, i64 %i.cd
  %scevgep28 = getelementptr i8, ptr %4, i64 %i.cd
  %bound029 = icmp ult ptr %i.a, %scevgep28
  %bound130 = icmp ult ptr %4, %scevgep27
  %found.conflict31 = and i1 %bound029, %bound130
  br i1 %found.conflict31, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.memcheck26
  %n.vec35 = and i64 %3, -8                       ; 3 uses
  %i.ce = and i64 %3, 7
  %i.cf = shl i64 %n.vec35, 2                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %4, i64 %i.cf
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next42, %vector.body36 ] ; 2 uses
  %i.ci = shl i64 %index37, 2                     ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.a, i64 %i.ci ; 2 uses
  %next.gep39 = getelementptr i8, ptr %4, i64 %i.ci ; 3 uses
  %i.cj = getelementptr i8, ptr %next.gep39, i64 16 ; 2 uses
  %wide.load40 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !309, !alias.scope !566
  %wide.load41 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !309, !alias.scope !566
  %i.ck = getelementptr i8, ptr %next.gep38, i64 16
  store <4 x i32> %wide.load40, ptr %next.gep38, align 4, !tbaa !309, !alias.scope !569, !noalias !566
  store <4 x i32> %wide.load41, ptr %i.ck, align 4, !tbaa !309, !alias.scope !569, !noalias !566
  store <4 x i32> zeroinitializer, ptr %next.gep39, align 4, !tbaa !309, !alias.scope !566
  store <4 x i32> zeroinitializer, ptr %i.cj, align 4, !tbaa !309, !alias.scope !566
  %index.next42 = add nuw i64 %index37, 8         ; 2 uses
  %i.cl = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.cl, label %middle.block43, label %vector.body36, !llvm.loop !571

middle.block43:                                   ; preds = %vector.body36
  %cmp.n44 = icmp eq i64 %3, %n.vec35
  br i1 %cmp.n44, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck26, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block43
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck26 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ce, %middle.block43 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck26 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cg, %middle.block43 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck26 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ch, %middle.block43 ] ; 2 uses
  %i.cm = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter75 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cn = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.co = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !309
  store i32 %i.co, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !309
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !309
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter75
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !572

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %i.cr = icmp ult i64 %i.cm, 3
  br i1 %i.cr, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !309
  store i32 %i.cs, ptr %.048.i.i.i.i.i, align 4, !tbaa !309
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !309
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !309
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !309
  store i32 0, ptr %i.ct, align 4, !tbaa !309
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !309
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !309
  store i32 0, ptr %i.cw, align 4, !tbaa !309
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = load i32, ptr %i.cz, align 4, !tbaa !309
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !309
  store i32 0, ptr %i.cz, align 4, !tbaa !309
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS2_16simple_allocatorIvEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !573

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dj, %.lr.ph.i49.i.i.i ], [ %i.a, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i49.i.i.i ], [ %i.df, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dg = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !309
  store i32 %i.dg, ptr %.01517.i.i.i.i, align 4, !tbaa !309
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !309
  %i.dh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.dj = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.dj, %i.i
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i53.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !574

.lr.ph.i.i53.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check55 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i53.i.i.i.preheader71, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.i.i53.i.i.i.preheader
  %scevgep50 = getelementptr i8, ptr %4, i64 %i.ad
  %bound051 = icmp ult ptr %i.a, %scevgep50
  %bound152 = icmp ult ptr %4, %i.i
  %found.conflict53 = and i1 %bound051, %bound152
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE15prot_swap_smallINS0_17small_vector_baseIS3_NS5_IS3_Lj2ELj0EEEvEEEEvRT_m:bb.a

.lr.ph.i91.prol.loopexit:                         ; preds = %.lr.ph.i91.prol, %.lr.ph.i91.preheader
  %.05.i92.unr = phi i64 [ %i.by, %.lr.ph.i91.preheader ], [ %i.bz, %.lr.ph.i91.prol ]
  %storemerge4.i93.unr = phi ptr [ %i.bs, %.lr.ph.i91.preheader ], [ %i.cc, %.lr.ph.i91.prol ]
  %i.cd = sub i64 %i.bp, %i.bx
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.prol.loopexit, %.lr.ph.i91
  %.05.i92 = phi i64 [ %i.cm, %.lr.ph.i91 ], [ %.05.i92.unr, %.lr.ph.i91.prol.loopexit ]
  %storemerge4.i93 = phi ptr [ %i.co, %.lr.ph.i91 ], [ %storemerge4.i93.unr, %.lr.ph.i91.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i93, align 4, !tbaa !309
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176 ; 4 uses
  %i.cg = add i32 %i.cf, -1
  store i32 %i.cg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge4.i93, i64 4
  store i32 -2147483648, ptr %i.ch, align 4, !tbaa !309
  %i.ci = add i32 %i.cf, -2
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.cj = getelementptr inbounds nuw i8, ptr %storemerge4.i93, i64 8
  store i32 -2147483648, ptr %i.cj, align 4, !tbaa !309
  %i.ck = add i32 %i.cf, -3
  store i32 %i.ck, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.cl = getelementptr inbounds nuw i8, ptr %storemerge4.i93, i64 12
  %i.cm = add i64 %.05.i92, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.cl, align 4, !tbaa !309
  %i.cn = add i32 %i.cf, -4
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.co = getelementptr inbounds nuw i8, ptr %storemerge4.i93, i64 16
  %.not.i94.3 = icmp eq i64 %i.cm, 0
  br i1 %.not.i94.3, label %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95, label %.lr.ph.i91, !llvm.loop !399

_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95: ; preds = %.lr.ph.i91.prol.loopexit, %.lr.ph.i91, %._crit_edge
  store i64 %i.bp, ptr %i.bu, align 8, !tbaa !392
  br label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0104 = phi i64 [ %i.cx, %.lr.ph ], [ 0, %bb.e ] ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %.0104 ; 3 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %.0104 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !309
  store i32 0, ptr %i.cp, align 4, !tbaa !309
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !309
  store i32 %i.cu, ptr %i.cp, align 4, !tbaa !309
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !309
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.cx = add nuw i64 %.0104, 1                   ; 2 uses
  %.not79 = icmp eq i64 %i.cx, %i.bp
  br i1 %.not79, label %._crit_edge, label %.lr.ph, !llvm.loop !640

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE9priv_swapINS0_17small_vector_baseIS3_NS5_IS3_Lj2ELj0EEEvEEEEvRT_NS_11move_detail17integral_constantIbLb0EEE.exit, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit95, %_ZN5boost9container15destroy_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_SB_m.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISD_Lb0EEERKSD_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.91") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !333    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !393
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !396  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !390    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter83 = and i64 %3, 1
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !309
  store i32 %i.k, ptr %i.i, align 4, !tbaa !309
  store i32 0, ptr %4, align 4, !tbaa !309
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !309
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !309
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !309
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !309
  store i32 %i.w, ptr %i.v, align 4, !tbaa !309
  store i32 0, ptr %i.u, align 4, !tbaa !309
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !603

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !16

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !309
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !309
  store i32 0, ptr %i.ag, align 4, !tbaa !309
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !309
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !309
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !309
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !309
  store i32 %i.au, ptr %i.as, align 4, !tbaa !309
  store i32 0, ptr %i.ar, align 4, !tbaa !309
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !631

_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %i.az = shl nuw nsw i64 %i.e, 2
  %5 = add i64 %i.az, %i.h
  %i.ba = add i64 %5, -4
  %6 = shl i64 %3, 2
  %i.bb = add i64 %6, %i.ac
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bf = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = add i64 %i.bf, %i.h
  %i.bi = add i64 %i.bh, -4
  %i.bj = shl i64 %3, 2                           ; 2 uses
  %i.bk = add i64 %i.bj, %i.ac
  %i.bl = sub i64 %i.bi, %i.bk
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = sub i64 %i.bg, %i.bm
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.bn
  %i.bo = add nsw i64 %i.bf, -4
  %i.bp = add i64 %i.bj, %i.bm
  %i.bq = sub i64 %i.bo, %i.bp
  %scevgep22 = getelementptr i8, ptr %i.g, i64 %i.bq
  %bound0 = icmp ult ptr %scevgep, %i.ag
  %bound1 = icmp ult ptr %scevgep22, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.br = mul i64 %n.vec, -4                      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ag, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bu ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !309, !alias.scope !641
  %wide.load24 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !309, !alias.scope !641
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bx, align 4, !tbaa !309, !alias.scope !644, !noalias !641
  store <4 x i32> %wide.load24, ptr %i.by, align 4, !tbaa !309, !alias.scope !644, !noalias !641
  store <4 x i32> zeroinitializer, ptr %i.bv, align 4, !tbaa !309, !alias.scope !641
  store <4 x i32> zeroinitializer, ptr %i.bw, align 4, !tbaa !309, !alias.scope !641
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !646

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader74

.lr.ph.i40.i.i.i.preheader74:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader74, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %.079.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %i.ca = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !309
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !309
  store i32 0, ptr %i.ca, align 4, !tbaa !309
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ca
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !647

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_22small_vector_allocatorINS0_4test24movable_and_copyable_intENS0_9allocatorIvLj2ELj0EEEvEEPS4_S8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_mSC_.exit.i.i.i
  %min.iters.check33 = icmp ult i64 %3, 8
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cd = shl i64 %3, 2                           ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.a, i64 %i.cd
  %scevgep28 = getelementptr i8, ptr %4, i64 %i.cd
  %bound029 = icmp ult ptr %i.a, %scevgep28
  %bound130 = icmp ult ptr %4, %scevgep27
  %found.conflict31 = and i1 %bound029, %bound130
  br i1 %found.conflict31, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.memcheck26
  %n.vec35 = and i64 %3, -8                       ; 3 uses
  %i.ce = and i64 %3, 7
  %i.cf = shl i64 %n.vec35, 2                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %4, i64 %i.cf
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next42, %vector.body36 ] ; 2 uses
  %i.ci = shl i64 %index37, 2                     ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.a, i64 %i.ci ; 2 uses
  %next.gep39 = getelementptr i8, ptr %4, i64 %i.ci ; 3 uses
  %i.cj = getelementptr i8, ptr %next.gep39, i64 16 ; 2 uses
  %wide.load40 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !309, !alias.scope !648
  %wide.load41 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !309, !alias.scope !648
  %i.ck = getelementptr i8, ptr %next.gep38, i64 16
  store <4 x i32> %wide.load40, ptr %next.gep38, align 4, !tbaa !309, !alias.scope !651, !noalias !648
  store <4 x i32> %wide.load41, ptr %i.ck, align 4, !tbaa !309, !alias.scope !651, !noalias !648
  store <4 x i32> zeroinitializer, ptr %next.gep39, align 4, !tbaa !309, !alias.scope !648
  store <4 x i32> zeroinitializer, ptr %i.cj, align 4, !tbaa !309, !alias.scope !648
  %index.next42 = add nuw i64 %index37, 8         ; 2 uses
  %i.cl = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.cl, label %middle.block43, label %vector.body36, !llvm.loop !653

middle.block43:                                   ; preds = %vector.body36
  %cmp.n44 = icmp eq i64 %3, %n.vec35
  br i1 %cmp.n44, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck26, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block43
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck26 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ce, %middle.block43 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck26 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cg, %middle.block43 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck26 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ch, %middle.block43 ] ; 2 uses
  %i.cm = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter75 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cn = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.co = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !309
  store i32 %i.co, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !309
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !309
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter75
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !654

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %i.cr = icmp ult i64 %i.cm, 3
  br i1 %i.cr, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !309
  store i32 %i.cs, ptr %.048.i.i.i.i.i, align 4, !tbaa !309
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !309
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !309
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !309
  store i32 0, ptr %i.ct, align 4, !tbaa !309
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !309
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !309
  store i32 0, ptr %i.cw, align 4, !tbaa !309
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = load i32, ptr %i.cz, align 4, !tbaa !309
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !309
  store i32 0, ptr %i.cz, align 4, !tbaa !309
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_22small_vector_allocatorIS3_NS0_9allocatorIvLj2ELj0EEEvEEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS7_NS_13move_iteratorIPS3_EEEEEEvSD_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !655

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dj, %.lr.ph.i49.i.i.i ], [ %i.a, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i49.i.i.i ], [ %i.df, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dg = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !309
  store i32 %i.dg, ptr %.01517.i.i.i.i, align 4, !tbaa !309
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !309
  %i.dh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !176
  %i.dj = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.dj, %i.i
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i53.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !601

.lr.ph.i.i53.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check55 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i53.i.i.i.preheader71, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.i.i53.i.i.i.preheader
  %scevgep50 = getelementptr i8, ptr %4, i64 %i.ad
  %bound051 = icmp ult ptr %i.a, %scevgep50
  %bound152 = icmp ult ptr %4, %i.i
  %found.conflict53 = and i1 %bound051, %bound152
end_hunk_1
