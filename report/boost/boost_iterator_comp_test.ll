Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/boost_iterator_comp_test?download=true
inline.NumInlined: 971
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEENS0_12vec_iteratorIPiLb0EEESV_mT_NS_11move_detail17integral_constantIjLj1EEE:bb.a

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !37

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #23
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !31     ; 6 uses
  %i.t = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.x ; 2 uses
  %i.z = icmp ne ptr %i.s, %2
  %i.aa = icmp ne ptr %i.s, null                  ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.aa, %i.z
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i, !prof !85

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 4 %i.s, i64 %i.v, i1 false)
  %i.ab = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.not14.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.ac = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.prol ], [ %i.w, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.016.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.prol ], [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22, !noalias !282
  %i.af = shl nsw i32 %i.ae, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  store i32 %i.af, ptr %.01315.i.i.i.i.prol, align 4, !tbaa !22, !noalias !282
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !25, !noalias !282 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ai = add i64 %.016.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !281

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.prol ]
  %.016.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %i.aj = icmp ult i64 %3, 4
  br i1 %i.aj, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.ak = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.016.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 4, !tbaa !22, !noalias !282
  %i.an = shl nsw i32 %i.am, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 %i.an, ptr %.01315.i.i.i.i, align 4, !tbaa !22, !noalias !282
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !25, !noalias !282 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !22, !noalias !282
  %i.as = shl nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !22, !noalias !282
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !25, !noalias !282 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !22, !noalias !282
  %i.ax = shl nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !22, !noalias !282
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !25, !noalias !282 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22, !noalias !282
  %i.bc = shl nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !22, !noalias !282
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !25, !noalias !282
  %i.be = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %i.bf = add i64 %.016.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  %i.bg = icmp ne ptr %2, %i.y
  %i.bh = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.bh, %i.bg
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i, !prof !85

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.bj = ptrtoint ptr %i.y to i64
  %i.bk = sub i64 %i.bj, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull align 4 %2, i64 %i.bk, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i
  br i1 %i.aa, label %bb.i, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimSU_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !36
  %i.bm = shl i64 %i.bl, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bm) #21
  %.pre = load i64, ptr %i.d, align 8, !tbaa !38
  br label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimSU_mT_.exit

_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimSU_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i, %bb.i
  %i.bn = phi i64 [ %i.x, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.r, ptr %1, align 8, !tbaa !31
  %i.bo = add i64 %i.bn, %3
  store i64 %i.bo, ptr %i.d, align 8, !tbaa !38
  store i64 %i.o, ptr %i.a, align 8, !tbaa !44
  %i.bp = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.bp, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESE_EEEEEESD_SC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !37

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #23
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #22 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !31     ; 6 uses
  %i.t = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !41     ; 3 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.x ; 2 uses
  %i.z = icmp ne ptr %i.s, %2
  %i.aa = icmp ne ptr %i.s, null                  ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.aa, %i.z
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i, !prof !85

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 4 %i.s, i64 %i.v, i1 false)
  %i.ab = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 4 uses
  %.not14.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESB_EEE31uninitialized_copy_n_and_updateIS9_EEvRS4_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.prol.loopexit, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.w, i64 %i.ac
  %i.ae = and i64 %3, 7
  %i.af = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ag ; 2 uses
  %next.gep13 = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ag ; 3 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !22, !noalias !287
  %wide.load21 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !22, !noalias !287
  %i.ai = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %i.aj = shl nsw <4 x i32> %wide.load21, splat (i32 1)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep13) ]
  %i.ak = getelementptr i8, ptr %next.gep13, i64 16
  store <4 x i32> %i.ai, ptr %next.gep13, align 4, !tbaa !22, !noalias !287
  store <4 x i32> %i.aj, ptr %i.ak, align 4, !tbaa !22, !noalias !287
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %.lr.ph.i.i.i.i.prol, label %vector.body, !llvm.loop !285

