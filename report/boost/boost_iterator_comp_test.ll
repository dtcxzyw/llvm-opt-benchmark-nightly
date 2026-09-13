Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/boost_iterator_comp_test?download=true
inline.NumInlined: 971
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5boost9container6vectorIivvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEENS0_12vec_iteratorIPiLb0EEERKSV_mT_:bb.a
  %.in.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.in.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.016.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.r = load ptr, ptr %.in.i.i, align 8, !tbaa !46 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22, !noalias !254
  %i.u = shl nsw i32 %i.t, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 %i.u, ptr %.01315.i.i.i.i, align 4, !tbaa !22, !noalias !254
  %i.v = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !46   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22, !noalias !254
  %i.z = shl nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.v, align 4, !tbaa !22, !noalias !254
  %i.aa = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !46  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22, !noalias !254
  %i.ae = shl nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.aa, align 4, !tbaa !22, !noalias !254
  %i.af = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !46 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22, !noalias !254
  %i.aj = shl nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !22, !noalias !254
  %i.ak = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %i.al = add i64 %.016.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3

bb.d:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !37

bb.e:                                             ; preds = %bb.d
  store ptr %i.g, ptr %.sroa.0.i.i, align 8, !tbaa !29
  %i.am = ptrtoint ptr %i.i to i64
  %i.an = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = ashr exact i64 %i.ao, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ap, %3
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sub i64 0, %3
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aq ; 3 uses
  %.not11.i.i = icmp eq ptr %i.h, null
  br i1 %.not11.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i, label %bb.g, !prof !84

bb.g:                                             ; preds = %bb.f
  %i.as = shl i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %i.ar, i64 %i.as, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.not.i.i10.i.i = icmp eq ptr %i.ar, %i.a
  br i1 %.not.i.i10.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %bb.h, !prof !37

bb.h:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.at, %i.an                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 2
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ax, ptr align 4 %i.a, i64 %i.au, i1 false)
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.in.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %.06.i.i.i.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ay = load ptr, ptr %.in.i.i.i.prol, align 8, !tbaa !46 ; 3 uses
  %i.az = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22, !noalias !255
  %i.bc = shl nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !22, !noalias !255
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !246

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.in.i.i.i.unr = phi ptr [ %.sroa.0.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.i.prol ]
  %i.be = icmp ult i64 %3, 4
  br i1 %i.be, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.in.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.in.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.06.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.bf = load ptr, ptr %.in.i.i.i, align 8, !tbaa !46 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !255
  %i.bi = shl nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %.06.i.i.i.i.i, align 4, !tbaa !22, !noalias !255
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !46 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22, !noalias !255
  %i.bn = shl nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !22, !noalias !255
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !46 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !22, !noalias !255
  %i.bs = shl nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !22, !noalias !255
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !46 ; 2 uses
  %i.bv = add i64 %.035.i.i.i.i.i, -4             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !22, !noalias !255
  %i.by = shl nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !22, !noalias !255
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %.not.i.i35.i.i.i.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i35.i.i.i.3, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !247

bb.i:                                             ; preds = %bb.e
  %.not12.i.i = icmp eq ptr %i.a, null
  br i1 %.not12.i.i, label %.lr.ph.i.i39.i.i.i.preheader, label %bb.j, !prof !37

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 4 %i.a, i64 %i.ao, i1 false)
  br label %.lr.ph.i.i39.i.i.i.preheader

.lr.ph.i.i39.i.i.i.preheader:                     ; preds = %bb.j, %bb.i
  %xtraiter22 = and i64 %i.ap, 3                  ; 2 uses
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.lr.ph.i.i39.i.i.i.prol.loopexit, label %.lr.ph.i.i39.i.i.i.prol

