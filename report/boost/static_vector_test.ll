Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 307
begin_hunk_0_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2013

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !78
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18 ; 4 uses
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !78
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !78
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !78
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !349

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !306
  %i.az = shl i64 %i.ay, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.az) #25
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !322
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %.loopexit.i
  %i.ba = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %i.s to i64
  %i.bd = sub i64 %i.bb, %i.bc
  store ptr %i.r, ptr %1, align 8, !tbaa !307
  %i.be = add i64 %i.ba, %3
  store i64 %i.be, ptr %i.d, align 8, !tbaa !322
  store i64 %i.o, ptr %i.a, align 8, !tbaa !69
  %i.bf = getelementptr inbounds i8, ptr %i.r, i64 %i.bd
  store ptr %i.bf, ptr %0, align 8, !tbaa !2014
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSS_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.59") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %.sroa.0.i.i = alloca ptr, align 8              ; 5 uses
  %.sroa.0.i = alloca ptr, align 8                ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !2016   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !300  ; 5 uses
  %i.e = sub i64 10, %i.d
  %.not = icmp ugt i64 %3, %i.e
  br i1 %.not, label %bb.g, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !2017   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.d ; 18 uses
  store ptr %i.f, ptr %.sroa.0.i, align 8, !tbaa !1958
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.h = icmp eq ptr %i.g, %i.b
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter36 = and i64 %3, 1
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %.sroa.0.i.0. = load ptr, ptr %.sroa.0.i, align 8, !tbaa !1444 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.0., i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !78, !noalias !2019
  store i32 %i.j, ptr %i.g, align 4, !tbaa !78, !noalias !2019
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2019
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2019
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.in.i.i.unr = phi ptr [ %.sroa.0.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.i.0., %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %i.o = icmp eq i64 %3, 1
  br i1 %i.o, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.in.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %.in.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.015.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.p = load ptr, ptr %.in.i.i, align 8, !tbaa !1444 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.r = load i32, ptr %i.q, align 4, !tbaa !78, !noalias !2019
  store i32 %i.r, ptr %.01214.i.i.i.i, align 4, !tbaa !78, !noalias !2019
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2019 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2019
  %i.u = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !1444 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !78, !noalias !2019
  store i32 %i.x, ptr %i.u, align 4, !tbaa !78, !noalias !2019
  %i.y = add i32 %i.s, 2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18, !noalias !2019
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.aa = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2022

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !24

bb.e:                                             ; preds = %bb.d
  store ptr %i.f, ptr %.sroa.0.i.i, align 8, !tbaa !1958
  %i.ab = ptrtoint ptr %i.g to i64
  %i.ac = ptrtoint ptr %i.b to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.g, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !78
  store i32 %i.ai, ptr %i.g, align 4, !tbaa !78
  store i32 0, ptr %i.ag, align 4, !tbaa !78
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.g, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !78
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !78
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !78
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !78
  store i32 %i.au, ptr %i.as, align 4, !tbaa !78
  store i32 0, ptr %i.ar, align 4, !tbaa !78
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !2023

_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.ag
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.az = shl i64 %i.d, 2
  %5 = shl i64 %3, 2
  %i.ba = add i64 %i.az, %i.a
  %6 = add i64 %i.ba, -4
  %i.bb = add i64 %5, %i.ac
  %i.bc = sub i64 %6, %i.bb                       ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bf = shl i64 %i.d, 2                         ; 3 uses
  %i.bg = add i64 %i.bf, -4
  %i.bh = add i64 %i.bf, %i.a
  %i.bi = add i64 %i.bh, -4
  %i.bj = shl i64 %3, 2                           ; 2 uses
  %i.bk = add i64 %i.bj, %i.ac
  %i.bl = sub i64 %i.bi, %i.bk
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = sub i64 %i.bg, %i.bm
  %scevgep = getelementptr i8, ptr %1, i64 %i.bn
  %i.bo = add i64 %i.bf, -4
  %i.bp = add i64 %i.bj, %i.bm
  %i.bq = sub i64 %i.bo, %i.bp
  %scevgep20 = getelementptr i8, ptr %1, i64 %i.bq
  %bound0 = icmp ult ptr %scevgep, %i.ag
  %bound1 = icmp ult ptr %scevgep20, %i.g
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.br = mul i64 %n.vec, -4                      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.g, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ag, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %i.bu ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ag, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep21, i64 -16 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep21, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !78, !alias.scope !2024
  %wide.load22 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !78, !alias.scope !2024
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bx, align 4, !tbaa !78, !alias.scope !2027, !noalias !2024
  store <4 x i32> %wide.load22, ptr %i.by, align 4, !tbaa !78, !alias.scope !2027, !noalias !2024
  store <4 x i32> zeroinitializer, ptr %i.bv, align 4, !tbaa !78, !alias.scope !2024
  store <4 x i32> zeroinitializer, ptr %i.bw, align 4, !tbaa !78, !alias.scope !2024
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !2029

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader26

.lr.ph.i40.i.i.i.preheader26:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i40.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader26, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader26 ]
  %.079.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader26 ]
  %i.ca = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !78
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !78
  store i32 0, ptr %i.ca, align 4, !tbaa !78
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.ca
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !2030

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %xtraiter27 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.in.i.i.i.prol = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %.06.i.i.i.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.ce, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cd = load ptr, ptr %.in.i.i.i.prol, align 8, !tbaa !1444 ; 3 uses
  %i.ce = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !78, !noalias !2031
  store i32 %i.cg, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !78, !noalias !2031
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter27
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2034

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.in.i.i.i.unr = phi ptr [ %.sroa.0.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cd, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ce, %.lr.ph.i.i.i.i.i.prol ]
  %i.ci = icmp ult i64 %3, 4
  br i1 %i.ci, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.in.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i ], [ %.in.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.06.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i.i.i.i = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cj = load ptr, ptr %.in.i.i.i, align 8, !tbaa !1444 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !78, !noalias !2031
  store i32 %i.cl, ptr %.06.i.i.i.i.i, align 4, !tbaa !78, !noalias !2031
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !1444 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !78, !noalias !2031
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !78, !noalias !2031
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !1444 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !78, !noalias !2031
  store i32 %i.ct, ptr %i.cq, align 4, !tbaa !78, !noalias !2031
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.cv = load ptr, ptr %i.cr, align 8, !tbaa !1444 ; 2 uses
  %i.cw = add i64 %.035.i.i.i.i.i, -4             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !78, !noalias !2031
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !78, !noalias !2031
  %i.cz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2035

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i49.i.i.i ], [ %i.b, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i49.i.i.i ], [ %i.da, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.db = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !78
  store i32 %i.db, ptr %.01517.i.i.i.i, align 4, !tbaa !78
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !78
  %i.dc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.de, %i.g
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !688

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %xtraiter29 = and i64 %i.ae, 3                  ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol

.lr.ph.i.i52.i.i.i.prol:                          ; preds = %.lr.ph.i.i52.i.i.i.preheader, %.lr.ph.i.i52.i.i.i.prol
  %i.dg = phi ptr [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ], [ %i.f, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.06.i.i53.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ], [ %i.b, %.lr.ph.i.i52.i.i.i.preheader ] ; 2 uses
  %.035.i.i54.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i52.i.i.i.prol ], [ %i.ae, %.lr.ph.i.i52.i.i.i.preheader ]
  %prol.iter31 = phi i64 [ %prol.iter31.next, %.lr.ph.i.i52.i.i.i.prol ], [ 0, %.lr.ph.i.i52.i.i.i.preheader ]
  %i.dh = add i64 %.035.i.i54.i.i.i.prol, -1      ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !78, !noalias !2036
  store i32 %i.dj, ptr %.06.i.i53.i.i.i.prol, align 4, !tbaa !78, !noalias !2036
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !184, !noalias !2036 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.06.i.i53.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter31.next = add i64 %prol.iter31, 1     ; 2 uses
  %prol.iter31.cmp.not = icmp eq i64 %prol.iter31.next, %xtraiter29
  br i1 %prol.iter31.cmp.not, label %.lr.ph.i.i52.i.i.i.prol.loopexit, label %.lr.ph.i.i52.i.i.i.prol, !llvm.loop !2039

