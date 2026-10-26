Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_test?download=true
inline.NumInlined: 26547
inline.NumDeleted: 4082
loop-unroll.NumCompletelyUnrolled: 342
loop-unroll.NumRuntimeUnrolled: 657
loop-unroll.NumUnrolled: 1009
begin_hunk_0_@_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPNS2_4test11movable_intELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SG_SG_T0_SH_T1_:bb.a
  br i1 %.not6.i17, label %._crit_edge.i18, label %.lr.ph12.i14, !llvm.loop !8728

._crit_edge.i18:                                  ; preds = %bb.r, %.preheader.i12
  %.sroa.02.0.lcssa.i19 = phi ptr [ %i.bk, %.preheader.i12 ], [ %.sroa.02.1.i16, %bb.r ] ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.22 = load ptr, ptr %.sroa.0, align 8, !tbaa !427, !noalias !8739 ; 2 uses
  %i.bs = load i32, ptr %.sroa.02.0.lcssa.i19, align 4, !tbaa !424, !noalias !8739
  store i32 %i.bs, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.22, align 4, !tbaa !424, !noalias !8739
  store i32 0, ptr %.sroa.02.0.lcssa.i19, align 4, !tbaa !424, !noalias !8739
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.22, i64 4
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph.i4
  %i.bu = load i32, ptr %i.bk, align 4, !tbaa !424, !noalias !8739 ; 4 uses
  %i.bv = load i32, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., align 4, !tbaa !424, !noalias !8739 ; 2 uses
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.preheader7.i10, label %bb.v

.preheader7.i10:                                  ; preds = %bb.s, %bb.t
  %i.bx = phi ptr [ %i.by, %bb.t ], [ %i.bk, %bb.s ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 4 uses
  %.not5.i11 = icmp eq ptr %i.by, %i.bf
  br i1 %.not5.i11, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader7.i10
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !424, !noalias !8739
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.u, label %.preheader7.i10, !llvm.loop !8729

bb.u:                                             ; preds = %bb.t, %.preheader7.i10
  store ptr %i.by, ptr %.sroa.031, align 8, !tbaa !427, !noalias !8739
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21 = load ptr, ptr %.sroa.0, align 8, !tbaa !427, !noalias !8739 ; 2 uses
  store i32 %i.bu, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, align 4, !tbaa !424, !noalias !8739
  store i32 0, ptr %i.bk, align 4, !tbaa !424, !noalias !8739
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cb = icmp slt i32 %i.bv, %i.bu               ; 2 uses
  %..i5 = select i1 %i.cb, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., ptr %i.bk
  %.25.i6 = select i1 %i.cb, ptr %.sroa.025, ptr %.sroa.031
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink24.i7 = phi ptr [ %..i5, %bb.v ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, %bb.u ]
  %.sink23.i8 = phi ptr [ %.25.i6, %bb.v ], [ %.sroa.0, %bb.u ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink24.i7, i64 4
  store ptr %i.cc, ptr %.sink23.i8, align 8, !tbaa !427, !noalias !8739
  %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32 = load ptr, ptr %.sroa.031, align 8, !tbaa !427, !noalias !8739 ; 2 uses
  %.not.i9 = icmp eq ptr %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32, %i.bf
  br i1 %.not.i9, label %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test11movable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, label %.lr.ph.i4, !llvm.loop !8730

_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test11movable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit: ; preds = %bb.w
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre = load ptr, ptr %.sroa.0, align 8, !tbaa !495, !noalias !8739
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.f, %.preheader67, %.preheader66, %bb.a, %._crit_edge.i18, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test11movable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, %._crit_edge.i, %.loopexit.loopexit, %._crit_edge92
  %.sroa.036.0..sroa.036.0..sroa.036.0..sink = phi ptr [ %i.o, %._crit_edge92 ], [ %i.z, %.preheader66 ], [ %i.p, %.preheader67 ], [ %.sroa.036.0..sroa.036.0..sroa.036.0..sroa.036.0..pre, %.loopexit.loopexit ], [ %i.at, %._crit_edge.i ], [ %i.bt, %._crit_edge.i18 ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test11movable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit ], [ %i.a, %bb.a ], [ %.pre117, %.split ], [ %i.z, %bb.f ]
  store ptr %.sroa.036.0..sroa.036.0..sroa.036.0..sink, ptr %0, align 8, !tbaa !427
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.109") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !495    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !429
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !490  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !373

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !420    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !424
  store i32 %i.k, ptr %i.i, align 4, !tbaa !424
  store i32 0, ptr %4, align 4, !tbaa !424
  %i.l = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !424
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !424
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !424
  %i.s = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !424
  store i32 %i.w, ptr %i.v, align 4, !tbaa !424
  store i32 0, ptr %i.u, align 4, !tbaa !424
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !126

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !373

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
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !424
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !424
  store i32 0, ptr %i.ag, align 4, !tbaa !424
  %i.aj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !424
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !424
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !424
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !424
  store i32 %i.au, ptr %i.as, align 4, !tbaa !424
  store i32 0, ptr %i.ar, align 4, !tbaa !424
  %i.av = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !127

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
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
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !424, !alias.scope !8757
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !424, !alias.scope !8757
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !424, !alias.scope !8758, !noalias !8757
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !424, !alias.scope !8758, !noalias !8757
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !424, !alias.scope !8757
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !424, !alias.scope !8757
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !8743

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
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !424
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !424
  store i32 0, ptr %i.cd, align 4, !tbaa !424
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !8744

_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
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
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !424, !alias.scope !8759
  %wide.load44 = load <4 x i32>, ptr %i.co, align 4, !tbaa !424, !alias.scope !8759
  %i.cp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !424, !alias.scope !8760, !noalias !8759
  store <4 x i32> %wide.load44, ptr %i.cp, align 4, !tbaa !424, !alias.scope !8760, !noalias !8759
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !424, !alias.scope !8759
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !424, !alias.scope !8759
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cq, label %middle.block46, label %vector.body39, !llvm.loop !8748

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

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
  %i.ct = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !424
  store i32 %i.ct, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !424
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !424
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !8749

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %i.cw = icmp ult i64 %i.cr, 3
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !424
  store i32 %i.cx, ptr %.048.i.i.i.i.i, align 4, !tbaa !424
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !424
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !424
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !424
  store i32 0, ptr %i.cy, align 4, !tbaa !424
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !424
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !424
  store i32 0, ptr %i.db, align 4, !tbaa !424
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dg = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !424
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !424
  store i32 0, ptr %i.de, align 4, !tbaa !424
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8750

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i48.i.i.i ], [ %i.dk, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dl = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !424
  store i32 %i.dl, ptr %.01517.i.i.i.i, align 4, !tbaa !424
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !424
  %i.dm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.do, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !109

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
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE24priv_set_difference_backINS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEEvT_SL_T0_:bb.a
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.v
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.109") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ab, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.pre = load ptr, ptr %0, align 8, !tbaa !420
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !427
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e, %bb.f
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
  store ptr %i.al, ptr %1, align 8, !tbaa !427
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.am = icmp slt i32 %i.t, %i.s
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !427
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ %i.r, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0163055, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.aq = phi ptr [ %i.al, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ao, %bb.i ] ; 3 uses
  %i.ar = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.q, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.p, %bb.i ]
  %.221 = phi ptr [ %.120, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.0192956, %bb.i ]
  %.218 = phi ptr [ %.117, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ap, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.03154, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !427   ; 2 uses
  %.not24 = icmp eq ptr %i.aq, %i.at
  br i1 %.not24, label %.loopexit, label %bb.b, !llvm.loop !10544

.loopexit:                                        ; preds = %bb.j, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEESD_RKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.109") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.185", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !495    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !429
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !490  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !495    ; 17 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !373

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !420    ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 19 uses
  %i.k = icmp eq ptr %i.j, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter90 = and i64 %3, 1
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.l = load i32, ptr %i.g, align 4, !tbaa !424, !noalias !10576
  store i32 %i.l, ptr %i.j, align 4, !tbaa !424, !noalias !10576
  store i32 0, ptr %i.g, align 4, !tbaa !424, !noalias !10576
  %i.m = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10576
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10576
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr93 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.unr93, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.015.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !424, !noalias !10576
  store i32 %i.t, ptr %.01214.i.i.i.i, align 4, !tbaa !424, !noalias !10576
  store i32 0, ptr %i.s, align 4, !tbaa !424, !noalias !10576
  %i.u = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10576 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10576
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !424, !noalias !10576
  store i32 %i.y, ptr %i.x, align 4, !tbaa !424, !noalias !10576
  store i32 0, ptr %i.w, align 4, !tbaa !424, !noalias !10576
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367, !noalias !10576
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.ac = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !175

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !373

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
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !424
  store i32 %i.ak, ptr %i.j, align 4, !tbaa !424
  store i32 0, ptr %i.ai, align 4, !tbaa !424
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !424
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !424
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !424
  %i.ar = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !424
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !424
  store i32 0, ptr %i.at, align 4, !tbaa !424
  %i.ax = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !127

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bb = shl i64 %i.e, 2
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
  %i.bj = shl i64 %i.e, 2                         ; 2 uses
  %i.bk = shl i64 %3, 2                           ; 2 uses
  %i.bl = add i64 %i.bj, %i.i
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.ae
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, -4                       ; 2 uses
  %i.bq = add i64 %i.bj, -4                       ; 2 uses
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
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !424, !alias.scope !10577
  %wide.load22 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !424, !alias.scope !10577
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !424, !alias.scope !10578, !noalias !10577
  store <4 x i32> %wide.load22, ptr %i.cd, align 4, !tbaa !424, !alias.scope !10578, !noalias !10577
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !424, !alias.scope !10577
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !424, !alias.scope !10577
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !10556

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader79

.lr.ph.i40.i.i.i.preheader79:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.bx, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i40.i.i.i.preheader ], [ %i.by, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader79, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader79 ]
  %.079.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader79 ]
  %i.cf = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !424
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !424
  store i32 0, ptr %i.cf, align 4, !tbaa !424
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cf
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !10557