.lr.ph.i.i39.i.i.i.prol:                          ; preds = %.lr.ph.i.i39.i.i.i.preheader, %.lr.ph.i.i39.i.i.i.prol
  %i.cb = phi ptr [ %i.cg, %.lr.ph.i.i39.i.i.i.prol ], [ %i.g, %.lr.ph.i.i39.i.i.i.preheader ] ; 2 uses
  %.06.i.i40.i.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i.i39.i.i.i.prol ], [ %i.a, %.lr.ph.i.i39.i.i.i.preheader ] ; 2 uses
  %.035.i.i41.i.i.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i39.i.i.i.prol ], [ %i.ap, %.lr.ph.i.i39.i.i.i.preheader ]
  %prol.iter24 = phi i64 [ %prol.iter24.next, %.lr.ph.i.i39.i.i.i.prol ], [ 0, %.lr.ph.i.i39.i.i.i.preheader ]
  %i.cc = add i64 %.035.i.i41.i.i.i.prol, -1      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !22, !noalias !256
  %i.cf = shl nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %.06.i.i40.i.i.i.prol, align 4, !tbaa !22, !noalias !256
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !17, !noalias !256 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter24.next = add i64 %prol.iter24, 1     ; 2 uses
  %prol.iter24.cmp.not = icmp eq i64 %prol.iter24.next, %xtraiter22
  br i1 %prol.iter24.cmp.not, label %.lr.ph.i.i39.i.i.i.prol.loopexit, label %.lr.ph.i.i39.i.i.i.prol, !llvm.loop !250

.lr.ph.i.i39.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i39.i.i.i.prol, %.lr.ph.i.i39.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i39.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i39.i.i.i.prol ]
  %.unr = phi ptr [ %i.g, %.lr.ph.i.i39.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i39.i.i.i.prol ]
  %.06.i.i40.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i39.i.i.i.preheader ], [ %i.ch, %.lr.ph.i.i39.i.i.i.prol ]
  %.035.i.i41.i.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i39.i.i.i.preheader ], [ %i.cc, %.lr.ph.i.i39.i.i.i.prol ]
  %i.ci = icmp ult i64 %i.ap, 4
  br i1 %i.ci, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i, label %.lr.ph.i.i39.i.i.i

.lr.ph.i.i39.i.i.i:                               ; preds = %.lr.ph.i.i39.i.i.i.prol.loopexit, %.lr.ph.i.i39.i.i.i
  %i.cj = phi ptr [ %i.dd, %.lr.ph.i.i39.i.i.i ], [ %.unr, %.lr.ph.i.i39.i.i.i.prol.loopexit ] ; 2 uses
  %.06.i.i40.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i39.i.i.i ], [ %.06.i.i40.i.i.i.unr, %.lr.ph.i.i39.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i41.i.i.i = phi i64 [ %i.cz, %.lr.ph.i.i39.i.i.i ], [ %.035.i.i41.i.i.i.unr, %.lr.ph.i.i39.i.i.i.prol.loopexit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22, !noalias !256
  %i.cm = shl nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %.06.i.i40.i.i.i, align 4, !tbaa !22, !noalias !256
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !17, !noalias !256 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !22, !noalias !256
  %i.cr = shl nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !22, !noalias !256
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !17, !noalias !256 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !22, !noalias !256
  %i.cw = shl nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !22, !noalias !256
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !17, !noalias !256 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i, i64 12
  %i.cz = add i64 %.035.i.i41.i.i.i, -4           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !22, !noalias !256
  %i.dc = shl nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !22, !noalias !256
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !17, !noalias !256 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i, i64 16
  %.not.i.i42.i.i.i.3 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i42.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i, label %.lr.ph.i.i39.i.i.i, !llvm.loop !247

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i: ; preds = %.lr.ph.i.i39.i.i.i, %.lr.ph.i.i39.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i39.i.i.i.prol.loopexit ], [ %i.dd, %.lr.ph.i.i39.i.i.i ] ; 2 uses
  %i.df = sub nuw i64 %3, %i.ap                   ; 4 uses
  %lcmp.mod26.not = icmp eq i64 %i.df, 0
  br i1 %lcmp.mod26.not, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i44.i.i.i.preheader

.lr.ph.i.i44.i.i.i.preheader:                     ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i
  %xtraiter26 = and i64 %i.df, 3                  ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph.i.i44.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.prol

.lr.ph.i.i44.i.i.i.prol:                          ; preds = %.lr.ph.i.i44.i.i.i.preheader, %.lr.ph.i.i44.i.i.i.prol
  %i.dg = phi ptr [ %i.dk, %.lr.ph.i.i44.i.i.i.prol ], [ %.lcssa, %.lr.ph.i.i44.i.i.i.preheader ] ; 2 uses
  %.016.i.i.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i44.i.i.i.prol ], [ %i.df, %.lr.ph.i.i44.i.i.i.preheader ]
  %.01315.i.i.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i44.i.i.i.prol ], [ %i.i, %.lr.ph.i.i44.i.i.i.preheader ] ; 3 uses
  %prol.iter27 = phi i64 [ %prol.iter27.next, %.lr.ph.i.i44.i.i.i.prol ], [ 0, %.lr.ph.i.i44.i.i.i.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !22, !noalias !257
  %i.dj = shl nsw i32 %i.di, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.prol) ]
  store i32 %i.dj, ptr %.01315.i.i.i.i.i.prol, align 4, !tbaa !22, !noalias !257
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !17, !noalias !257 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.dm = add i64 %.016.i.i.i.i.i.prol, -1        ; 2 uses
  %prol.iter27.next = add i64 %prol.iter27, 1     ; 2 uses
  %prol.iter27.cmp.not = icmp eq i64 %prol.iter27.next, %xtraiter26
  br i1 %prol.iter27.cmp.not, label %.lr.ph.i.i44.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.prol, !llvm.loop !253