.lr.ph.i.i.i.i.prol:                              ; preds = %vector.body
  %prol.iter.cmp.not = icmp eq i64 %3, %n.vec
  br i1 %prol.iter.cmp.not, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESB_EEE31uninitialized_copy_n_and_updateIS9_EEvRS4_T_m.exit.i.i, label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i.i.i.prol ]
  %.016.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.prol ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.am = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.016.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !22, !noalias !287
  %i.ao = shl nsw i32 %i.an, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 %i.ao, ptr %.01315.i.i.i.i, align 4, !tbaa !22, !noalias !287
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  %i.ar = add i64 %.016.i.i.i.i, -1               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESB_EEE31uninitialized_copy_n_and_updateIS9_EEvRS4_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !286

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESB_EEE31uninitialized_copy_n_and_updateIS9_EEvRS4_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  %i.as = icmp ne ptr %2, %i.y
  %i.at = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.at, %i.as
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIS4_Lb0EEENS_11use_defaultESC_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i, !prof !85

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESB_EEE31uninitialized_copy_n_and_updateIS9_EEvRS4_T_m.exit.i.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.av = ptrtoint ptr %i.y to i64
  %i.aw = sub i64 %i.av, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 4 %2, i64 %i.aw, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIS4_Lb0EEENS_11use_defaultESC_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIS4_Lb0EEENS_11use_defaultESC_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESB_EEE31uninitialized_copy_n_and_updateIS9_EEvRS4_T_m.exit.i.i
  br i1 %i.aa, label %bb.i, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESE_EEEEEEvSC_mSC_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIS4_Lb0EEENS_11use_defaultESC_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !36
  %i.ay = shl i64 %i.ax, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.ay) #21
  %.pre = load i64, ptr %i.d, align 8, !tbaa !38
  br label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESE_EEEEEEvSC_mSC_mT_.exit