_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check30 = icmp ult i64 %3, 8
  br i1 %min.iters.check30, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck31

vector.memcheck31:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
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
  %wide.load41 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !424, !alias.scope !10579, !noalias !10580
  %wide.load42 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !424, !alias.scope !10579, !noalias !10580
  %i.cr = getelementptr i8, ptr %next.gep40, i64 16
  store <4 x i32> %wide.load41, ptr %next.gep40, align 4, !tbaa !424, !alias.scope !10581, !noalias !10582
  store <4 x i32> %wide.load42, ptr %i.cr, align 4, !tbaa !424, !alias.scope !10581, !noalias !10582
  store <4 x i32> zeroinitializer, ptr %next.gep39, align 4, !tbaa !424, !alias.scope !10579, !noalias !10580
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !424, !alias.scope !10579, !noalias !10580
  %index.next43 = add nuw i64 %index38, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next43, %n.vec36
  br i1 %i.cs, label %middle.block44, label %vector.body37, !llvm.loop !10563

middle.block44:                                   ; preds = %vector.body37
  %cmp.n45 = icmp eq i64 %3, %n.vec36
  br i1 %cmp.n45, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck31, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block44
  %.ph77 = phi ptr [ %i.g, %vector.memcheck31 ], [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cm, %middle.block44 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck31 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cn, %middle.block44 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck31 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.co, %middle.block44 ] ; 4 uses
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
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !424, !noalias !10580
  store i32 %i.cw, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !424, !noalias !10580
  store i32 0, ptr %i.cu, align 4, !tbaa !424, !noalias !10580
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter80
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10564

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph77, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %i.cz = icmp ult i64 %i.ct, 3
  br i1 %i.cz, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.da = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.06.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.db = load i32, ptr %i.da, align 4, !tbaa !424, !noalias !10580
  store i32 %i.db, ptr %.06.i.i.i.i.i, align 4, !tbaa !424, !noalias !10580
  store i32 0, ptr %i.da, align 4, !tbaa !424, !noalias !10580
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !424, !noalias !10580
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !424, !noalias !10580
  store i32 0, ptr %i.dc, align 4, !tbaa !424, !noalias !10580
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !424, !noalias !10580
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !424, !noalias !10580
  store i32 0, ptr %i.df, align 4, !tbaa !424, !noalias !10580
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 12 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dk = add i64 %.035.i.i.i.i.i, -4             ; 2 uses
  %i.dl = load i32, ptr %i.di, align 4, !tbaa !424, !noalias !10580
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !424, !noalias !10580
  store i32 0, ptr %i.di, align 4, !tbaa !424, !noalias !10580
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !10565

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i48.i.i.i ], [ %i.do, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !424
  store i32 %i.dp, ptr %.01517.i.i.i.i, align 4, !tbaa !424
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !424
  %i.dq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ds = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ds, %i.j
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !109

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
begin_hunk_2_@_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPNS2_4test12copyable_intELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SG_SG_T0_SH_T1_:bb.a
  store i32 %i.by, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, align 4, !tbaa !505, !noalias !11160
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cf = icmp slt i32 %i.bz, %i.by               ; 2 uses
  %..i5 = select i1 %i.cf, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., ptr %i.bm
  %.25.i6 = select i1 %i.cf, ptr %.sroa.025, ptr %.sroa.031
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink24.i7 = phi ptr [ %..i5, %bb.v ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, %bb.u ]
  %.sink23.i8 = phi ptr [ %.25.i6, %bb.v ], [ %.sroa.0, %bb.u ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sink24.i7, i64 4
  store ptr %i.cg, ptr %.sink23.i8, align 8, !tbaa !520, !noalias !11160
  %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32 = load ptr, ptr %.sroa.031, align 8, !tbaa !520, !noalias !11160 ; 2 uses
  %.not.i9 = icmp eq ptr %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32, %i.bh
  br i1 %.not.i9, label %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test12copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, label %.lr.ph.i4, !llvm.loop !11151

_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test12copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit: ; preds = %bb.w
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre = load ptr, ptr %.sroa.0, align 8, !tbaa !516, !noalias !11160
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.f, %.preheader67, %.preheader66, %bb.a, %._crit_edge.i18, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test12copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, %._crit_edge.i, %.loopexit.loopexit, %._crit_edge92
  %.sroa.036.0..sroa.036.0..sroa.036.0..sink = phi ptr [ %i.o, %._crit_edge92 ], [ %i.z, %.preheader66 ], [ %i.p, %.preheader67 ], [ %.sroa.036.0..sroa.036.0..sroa.036.0..sroa.036.0..pre, %.loopexit.loopexit ], [ %i.av, %._crit_edge.i ], [ %i.bx, %._crit_edge.i18 ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test12copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit ], [ %i.a, %bb.a ], [ %.pre119, %.split ], [ %i.z, %bb.f ]
  store ptr %.sroa.036.0..sroa.036.0..sroa.036.0..sink, ptr %0, align 8, !tbaa !520
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !516    ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !511
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !509  ; 4 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !373

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !510    ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 13 uses
  %i.k = icmp eq ptr %i.j, %i.b
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

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
  %i.m = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !505
  store i32 %i.m, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !505
  %i.n = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.r = add i64 %.018.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !11161

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.s = icmp ult i64 %i.l, 3
  br i1 %i.s, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.t = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !505
  store i32 %i.t, ptr %.01417.i.i.i.i, align 4, !tbaa !505
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 4 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !505
  store i32 %i.y, ptr %i.x, align 4, !tbaa !505
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !505
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !505
  %i.ad = add i32 %i.u, 3
  store i32 %i.ad, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !505
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !505
  %i.ah = add i32 %i.u, 4
  store i32 %i.ah, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.ak = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !11162

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !373

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
  %i.at = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !505
  store i32 %i.at, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !505
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !11163

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.as, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.aq, %bb.f ], [ %i.aw, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ax, %.lr.ph.i.i10.i.i.prol ]
  %i.ay = icmp ult i64 %i.ar, 3
  br i1 %i.ay, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bm, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.az = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !505
  store i32 %i.az, ptr %.01618.i.i.i.i, align 4, !tbaa !505
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 4 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bc = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !505
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !505
  %i.bf = add i32 %i.ba, 2
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bg = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !505
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !505
  %i.bj = add i32 %i.ba, 3
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bm = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !505
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !505
  %i.bo = add i32 %i.ba, 4
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !183

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.aq
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
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
  %wide.load = load <4 x i32>, ptr %i.ce, align 4, !tbaa !505
  %wide.load24 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !505
  %i.cg = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cg, align 4, !tbaa !505
  store <4 x i32> %wide.load24, ptr %i.ch, align 4, !tbaa !505
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !11164

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
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !505
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !505
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.cj
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !11165

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
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
  %wide.load38 = load <4 x i32>, ptr %next.gep37, align 4, !tbaa !505
  %wide.load39 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !505
  %i.ct = getelementptr i8, ptr %next.gep36, i64 16
  store <4 x i32> %wide.load38, ptr %next.gep36, align 4, !tbaa !505
  store <4 x i32> %wide.load39, ptr %i.ct, align 4, !tbaa !505
  %index.next40 = add nuw i64 %index35, 8         ; 2 uses
  %i.cu = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.cu, label %middle.block41, label %vector.body34, !llvm.loop !11166

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %3, %n.vec33
  br i1 %cmp.n42, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

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
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !505
  store i32 %i.cx, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !505
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter75.next = add i64 %prol.iter75, 1     ; 2 uses
  %prol.iter75.cmp.not = icmp eq i64 %prol.iter75.next, %xtraiter73
  br i1 %prol.iter75.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !11167

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %i.da = icmp ult i64 %i.cv, 7
  br i1 %i.da, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.db = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !505
  store i32 %i.db, ptr %.048.i.i.i.i.i, align 4, !tbaa !505
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !505
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !505
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !505
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !505
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !505
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !505
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !505
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !505
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 20
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 20
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !505
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !505
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 24
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !505
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !505
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 28
  %i.dv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 28
  %i.dw = add i64 %.09.i.i.i.i.i, -8              ; 2 uses
  %i.dx = load i32, ptr %i.du, align 4, !tbaa !505
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !505
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !11168

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.ee, %.lr.ph.i48.i.i.i ], [ %i.b, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i48.i.i.i ], [ %i.ea, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.eb = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !505
  store i32 %i.eb, ptr %.01517.i.i.i.i, align 4, !tbaa !505
  %i.ec = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ee = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ee, %i.j
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !184

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
  %wide.load58 = load <4 x i32>, ptr %next.gep57, align 4, !tbaa !505
end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE24priv_set_difference_backINS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEEvT_SL_T0_:bb.a

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !520
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ %i.r, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0163055, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.aq = phi ptr [ %i.al, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ao, %bb.i ] ; 3 uses
  %i.ar = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.q, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.p, %bb.i ]
  %.221 = phi ptr [ %.120, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.0192956, %bb.i ]
  %.218 = phi ptr [ %.117, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ap, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.03154, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !520   ; 2 uses
  %.not24 = icmp eq ptr %i.aq, %i.at
  br i1 %.not24, label %.loopexit, label %bb.b, !llvm.loop !12395

.loopexit:                                        ; preds = %bb.j, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEESD_RKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.230", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !516    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !511
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !509  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !516    ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !373

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !510    ; 2 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e ; 13 uses
  %i.l = icmp eq ptr %i.k, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.m = add i64 %3, -1
  %xtraiter83 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.n = phi ptr [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01214.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter85 = phi i64 [ %prol.iter85.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.prol) ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !505, !noalias !12422
  store i32 %i.o, ptr %.01214.i.i.i.i.prol, align 4, !tbaa !505, !noalias !12422
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12422
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12422
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.prol, i64 4 ; 2 uses
  %i.t = add i64 %.015.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter85.next = add i64 %prol.iter85, 1     ; 2 uses
  %prol.iter85.cmp.not = icmp eq i64 %prol.iter85.next, %xtraiter83
  br i1 %prol.iter85.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !12404

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr86 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.m, 3
  br i1 %i.u, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.v = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.unr86, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.w = load i32, ptr %i.v, align 4, !tbaa !505, !noalias !12422
  store i32 %i.w, ptr %.01214.i.i.i.i, align 4, !tbaa !505, !noalias !12422
  %i.x = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12422 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12422
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !505, !noalias !12422
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !505, !noalias !12422
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12422
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !505, !noalias !12422
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !505, !noalias !12422
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12422
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !505, !noalias !12422
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !505, !noalias !12422
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12422
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.an = add i64 %.015.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !12405

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !373

bb.e:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %i.k to i64
  %i.ap = ptrtoint ptr %i.a to i64                ; 4 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ar, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = sub i64 0, %3
  %i.at = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.as ; 6 uses
  %i.au = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.av, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i10.i.i.prol ], [ %i.at, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i.prol ], [ %i.k, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.av = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.aw = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !505
  store i32 %i.aw, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !505
  %i.ax = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !12406

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.av, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.at, %bb.f ], [ %i.az, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.k, %bb.f ], [ %i.ba, %.lr.ph.i.i10.i.i.prol ]
  %i.bb = icmp ult i64 %i.au, 3
  br i1 %i.bb, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.bc = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !505
  store i32 %i.bc, ptr %.01618.i.i.i.i, align 4, !tbaa !505
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 4 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !505
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !505
  %i.bi = add i32 %i.bd, 2
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !505
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !505
  %i.bm = add i32 %i.bd, 3
  store i32 %i.bm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bn = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bp = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !505
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !505
  %i.br = add i32 %i.bd, 4
  store i32 %i.br, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !183

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.at
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bu = shl i64 %i.e, 2
  %i.bv = shl i64 %3, 2
  %i.bw = add i64 %i.bu, %i.j
  %i.bx = add i64 %i.bw, -4
  %i.by = add i64 %i.bv, %i.ap
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 60
  %i.cc = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.cc, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.cb, 9223372036854775800     ; 3 uses
  %i.cd = mul i64 %n.vec, -4                      ; 2 uses
  %i.ce = getelementptr i8, ptr %i.k, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.at, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.cg ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.at, i64 %i.cg ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %next.gep21, i64 -16
  %i.ci = getelementptr inbounds i8, ptr %next.gep21, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ch, align 4, !tbaa !505
  %wide.load22 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !505
  %i.cj = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ck = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cj, align 4, !tbaa !505
  store <4 x i32> %wide.load22, ptr %i.ck, align 4, !tbaa !505
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !12407

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader71

.lr.ph.i40.i.i.i.preheader71:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i40.i.i.i.preheader ], [ %i.ce, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i40.i.i.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader71, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader71 ]
  %.079.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader71 ]
  %i.cm = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !505
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !505
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cm
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !12408

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check27 = icmp ult i64 %3, 8
  %i.cp = sub i64 %i.h, %i.ap
  %diff.check29 = icmp ugt i64 %i.cp, -32
  %or.cond64 = select i1 %min.iters.check27, i1 true, i1 %diff.check29
  br i1 %or.cond64, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec31 = and i64 %3, -8                       ; 3 uses
  %i.cq = shl i64 %n.vec31, 2                     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.g, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.a, i64 %i.cq
  %i.ct = and i64 %3, 7
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %i.cu = shl i64 %index33, 2                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.g, i64 %i.cu ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.a, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load36 = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !505, !noalias !12423
  %wide.load37 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !505, !noalias !12423
  %i.cw = getelementptr i8, ptr %next.gep35, i64 16
  store <4 x i32> %wide.load36, ptr %next.gep35, align 4, !tbaa !505, !noalias !12423
  store <4 x i32> %wide.load37, ptr %i.cw, align 4, !tbaa !505, !noalias !12423
  %index.next38 = add nuw i64 %index33, 8         ; 2 uses
  %i.cx = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.cx, label %middle.block39, label %vector.body32, !llvm.loop !12411

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %3, %n.vec31
  br i1 %cmp.n40, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block39
  %.ph69 = phi ptr [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cr, %middle.block39 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cs, %middle.block39 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ct, %middle.block39 ] ; 4 uses
  %i.cy = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter72 = and i64 %.035.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.cz = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.prol ], [ %.ph69, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter74 = phi i64 [ %prol.iter74.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.da = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !505, !noalias !12423
  store i32 %i.db, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !505, !noalias !12423
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12412

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph69, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i.prol ]
  %i.de = icmp ult i64 %i.cy, 7
  br i1 %i.de, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.df = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.06.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.035.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !505, !noalias !12423
  store i32 %i.dg, ptr %.06.i.i.i.i.i, align 4, !tbaa !505, !noalias !12423
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !505, !noalias !12423
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !505, !noalias !12423
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !505, !noalias !12423
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !505, !noalias !12423
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !505, !noalias !12423
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !505, !noalias !12423
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !505, !noalias !12423
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !505, !noalias !12423
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.du = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 20
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !505, !noalias !12423
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !505, !noalias !12423
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !505, !noalias !12423
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !505, !noalias !12423
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  %i.ea = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 28
  %i.eb = add i64 %.035.i.i.i.i.i, -8             ; 2 uses
  %i.ec = load i32, ptr %i.dz, align 4, !tbaa !505, !noalias !12423
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !505, !noalias !12423
  %i.ed = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !12413

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i48.i.i.i ], [ %i.ef, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.eg = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !505
  store i32 %i.eg, ptr %.01517.i.i.i.i, align 4, !tbaa !505
  %i.eh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ej = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ej, %i.k
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !184

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check47 = icmp ult i64 %i.ar, 8
  %i.el = sub i64 %i.h, %i.ap
  %diff.check49 = icmp ugt i64 %i.el, -32
  %or.cond65 = select i1 %min.iters.check47, i1 true, i1 %diff.check49
  br i1 %or.cond65, label %.lr.ph.i.i51.i.i.i.preheader67, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph.i.i51.i.i.i.preheader
  %n.vec51 = and i64 %i.ar, -8                    ; 3 uses
  %i.em = shl nsw i64 %n.vec51, 2                 ; 2 uses
  %i.en = getelementptr i8, ptr %i.g, i64 %i.em   ; 2 uses
  %i.eo = getelementptr i8, ptr %i.a, i64 %i.em
  %i.ep = and i64 %i.ar, 7
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 2 uses
  %i.eq = shl i64 %index53, 2                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.g, i64 %i.eq ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.a, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep54, i64 16
  %wide.load56 = load <4 x i32>, ptr %next.gep54, align 4, !tbaa !505, !noalias !12424
end_hunk_3
begin_hunk_4_@_ZN5boost9container3dtl9flat_treeINS0_4test12copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13new_allocatorIS4_EEE19insert_unique_rangeINS0_12vec_iteratorIPS4_Lb1EEEEEvT_SH_:bb.a
  call void @llvm.assume(i1 %lcmp.mod45)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.07.i.i.i32.i.i.epil = phi i64 [ %.07.i.i.i32.i.i.epil.init, %.epil.preheader ], [ %i.dq, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.07.i.i.i32.i.i.epil
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !505
  %i.do = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.dq = add nuw i64 %.07.i.i.i32.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter43
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i, label %bb.o, !llvm.loop !12525

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.ct

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorINS0_4test12copyable_intENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSG_8iteratorET0_NSC_5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.i.i, %bb.c, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEENSA_ISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.232", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !516    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !511
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !509  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !516    ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !373

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !510    ; 2 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e ; 13 uses
  %i.l = icmp eq ptr %i.k, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.m = add i64 %3, -1
  %xtraiter83 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.n = phi ptr [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01214.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter85 = phi i64 [ %prol.iter85.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.prol) ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !505, !noalias !12553
  store i32 %i.o, ptr %.01214.i.i.i.i.prol, align 4, !tbaa !505, !noalias !12553
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12553
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12553
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.prol, i64 4 ; 2 uses
  %i.t = add i64 %.015.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter85.next = add i64 %prol.iter85, 1     ; 2 uses
  %prol.iter85.cmp.not = icmp eq i64 %prol.iter85.next, %xtraiter83
  br i1 %prol.iter85.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !12535

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr86 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.m, 3
  br i1 %i.u, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.v = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.unr86, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.w = load i32, ptr %i.v, align 4, !tbaa !505, !noalias !12553
  store i32 %i.w, ptr %.01214.i.i.i.i, align 4, !tbaa !505, !noalias !12553
  %i.x = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12553 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12553
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !505, !noalias !12553
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !505, !noalias !12553
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12553
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !505, !noalias !12553
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !505, !noalias !12553
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12553
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !505, !noalias !12553
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !505, !noalias !12553
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12553
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.an = add i64 %.015.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !12536

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !373

bb.e:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %i.k to i64
  %i.ap = ptrtoint ptr %i.a to i64                ; 4 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ar, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = sub i64 0, %3
  %i.at = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.as ; 6 uses
  %i.au = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.av, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i10.i.i.prol ], [ %i.at, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i.prol ], [ %i.k, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.av = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.aw = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !505
  store i32 %i.aw, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !505
  %i.ax = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !12537

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.av, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.at, %bb.f ], [ %i.az, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.k, %bb.f ], [ %i.ba, %.lr.ph.i.i10.i.i.prol ]
  %i.bb = icmp ult i64 %i.au, 3
  br i1 %i.bb, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.bc = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !505
  store i32 %i.bc, ptr %.01618.i.i.i.i, align 4, !tbaa !505
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 4 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !505
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !505
  %i.bi = add i32 %i.bd, 2
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !505
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !505
  %i.bm = add i32 %i.bd, 3
  store i32 %i.bm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bn = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bp = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !505
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !505
  %i.br = add i32 %i.bd, 4
  store i32 %i.br, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !183

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.at
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bu = shl i64 %i.e, 2
  %i.bv = shl i64 %3, 2
  %i.bw = add i64 %i.bu, %i.j
  %i.bx = add i64 %i.bw, -4
  %i.by = add i64 %i.bv, %i.ap
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 60
  %i.cc = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.cc, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.cb, 9223372036854775800     ; 3 uses
  %i.cd = mul i64 %n.vec, -4                      ; 2 uses
  %i.ce = getelementptr i8, ptr %i.k, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.at, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.cg ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.at, i64 %i.cg ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %next.gep21, i64 -16
  %i.ci = getelementptr inbounds i8, ptr %next.gep21, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ch, align 4, !tbaa !505
  %wide.load22 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !505
  %i.cj = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ck = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cj, align 4, !tbaa !505
  store <4 x i32> %wide.load22, ptr %i.ck, align 4, !tbaa !505
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !12538

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader71

.lr.ph.i40.i.i.i.preheader71:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i40.i.i.i.preheader ], [ %i.ce, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i40.i.i.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader71, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader71 ]
  %.079.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader71 ]
  %i.cm = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !505
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !505
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cm
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !12539

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check27 = icmp ult i64 %3, 8
  %i.cp = sub i64 %i.h, %i.ap
  %diff.check29 = icmp ugt i64 %i.cp, -32
  %or.cond64 = select i1 %min.iters.check27, i1 true, i1 %diff.check29
  br i1 %or.cond64, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec31 = and i64 %3, -8                       ; 3 uses
  %i.cq = shl i64 %n.vec31, 2                     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.g, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.a, i64 %i.cq
  %i.ct = and i64 %3, 7
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %i.cu = shl i64 %index33, 2                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.g, i64 %i.cu ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.a, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load36 = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !505, !noalias !12554
  %wide.load37 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !505, !noalias !12554
  %i.cw = getelementptr i8, ptr %next.gep35, i64 16
  store <4 x i32> %wide.load36, ptr %next.gep35, align 4, !tbaa !505, !noalias !12554
  store <4 x i32> %wide.load37, ptr %i.cw, align 4, !tbaa !505, !noalias !12554
  %index.next38 = add nuw i64 %index33, 8         ; 2 uses
  %i.cx = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.cx, label %middle.block39, label %vector.body32, !llvm.loop !12542

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %3, %n.vec31
  br i1 %cmp.n40, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block39
  %.ph69 = phi ptr [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cr, %middle.block39 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cs, %middle.block39 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ct, %middle.block39 ] ; 4 uses
  %i.cy = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter72 = and i64 %.035.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.cz = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.prol ], [ %.ph69, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter74 = phi i64 [ %prol.iter74.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.da = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !505, !noalias !12554
  store i32 %i.db, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !505, !noalias !12554
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12543

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph69, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i.prol ]
  %i.de = icmp ult i64 %i.cy, 7
  br i1 %i.de, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.df = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.06.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.035.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !505, !noalias !12554
  store i32 %i.dg, ptr %.06.i.i.i.i.i, align 4, !tbaa !505, !noalias !12554
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !505, !noalias !12554
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !505, !noalias !12554
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !505, !noalias !12554
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !505, !noalias !12554
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !505, !noalias !12554
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !505, !noalias !12554
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !505, !noalias !12554
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !505, !noalias !12554
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.du = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 20
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !505, !noalias !12554
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !505, !noalias !12554
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !505, !noalias !12554
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !505, !noalias !12554
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  %i.ea = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 28
  %i.eb = add i64 %.035.i.i.i.i.i, -8             ; 2 uses
  %i.ec = load i32, ptr %i.dz, align 4, !tbaa !505, !noalias !12554
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !505, !noalias !12554
  %i.ed = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !12544

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i48.i.i.i ], [ %i.ef, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.eg = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !505
  store i32 %i.eg, ptr %.01517.i.i.i.i, align 4, !tbaa !505
  %i.eh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ej = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ej, %i.k
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !184

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check47 = icmp ult i64 %i.ar, 8
  %i.el = sub i64 %i.h, %i.ap
  %diff.check49 = icmp ugt i64 %i.el, -32
  %or.cond65 = select i1 %min.iters.check47, i1 true, i1 %diff.check49
  br i1 %or.cond65, label %.lr.ph.i.i51.i.i.i.preheader67, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph.i.i51.i.i.i.preheader
  %n.vec51 = and i64 %i.ar, -8                    ; 3 uses
  %i.em = shl nsw i64 %n.vec51, 2                 ; 2 uses
  %i.en = getelementptr i8, ptr %i.g, i64 %i.em   ; 2 uses
  %i.eo = getelementptr i8, ptr %i.a, i64 %i.em
  %i.ep = and i64 %i.ar, 7
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 2 uses
  %i.eq = shl i64 %index53, 2                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.g, i64 %i.eq ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.a, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep54, i64 16
  %wide.load56 = load <4 x i32>, ptr %next.gep54, align 4, !tbaa !505, !noalias !12555
end_hunk_4
begin_hunk_5_@_ZN5boost9container3dtl9flat_treeINS0_4test12copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13new_allocatorIS4_EEE19insert_unique_rangeINS0_12vec_iteratorIPS4_Lb0EEEEEvT_SH_:bb.a
  call void @llvm.assume(i1 %lcmp.mod45)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.07.i.i.i32.i.i.epil = phi i64 [ %.07.i.i.i32.i.i.epil.init, %.epil.preheader ], [ %i.dq, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.07.i.i.i32.i.i.epil
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !505
  %i.do = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.dq = add nuw i64 %.07.i.i.i32.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter43
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i, label %bb.o, !llvm.loop !12616

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.ct

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorINS0_4test12copyable_intENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSG_8iteratorET0_NSC_5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.i.i, %bb.c, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEESC_RKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.233", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !516    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !511
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !509  ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !516    ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !373

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !510    ; 2 uses
  %i.j = ptrtoaddr ptr %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e ; 13 uses
  %i.l = icmp eq ptr %i.k, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.m = add i64 %3, -1
  %xtraiter83 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.n = phi ptr [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01214.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter85 = phi i64 [ %prol.iter85.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.prol) ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !505, !noalias !12644
  store i32 %i.o, ptr %.01214.i.i.i.i.prol, align 4, !tbaa !505, !noalias !12644
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12644
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12644
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.prol, i64 4 ; 2 uses
  %i.t = add i64 %.015.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter85.next = add i64 %prol.iter85, 1     ; 2 uses
  %prol.iter85.cmp.not = icmp eq i64 %prol.iter85.next, %xtraiter83
  br i1 %prol.iter85.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !12626

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr86 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.m, 3
  br i1 %i.u, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.v = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.unr86, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.w = load i32, ptr %i.v, align 4, !tbaa !505, !noalias !12644
  store i32 %i.w, ptr %.01214.i.i.i.i, align 4, !tbaa !505, !noalias !12644
  %i.x = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12644 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12644
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !505, !noalias !12644
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !505, !noalias !12644
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12644
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !505, !noalias !12644
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !505, !noalias !12644
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12644
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !505, !noalias !12644
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !505, !noalias !12644
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367, !noalias !12644
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.an = add i64 %.015.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !12627

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !373

bb.e:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %i.k to i64
  %i.ap = ptrtoint ptr %i.a to i64                ; 4 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ar, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = sub i64 0, %3
  %i.at = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.as ; 6 uses
  %i.au = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.av, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i10.i.i.prol ], [ %i.at, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i.prol ], [ %i.k, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.av = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.aw = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !505
  store i32 %i.aw, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !505
  %i.ax = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !12628

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.av, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.at, %bb.f ], [ %i.az, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.k, %bb.f ], [ %i.ba, %.lr.ph.i.i10.i.i.prol ]
  %i.bb = icmp ult i64 %i.au, 3
  br i1 %i.bb, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.bc = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !505
  store i32 %i.bc, ptr %.01618.i.i.i.i, align 4, !tbaa !505
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367 ; 4 uses
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !505
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !505
  %i.bi = add i32 %i.bd, 2
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !505
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !505
  %i.bm = add i32 %i.bd, 3
  store i32 %i.bm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bn = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bp = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !505
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !505
  %i.br = add i32 %i.bd, 4
  store i32 %i.br, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !183

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.at
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bu = shl i64 %i.e, 2
  %i.bv = shl i64 %3, 2
  %i.bw = add i64 %i.bu, %i.j
  %i.bx = add i64 %i.bw, -4
  %i.by = add i64 %i.bv, %i.ap
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 60
  %i.cc = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.cc, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader71, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.cb, 9223372036854775800     ; 3 uses
  %i.cd = mul i64 %n.vec, -4                      ; 2 uses
  %i.ce = getelementptr i8, ptr %i.k, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.at, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.cg ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.at, i64 %i.cg ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %next.gep21, i64 -16
  %i.ci = getelementptr inbounds i8, ptr %next.gep21, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ch, align 4, !tbaa !505
  %wide.load22 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !505
  %i.cj = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ck = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cj, align 4, !tbaa !505
  store <4 x i32> %wide.load22, ptr %i.ck, align 4, !tbaa !505
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !12629

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader71

.lr.ph.i40.i.i.i.preheader71:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i40.i.i.i.preheader ], [ %i.ce, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i40.i.i.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader71, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader71 ]
  %.079.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader71 ]
  %i.cm = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !505
  store i32 %i.co, ptr %i.cn, align 4, !tbaa !505
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cm
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !12630

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check27 = icmp ult i64 %3, 8
  %i.cp = sub i64 %i.h, %i.ap
  %diff.check29 = icmp ugt i64 %i.cp, -32
  %or.cond64 = select i1 %min.iters.check27, i1 true, i1 %diff.check29
  br i1 %or.cond64, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec31 = and i64 %3, -8                       ; 3 uses
  %i.cq = shl i64 %n.vec31, 2                     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.g, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.a, i64 %i.cq
  %i.ct = and i64 %3, 7
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %i.cu = shl i64 %index33, 2                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.g, i64 %i.cu ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.a, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load36 = load <4 x i32>, ptr %next.gep34, align 4, !tbaa !505, !noalias !12645
  %wide.load37 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !505, !noalias !12645
  %i.cw = getelementptr i8, ptr %next.gep35, i64 16
  store <4 x i32> %wide.load36, ptr %next.gep35, align 4, !tbaa !505, !noalias !12645
  store <4 x i32> %wide.load37, ptr %i.cw, align 4, !tbaa !505, !noalias !12645
  %index.next38 = add nuw i64 %index33, 8         ; 2 uses
  %i.cx = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.cx, label %middle.block39, label %vector.body32, !llvm.loop !12633

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %3, %n.vec31
  br i1 %cmp.n40, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block39
  %.ph69 = phi ptr [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cr, %middle.block39 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cs, %middle.block39 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ct, %middle.block39 ] ; 4 uses
  %i.cy = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter72 = and i64 %.035.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.cz = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.prol ], [ %.ph69, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter74 = phi i64 [ %prol.iter74.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.da = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !505, !noalias !12645
  store i32 %i.db, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !505, !noalias !12645
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12634

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph69, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i.prol ]
  %i.de = icmp ult i64 %i.cy, 7
  br i1 %i.de, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.df = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.06.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.035.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !505, !noalias !12645
  store i32 %i.dg, ptr %.06.i.i.i.i.i, align 4, !tbaa !505, !noalias !12645
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !505, !noalias !12645
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !505, !noalias !12645
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !505, !noalias !12645
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !505, !noalias !12645
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !505, !noalias !12645
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !505, !noalias !12645
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !505, !noalias !12645
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !505, !noalias !12645
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.du = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 20
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !505, !noalias !12645
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !505, !noalias !12645
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.dy = load i32, ptr %i.dw, align 4, !tbaa !505, !noalias !12645
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !505, !noalias !12645
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  %i.ea = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 28
  %i.eb = add i64 %.035.i.i.i.i.i, -8             ; 2 uses
  %i.ec = load i32, ptr %i.dz, align 4, !tbaa !505, !noalias !12645
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !505, !noalias !12645
  %i.ed = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !12635

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i48.i.i.i ], [ %i.ef, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.eg = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !505
  store i32 %i.eg, ptr %.01517.i.i.i.i, align 4, !tbaa !505
  %i.eh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !367
  %i.ej = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ej, %i.k
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !184

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check47 = icmp ult i64 %i.ar, 8
  %i.el = sub i64 %i.h, %i.ap
  %diff.check49 = icmp ugt i64 %i.el, -32
  %or.cond65 = select i1 %min.iters.check47, i1 true, i1 %diff.check49
  br i1 %or.cond65, label %.lr.ph.i.i51.i.i.i.preheader67, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph.i.i51.i.i.i.preheader
  %n.vec51 = and i64 %i.ar, -8                    ; 3 uses
  %i.em = shl nsw i64 %n.vec51, 2                 ; 2 uses
  %i.en = getelementptr i8, ptr %i.g, i64 %i.em   ; 2 uses
  %i.eo = getelementptr i8, ptr %i.a, i64 %i.em
  %i.ep = and i64 %i.ar, 7
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 2 uses
  %i.eq = shl i64 %index53, 2                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.g, i64 %i.eq ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.a, i64 %i.eq ; 2 uses
  %i.er = getelementptr i8, ptr %next.gep54, i64 16
  %wide.load56 = load <4 x i32>, ptr %next.gep54, align 4, !tbaa !505, !noalias !12646
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SG_SG_T0_SH_T1_:bb.a
  br i1 %.not6.i17, label %._crit_edge.i18, label %.lr.ph12.i14, !llvm.loop !13243

._crit_edge.i18:                                  ; preds = %bb.r, %.preheader.i12
  %.sroa.02.0.lcssa.i19 = phi ptr [ %i.bk, %.preheader.i12 ], [ %.sroa.02.1.i16, %bb.r ] ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.22 = load ptr, ptr %.sroa.0, align 8, !tbaa !543, !noalias !13254 ; 2 uses
  %i.bs = load i32, ptr %.sroa.02.0.lcssa.i19, align 4, !tbaa !528, !noalias !13254
  store i32 %i.bs, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.22, align 4, !tbaa !528, !noalias !13254
  store i32 0, ptr %.sroa.02.0.lcssa.i19, align 4, !tbaa !528, !noalias !13254
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.22, i64 4
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph.i4
  %i.bu = load i32, ptr %i.bk, align 4, !tbaa !528, !noalias !13254 ; 4 uses
  %i.bv = load i32, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., align 4, !tbaa !528, !noalias !13254 ; 2 uses
  %i.bw = icmp slt i32 %i.bu, %i.bv
  br i1 %i.bw, label %.preheader7.i10, label %bb.v

.preheader7.i10:                                  ; preds = %bb.s, %bb.t
  %i.bx = phi ptr [ %i.by, %bb.t ], [ %i.bk, %bb.s ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 4 uses
  %.not5.i11 = icmp eq ptr %i.by, %i.bf
  br i1 %.not5.i11, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader7.i10
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !528, !noalias !13254
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.u, label %.preheader7.i10, !llvm.loop !13244

bb.u:                                             ; preds = %bb.t, %.preheader7.i10
  store ptr %i.by, ptr %.sroa.031, align 8, !tbaa !543, !noalias !13254
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21 = load ptr, ptr %.sroa.0, align 8, !tbaa !543, !noalias !13254 ; 2 uses
  store i32 %i.bu, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, align 4, !tbaa !528, !noalias !13254
  store i32 0, ptr %i.bk, align 4, !tbaa !528, !noalias !13254
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cb = icmp slt i32 %i.bv, %i.bu               ; 2 uses
  %..i5 = select i1 %i.cb, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., ptr %i.bk
  %.25.i6 = select i1 %i.cb, ptr %.sroa.025, ptr %.sroa.031
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink24.i7 = phi ptr [ %..i5, %bb.v ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, %bb.u ]
  %.sink23.i8 = phi ptr [ %.25.i6, %bb.v ], [ %.sroa.0, %bb.u ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink24.i7, i64 4
  store ptr %i.cc, ptr %.sink23.i8, align 8, !tbaa !543, !noalias !13254
  %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32 = load ptr, ptr %.sroa.031, align 8, !tbaa !543, !noalias !13254 ; 2 uses
  %.not.i9 = icmp eq ptr %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32, %i.bf
  br i1 %.not.i9, label %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, label %.lr.ph.i4, !llvm.loop !13245

_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit: ; preds = %bb.w
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre = load ptr, ptr %.sroa.0, align 8, !tbaa !539, !noalias !13254
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.f, %.preheader67, %.preheader66, %bb.a, %._crit_edge.i18, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, %._crit_edge.i, %.loopexit.loopexit, %._crit_edge92
  %.sroa.036.0..sroa.036.0..sroa.036.0..sink = phi ptr [ %i.o, %._crit_edge92 ], [ %i.z, %.preheader66 ], [ %i.p, %.preheader67 ], [ %.sroa.036.0..sroa.036.0..sroa.036.0..sroa.036.0..pre, %.loopexit.loopexit ], [ %i.at, %._crit_edge.i ], [ %i.bt, %._crit_edge.i18 ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit ], [ %i.a, %bb.a ], [ %.pre117, %.split ], [ %i.z, %bb.f ]
  store ptr %.sroa.036.0..sroa.036.0..sroa.036.0..sink, ptr %0, align 8, !tbaa !543
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.255") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !539    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !534
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !532  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !373

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !533    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter89 = and i64 %3, 1
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !528
  store i32 %i.k, ptr %i.i, align 4, !tbaa !528
  store i32 0, ptr %4, align 4, !tbaa !528
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !528
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !528
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !528
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !528
  store i32 %i.w, ptr %i.v, align 4, !tbaa !528
  store i32 0, ptr %i.u, align 4, !tbaa !528
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !239

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !373

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
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !528
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !528
  store i32 0, ptr %i.ag, align 4, !tbaa !528
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !528
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !528
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !528
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !528
  store i32 %i.au, ptr %i.as, align 4, !tbaa !528
  store i32 0, ptr %i.ar, align 4, !tbaa !528
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !240

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
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
  %wide.load = load <4 x i32>, ptr %i.by, align 4, !tbaa !528, !alias.scope !13272
  %wide.load24 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !528, !alias.scope !13272
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ca, align 4, !tbaa !528, !alias.scope !13273, !noalias !13272
  store <4 x i32> %wide.load24, ptr %i.cb, align 4, !tbaa !528, !alias.scope !13273, !noalias !13272
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !528, !alias.scope !13272
  store <4 x i32> zeroinitializer, ptr %i.bz, align 4, !tbaa !528, !alias.scope !13272
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !13258

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
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !528
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !528
  store i32 0, ptr %i.cd, align 4, !tbaa !528
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cd
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !13259

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
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
  %wide.load43 = load <4 x i32>, ptr %next.gep42, align 4, !tbaa !528, !alias.scope !13274
  %wide.load44 = load <4 x i32>, ptr %i.co, align 4, !tbaa !528, !alias.scope !13274
  %i.cp = getelementptr i8, ptr %next.gep41, i64 16
  store <4 x i32> %wide.load43, ptr %next.gep41, align 4, !tbaa !528, !alias.scope !13275, !noalias !13274
  store <4 x i32> %wide.load44, ptr %i.cp, align 4, !tbaa !528, !alias.scope !13275, !noalias !13274
  store <4 x i32> zeroinitializer, ptr %next.gep42, align 4, !tbaa !528, !alias.scope !13274
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !528, !alias.scope !13274
  %index.next45 = add nuw i64 %index40, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cq, label %middle.block46, label %vector.body39, !llvm.loop !13263

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %3, %n.vec38
  br i1 %cmp.n47, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

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
  %i.ct = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !528
  store i32 %i.ct, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !528
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !528
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter81
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !13264

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %i.cw = icmp ult i64 %i.cr, 3
  br i1 %i.cw, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cx = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !528
  store i32 %i.cx, ptr %.048.i.i.i.i.i, align 4, !tbaa !528
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !528
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !528
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !528
  store i32 0, ptr %i.cy, align 4, !tbaa !528
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !528
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !528
  store i32 0, ptr %i.db, align 4, !tbaa !528
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.dg = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !528
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !528
  store i32 0, ptr %i.de, align 4, !tbaa !528
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !13265

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.do, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i48.i.i.i ], [ %i.dk, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dl = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !528
  store i32 %i.dl, ptr %.01517.i.i.i.i, align 4, !tbaa !528
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !528
  %i.dm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.do = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.do, %i.i
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !241

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
end_hunk_6
begin_hunk_7_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE24priv_set_difference_backINS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEEvT_SL_T0_:bb.a
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.v
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.255") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ab, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.pre = load ptr, ptr %0, align 8, !tbaa !533
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !543
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e, %bb.f
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
  store ptr %i.al, ptr %1, align 8, !tbaa !543
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.am = icmp slt i32 %i.t, %i.s
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !543
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ %i.r, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0163055, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.aq = phi ptr [ %i.al, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ao, %bb.i ] ; 3 uses
  %i.ar = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.q, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.p, %bb.i ]
  %.221 = phi ptr [ %.120, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.0192956, %bb.i ]
  %.218 = phi ptr [ %.117, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ap, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.03154, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !543   ; 2 uses
  %.not24 = icmp eq ptr %i.aq, %i.at
  br i1 %.not24, label %.loopexit, label %bb.b, !llvm.loop !15060

.loopexit:                                        ; preds = %bb.j, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEESD_RKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.255") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.278", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !539    ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !534
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !532  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !539    ; 17 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !373

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !533    ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 19 uses
  %i.k = icmp eq ptr %i.j, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter90 = and i64 %3, 1
  %lcmp.mod91.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod91.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.l = load i32, ptr %i.g, align 4, !tbaa !528, !noalias !15092
  store i32 %i.l, ptr %i.j, align 4, !tbaa !528, !noalias !15092
  store i32 0, ptr %i.g, align 4, !tbaa !528, !noalias !15092
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15092
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15092
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr93 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.unr93, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.015.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !528, !noalias !15092
  store i32 %i.t, ptr %.01214.i.i.i.i, align 4, !tbaa !528, !noalias !15092
  store i32 0, ptr %i.s, align 4, !tbaa !528, !noalias !15092
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15092 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15092
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !528, !noalias !15092
  store i32 %i.y, ptr %i.x, align 4, !tbaa !528, !noalias !15092
  store i32 0, ptr %i.w, align 4, !tbaa !528, !noalias !15092
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15092
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.ac = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !292

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !373

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
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !528
  store i32 %i.ak, ptr %i.j, align 4, !tbaa !528
  store i32 0, ptr %i.ai, align 4, !tbaa !528
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !528
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !528
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !528
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !528
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !528
  store i32 0, ptr %i.at, align 4, !tbaa !528
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !240

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bb = shl i64 %i.e, 2
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
  %i.bj = shl i64 %i.e, 2                         ; 2 uses
  %i.bk = shl i64 %3, 2                           ; 2 uses
  %i.bl = add i64 %i.bj, %i.i
  %i.bm = add i64 %i.bl, -4
  %i.bn = add i64 %i.bk, %i.ae
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = and i64 %i.bo, -4                       ; 2 uses
  %i.bq = add i64 %i.bj, -4                       ; 2 uses
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
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !528, !alias.scope !15093
  %wide.load22 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !528, !alias.scope !15093
  %i.cc = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cc, align 4, !tbaa !528, !alias.scope !15094, !noalias !15093
  store <4 x i32> %wide.load22, ptr %i.cd, align 4, !tbaa !528, !alias.scope !15094, !noalias !15093
  store <4 x i32> zeroinitializer, ptr %i.ca, align 4, !tbaa !528, !alias.scope !15093
  store <4 x i32> zeroinitializer, ptr %i.cb, align 4, !tbaa !528, !alias.scope !15093
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !15072

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
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !528
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !528
  store i32 0, ptr %i.cf, align 4, !tbaa !528
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cf
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !15073

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
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
  %wide.load41 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !528, !alias.scope !15095, !noalias !15096
  %wide.load42 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !528, !alias.scope !15095, !noalias !15096
  %i.cr = getelementptr i8, ptr %next.gep40, i64 16
  store <4 x i32> %wide.load41, ptr %next.gep40, align 4, !tbaa !528, !alias.scope !15097, !noalias !15098
  store <4 x i32> %wide.load42, ptr %i.cr, align 4, !tbaa !528, !alias.scope !15097, !noalias !15098
  store <4 x i32> zeroinitializer, ptr %next.gep39, align 4, !tbaa !528, !alias.scope !15095, !noalias !15096
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !528, !alias.scope !15095, !noalias !15096
  %index.next43 = add nuw i64 %index38, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next43, %n.vec36
  br i1 %i.cs, label %middle.block44, label %vector.body37, !llvm.loop !15079

middle.block44:                                   ; preds = %vector.body37
  %cmp.n45 = icmp eq i64 %3, %n.vec36
  br i1 %cmp.n45, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

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
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !528, !noalias !15096
  store i32 %i.cw, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !528, !noalias !15096
  store i32 0, ptr %i.cu, align 4, !tbaa !528, !noalias !15096
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter80
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !15080

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph77, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cv, %.lr.ph.i.i.i.i.i.prol ]
  %i.cz = icmp ult i64 %i.ct, 3
  br i1 %i.cz, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.da = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.06.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.db = load i32, ptr %i.da, align 4, !tbaa !528, !noalias !15096
  store i32 %i.db, ptr %.06.i.i.i.i.i, align 4, !tbaa !528, !noalias !15096
  store i32 0, ptr %i.da, align 4, !tbaa !528, !noalias !15096
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !528, !noalias !15096
  store i32 %i.de, ptr %i.dd, align 4, !tbaa !528, !noalias !15096
  store i32 0, ptr %i.dc, align 4, !tbaa !528, !noalias !15096
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !528, !noalias !15096
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !528, !noalias !15096
  store i32 0, ptr %i.df, align 4, !tbaa !528, !noalias !15096
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 12 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dk = add i64 %.035.i.i.i.i.i, -4             ; 2 uses
  %i.dl = load i32, ptr %i.di, align 4, !tbaa !528, !noalias !15096
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !528, !noalias !15096
  store i32 0, ptr %i.di, align 4, !tbaa !528, !noalias !15096
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.dk, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15081

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i48.i.i.i ], [ %i.do, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dp = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !528
  store i32 %i.dp, ptr %.01517.i.i.i.i, align 4, !tbaa !528
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !528
  %i.dq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dr = add i32 %i.dq, 1
  store i32 %i.dr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ds = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.ds, %i.j
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !241

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
end_hunk_7
begin_hunk_8_@_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13new_allocatorIS4_EEE19insert_unique_rangeINS0_12vec_iteratorIPS4_Lb1EEEEEvT_SH_:bb.a
  %i.dk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dm = add nuw i64 %.07.i.i.i32.i.i, 4         ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !238

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %.preheader.i.i.i31.i.i
  %.07.i.i.i32.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i31.i.i ], [ %i.dm, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter43, 0
  call void @llvm.assume(i1 %lcmp.mod45)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.07.i.i.i32.i.i.epil = phi i64 [ %.07.i.i.i32.i.i.epil.init, %.epil.preheader ], [ %i.dq, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.07.i.i.i32.i.i.epil
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !528
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dq = add nuw i64 %.07.i.i.i32.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter43
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i, label %bb.o, !llvm.loop !15156

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.ct

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSG_8iteratorET0_NSC_5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i.i, %bb.c, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEENSA_ISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.255") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.280", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !539    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !534
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !532  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !539    ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !373

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !533    ; 5 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e ; 16 uses
  %i.l = icmp eq ptr %i.k, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.m = add i64 %3, -1
  %xtraiter79 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.n = phi ptr [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01214.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.prol) ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !528, !noalias !15186
  store i32 %i.o, ptr %.01214.i.i.i.i.prol, align 4, !tbaa !528, !noalias !15186
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15186
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15186
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.prol, i64 4 ; 2 uses
  %i.t = add i64 %.015.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !15166

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr82 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.m, 3
  br i1 %i.u, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.v = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.unr82, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.w = load i32, ptr %i.v, align 4, !tbaa !528, !noalias !15186
  store i32 %i.w, ptr %.01214.i.i.i.i, align 4, !tbaa !528, !noalias !15186
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15186 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15186
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !528, !noalias !15186
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !528, !noalias !15186
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15186
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !528, !noalias !15186
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !528, !noalias !15186
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15186
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !528, !noalias !15186
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !528, !noalias !15186
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15186
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.an = add i64 %.015.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15167

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !373

bb.e:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %i.k to i64
  %i.ap = ptrtoint ptr %i.a to i64                ; 5 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ar, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = sub i64 0, %3
  %i.at = getelementptr [4 x i8], ptr %i.k, i64 %i.as ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.au = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.av = load i32, ptr %i.at, align 4, !tbaa !528
  store i32 %i.av, ptr %i.k, align 4, !tbaa !528
  store i32 0, ptr %i.at, align 4, !tbaa !528
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.au, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.at, %bb.f ], [ %i.ay, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.k, %bb.f ], [ %i.az, %.lr.ph.i.i10.i.i.prol ]
  %i.ba = icmp eq i64 %3, 1
  br i1 %i.ba, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.bb = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !528
  store i32 %i.bb, ptr %.01618.i.i.i.i, align 4, !tbaa !528
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !528
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bg = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !528
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !528
  store i32 0, ptr %i.be, align 4, !tbaa !528
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !240

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.at
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bm = shl i64 %i.e, 2
  %i.bn = shl i64 %3, 2
  %i.bo = add i64 %i.bm, %i.j
  %i.bp = add i64 %i.bo, -4
  %i.bq = add i64 %i.bn, %i.ap
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.br, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bu = shl i64 %i.e, 2                         ; 2 uses
  %i.bv = shl i64 %3, 2                           ; 2 uses
  %i.bw = add i64 %i.bu, %i.j
  %i.bx = add i64 %i.bw, -4
  %i.by = add i64 %i.bv, %i.ap
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = and i64 %i.bz, -4                       ; 2 uses
  %i.cb = add i64 %i.bu, -4                       ; 2 uses
  %i.cc = sub i64 %i.cb, %i.ca
  %i.cd = getelementptr i8, ptr %i.i, i64 %i.cc
  %i.ce = add i64 %i.bv, %i.ca
  %i.cf = sub i64 %i.cb, %i.ce
  %i.cg = getelementptr i8, ptr %i.i, i64 %i.cf
  %bound0 = icmp ult ptr %i.cd, %i.at
  %bound1 = icmp ult ptr %i.cg, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bt, 9223372036854775800     ; 3 uses
  %i.ch = mul i64 %n.vec, -4                      ; 2 uses
  %i.ci = getelementptr i8, ptr %i.k, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.at, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ck ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.at, i64 %i.ck ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %next.gep21, i64 -16 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %next.gep21, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cl, align 4, !tbaa !528, !alias.scope !15187
  %wide.load22 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !528, !alias.scope !15187
  %i.cn = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.co = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cn, align 4, !tbaa !528, !alias.scope !15188, !noalias !15187
  store <4 x i32> %wide.load22, ptr %i.co, align 4, !tbaa !528, !alias.scope !15188, !noalias !15187
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !528, !alias.scope !15187
  store <4 x i32> zeroinitializer, ptr %i.cm, align 4, !tbaa !528, !alias.scope !15187
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !15171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader68

.lr.ph.i40.i.i.i.preheader68:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i40.i.i.i.preheader ], [ %i.ci, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i40.i.i.i.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader68, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader68 ]
  %.079.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader68 ]
  %i.cq = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cr = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !528
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !528
  store i32 0, ptr %i.cq, align 4, !tbaa !528
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cq
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !15172

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check26 = icmp ult i64 %3, 8
  %i.ct = sub i64 %i.h, %i.ap
  %diff.check = icmp ugt i64 %i.ct, -32
  %or.cond = select i1 %min.iters.check26, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.cu = shl i64 %n.vec29, 2                     ; 2 uses
  %i.cv = getelementptr i8, ptr %i.g, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.a, i64 %i.cu
  %i.cx = and i64 %3, 7
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next36, %vector.body30 ] ; 2 uses
  %i.cy = shl i64 %index31, 2                     ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.g, i64 %i.cy ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.a, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load34 = load <4 x i32>, ptr %next.gep32, align 4, !tbaa !528, !noalias !15189
  %wide.load35 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !528, !noalias !15189
  %i.da = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %wide.load34, ptr %next.gep33, align 4, !tbaa !528, !noalias !15189
  store <4 x i32> %wide.load35, ptr %i.da, align 4, !tbaa !528, !noalias !15189
  %index.next36 = add nuw i64 %index31, 8         ; 2 uses
  %i.db = icmp eq i64 %index.next36, %n.vec29
  br i1 %i.db, label %middle.block37, label %vector.body30, !llvm.loop !15175