.lr.ph.i.i44.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i44.i.i.i.prol, %.lr.ph.i.i44.i.i.i.preheader
  %.unr28 = phi ptr [ %.lcssa, %.lr.ph.i.i44.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i44.i.i.i.prol ]
  %.016.i.i.i.i.i.unr = phi i64 [ %i.df, %.lr.ph.i.i44.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i44.i.i.i.prol ]
  %.01315.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i44.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i44.i.i.i.prol ]
  %i.dn = sub i64 %i.ap, %3
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i44.i.i.i

.lr.ph.i.i44.i.i.i:                               ; preds = %.lr.ph.i.i44.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i
  %i.dp = phi ptr [ %i.ei, %.lr.ph.i.i44.i.i.i ], [ %.unr28, %.lr.ph.i.i44.i.i.i.prol.loopexit ] ; 2 uses
  %.016.i.i.i.i.i = phi i64 [ %i.ek, %.lr.ph.i.i44.i.i.i ], [ %.016.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i44.i.i.i ], [ %.01315.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !22, !noalias !257
  %i.ds = shl nsw i32 %i.dr, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i) ]
  store i32 %i.ds, ptr %.01315.i.i.i.i.i, align 4, !tbaa !22, !noalias !257
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !17, !noalias !257 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !22, !noalias !257
  %i.dx = shl nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !22, !noalias !257
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !17, !noalias !257 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !22, !noalias !257
  %i.ec = shl nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !22, !noalias !257
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !17, !noalias !257 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !22, !noalias !257
  %i.eh = shl nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !22, !noalias !257
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !17, !noalias !257
  %i.ej = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 16
  %i.ek = add i64 %.016.i.i.i.i.i, -4             ; 2 uses
  %.not.i.i45.i.i.i.3 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i45.i.i.i.3, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i44.i.i.i, !llvm.loop !3

