Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 207
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 313
begin_hunk_0_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 4
  store i32 -2147483648, ptr %i.aq, align 4, !tbaa !82
  %i.ar = add i32 %i.ao, -2
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 8
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !82
  %i.at = add i32 %i.ao, -3
  store i32 %i.at, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 12
  %i.av = add i64 %.05.i.i, -4                    ; 2 uses
  store i32 -2147483648, ptr %i.au, align 4, !tbaa !82
  %i.aw = add i32 %i.ao, -4
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %storemerge4.i.i, i64 16
  %.not.i.i.3 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.3, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !12

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !146
  %i.az = shl i64 %i.ay, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.az) #25
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !148
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEEEEvPS3_mSD_mT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEEEEvPS3_mSD_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, %.loopexit.i
  %i.ba = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i ], [ %.pre.i, %.loopexit.i ]
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %i.s to i64
  %i.bd = sub i64 %i.bb, %i.bc
  store ptr %i.r, ptr %1, align 8, !tbaa !147
  %i.be = add i64 %i.ba, %3
  store i64 %i.be, ptr %i.d, align 8, !tbaa !148
  store i64 %i.o, ptr %i.a, align 8, !tbaa !75
  %i.bf = getelementptr inbounds i8, ptr %i.r, i64 %i.bd
  store ptr %i.bf, ptr %0, align 8, !tbaa !205
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE25priv_insert_forward_rangeINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEENS0_12vec_iteratorIPS3_Lb0EEERKSS_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.59") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca ptr, align 8              ; 5 uses
  %.sroa.0.i = alloca ptr, align 8                ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !2036   ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !141  ; 5 uses
  %i.d = sub i64 10, %i.c
  %.not = icmp ugt i64 %3, %i.d
  br i1 %.not, label %bb.g, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !2038   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.c ; 18 uses
  store ptr %i.e, ptr %.sroa.0.i, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.g = icmp eq ptr %i.f, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter36 = and i64 %3, 1
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %.sroa.0.i.0. = load ptr, ptr %.sroa.0.i, align 8, !tbaa !188 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.i.0., i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !82, !noalias !2039
  store i32 %i.i, ptr %i.f, align 4, !tbaa !82, !noalias !2039
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2039
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2039
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.in.i.i.unr = phi ptr [ %.sroa.0.i, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.i.0., %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.m, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.f, %.lr.ph.i.i.i.i.preheader ], [ %i.l, %.lr.ph.i.i.i.i.prol ]
  %i.n = icmp eq i64 %3, 1
  br i1 %i.n, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.in.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %.in.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.015.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.o = load ptr, ptr %.in.i.i, align 8, !tbaa !188 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.q = load i32, ptr %i.p, align 4, !tbaa !82, !noalias !2039
  store i32 %i.q, ptr %.01214.i.i.i.i, align 4, !tbaa !82, !noalias !2039
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2039 ; 2 uses
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2039
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !188  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !82, !noalias !2039
  store i32 %i.w, ptr %i.t, align 4, !tbaa !82, !noalias !2039
  %i.x = add i32 %i.r, 2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2039
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.z = add i64 %.015.i.i.i.i, -2                ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2020

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !42