_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESE_EEEEEEvSC_mSC_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIS4_Lb0EEENS_11use_defaultESC_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i, %bb.i
  %i.az = phi i64 [ %i.x, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIS4_Lb0EEENS_11use_defaultESC_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.r, ptr %1, align 8, !tbaa !31
  %i.ba = add i64 %i.az, %3
  store i64 %i.ba, ptr %i.d, align 8, !tbaa !38
  store i64 %i.o, ptr %i.a, align 8, !tbaa !44
  %i.bb = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.bb, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { allocsize(0) }
attributes #23 = { noreturn }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!3 = distinct !{!3, !21}
!4 = distinct !{!4, !21}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 _ZTSN5boost9intrusive10slist_nodeIPvEE", !14, i64 0}
!16 = !{!"_ZTSN5boost9intrusive10slist_nodeIPvEE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!"_ZTSN5boost9intrusive6detail11size_holderILb1EmvEE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!11, !11, i64 0}
!23 = !{!"p1 _ZTSN5boost9intrusive9list_nodeIPvEE", !14, i64 0}
!24 = !{!"_ZTSN5boost9intrusive9list_nodeIPvEE", !23, i64 0, !23, i64 8}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !23, i64 8}
!27 = !{!"p1 int", !14, i64 0}
!28 = !{!"_ZTSN5boost9intrusive17iiterator_membersIPNS0_10slist_nodeIPvEEPKNS0_8bhtraitsINS_9container9base_nodeIiNS7_3dtl10slist_hookIS3_EELb0EEENS0_17slist_node_traitsIS3_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEELb0EEE", !15, i64 0}
!29 = !{!28, !15, i64 0}
!30 = !{!"_ZTSN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEEE", !27, i64 0, !18, i64 8, !18, i64 16}
!31 = !{!30, !27, i64 0}
!32 = !{!"_ZTSN5boost9container6vectorIivvEE", !30, i64 0}
!33 = !{!32, !18, i64 8}
!34 = !{!"_ZTSN5boost9intrusive17iiterator_membersIPNS0_9list_nodeIPvEEPKNS0_8bhtraitsINS_9container9base_nodeIiNS7_3dtl9list_hookIS3_EELb0EEENS0_16list_node_traitsIS3_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEE", !23, i64 0}
!35 = !{!34, !23, i64 0}
!36 = !{!30, !18, i64 16}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!30, !18, i64 8}
!39 = !{!"_ZTSN5boost9container12vec_iteratorIPiLb0EEE", !27, i64 0}
!40 = !{!39, !27, i64 0}
!41 = !{!27, !27, i64 0}
!42 = !{!"_ZTSN5boost9intrusive14slist_iteratorINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEELb0EEE", !28, i64 0}
!43 = !{!42, !15, i64 0}
!44 = !{!18, !18, i64 0}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!15, !15, i64 0}
!47 = !{!"_ZTSN5boost9intrusive13list_iteratorINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEE", !34, i64 0}
!48 = !{!47, !23, i64 0}
!49 = !{!23, !23, i64 0}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!"branch_weights", i32 1, i32 1048575}
!53 = !{!"bool", !10, i64 0}
!54 = !{!"_ZTSN5boost6detail11test_resultE", !53, i64 0, !11, i64 4}
!55 = !{!54, !53, i64 0}
!56 = !{!54, !11, i64 4}
!57 = !{!"vtable pointer", !9, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!60 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!61 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!62 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !18, i64 8}
!63 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!64 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!65 = !{!"_ZTSSt6locale", !64, i64 0}
!66 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !59, i64 24, !60, i64 28, !60, i64 32, !61, i64 40, !62, i64 48, !10, i64 64, !11, i64 192, !63, i64 200, !65, i64 208}
!67 = !{!"p1 _ZTSSo", !14, i64 0}
!68 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 0}
!69 = !{!"p1 _ZTSSt5ctypeIcE", !14, i64 0}
!70 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!71 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !14, i64 0}
!72 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !66, i64 0, !67, i64 216, !10, i64 224, !53, i64 225, !68, i64 232, !69, i64 240, !70, i64 248, !71, i64 256}
!73 = !{!72, !69, i64 240}
!74 = !{!"_ZTSNSt6locale5facetE", !11, i64 8}
!75 = !{!"p1 _ZTS15__locale_struct", !14, i64 0}
!76 = !{!"p1 short", !14, i64 0}
!77 = !{!"_ZTSSt5ctypeIcE", !74, i64 0, !75, i64 16, !53, i64 24, !27, i64 32, !27, i64 40, !76, i64 48, !10, i64 56, !10, i64 57, !10, i64 313, !10, i64 569}
!78 = !{!77, !10, i64 56}
!79 = !{!10, !10, i64 0}
!80 = !{!"_ZTSSt9exception"}
!81 = !{!"p1 omnipotent char", !14, i64 0}
!82 = !{!"_ZTSN5boost9container9exceptionE", !80, i64 0, !81, i64 8}
!83 = !{!82, !81, i64 8}
!84 = !{!"branch_weights", i32 2002, i32 2000}
!85 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!86 = distinct !{!86, !21}
!87 = distinct !{!87, i1 false, !"_ZN5boost9container5slistIivE11erase_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS5_8bhtraitsINS0_9base_nodeIiNS3_10slist_hookIPvEELb0EEENS5_17slist_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj2EEELb0EEELb1EEESJ_"}
!88 = distinct !{!88, !87, !"_ZN5boost9container5slistIivE11erase_afterENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS5_8bhtraitsINS0_9base_nodeIiNS3_10slist_hookIPvEELb0EEENS5_17slist_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj2EEELb0EEELb1EEESJ_: argument 0"}
!89 = distinct !{!89, i1 false, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE23erase_after_and_disposeINS5_24allocator_node_destroyerINS3_13new_allocatorIS9_EEEEEENS0_14slist_iteratorISE_Lb0EEENSL_ISE_Lb1EEESN_T_"}
!90 = distinct !{!90, !89, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE23erase_after_and_disposeINS5_24allocator_node_destroyerINS3_13new_allocatorIS9_EEEEEENS0_14slist_iteratorISE_Lb0EEENSL_ISE_Lb1EEESN_T_: argument 0"}
!91 = distinct !{!91, !21}
!92 = distinct !{!92, i1 false, !"_ZN5boost9container5slistIivE12insert_afterINS0_29value_init_construct_iteratorIiEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS6_10slist_hookIPvEELb0EEENS8_17slist_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj2EEELb0EEELb0EEENS7_ISL_Lb1EEET_SO_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISO_mEE5valueoosr3dtl17is_input_iteratorISO_EE5valueL_ZNSP_7is_sameINSP_17integral_constantIjLj1EEEST_E5valueEEENSP_13enable_if_natEE4typeE"}
!93 = distinct !{!93, !92, !"_ZN5boost9container5slistIivE12insert_afterINS0_29value_init_construct_iteratorIiEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS6_10slist_hookIPvEELb0EEENS8_17slist_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj2EEELb0EEELb0EEENS7_ISL_Lb1EEET_SO_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISO_mEE5valueoosr3dtl17is_input_iteratorISO_EE5valueL_ZNSP_7is_sameINSP_17integral_constantIjLj1EEEST_E5valueEEENSP_13enable_if_natEE4typeE: argument 0"}
!94 = distinct !{!94, i1 false, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12insert_afterENS0_14slist_iteratorISE_Lb1EEERS9_"}
!95 = distinct !{!95, !94, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE12insert_afterENS0_14slist_iteratorISE_Lb1EEERS9_: argument 0"}
!96 = distinct !{!96, !21}
!97 = distinct !{!97, i1 false, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!98 = distinct !{!98, !97, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!99 = distinct !{!99, !21}
!100 = distinct !{!100, i1 false, !"_ZN5boost9container5slistIivE5beginEv"}
!101 = distinct !{!101, !100, !"_ZN5boost9container5slistIivE5beginEv: argument 0"}
!102 = distinct !{!102, i1 false, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5beginEv"}
!103 = distinct !{!103, !102, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5beginEv: argument 0"}
!104 = distinct !{!104, i1 false, !"_ZN5boost9container6vectorIivvE6insertINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEEENS0_12vec_iteratorIPiLb0EEENSQ_ISR_Lb1EEET_SU_PNS_11move_detail13disable_if_orIvNSV_14is_convertibleISU_mEENS7_17is_input_iteratorISU_Xsr21has_iterator_categoryISU_EE5valueEEENSV_5bool_ILb0EEES12_E4typeE"}
!105 = distinct !{!105, !104, !"_ZN5boost9container6vectorIivvE6insertINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEEENS0_12vec_iteratorIPiLb0EEENSQ_ISR_Lb1EEET_SU_PNS_11move_detail13disable_if_orIvNSV_14is_convertibleISU_mEENS7_17is_input_iteratorISU_Xsr21has_iterator_categoryISU_EE5valueEEENSV_5bool_ILb0EEES12_E4typeE: argument 0"}
!106 = distinct !{!106, i1 false, !"_ZN5boost9container6vectorIivvE3endEv"}
!107 = distinct !{!107, !106, !"_ZN5boost9container6vectorIivvE3endEv: argument 0"}
!108 = distinct !{!108, i1 false, !"_ZN5boost9container4listIivE5beginEv"}
!109 = distinct !{!109, !108, !"_ZN5boost9container4listIivE5beginEv: argument 0"}
!110 = distinct !{!110, i1 false, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!111 = distinct !{!111, !110, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!112 = distinct !{!112, i1 false, !"_ZN5boost9container6vectorIivvE6insertINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEEENS0_12vec_iteratorIPiLb0EEENSQ_ISR_Lb1EEET_SU_PNS_11move_detail13disable_if_orIvNSV_14is_convertibleISU_mEENS7_17is_input_iteratorISU_Xsr21has_iterator_categoryISU_EE5valueEEENSV_5bool_ILb0EEES12_E4typeE"}
!113 = distinct !{!113, !112, !"_ZN5boost9container6vectorIivvE6insertINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEEENS0_12vec_iteratorIPiLb0EEENSQ_ISR_Lb1EEET_SU_PNS_11move_detail13disable_if_orIvNSV_14is_convertibleISU_mEENS7_17is_input_iteratorISU_Xsr21has_iterator_categoryISU_EE5valueEEENSV_5bool_ILb0EEES12_E4typeE: argument 0"}
!114 = distinct !{!114, i1 false, !"_ZN5boost9container6vectorIivvE3endEv"}
!115 = distinct !{!115, !114, !"_ZN5boost9container6vectorIivvE3endEv: argument 0"}
!116 = distinct !{!116, i1 false, !"_ZN5boost9container6vectorIivvE6insertINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EEEES9_NS7_IS8_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESM_E4typeE"}
!117 = distinct !{!117, !116, !"_ZN5boost9container6vectorIivvE6insertINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EEEES9_NS7_IS8_Lb1EEET_SD_PNS_11move_detail13disable_if_orIvNSE_14is_convertibleISD_mEENS0_3dtl17is_input_iteratorISD_Xsr21has_iterator_categoryISD_EE5valueEEENSE_5bool_ILb0EEESM_E4typeE: argument 0"}
!118 = distinct !{!118, i1 false, !"_ZN5boost9container6vectorIivvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESE_EEEEEESD_RKSC_mT_"}
!119 = distinct !{!119, !118, !"_ZN5boost9container6vectorIivvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESE_EEEEEESD_RKSC_mT_: argument 0"}
!120 = distinct !{!120, i1 false, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SE_mSF_"}
!121 = distinct !{!121, !120, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SE_mSF_: argument 0"}
!122 = distinct !{!122, i1 false, !"_ZN5boost9container5slistIivE5beginEv"}
!123 = distinct !{!123, !122, !"_ZN5boost9container5slistIivE5beginEv: argument 0"}
!124 = distinct !{!124, i1 false, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5beginEv"}
!125 = distinct !{!125, !124, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5beginEv: argument 0"}
!126 = distinct !{!126, i1 false, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS3_9base_nodeIiNS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESO_EESN_SM_"}
!127 = distinct !{!127, !126, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS3_9base_nodeIiNS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESO_EESN_SM_: argument 0"}
!128 = distinct !{!128, i1 false, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS3_9base_nodeIiNS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESO_EESN_SM_"}
!129 = distinct !{!129, !128, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS6_8bhtraitsINS3_9base_nodeIiNS4_10slist_hookIPvEELb0EEENS6_17slist_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj2EEELb0EEELb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESO_EESN_SM_: argument 0"}
!130 = distinct !{!130, i1 false, !"_ZN5boost9container4listIivE5beginEv"}
!131 = distinct !{!131, !130, !"_ZN5boost9container4listIivE5beginEv: argument 0"}
!132 = distinct !{!132, i1 false, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!133 = distinct !{!133, !132, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!134 = distinct !{!134, i1 false, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS3_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESO_EESN_SM_"}
!135 = distinct !{!135, !134, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS3_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESO_EESN_SM_: argument 0"}
!136 = distinct !{!136, i1 false, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS3_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESO_EESN_SM_"}
!137 = distinct !{!137, !136, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS3_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESO_EESN_SM_: argument 0"}
!138 = distinct !{!138, i1 false, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container12vec_iteratorIPiLb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESA_EES9_S8_"}
!139 = distinct !{!139, !138, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container12vec_iteratorIPiLb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESA_EES9_S8_: argument 0"}
!140 = distinct !{!140, i1 false, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container12vec_iteratorIPiLb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESA_EES9_S8_"}
!141 = distinct !{!141, !140, !"_ZN5boost9iterators23make_transform_iteratorI4funcNS_9container12vec_iteratorIPiLb0EEEEENS0_18transform_iteratorIT_T0_NS_11use_defaultESA_EES9_S8_: argument 0"}
!142 = distinct !{!142, i1 false, !"_ZN5boost9container5slistIivE5beginEv"}
!143 = distinct !{!143, !142, !"_ZN5boost9container5slistIivE5beginEv: argument 0"}
!144 = distinct !{!144, i1 false, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5beginEv"}
!145 = distinct !{!145, !144, !"_ZN5boost9intrusive10slist_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl10slist_hookIPvEELb0EEENS0_17slist_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj2EEEmLm2EvE5beginEv: argument 0"}
!146 = distinct !{!146, i1 false, !"_ZN5boost9container4listIivE5beginEv"}
!147 = distinct !{!147, !146, !"_ZN5boost9container4listIivE5beginEv: argument 0"}
!148 = distinct !{!148, i1 false, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!149 = distinct !{!149, !148, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!150 = distinct !{!150, i1 false, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!151 = distinct !{!151, !150, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!152 = distinct !{!152, i1 false, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv"}
!153 = distinct !{!153, !152, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE5beginEv: argument 0"}
!154 = !{!90, !88}
!155 = !{!93}
!156 = !{!95, !93}
!157 = !{!98}
!158 = !{!"_ZTSN5boost9container12vec_iteratorIPiLb1EEE", !27, i64 0}
!159 = !{!158, !27, i64 0}
!160 = !{!103, !101}
!161 = !{!105}
!162 = !{!107}
!163 = !{!111, !109}
!164 = !{!113}
!165 = !{!115}
!166 = !{!117}
!167 = !{!119, !117}
!168 = !{!121, !119, !117}
!169 = !{!125, !123}
!170 = !{!127}
!171 = !{!129}
!172 = !{!133, !131}
!173 = !{!135}
!174 = !{!137}
!175 = !{!139}
!176 = !{!141}
!177 = !{!145, !143}
!178 = !{!149, !147}
!179 = !{!151}
!180 = !{!153}
!181 = distinct !{!181, !21}
!182 = distinct !{!182, i1 false, !"_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_"}
!183 = distinct !{!183, !182, !"_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_: argument 0"}
!184 = distinct !{!184, !45}
!185 = distinct !{!185, !21}
!186 = distinct !{!186, !45}
!187 = distinct !{!187, !21}
!188 = distinct !{!188, !45}
!189 = distinct !{!189, !21}
!190 = !{!183}
!191 = distinct !{!191, !21}
!192 = distinct !{!192, i1 false, !"_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_"}
!193 = distinct !{!193, !192, !"_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_: argument 0"}
!194 = distinct !{!194, !45}
!195 = distinct !{!195, !21}
!196 = distinct !{!196, !45}
!197 = distinct !{!197, !21}
!198 = distinct !{!198, !45}
!199 = distinct !{!199, !21}
!200 = !{!193}
!201 = distinct !{!201, !21, !50, !51}
!202 = distinct !{!202, !21, !50}
!203 = distinct !{!203, i1 false, !"_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_"}
!204 = distinct !{!204, !203, !"_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_: argument 0"}
!205 = distinct !{!205, !21, !50, !51}
!206 = distinct !{!206, !45}
!207 = distinct !{!207, !21, !50}
!208 = distinct !{!208, !21, !50, !51}
!209 = distinct !{!209, !45}
!210 = distinct !{!210, !21, !50}
!211 = distinct !{!211, !21, !50, !51}
!212 = distinct !{!212, !45}
!213 = distinct !{!213, !21, !50}
!214 = !{!204}
!215 = !{!66, !60, i64 32}
!216 = distinct !{null}
!217 = !{i8 0, i8 2}
!218 = !{}
!219 = distinct !{!219, !45}
!220 = distinct !{!220, !45}
!221 = distinct !{!221, !21}
!222 = distinct !{!222, !21}
!223 = distinct !{!223, i1 false, !"_ZN5boost9container4listIivE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS5_8bhtraitsINS0_9base_nodeIiNS3_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEELb0EEELb1EEESJ_"}
!224 = distinct !{!224, !223, !"_ZN5boost9container4listIivE5eraseENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS5_8bhtraitsINS0_9base_nodeIiNS3_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEELb0EEELb1EEESJ_: argument 0"}
!225 = distinct !{!225, i1 false, !"_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEE11erase_rangeERKNS5_13list_iteratorISH_Lb0EEESN_NS_11move_detail17integral_constantIjLj1EEE"}
!226 = distinct !{!226, !225, !"_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEE11erase_rangeERKNS5_13list_iteratorISH_Lb0EEESN_NS_11move_detail17integral_constantIjLj1EEE: argument 0"}
!227 = distinct !{!227, i1 false, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE17erase_and_disposeINS5_24allocator_node_destroyerINS3_13new_allocatorIS9_EEEEEENS0_13list_iteratorISE_Lb0EEENSL_ISE_Lb1EEESN_T_"}
!228 = distinct !{!228, !227, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE17erase_and_disposeINS5_24allocator_node_destroyerINS3_13new_allocatorIS9_EEEEEENS0_13list_iteratorISE_Lb0EEENSL_ISE_Lb1EEESN_T_: argument 0"}
!229 = distinct !{!229, !21}
!230 = distinct !{!230, i1 false, !"_ZN5boost9container4listIivE6insertINS0_29value_init_construct_iteratorIiEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb0EEENS7_ISL_Lb1EEET_SO_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISO_mEE5valueoosr3dtl17is_input_iteratorISO_EE5valueL_ZNSP_7is_sameINSP_17integral_constantIjLj1EEEST_E5valueEEENSP_13enable_if_natEE4typeE"}
!231 = distinct !{!231, !230, !"_ZN5boost9container4listIivE6insertINS0_29value_init_construct_iteratorIiEEEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS8_8bhtraitsINS0_9base_nodeIiNS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb0EEENS7_ISL_Lb1EEET_SO_PNS_11move_detail11enable_if_cIXaantsr3dtl14is_convertibleISO_mEE5valueoosr3dtl17is_input_iteratorISO_EE5valueL_ZNSP_7is_sameINSP_17integral_constantIjLj1EEEST_E5valueEEENSP_13enable_if_natEE4typeE: argument 0"}
!232 = distinct !{!232, i1 false, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISE_Lb1EEERS9_"}
!233 = distinct !{!233, !232, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISE_Lb1EEERS9_: argument 0"}
!234 = distinct !{!234, i1 false, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISE_Lb1EEERS9_"}
!235 = distinct !{!235, !234, !"_ZN5boost9intrusive9list_implINS0_8bhtraitsINS_9container9base_nodeIiNS3_3dtl9list_hookIPvEELb0EEENS0_16list_node_traitsIS7_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEEmLb1EvE6insertENS0_13list_iteratorISE_Lb1EEERS9_: argument 0"}
!236 = distinct !{!236, !21}
!237 = !{!228, !226, !224}
!238 = !{!231}
!239 = !{!233, !231}
!240 = !{!235, !231}
!241 = distinct !{!241, i1 false, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_"}
!242 = distinct !{!242, !241, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_: argument 0"}
!243 = distinct !{!243, !45}
!244 = distinct !{!244, i1 false, !"_ZN5boost9container13copy_n_sourceINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mSR_"}
!245 = distinct !{!245, !244, !"_ZN5boost9container13copy_n_sourceINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mSR_: argument 0"}
!246 = distinct !{!246, !45}
!247 = distinct !{!247, !21}
!248 = distinct !{!248, i1 false, !"_ZN5boost9container13copy_n_sourceINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mSR_"}
!249 = distinct !{!249, !248, !"_ZN5boost9container13copy_n_sourceINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENS7_17slist_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mSR_: argument 0"}
!250 = distinct !{!250, !45}
!251 = distinct !{!251, i1 false, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_"}
!252 = distinct !{!252, !251, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_: argument 0"}
!253 = distinct !{!253, !45}
!254 = !{!242}
!255 = !{!245}
!256 = !{!249}
!257 = !{!252}
!258 = distinct !{!258, i1 false, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_"}
!259 = distinct !{!259, !258, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_: argument 0"}
!260 = distinct !{!260, !45}
!261 = !{!259}
!262 = distinct !{!262, i1 false, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_"}
!263 = distinct !{!263, !262, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_: argument 0"}
!264 = distinct !{!264, !45}
!265 = distinct !{!265, i1 false, !"_ZN5boost9container13copy_n_sourceINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mSR_"}
!266 = distinct !{!266, !265, !"_ZN5boost9container13copy_n_sourceINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mSR_: argument 0"}
!267 = distinct !{!267, !45}
!268 = distinct !{!268, !21}
!269 = distinct !{!269, i1 false, !"_ZN5boost9container13copy_n_sourceINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mSR_"}
!270 = distinct !{!270, !269, !"_ZN5boost9container13copy_n_sourceINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mSR_: argument 0"}
!271 = distinct !{!271, !45}
!272 = distinct !{!272, i1 false, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_"}
!273 = distinct !{!273, !272, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_: argument 0"}
!274 = distinct !{!274, !45}
!275 = !{!263}
!276 = !{!266}
!277 = !{!270}
!278 = !{!273}
!279 = distinct !{!279, i1 false, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_"}
!280 = distinct !{!280, !279, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEENS7_41disable_if_memtransfer_copy_constructibleIT0_T1_SS_E4typeERT_SS_mST_: argument 0"}
!281 = distinct !{!281, !45}
!282 = !{!280}
!283 = distinct !{!283, i1 false, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SE_mSF_"}
!284 = distinct !{!284, !283, !"_ZN5boost9container33uninitialized_copy_alloc_n_sourceINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SE_E4typeERT_SE_mSF_: argument 0"}
!285 = distinct !{!285, !21, !50, !51}
!286 = distinct !{!286, !21, !51, !50}
!287 = !{!284}
end_hunk_0