_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.c, %bb.d, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.el = load i64, ptr %i.d, align 8, !tbaa !38
  %i.em = add i64 %i.el, %3
  store i64 %i.em, ptr %i.d, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.en = load ptr, ptr %2, align 8, !tbaa !41
  store ptr %i.en, ptr %0, align 8, !tbaa !40
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  store ptr %i.g, ptr %5, align 8, !tbaa !29
  call void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEENS0_12vec_iteratorIPiLb0EEESV_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef %3, ptr noundef nonnull align 8 dead_on_return %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEENS0_12vec_iteratorIPiLb0EEESV_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.s = load ptr, ptr %1, align 8, !tbaa !31     ; 7 uses
  %i.t = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !43     ; 2 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.x ; 2 uses
  %i.z = icmp ne ptr %i.s, %2
  %i.aa = icmp ne ptr %i.s, null
  %spec.select.i.i.i.i = and i1 %i.aa, %i.z
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i, !prof !85

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 4 %i.s, i64 %i.v, i1 false)
  %i.ab = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.not14.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.ac = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.prol ], [ %i.w, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.016.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.prol ], [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !22, !noalias !261
  %i.af = shl nsw i32 %i.ae, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  store i32 %i.af, ptr %.01315.i.i.i.i.prol, align 4, !tbaa !22, !noalias !261
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !17, !noalias !261 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 4 ; 2 uses
  %i.ai = add i64 %.016.i.i.i.i.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !260

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.prol ]
  %.016.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.prol ]
  %i.aj = icmp ult i64 %3, 4
  br i1 %i.aj, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.ak = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.016.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !22, !noalias !261
  %i.an = shl nsw i32 %i.am, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 %i.an, ptr %.01315.i.i.i.i, align 4, !tbaa !22, !noalias !261
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !17, !noalias !261 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !22, !noalias !261
  %i.as = shl nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !22, !noalias !261
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !17, !noalias !261 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !22, !noalias !261
  %i.ax = shl nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !22, !noalias !261
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !17, !noalias !261 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22, !noalias !261
  %i.bc = shl nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !22, !noalias !261
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !17, !noalias !261
  %i.be = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %i.bf = add i64 %.016.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  %i.bg = icmp ne ptr %2, %i.y
  %i.bh = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.bh, %i.bg
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENSB_17slist_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i, !prof !85

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.bj = ptrtoint ptr %i.y to i64
  %i.bk = sub i64 %i.bj, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr nonnull align 4 %2, i64 %i.bk, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENSB_17slist_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENSB_17slist_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_10slist_hookIPvEELb0EEENS9_17slist_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESO_EEE31uninitialized_copy_n_and_updateIPiEEvRS4_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimSU_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENSB_17slist_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !36
  %i.bm = shl i64 %i.bl, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.bm) #21
  %.pre = load i64, ptr %i.d, align 8, !tbaa !38
  br label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimSU_mT_.exit

_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_10slist_hookIPvEELb0EEENSC_17slist_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimSU_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENSB_17slist_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i, %bb.i
  %i.bn = phi i64 [ %i.x, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl18insert_range_proxyIS3_NS_9iterators18transform_iteratorI4funcNS5_23iterator_from_iiteratorINS_9intrusive14slist_iteratorINSB_8bhtraitsINS0_9base_nodeIiNS5_10slist_hookIPvEELb0EEENSB_17slist_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj2EEELb0EEELb0EEENS_11use_defaultESQ_EEEEEEvRT_T0_SV_SV_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.r, ptr %1, align 8, !tbaa !31
  %i.bo = add i64 %i.bn, %3
  store i64 %i.bo, ptr %i.d, align 8, !tbaa !38
  store i64 %i.o, ptr %i.a, align 8, !tbaa !44
  %i.bp = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.bp, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIivvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEENS0_12vec_iteratorIPiLb0EEERKSV_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i = alloca ptr, align 8              ; 5 uses
  %.sroa.0.i = alloca ptr, align 8                ; 5 uses
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.36", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !41     ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorIivvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEENS0_12vec_iteratorIPiLb0EEERKSV_mT_:bb.a
  %.in.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.in.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.016.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.r = load ptr, ptr %.in.i.i, align 8, !tbaa !49 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i32, ptr %i.s, align 4, !tbaa !22, !noalias !275
  %i.u = shl nsw i32 %i.t, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  store i32 %i.u, ptr %.01315.i.i.i.i, align 4, !tbaa !22, !noalias !275
  %i.v = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 4
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !49   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i32, ptr %i.x, align 4, !tbaa !22, !noalias !275
  %i.z = shl nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.v, align 4, !tbaa !22, !noalias !275
  %i.aa = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !49  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22, !noalias !275
  %i.ae = shl nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.aa, align 4, !tbaa !22, !noalias !275
  %i.af = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 12
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !49 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !22, !noalias !275
  %i.aj = shl nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !22, !noalias !275
  %i.ak = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 16
  %i.al = add i64 %.016.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4

bb.d:                                             ; preds = %bb.b
  br i1 %.not14.i.i.i.i, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !37

bb.e:                                             ; preds = %bb.d
  store ptr %i.g, ptr %.sroa.0.i.i, align 8, !tbaa !35
  %i.am = ptrtoint ptr %i.i to i64
  %i.an = ptrtoint ptr %i.a to i64                ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = ashr exact i64 %i.ao, 2                 ; 7 uses
  %.not.i.i.i = icmp ult i64 %i.ap, %3
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sub i64 0, %3
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aq ; 3 uses
  %.not11.i.i = icmp eq ptr %i.h, null
  br i1 %.not11.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i, label %bb.g, !prof !84

bb.g:                                             ; preds = %bb.f
  %i.as = shl i64 %3, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %i.ar, i64 %i.as, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.not.i.i10.i.i = icmp eq ptr %i.ar, %i.a
  br i1 %.not.i.i10.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %bb.h, !prof !37

bb.h:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.at, %i.an                    ; 2 uses
  %i.av = ashr exact i64 %i.au, 2
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.aw
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ax, ptr align 4 %i.a, i64 %i.au, i1 false)
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i.i.i
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.in.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.i.i, %.lr.ph.i.i.i.i.i.preheader ]
  %.06.i.i.i.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.az, %.lr.ph.i.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ay = load ptr, ptr %.in.i.i.i.prol, align 8, !tbaa !49 ; 3 uses
  %i.az = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22, !noalias !276
  %i.bc = shl nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !22, !noalias !276
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !267

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.in.i.i.i.unr = phi ptr [ %.sroa.0.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.i.i.prol ]
  %i.be = icmp ult i64 %3, 4
  br i1 %i.be, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.in.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %.in.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.06.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.bf = load ptr, ptr %.in.i.i.i, align 8, !tbaa !49 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !276
  %i.bi = shl nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %.06.i.i.i.i.i, align 4, !tbaa !22, !noalias !276
  %i.bj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !49 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22, !noalias !276
  %i.bn = shl nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !22, !noalias !276
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.bp = load ptr, ptr %i.bk, align 8, !tbaa !49 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !22, !noalias !276
  %i.bs = shl nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bo, align 4, !tbaa !22, !noalias !276
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !49 ; 2 uses
  %i.bv = add i64 %.035.i.i.i.i.i, -4             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !22, !noalias !276
  %i.by = shl nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bt, align 4, !tbaa !22, !noalias !276
  %i.bz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %.not.i.i35.i.i.i.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i35.i.i.i.3, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !268