bb.e:                                             ; preds = %bb.d
  store ptr %i.e, ptr %.sroa.0.i.i, align 8, !tbaa !203
  %i.aa = ptrtoint ptr %i.f to i64
  %i.ab = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ad, %3
  br i1 %.not.i.i.i, label %.lr.ph.i48.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = sub i64 0, %3
  %i.af = getelementptr [4 x i8], ptr %i.f, i64 %i.ae ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ag = add nsw i64 %3, -1
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !82
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !82
  store i32 0, ptr %i.af, align 4, !tbaa !82
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ag, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.af, %bb.f ], [ %i.ak, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.f, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %i.am = icmp eq i64 %3, 1
  br i1 %i.am, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.an = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !82
  store i32 %i.an, ptr %.01618.i.i.i.i, align 4, !tbaa !82
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !82
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.as = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !82
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !82
  store i32 0, ptr %i.aq, align 4, !tbaa !82
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !2021

_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.af
  br i1 %.not8.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.ay = ptrtoaddr ptr %1 to i64                 ; 2 uses
  %i.az = shl i64 %i.c, 2
  %i.ba = shl i64 %3, 2
  %i.bb = add i64 %i.az, %i.ay
  %i.bc = add i64 %i.bb, -4
  %i.bd = add i64 %i.ba, %i.ab
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl i64 %i.c, 2                         ; 2 uses
  %i.bi = shl i64 %3, 2                           ; 2 uses
  %i.bj = add i64 %i.bh, %i.ay
  %i.bk = add i64 %i.bj, -4
  %i.bl = add i64 %i.bi, %i.ab
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = and i64 %i.bm, -4                       ; 2 uses
  %i.bo = add i64 %i.bh, -4                       ; 2 uses
  %i.bp = sub i64 %i.bo, %i.bn
  %i.bq = getelementptr i8, ptr %1, i64 %i.bp
  %5 = add i64 %i.bi, %i.bn
  %i.br = sub i64 %i.bo, %5
  %i.bs = getelementptr i8, ptr %1, i64 %i.br
  %bound0 = icmp ult ptr %i.bq, %i.af
  %bound1 = icmp ult ptr %i.bs, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bt = mul i64 %n.vec, -4                      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.f, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.af, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.bw ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.af, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %next.gep21, i64 -16 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep21, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !82, !alias.scope !2040
  %wide.load22 = load <4 x i32>, ptr %i.by, align 4, !tbaa !82, !alias.scope !2040
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !82, !alias.scope !2041, !noalias !2040
  store <4 x i32> %wide.load22, ptr %i.ca, align 4, !tbaa !82, !alias.scope !2041, !noalias !2040
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !82, !alias.scope !2040
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !82, !alias.scope !2040
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !2025

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i.preheader26

.lr.ph.i40.i.i.i.preheader26:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader26, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader26 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader26 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !82
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !82
  store i32 0, ptr %i.cc, align 4, !tbaa !82
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.lr.ph.i40.i.i.i, !llvm.loop !2026

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EEEPS5_S7_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %xtraiter27 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.in.i.i.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %.06.i.i.i.i.i.prol = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cf = load ptr, ptr %.in.i.i.i.prol, align 8, !tbaa !188 ; 3 uses
  %i.cg = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !82, !noalias !2042
  store i32 %i.ci, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !82, !noalias !2042
  %i.cj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter27
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !2029

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.in.i.i.i.unr = phi ptr [ %.sroa.0.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cf, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.i.i.i.prol ]
  %i.ck = icmp ult i64 %3, 4
  br i1 %i.ck, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.in.i.i.i = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i ], [ %.in.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.06.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i.i.i.i = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cl = load ptr, ptr %.in.i.i.i, align 8, !tbaa !188 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !82, !noalias !2042
  store i32 %i.cn, ptr %.06.i.i.i.i.i, align 4, !tbaa !82, !noalias !2042
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !188 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !82, !noalias !2042
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !82, !noalias !2042
  %i.cs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !188 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !82, !noalias !2042
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !82, !noalias !2042
  %i.cw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !188 ; 2 uses
  %i.cy = add i64 %.035.i.i.i.i.i, -4             ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !82, !noalias !2042
  store i32 %i.da, ptr %i.cw, align 4, !tbaa !82, !noalias !2042
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2030

.lr.ph.i48.preheader.i.i.i:                       ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i48.i.i.i

.lr.ph.i48.i.i.i:                                 ; preds = %.lr.ph.i48.i.i.i, %.lr.ph.i48.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.dg, %.lr.ph.i48.i.i.i ], [ %i.a, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dh, %.lr.ph.i48.i.i.i ], [ %i.dc, %.lr.ph.i48.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dd = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !82
  store i32 %i.dd, ptr %.01517.i.i.i.i, align 4, !tbaa !82
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !82
  %i.de = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i49.i.i.i = icmp eq ptr %i.dg, %i.f
  br i1 %.not.i49.i.i.i, label %.lr.ph.i.i51.i.i.i.preheader, label %.lr.ph.i48.i.i.i, !llvm.loop !16

.lr.ph.i.i51.i.i.i.preheader:                     ; preds = %.lr.ph.i48.i.i.i
  %xtraiter29 = and i64 %i.ad, 3                  ; 2 uses
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.lr.ph.i.i51.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.prol

.lr.ph.i.i51.i.i.i.prol:                          ; preds = %.lr.ph.i.i51.i.i.i.preheader, %.lr.ph.i.i51.i.i.i.prol
  %i.di = phi ptr [ %i.dm, %.lr.ph.i.i51.i.i.i.prol ], [ %i.e, %.lr.ph.i.i51.i.i.i.preheader ] ; 2 uses
  %.06.i.i52.i.i.i.prol = phi ptr [ %i.dn, %.lr.ph.i.i51.i.i.i.prol ], [ %i.a, %.lr.ph.i.i51.i.i.i.preheader ] ; 2 uses
  %.035.i.i53.i.i.i.prol = phi i64 [ %i.dj, %.lr.ph.i.i51.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i51.i.i.i.preheader ]
  %prol.iter31 = phi i64 [ %prol.iter31.next, %.lr.ph.i.i51.i.i.i.prol ], [ 0, %.lr.ph.i.i51.i.i.i.preheader ]
  %i.dj = add i64 %.035.i.i53.i.i.i.prol, -1      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !82, !noalias !2043
  store i32 %i.dl, ptr %.06.i.i52.i.i.i.prol, align 4, !tbaa !82, !noalias !2043
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !105, !noalias !2043 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.06.i.i52.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter31.next = add i64 %prol.iter31, 1     ; 2 uses
  %prol.iter31.cmp.not = icmp eq i64 %prol.iter31.next, %xtraiter29
  br i1 %prol.iter31.cmp.not, label %.lr.ph.i.i51.i.i.i.prol.loopexit, label %.lr.ph.i.i51.i.i.i.prol, !llvm.loop !2033

.lr.ph.i.i51.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i51.i.i.i.prol, %.lr.ph.i.i51.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i51.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i51.i.i.i.prol ]
  %.unr = phi ptr [ %i.e, %.lr.ph.i.i51.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i51.i.i.i.prol ]
  %.06.i.i52.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i51.i.i.i.preheader ], [ %i.dn, %.lr.ph.i.i51.i.i.i.prol ]
  %.035.i.i53.i.i.i.unr = phi i64 [ %i.ad, %.lr.ph.i.i51.i.i.i.preheader ], [ %i.dj, %.lr.ph.i.i51.i.i.i.prol ]
  %i.do = icmp ult i64 %i.ad, 4
  br i1 %i.do, label %.loopexit.i.i.i, label %.lr.ph.i.i51.i.i.i