middle.block37:                                   ; preds = %vector.body30
  %cmp.n38 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n38, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block37
  %.ph66 = phi ptr [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cv, %middle.block37 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cw, %middle.block37 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cx, %middle.block37 ] ; 4 uses
  %i.dc = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter69 = and i64 %.035.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.dd = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.prol ], [ %.ph66, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.de = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !528, !noalias !15189
  store i32 %i.df, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !528, !noalias !15189
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter69
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !15176

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph66, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i.prol ]
  %i.di = icmp ult i64 %i.dc, 7
  br i1 %i.di, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.dj = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.06.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.035.i.i.i.i.i = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !528, !noalias !15189
  store i32 %i.dk, ptr %.06.i.i.i.i.i, align 4, !tbaa !528, !noalias !15189
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !528, !noalias !15189
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !528, !noalias !15189
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !528, !noalias !15189
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !528, !noalias !15189
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !528, !noalias !15189
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !528, !noalias !15189
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !528, !noalias !15189
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !528, !noalias !15189
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 20
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !528, !noalias !15189
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !528, !noalias !15189
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !528, !noalias !15189
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !528, !noalias !15189
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.ee = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 28
  %i.ef = add i64 %.035.i.i.i.i.i, -8             ; 2 uses
  %i.eg = load i32, ptr %i.ed, align 4, !tbaa !528, !noalias !15189
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !528, !noalias !15189
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15177

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i48.i.i.i ], [ %i.ej, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ek = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !528
  store i32 %i.ek, ptr %.01517.i.i.i.i, align 4, !tbaa !528
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !528
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.en = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.en, %i.k
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !241

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check45 = icmp ult i64 %i.ar, 8
  %i.ep = sub i64 %i.h, %i.ap
  %diff.check47 = icmp ugt i64 %i.ep, -32
  %or.cond62 = select i1 %min.iters.check45, i1 true, i1 %diff.check47
  br i1 %or.cond62, label %.lr.ph.i.i51.i.i.i.preheader64, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph.i.i51.i.i.i.preheader
  %n.vec49 = and i64 %i.ar, -8                    ; 3 uses
  %i.eq = shl nsw i64 %n.vec49, 2                 ; 2 uses
  %i.er = getelementptr i8, ptr %i.g, i64 %i.eq   ; 2 uses
  %i.es = getelementptr i8, ptr %i.a, i64 %i.eq
  %i.et = and i64 %i.ar, 7
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.eu = shl i64 %index51, 2                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.g, i64 %i.eu ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.a, i64 %i.eu ; 2 uses
  %i.ev = getelementptr i8, ptr %next.gep52, i64 16
end_hunk_8
begin_hunk_9_@_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13new_allocatorIS4_EEE19insert_unique_rangeINS0_12vec_iteratorIPS4_Lb0EEEEEvT_SH_:bb.a
  %i.dk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dm = add nuw i64 %.07.i.i.i32.i.i, 4         ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !238

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %.preheader.i.i.i31.i.i
  %.07.i.i.i32.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i31.i.i ], [ %i.dm, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter43, 0
  call void @llvm.assume(i1 %lcmp.mod45)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.07.i.i.i32.i.i.epil = phi i64 [ %.07.i.i.i32.i.i.epil.init, %.epil.preheader ], [ %i.dq, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.07.i.i.i32.i.i.epil
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !528
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dq = add nuw i64 %.07.i.i.i32.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter43
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i, label %bb.o, !llvm.loop !15234

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.ct

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSG_8iteratorET0_NSC_5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i.i, %bb.c, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEESC_RKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.255") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.281", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !539    ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !534
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !532  ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !539    ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !373

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !533    ; 5 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e ; 16 uses
  %i.l = icmp eq ptr %i.k, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.m = add i64 %3, -1
  %xtraiter79 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.n = phi ptr [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01214.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.prol) ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !528, !noalias !15264
  store i32 %i.o, ptr %.01214.i.i.i.i.prol, align 4, !tbaa !528, !noalias !15264
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15264
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15264
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.prol, i64 4 ; 2 uses
  %i.t = add i64 %.015.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !15244

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr82 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.m, 3
  br i1 %i.u, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.v = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.unr82, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.w = load i32, ptr %i.v, align 4, !tbaa !528, !noalias !15264
  store i32 %i.w, ptr %.01214.i.i.i.i, align 4, !tbaa !528, !noalias !15264
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15264 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15264
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !528, !noalias !15264
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !528, !noalias !15264
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15264
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !528, !noalias !15264
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !528, !noalias !15264
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15264
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !528, !noalias !15264
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !528, !noalias !15264
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367, !noalias !15264
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.an = add i64 %.015.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15245

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !373

bb.e:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %i.k to i64
  %i.ap = ptrtoint ptr %i.a to i64                ; 5 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ar, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = sub i64 0, %3
  %i.at = getelementptr [4 x i8], ptr %i.k, i64 %i.as ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.au = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.av = load i32, ptr %i.at, align 4, !tbaa !528
  store i32 %i.av, ptr %i.k, align 4, !tbaa !528
  store i32 0, ptr %i.at, align 4, !tbaa !528
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.au, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.at, %bb.f ], [ %i.ay, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.k, %bb.f ], [ %i.az, %.lr.ph.i.i10.i.i.prol ]
  %i.ba = icmp eq i64 %3, 1
  br i1 %i.ba, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.bb = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !528
  store i32 %i.bb, ptr %.01618.i.i.i.i, align 4, !tbaa !528
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !528
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bg = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !528
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !528
  store i32 0, ptr %i.be, align 4, !tbaa !528
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !240

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.at
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bm = shl i64 %i.e, 2
  %i.bn = shl i64 %3, 2
  %i.bo = add i64 %i.bm, %i.j
  %i.bp = add i64 %i.bo, -4
  %i.bq = add i64 %i.bn, %i.ap
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = lshr i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.br, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bu = shl i64 %i.e, 2                         ; 2 uses
  %i.bv = shl i64 %3, 2                           ; 2 uses
  %i.bw = add i64 %i.bu, %i.j
  %i.bx = add i64 %i.bw, -4
  %i.by = add i64 %i.bv, %i.ap
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = and i64 %i.bz, -4                       ; 2 uses
  %i.cb = add i64 %i.bu, -4                       ; 2 uses
  %i.cc = sub i64 %i.cb, %i.ca
  %i.cd = getelementptr i8, ptr %i.i, i64 %i.cc
  %i.ce = add i64 %i.bv, %i.ca
  %i.cf = sub i64 %i.cb, %i.ce
  %i.cg = getelementptr i8, ptr %i.i, i64 %i.cf
  %bound0 = icmp ult ptr %i.cd, %i.at
  %bound1 = icmp ult ptr %i.cg, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bt, 9223372036854775800     ; 3 uses
  %i.ch = mul i64 %n.vec, -4                      ; 2 uses
  %i.ci = getelementptr i8, ptr %i.k, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.at, i64 %i.ch
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ck ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.at, i64 %i.ck ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %next.gep21, i64 -16 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %next.gep21, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cl, align 4, !tbaa !528, !alias.scope !15265
  %wide.load22 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !528, !alias.scope !15265
  %i.cn = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.co = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cn, align 4, !tbaa !528, !alias.scope !15266, !noalias !15265
  store <4 x i32> %wide.load22, ptr %i.co, align 4, !tbaa !528, !alias.scope !15266, !noalias !15265
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !528, !alias.scope !15265
  store <4 x i32> zeroinitializer, ptr %i.cm, align 4, !tbaa !528, !alias.scope !15265
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !15249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader68

.lr.ph.i40.i.i.i.preheader68:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i40.i.i.i.preheader ], [ %i.ci, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i40.i.i.i.preheader ], [ %i.cj, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader68, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader68 ]
  %.079.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader68 ]
  %i.cq = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cr = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !528
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !528
  store i32 0, ptr %i.cq, align 4, !tbaa !528
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cq
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !15250

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check26 = icmp ult i64 %3, 8
  %i.ct = sub i64 %i.h, %i.ap
  %diff.check = icmp ugt i64 %i.ct, -32
  %or.cond = select i1 %min.iters.check26, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.cu = shl i64 %n.vec29, 2                     ; 2 uses
  %i.cv = getelementptr i8, ptr %i.g, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.a, i64 %i.cu
  %i.cx = and i64 %3, 7
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next36, %vector.body30 ] ; 2 uses
  %i.cy = shl i64 %index31, 2                     ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.g, i64 %i.cy ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.a, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load34 = load <4 x i32>, ptr %next.gep32, align 4, !tbaa !528, !noalias !15267
  %wide.load35 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !528, !noalias !15267
  %i.da = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %wide.load34, ptr %next.gep33, align 4, !tbaa !528, !noalias !15267
  store <4 x i32> %wide.load35, ptr %i.da, align 4, !tbaa !528, !noalias !15267
  %index.next36 = add nuw i64 %index31, 8         ; 2 uses
  %i.db = icmp eq i64 %index.next36, %n.vec29
  br i1 %i.db, label %middle.block37, label %vector.body30, !llvm.loop !15253