bb.i:                                             ; preds = %bb.e
  %.not12.i.i = icmp eq ptr %i.a, null
  br i1 %.not12.i.i, label %.lr.ph.i.i39.i.i.i.preheader, label %bb.j, !prof !37

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 4 %i.a, i64 %i.ao, i1 false)
  br label %.lr.ph.i.i39.i.i.i.preheader

.lr.ph.i.i39.i.i.i.preheader:                     ; preds = %bb.j, %bb.i
  %xtraiter22 = and i64 %i.ap, 3                  ; 2 uses
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.lr.ph.i.i39.i.i.i.prol.loopexit, label %.lr.ph.i.i39.i.i.i.prol

.lr.ph.i.i39.i.i.i.prol:                          ; preds = %.lr.ph.i.i39.i.i.i.preheader, %.lr.ph.i.i39.i.i.i.prol
  %i.cb = phi ptr [ %i.cg, %.lr.ph.i.i39.i.i.i.prol ], [ %i.g, %.lr.ph.i.i39.i.i.i.preheader ] ; 2 uses
  %.06.i.i40.i.i.i.prol = phi ptr [ %i.ch, %.lr.ph.i.i39.i.i.i.prol ], [ %i.a, %.lr.ph.i.i39.i.i.i.preheader ] ; 2 uses
  %.035.i.i41.i.i.i.prol = phi i64 [ %i.cc, %.lr.ph.i.i39.i.i.i.prol ], [ %i.ap, %.lr.ph.i.i39.i.i.i.preheader ]
  %prol.iter24 = phi i64 [ %prol.iter24.next, %.lr.ph.i.i39.i.i.i.prol ], [ 0, %.lr.ph.i.i39.i.i.i.preheader ]
  %i.cc = add i64 %.035.i.i41.i.i.i.prol, -1      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !22, !noalias !277
  %i.cf = shl nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %.06.i.i40.i.i.i.prol, align 4, !tbaa !22, !noalias !277
  %i.cg = load ptr, ptr %i.cb, align 8, !tbaa !25, !noalias !277 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter24.next = add i64 %prol.iter24, 1     ; 2 uses
  %prol.iter24.cmp.not = icmp eq i64 %prol.iter24.next, %xtraiter22
  br i1 %prol.iter24.cmp.not, label %.lr.ph.i.i39.i.i.i.prol.loopexit, label %.lr.ph.i.i39.i.i.i.prol, !llvm.loop !271