.lr.ph.i.i51.i.i.i:                               ; preds = %.lr.ph.i.i51.i.i.i.prol.loopexit, %.lr.ph.i.i51.i.i.i
  %i.dp = phi ptr [ %i.ef, %.lr.ph.i.i51.i.i.i ], [ %.unr, %.lr.ph.i.i51.i.i.i.prol.loopexit ] ; 2 uses
  %.06.i.i52.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i51.i.i.i ], [ %.06.i.i52.i.i.i.unr, %.lr.ph.i.i51.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i53.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i51.i.i.i ], [ %.035.i.i53.i.i.i.unr, %.lr.ph.i.i51.i.i.i.prol.loopexit ]
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !82, !noalias !2043
  store i32 %i.dr, ptr %.06.i.i52.i.i.i, align 4, !tbaa !82, !noalias !2043
  %i.ds = load ptr, ptr %i.dp, align 8, !tbaa !105, !noalias !2043 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.06.i.i52.i.i.i, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !82, !noalias !2043
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !82, !noalias !2043
  %i.dw = load ptr, ptr %i.ds, align 8, !tbaa !105, !noalias !2043 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.06.i.i52.i.i.i, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !82, !noalias !2043
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !82, !noalias !2043
  %i.ea = load ptr, ptr %i.dw, align 8, !tbaa !105, !noalias !2043 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.06.i.i52.i.i.i, i64 12
  %i.ec = add i64 %.035.i.i53.i.i.i, -4           ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !82, !noalias !2043
  store i32 %i.ee, ptr %i.eb, align 4, !tbaa !82, !noalias !2043
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !105, !noalias !2043 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.06.i.i52.i.i.i, i64 16
  %.not.i.i54.i.i.i.3 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i54.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph.i.i51.i.i.i, !llvm.loop !2030

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i51.i.i.i, %.lr.ph.i.i51.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i51.i.i.i.prol.loopexit ], [ %i.ef, %.lr.ph.i.i51.i.i.i ] ; 3 uses
  %i.eh = sub i64 %3, %i.ad                       ; 3 uses
  %.neg = add nsw i64 %i.ad, 1
  %xtraiter32 = and i64 %i.eh, 1
  %lcmp.mod33.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod33.not, label %.lr.ph.i.i56.i.i.i.prol.loopexit, label %.lr.ph.i.i56.i.i.i.prol

.lr.ph.i.i56.i.i.i.prol:                          ; preds = %.loopexit.i.i.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !82, !noalias !2044
  store i32 %i.ej, ptr %i.f, align 4, !tbaa !82, !noalias !2044
  %i.ek = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2044
  %i.el = add i32 %i.ek, 1
  store i32 %i.el, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2044
  %i.em = load ptr, ptr %.lcssa, align 8, !tbaa !105, !noalias !2044
  %i.en = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.eo = add nsw i64 %i.eh, -1
end_hunk_0