middle.block37:                                   ; preds = %vector.body30
  %cmp.n38 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n38, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block37
  %.ph66 = phi ptr [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cv, %middle.block37 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cw, %middle.block37 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cx, %middle.block37 ] ; 4 uses
  %i.dc = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter69 = and i64 %.035.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.dd = phi ptr [ %i.dg, %.lr.ph.i.i.i.i.i.prol ], [ %.ph66, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.de, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.de = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !528, !noalias !15267
  store i32 %i.df, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !528, !noalias !15267
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter69
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !15254

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph66, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i.prol ]
  %i.di = icmp ult i64 %i.dc, 7
  br i1 %i.di, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.dj = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.06.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.035.i.i.i.i.i = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !528, !noalias !15267
  store i32 %i.dk, ptr %.06.i.i.i.i.i, align 4, !tbaa !528, !noalias !15267
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !528, !noalias !15267
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !528, !noalias !15267
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !528, !noalias !15267
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !528, !noalias !15267
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !528, !noalias !15267
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !528, !noalias !15267
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !528, !noalias !15267
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !528, !noalias !15267
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 20
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !528, !noalias !15267
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !528, !noalias !15267
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !528, !noalias !15267
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !528, !noalias !15267
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.ee = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 28
  %i.ef = add i64 %.035.i.i.i.i.i, -8             ; 2 uses
  %i.eg = load i32, ptr %i.ed, align 4, !tbaa !528, !noalias !15267
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !528, !noalias !15267
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15255

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.en, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i48.i.i.i ], [ %i.ej, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ek = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !528
  store i32 %i.ek, ptr %.01517.i.i.i.i, align 4, !tbaa !528
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !528
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.em = add i32 %i.el, 1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.en = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.en, %i.k
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !241

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %min.iters.check45 = icmp ult i64 %i.ar, 8
  %i.ep = sub i64 %i.h, %i.ap
  %diff.check47 = icmp ugt i64 %i.ep, -32
  %or.cond62 = select i1 %min.iters.check45, i1 true, i1 %diff.check47
  br i1 %or.cond62, label %.lr.ph.i.i51.i.i.i.preheader64, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph.i.i51.i.i.i.preheader
  %n.vec49 = and i64 %i.ar, -8                    ; 3 uses
  %i.eq = shl nsw i64 %n.vec49, 2                 ; 2 uses
  %i.er = getelementptr i8, ptr %i.g, i64 %i.eq   ; 2 uses
  %i.es = getelementptr i8, ptr %i.a, i64 %i.eq
  %i.et = and i64 %i.ar, 7
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.eu = shl i64 %index51, 2                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.g, i64 %i.eu ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.a, i64 %i.eu ; 2 uses
  %i.ev = getelementptr i8, ptr %next.gep52, i64 16
end_hunk_9