.lr.ph.i.i39.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i39.i.i.i.prol, %.lr.ph.i.i39.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i39.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i39.i.i.i.prol ]
  %.unr = phi ptr [ %i.g, %.lr.ph.i.i39.i.i.i.preheader ], [ %i.cg, %.lr.ph.i.i39.i.i.i.prol ]
  %.06.i.i40.i.i.i.unr = phi ptr [ %i.a, %.lr.ph.i.i39.i.i.i.preheader ], [ %i.ch, %.lr.ph.i.i39.i.i.i.prol ]
  %.035.i.i41.i.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i39.i.i.i.preheader ], [ %i.cc, %.lr.ph.i.i39.i.i.i.prol ]
  %i.ci = icmp ult i64 %i.ap, 4
  br i1 %i.ci, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i, label %.lr.ph.i.i39.i.i.i

.lr.ph.i.i39.i.i.i:                               ; preds = %.lr.ph.i.i39.i.i.i.prol.loopexit, %.lr.ph.i.i39.i.i.i
  %i.cj = phi ptr [ %i.dd, %.lr.ph.i.i39.i.i.i ], [ %.unr, %.lr.ph.i.i39.i.i.i.prol.loopexit ] ; 2 uses
  %.06.i.i40.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i39.i.i.i ], [ %.06.i.i40.i.i.i.unr, %.lr.ph.i.i39.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i41.i.i.i = phi i64 [ %i.cz, %.lr.ph.i.i39.i.i.i ], [ %.035.i.i41.i.i.i.unr, %.lr.ph.i.i39.i.i.i.prol.loopexit ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !22, !noalias !277
  %i.cm = shl nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %.06.i.i40.i.i.i, align 4, !tbaa !22, !noalias !277
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !25, !noalias !277 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !22, !noalias !277
  %i.cr = shl nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !22, !noalias !277
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !25, !noalias !277 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !22, !noalias !277
  %i.cw = shl nsw i32 %i.cv, 1
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !22, !noalias !277
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !25, !noalias !277 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i, i64 12
  %i.cz = add i64 %.035.i.i41.i.i.i, -4           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.db = load i32, ptr %i.da, align 4, !tbaa !22, !noalias !277
  %i.dc = shl nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !22, !noalias !277
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !25, !noalias !277 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.06.i.i40.i.i.i, i64 16
  %.not.i.i42.i.i.i.3 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i42.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i, label %.lr.ph.i.i39.i.i.i, !llvm.loop !268

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i: ; preds = %.lr.ph.i.i39.i.i.i, %.lr.ph.i.i39.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i39.i.i.i.prol.loopexit ], [ %i.dd, %.lr.ph.i.i39.i.i.i ] ; 2 uses
  %i.df = sub nuw i64 %3, %i.ap                   ; 4 uses
  %lcmp.mod26.not = icmp eq i64 %i.df, 0
  br i1 %lcmp.mod26.not, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i44.i.i.i.preheader

.lr.ph.i.i44.i.i.i.preheader:                     ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i
  %xtraiter26 = and i64 %i.df, 3                  ; 2 uses
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %.lr.ph.i.i44.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.prol

.lr.ph.i.i44.i.i.i.prol:                          ; preds = %.lr.ph.i.i44.i.i.i.preheader, %.lr.ph.i.i44.i.i.i.prol
  %i.dg = phi ptr [ %i.dk, %.lr.ph.i.i44.i.i.i.prol ], [ %.lcssa, %.lr.ph.i.i44.i.i.i.preheader ] ; 2 uses
  %.016.i.i.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i.i44.i.i.i.prol ], [ %i.df, %.lr.ph.i.i44.i.i.i.preheader ]
  %.01315.i.i.i.i.i.prol = phi ptr [ %i.dl, %.lr.ph.i.i44.i.i.i.prol ], [ %i.i, %.lr.ph.i.i44.i.i.i.preheader ] ; 3 uses
  %prol.iter27 = phi i64 [ %prol.iter27.next, %.lr.ph.i.i44.i.i.i.prol ], [ 0, %.lr.ph.i.i44.i.i.i.preheader ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !22, !noalias !278
  %i.dj = shl nsw i32 %i.di, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i.prol) ]
  store i32 %i.dj, ptr %.01315.i.i.i.i.i.prol, align 4, !tbaa !22, !noalias !278
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !25, !noalias !278 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.dm = add i64 %.016.i.i.i.i.i.prol, -1        ; 2 uses
  %prol.iter27.next = add i64 %prol.iter27, 1     ; 2 uses
  %prol.iter27.cmp.not = icmp eq i64 %prol.iter27.next, %xtraiter26
  br i1 %prol.iter27.cmp.not, label %.lr.ph.i.i44.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.prol, !llvm.loop !274