.lr.ph.i.i52.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i52.i.i.i.prol, %.lr.ph.i.i52.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ]
  %.unr = phi ptr [ %i.f, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i52.i.i.i.prol ]
  %.06.i.i53.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i52.i.i.i.prol ]
  %.035.i.i54.i.i.i.unr = phi i64 [ %i.ae, %.lr.ph.i.i52.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i52.i.i.i.prol ]
  %i.dm = icmp ult i64 %i.ae, 4
  br i1 %i.dm, label %.loopexit.i.i.i, label %.lr.ph.i.i52.i.i.i

.lr.ph.i.i52.i.i.i:                               ; preds = %.lr.ph.i.i52.i.i.i.prol.loopexit, %.lr.ph.i.i52.i.i.i
  %i.dn = phi ptr [ %i.ed, %.lr.ph.i.i52.i.i.i ], [ %.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 2 uses
  %.06.i.i53.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i52.i.i.i ], [ %.06.i.i53.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i54.i.i.i = phi i64 [ %i.ea, %.lr.ph.i.i52.i.i.i ], [ %.035.i.i54.i.i.i.unr, %.lr.ph.i.i52.i.i.i.prol.loopexit ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !78, !noalias !2036
  store i32 %i.dp, ptr %.06.i.i53.i.i.i, align 4, !tbaa !78, !noalias !2036
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !184, !noalias !2036 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.06.i.i53.i.i.i, i64 4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !78, !noalias !2036
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !78, !noalias !2036
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !184, !noalias !2036 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.06.i.i53.i.i.i, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !78, !noalias !2036
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !78, !noalias !2036
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !184, !noalias !2036 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.06.i.i53.i.i.i, i64 12
  %i.ea = add i64 %.035.i.i54.i.i.i, -4           ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !78, !noalias !2036
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !78, !noalias !2036
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !184, !noalias !2036 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.06.i.i53.i.i.i, i64 16
  %.not.i.i55.i.i.i.3 = icmp eq i64 %i.ea, 0
  br i1 %.not.i.i55.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i.i52.i.i.i, !llvm.loop !2035
end_hunk_0