.lr.ph.i.i44.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i44.i.i.i.prol, %.lr.ph.i.i44.i.i.i.preheader
  %.unr28 = phi ptr [ %.lcssa, %.lr.ph.i.i44.i.i.i.preheader ], [ %i.dk, %.lr.ph.i.i44.i.i.i.prol ]
  %.016.i.i.i.i.i.unr = phi i64 [ %i.df, %.lr.ph.i.i44.i.i.i.preheader ], [ %i.dm, %.lr.ph.i.i44.i.i.i.prol ]
  %.01315.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i44.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i44.i.i.i.prol ]
  %i.dn = sub i64 %i.ap, %3
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i44.i.i.i

.lr.ph.i.i44.i.i.i:                               ; preds = %.lr.ph.i.i44.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i
  %i.dp = phi ptr [ %i.ei, %.lr.ph.i.i44.i.i.i ], [ %.unr28, %.lr.ph.i.i44.i.i.i.prol.loopexit ] ; 2 uses
  %.016.i.i.i.i.i = phi i64 [ %i.ek, %.lr.ph.i.i44.i.i.i ], [ %.016.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i44.i.i.i ], [ %.01315.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.prol.loopexit ] ; 6 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !22, !noalias !278
  %i.ds = shl nsw i32 %i.dr, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.i) ]
  store i32 %i.ds, ptr %.01315.i.i.i.i.i, align 4, !tbaa !22, !noalias !278
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !25, !noalias !278 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !22, !noalias !278
  %i.dx = shl nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !22, !noalias !278
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !25, !noalias !278 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !22, !noalias !278
  %i.ec = shl nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.dz, align 4, !tbaa !22, !noalias !278
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !25, !noalias !278 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 12
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !22, !noalias !278
  %i.eh = shl nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !22, !noalias !278
  %i.ei = load ptr, ptr %i.ed, align 8, !tbaa !25, !noalias !278
  %i.ej = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.i, i64 16
  %i.ek = add i64 %.016.i.i.i.i.i, -4             ; 2 uses
  %.not.i.i45.i.i.i.3 = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i45.i.i.i.3, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i44.i.i.i, !llvm.loop !4

_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i44.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.c, %bb.d, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS1_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEE17copy_n_and_updateIPiEEvRS4_T_m.exit43.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.el = load i64, ptr %i.d, align 8, !tbaa !38
  %i.em = add i64 %i.el, %3
  store i64 %i.em, ptr %i.d, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.en = load ptr, ptr %2, align 8, !tbaa !41
  store ptr %i.en, ptr %0, align 8, !tbaa !40
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  store ptr %i.g, ptr %5, align 8, !tbaa !35
  call void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEENS0_12vec_iteratorIPiLb0EEESV_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef %3, ptr noundef nonnull align 8 dead_on_return %5)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEENS0_12vec_iteratorIPiLb0EEESV_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.s = load ptr, ptr %1, align 8, !tbaa !31     ; 7 uses
  %i.t = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !48     ; 2 uses
  %i.x = load i64, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.x ; 2 uses
  %i.z = icmp ne ptr %i.s, %2
  %i.aa = icmp ne ptr %i.s, null
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
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl18insert_range_proxyINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSC_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENSC_16list_node_traitsISH_EELNSC_14link_mode_typeE0ENSC_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESR_EEEEEEvPimSU_mT_.exit, label %bb.i

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
end_hunk_1
