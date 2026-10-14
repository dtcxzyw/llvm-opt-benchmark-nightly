Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/boost_iterator_comp_test?download=true
inline.NumInlined: 971
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN5boost9container6vectorIivvE6assignINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEEEvT_SQ_PNS_11move_detail13disable_if_orIvNSR_7is_sameINSR_17integral_constantIjLj1EEENSU_IjLj0EEEEENSR_14is_convertibleISQ_mEENS7_17is_input_iteratorISQ_Xsr21has_iterator_categoryISQ_EE5valueEEENSR_5bool_ILb0EEEE4typeE:bb.a
  br i1 %i.am, label %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i, label %.lr.ph.i.i15

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i.i15.prol.loopexit, %.lr.ph.i.i15
  %i.an = phi ptr [ %i.bj, %.lr.ph.i.i15 ], [ %.unr, %.lr.ph.i.i15.prol.loopexit ] ; 5 uses
  %i.ao = phi ptr [ %i.bi, %.lr.ph.i.i15 ], [ %.unr60, %.lr.ph.i.i15.prol.loopexit ] ; 2 uses
  %.04.i.i = phi i64 [ %i.be, %.lr.ph.i.i15 ], [ %.04.i.i.unr, %.lr.ph.i.i15.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !200
  %i.ar = shl nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.an, align 4, !tbaa !22, !noalias !200
  %i.as = load ptr, ptr %i.ao, align 8, !tbaa !25, !noalias !200 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !22, !noalias !200
  %i.aw = shl nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !22, !noalias !200
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !25, !noalias !200 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !22, !noalias !200
  %i.bb = shl nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !22, !noalias !200
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !25, !noalias !200 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.be = add nsw i64 %.04.i.i, -4                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !22, !noalias !200
  %i.bh = shl nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bd, align 4, !tbaa !22, !noalias !200
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !25, !noalias !200 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %.not.i.i16.3 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i16.3, label %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i, label %.lr.ph.i.i15, !llvm.loop !195

_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i: ; preds = %.lr.ph.i.i15.prol.loopexit, %.lr.ph.i.i15, %bb.h
  %.0.i = phi ptr [ %i.ab, %bb.h ], [ %.lcssa.unr, %.lr.ph.i.i15.prol.loopexit ], [ %i.bj, %.lr.ph.i.i15 ] ; 2 uses
  %i.bk = phi ptr [ %i.a, %bb.h ], [ %.lcssa57.unr, %.lr.ph.i.i15.prol.loopexit ], [ %i.bi, %.lr.ph.i.i15 ]
  store ptr %i.bk, ptr %.sroa.018.i, align 8, !tbaa !35
  %i.bl = sub i64 %i.e, %i.ad                     ; 3 uses
  %i.bm = sub i64 %.03.i.i, %i.ad
  %xtraiter61 = and i64 %i.bl, 3                  ; 2 uses
  %lcmp.mod62.not = icmp eq i64 %xtraiter61, 0
  br i1 %lcmp.mod62.not, label %.lr.ph.i11.i.prol.loopexit, label %.lr.ph.i11.i.prol

.lr.ph.i11.i.prol:                                ; preds = %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i, %.lr.ph.i11.i.prol
  %.in.i.i.prol = phi ptr [ %i.bn, %.lr.ph.i11.i.prol ], [ %.sroa.018.i, %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i ]
  %.0617.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i11.i.prol ], [ %i.bl, %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i ]
  %.01416.i.i.prol = phi ptr [ %i.bs, %.lr.ph.i11.i.prol ], [ %.0.i, %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i ] ; 3 uses
  %prol.iter63 = phi i64 [ %prol.iter63.next, %.lr.ph.i11.i.prol ], [ 0, %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i ]
  %i.bn = load ptr, ptr %.in.i.i.prol, align 8, !tbaa !49 ; 3 uses
  %i.bo = add nsw i64 %.0617.i.i.prol, -1         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !22
  %i.br = shl nsw i32 %i.bq, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.prol) ]
  store i32 %i.br, ptr %.01416.i.i.prol, align 4, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %.01416.i.i.prol, i64 4 ; 2 uses
  %prol.iter63.next = add i64 %prol.iter63, 1     ; 2 uses
  %prol.iter63.cmp.not = icmp eq i64 %prol.iter63.next, %xtraiter61
  br i1 %prol.iter63.cmp.not, label %.lr.ph.i11.i.prol.loopexit, label %.lr.ph.i11.i.prol, !llvm.loop !196

.lr.ph.i11.i.prol.loopexit:                       ; preds = %.lr.ph.i11.i.prol, %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i
  %.in.i.i.unr = phi ptr [ %.sroa.018.i, %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i ], [ %i.bn, %.lr.ph.i11.i.prol ]
  %.0617.i.i.unr = phi i64 [ %i.bl, %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i ], [ %i.bo, %.lr.ph.i11.i.prol ]
  %.01416.i.i.unr = phi ptr [ %.0.i, %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIiNS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESM_EEPiEENS5_38disable_if_memtransfer_copy_assignableIT_T0_SQ_E4typeESQ_mRSR_.exit.i ], [ %i.bs, %.lr.ph.i11.i.prol ]
  %i.bt = icmp ult i64 %i.bm, 3
  br i1 %i.bt, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i.prol.loopexit, %.lr.ph.i11.i
  %.in.i.i = phi ptr [ %i.cj, %.lr.ph.i11.i ], [ %.in.i.i.unr, %.lr.ph.i11.i.prol.loopexit ]
  %.0617.i.i = phi i64 [ %i.ck, %.lr.ph.i11.i ], [ %.0617.i.i.unr, %.lr.ph.i11.i.prol.loopexit ]
  %.01416.i.i = phi ptr [ %i.co, %.lr.ph.i11.i ], [ %.01416.i.i.unr, %.lr.ph.i11.i.prol.loopexit ] ; 6 uses
  %i.bu = load ptr, ptr %.in.i.i, align 8, !tbaa !49 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !22
  %i.bx = shl nsw i32 %i.bw, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i) ]
  store i32 %i.bx, ptr %.01416.i.i, align 4, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 4
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !49 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !22
  %i.cc = shl nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.by, align 4, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 8
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !49 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !22
  %i.ch = shl nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cd, align 4, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 12
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !49 ; 2 uses
  %i.ck = add nsw i64 %.0617.i.i, -4              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !22
  %i.cn = shl nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.ci, align 4, !tbaa !22
  %i.co = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 16
  %.not.i12.i.3 = icmp eq i64 %i.ck, 0
  br i1 %.not.i12.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i11.i, !llvm.loop !197

bb.i:                                             ; preds = %bb.g
  store ptr %i.a, ptr %.sroa.0.i, align 8, !tbaa !35
  %xtraiter64 = and i64 %i.e, 3                   ; 2 uses
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %.lr.ph.i14.i.prol.loopexit, label %.lr.ph.i14.i.prol

.lr.ph.i14.i.prol:                                ; preds = %bb.i, %.lr.ph.i14.i.prol
  %.in.i15.i.prol = phi ptr [ %i.cp, %.lr.ph.i14.i.prol ], [ %.sroa.0.i, %bb.i ]
  %.07.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i14.i.prol ], [ %i.ab, %bb.i ] ; 2 uses
  %.046.i.i.prol = phi i64 [ %i.cq, %.lr.ph.i14.i.prol ], [ %i.e, %bb.i ]
  %prol.iter66 = phi i64 [ %prol.iter66.next, %.lr.ph.i14.i.prol ], [ 0, %bb.i ]
  %i.cp = load ptr, ptr %.in.i15.i.prol, align 8, !tbaa !49 ; 3 uses
  %i.cq = add nsw i64 %.046.i.i.prol, -1          ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !22
  %i.ct = shl nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %.07.i.i.prol, align 4, !tbaa !22
  %i.cu = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 4 ; 2 uses
  %prol.iter66.next = add i64 %prol.iter66, 1     ; 2 uses
  %prol.iter66.cmp.not = icmp eq i64 %prol.iter66.next, %xtraiter64
  br i1 %prol.iter66.cmp.not, label %.lr.ph.i14.i.prol.loopexit, label %.lr.ph.i14.i.prol, !llvm.loop !198

.lr.ph.i14.i.prol.loopexit:                       ; preds = %.lr.ph.i14.i.prol, %bb.i
  %.in.i15.i.unr = phi ptr [ %.sroa.0.i, %bb.i ], [ %i.cp, %.lr.ph.i14.i.prol ]
  %.07.i.i.unr = phi ptr [ %i.ab, %bb.i ], [ %i.cu, %.lr.ph.i14.i.prol ]
  %.046.i.i.unr = phi i64 [ %i.e, %bb.i ], [ %i.cq, %.lr.ph.i14.i.prol ]
  %i.cv = icmp ult i64 %.03.i.i, 3
  br i1 %i.cv, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i
  %.in.i15.i = phi ptr [ %i.dl, %.lr.ph.i14.i ], [ %.in.i15.i.unr, %.lr.ph.i14.i.prol.loopexit ]
  %.07.i.i = phi ptr [ %i.dq, %.lr.ph.i14.i ], [ %.07.i.i.unr, %.lr.ph.i14.i.prol.loopexit ] ; 5 uses
  %.046.i.i = phi i64 [ %i.dm, %.lr.ph.i14.i ], [ %.046.i.i.unr, %.lr.ph.i14.i.prol.loopexit ]
  %i.cw = load ptr, ptr %.in.i15.i, align 8, !tbaa !49 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !22
  %i.cz = shl nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %.07.i.i, align 4, !tbaa !22
  %i.da = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 4
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !49 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !22
  %i.de = shl nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.da, align 4, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !49 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !22
  %i.dj = shl nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.df, align 4, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 12
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !49 ; 2 uses
  %i.dm = add nsw i64 %.046.i.i, -4               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !22
  %i.dp = shl nsw i32 %i.do, 1
  store i32 %i.dp, ptr %i.dk, align 4, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %.not.i16.i.3 = icmp eq i64 %i.dm, 0
  br i1 %.not.i16.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEEvRT_T0_mT1_m.exit, label %.lr.ph.i14.i, !llvm.loop !199

_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i11.i.prol.loopexit, %.lr.ph.i11.i, %.lr.ph.i14.i.prol.loopexit, %.lr.ph.i14.i, %.thread30
  %i.dr = phi ptr [ %i.ac, %.lr.ph.i14.i.prol.loopexit ], [ %i.c, %.thread30 ], [ %i.ac, %.lr.ph.i14.i ], [ %i.ac, %.lr.ph.i11.i ], [ %i.ac, %.lr.ph.i11.i.prol.loopexit ]
  %.0.lcssa.i.i2628 = phi i64 [ %i.e, %.lr.ph.i14.i.prol.loopexit ], [ 0, %.thread30 ], [ %i.e, %.lr.ph.i14.i ], [ %i.e, %.lr.ph.i11.i ], [ %i.e, %.lr.ph.i11.i.prol.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.018.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store i64 %.0.lcssa.i.i2628, ptr %i.dr, align 8, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIiNS7_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb0EEENS_11use_defaultESO_EEPiEEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIivvE6assignINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EEEEvT_SC_PNS_11move_detail13disable_if_orIvNSD_7is_sameINSD_17integral_constantIjLj1EEENSG_IjLj0EEEEENSD_14is_convertibleISC_mEENS0_3dtl17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !41     ; 9 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2
  %i.g = sub nsw i64 0, %i.f                      ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.k, label %bb.c, label %bb.d, !prof !37

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.14) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = shl nuw nsw i64 %i.g, 2
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #22 ; 7 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not12 = icmp eq ptr %i.n, null
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !33
  %i.p = shl nuw i64 %i.i, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.p) #21
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !31
  store i64 %i.g, ptr %i.h, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %1, align 8, !tbaa !41     ; 5 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !41     ; 3 uses
  %.not11.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not11.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = ptrtoaddr ptr %i.r to i64                ; 2 uses
  %i.v = add i64 %i.t, -4
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check94 = icmp ult i64 %i.w, 28
  %4 = ptrtoaddr ptr %i.m to i64
  %i.z = sub i64 %i.u, %4
  %diff.check92 = icmp ugt i64 %i.z, -32
  %or.cond = or i1 %min.iters.check94, %diff.check92
  br i1 %or.cond, label %.lr.ph.i.i.preheader111, label %vector.ph95

vector.ph95:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec96 = and i64 %i.y, 9223372036854775800    ; 3 uses
  %i.aa = shl i64 %n.vec96, 2                     ; 2 uses
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.m, i64 %i.aa   ; 2 uses
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph95
  %index98 = phi i64 [ 0, %vector.ph95 ], [ %index.next103, %vector.body97 ] ; 2 uses
  %i.ad = shl i64 %index98, 2                     ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.m, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load101 = load <4 x i32>, ptr %next.gep99, align 4, !tbaa !22
  %wide.load102 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !22
  %i.af = shl nsw <4 x i32> %wide.load101, splat (i32 1)
  %i.ag = shl nsw <4 x i32> %wide.load102, splat (i32 1)
  %i.ah = getelementptr i8, ptr %next.gep100, i64 16
  store <4 x i32> %i.af, ptr %next.gep100, align 4, !tbaa !22
  store <4 x i32> %i.ag, ptr %i.ah, align 4, !tbaa !22
  %index.next103 = add nuw i64 %index98, 8        ; 2 uses
  %i.ai = icmp eq i64 %index.next103, %n.vec96
  br i1 %i.ai, label %middle.block104, label %vector.body97, !llvm.loop !201

middle.block104:                                  ; preds = %vector.body97
  %cmp.n105 = icmp eq i64 %i.y, %n.vec96
  br i1 %cmp.n105, label %.loopexit, label %.lr.ph.i.i.preheader111

.lr.ph.i.i.preheader111:                          ; preds = %.lr.ph.i.i.preheader, %middle.block104
  %.ph = phi ptr [ %i.r, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block104 ]
  %.01012.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block104 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader111, %.lr.ph.i.i
  %i.aj = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader111 ] ; 2 uses
  %.01012.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %.01012.i.i.ph, %.lr.ph.i.i.preheader111 ] ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !22
  %i.al = shl nsw i32 %i.ak, 1
  store i32 %i.al, ptr %.01012.i.i, align 4, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, %i.s
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !202

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block104, %bb.f
  %.010.lcssa.i.i = phi ptr [ %i.m, %bb.f ], [ %i.ac, %middle.block104 ], [ %i.an, %.lr.ph.i.i ]
  %i.ao = ptrtoint ptr %.010.lcssa.i.i to i64
  %i.ap = ptrtoint ptr %i.m to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  store i64 %i.ar, ptr %i.q, align 8, !tbaa !38
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.as = load ptr, ptr %0, align 8, !tbaa !31    ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !33 ; 8 uses
  %i.av = icmp ult i64 %i.au, %i.g
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not3.i.i = icmp eq i64 %i.au, 0
  br i1 %.not3.i.i, label %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit.i, label %.lr.ph.i.i13.preheader

.lr.ph.i.i13.preheader:                           ; preds = %bb.h
  %min.iters.check49 = icmp ult i64 %i.au, 8
  %5 = ptrtoaddr ptr %i.as to i64
  %i.aw = sub i64 %i.c, %5
  %diff.check47 = icmp ugt i64 %i.aw, -32
  %or.cond108 = select i1 %min.iters.check49, i1 true, i1 %diff.check47
  br i1 %or.cond108, label %.lr.ph.i.i13.preheader113, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph.i.i13.preheader
  %n.vec51 = and i64 %i.au, -8                    ; 3 uses
  %i.ax = shl i64 %n.vec51, 2                     ; 2 uses
  %i.ay = getelementptr i8, ptr %i.a, i64 %i.ax   ; 2 uses
  %i.az = getelementptr i8, ptr %i.as, i64 %i.ax  ; 2 uses
  %i.ba = and i64 %i.au, 7
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph50
  %index53 = phi i64 [ 0, %vector.ph50 ], [ %index.next58, %vector.body52 ] ; 2 uses
  %i.bb = shl i64 %index53, 2                     ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.a, i64 %i.bb ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.as, i64 %i.bb ; 2 uses
  %i.bc = getelementptr i8, ptr %next.gep54, i64 16
  %wide.load56 = load <4 x i32>, ptr %next.gep54, align 4, !tbaa !22, !noalias !214
  %wide.load57 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !22, !noalias !214
  %i.bd = shl nsw <4 x i32> %wide.load56, splat (i32 1)
  %i.be = shl nsw <4 x i32> %wide.load57, splat (i32 1)
  %i.bf = getelementptr i8, ptr %next.gep55, i64 16
  store <4 x i32> %i.bd, ptr %next.gep55, align 4, !tbaa !22, !noalias !214
  store <4 x i32> %i.be, ptr %i.bf, align 4, !tbaa !22, !noalias !214
  %index.next58 = add nuw i64 %index53, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next58, %n.vec51
  br i1 %i.bg, label %middle.block59, label %vector.body52, !llvm.loop !205

middle.block59:                                   ; preds = %vector.body52
  %cmp.n60 = icmp eq i64 %i.au, %n.vec51
  br i1 %cmp.n60, label %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit.i, label %.lr.ph.i.i13.preheader113

.lr.ph.i.i13.preheader113:                        ; preds = %.lr.ph.i.i13.preheader, %middle.block59
  %.sroa.017.0.i.ph = phi ptr [ %i.a, %.lr.ph.i.i13.preheader ], [ %i.ay, %middle.block59 ] ; 2 uses
  %.0.i.ph = phi ptr [ %i.as, %.lr.ph.i.i13.preheader ], [ %i.az, %middle.block59 ] ; 2 uses
  %.04.i.i.ph = phi i64 [ %i.au, %.lr.ph.i.i13.preheader ], [ %i.ba, %middle.block59 ] ; 4 uses
  %i.bh = add i64 %.04.i.i.ph, -1
  %xtraiter119 = and i64 %.04.i.i.ph, 3           ; 2 uses
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %.lr.ph.i.i13.prol.loopexit, label %.lr.ph.i.i13.prol

.lr.ph.i.i13.prol:                                ; preds = %.lr.ph.i.i13.preheader113, %.lr.ph.i.i13.prol
  %.sroa.017.0.i.prol = phi ptr [ %i.bl, %.lr.ph.i.i13.prol ], [ %.sroa.017.0.i.ph, %.lr.ph.i.i13.preheader113 ] ; 2 uses
  %.0.i.prol = phi ptr [ %i.bm, %.lr.ph.i.i13.prol ], [ %.0.i.ph, %.lr.ph.i.i13.preheader113 ] ; 2 uses
  %.04.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i13.prol ], [ %.04.i.i.ph, %.lr.ph.i.i13.preheader113 ]
  %prol.iter121 = phi i64 [ %prol.iter121.next, %.lr.ph.i.i13.prol ], [ 0, %.lr.ph.i.i13.preheader113 ]
  %i.bi = add i64 %.04.i.i.prol, -1               ; 2 uses
  %i.bj = load i32, ptr %.sroa.017.0.i.prol, align 4, !tbaa !22, !noalias !214
  %i.bk = shl nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %.0.i.prol, align 4, !tbaa !22, !noalias !214
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.prol, i64 4 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.prol, i64 4 ; 3 uses
  %prol.iter121.next = add i64 %prol.iter121, 1   ; 2 uses
  %prol.iter121.cmp.not = icmp eq i64 %prol.iter121.next, %xtraiter119
  br i1 %prol.iter121.cmp.not, label %.lr.ph.i.i13.prol.loopexit, label %.lr.ph.i.i13.prol, !llvm.loop !206

.lr.ph.i.i13.prol.loopexit:                       ; preds = %.lr.ph.i.i13.prol, %.lr.ph.i.i13.preheader113
  %.lcssa115.unr = phi ptr [ poison, %.lr.ph.i.i13.preheader113 ], [ %i.bl, %.lr.ph.i.i13.prol ]
  %.lcssa114.unr = phi ptr [ poison, %.lr.ph.i.i13.preheader113 ], [ %i.bm, %.lr.ph.i.i13.prol ]
  %.sroa.017.0.i.unr = phi ptr [ %.sroa.017.0.i.ph, %.lr.ph.i.i13.preheader113 ], [ %i.bl, %.lr.ph.i.i13.prol ]
  %.0.i.unr = phi ptr [ %.0.i.ph, %.lr.ph.i.i13.preheader113 ], [ %i.bm, %.lr.ph.i.i13.prol ]
  %.04.i.i.unr = phi i64 [ %.04.i.i.ph, %.lr.ph.i.i13.preheader113 ], [ %i.bi, %.lr.ph.i.i13.prol ]
  %i.bn = icmp ult i64 %i.bh, 3
  br i1 %i.bn, label %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit.i, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i.i13.prol.loopexit, %.lr.ph.i.i13
  %.sroa.017.0.i = phi ptr [ %i.cd, %.lr.ph.i.i13 ], [ %.sroa.017.0.i.unr, %.lr.ph.i.i13.prol.loopexit ] ; 5 uses
  %.0.i = phi ptr [ %i.ce, %.lr.ph.i.i13 ], [ %.0.i.unr, %.lr.ph.i.i13.prol.loopexit ] ; 5 uses
  %.04.i.i = phi i64 [ %i.ca, %.lr.ph.i.i13 ], [ %.04.i.i.unr, %.lr.ph.i.i13.prol.loopexit ]
  %i.bo = load i32, ptr %.sroa.017.0.i, align 4, !tbaa !22, !noalias !214
  %i.bp = shl nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %.0.i, align 4, !tbaa !22, !noalias !214
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !22, !noalias !214
  %i.bt = shl nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !22, !noalias !214
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !22, !noalias !214
  %i.bx = shl nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !22, !noalias !214
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.ca = add i64 %.04.i.i, -4                    ; 2 uses
  %i.cb = load i32, ptr %i.by, align 4, !tbaa !22, !noalias !214
  %i.cc = shl nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bz, align 4, !tbaa !22, !noalias !214
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %.not.i.i14.3 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i14.3, label %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit.i, label %.lr.ph.i.i13, !llvm.loop !207

_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit.i: ; preds = %.lr.ph.i.i13.prol.loopexit, %.lr.ph.i.i13, %middle.block59, %bb.h
  %.sroa.017.1.i = phi ptr [ %i.a, %bb.h ], [ %i.ay, %middle.block59 ], [ %.lcssa115.unr, %.lr.ph.i.i13.prol.loopexit ], [ %i.cd, %.lr.ph.i.i13 ] ; 4 uses
  %.1.i = phi ptr [ %i.as, %bb.h ], [ %i.az, %middle.block59 ], [ %.lcssa114.unr, %.lr.ph.i.i13.prol.loopexit ], [ %i.ce, %.lr.ph.i.i13 ] ; 4 uses
  %i.cf = sub i64 %i.g, %i.au                     ; 5 uses
  %min.iters.check69 = icmp ult i64 %i.cf, 8
  %.sroa.017.1.i66 = ptrtoaddr ptr %.1.i to i64
  %.1.i65 = ptrtoaddr ptr %.sroa.017.1.i to i64
  %i.cg = sub i64 %.1.i65, %.sroa.017.1.i66
  %diff.check67 = icmp ugt i64 %i.cg, -32
  %or.cond109 = select i1 %min.iters.check69, i1 true, i1 %diff.check67
  br i1 %or.cond109, label %.lr.ph.i11.i.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit.i
  %n.vec71 = and i64 %i.cf, -8                    ; 3 uses
  %i.ch = shl i64 %n.vec71, 2                     ; 2 uses
  %i.ci = getelementptr i8, ptr %.sroa.017.1.i, i64 %i.ch
  %i.cj = and i64 %i.cf, 7
  %i.ck = getelementptr i8, ptr %.1.i, i64 %i.ch
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next85, %vector.body72 ] ; 2 uses
  %i.cl = shl i64 %index73, 2                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %.sroa.017.1.i, i64 %i.cl ; 2 uses
  %next.gep75 = getelementptr i8, ptr %.1.i, i64 %i.cl ; 3 uses
  %i.cm = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load83 = load <4 x i32>, ptr %next.gep74, align 4, !tbaa !22
  %wide.load84 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !22
  %i.cn = shl nsw <4 x i32> %wide.load83, splat (i32 1)
  %i.co = shl nsw <4 x i32> %wide.load84, splat (i32 1)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep75) ]
  %i.cp = getelementptr i8, ptr %next.gep75, i64 16
  store <4 x i32> %i.cn, ptr %next.gep75, align 4, !tbaa !22
  store <4 x i32> %i.co, ptr %i.cp, align 4, !tbaa !22
  %index.next85 = add nuw i64 %index73, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next85, %n.vec71
  br i1 %i.cq, label %middle.block86, label %vector.body72, !llvm.loop !208

middle.block86:                                   ; preds = %vector.body72
  %cmp.n87 = icmp eq i64 %i.cf, %n.vec71
  br i1 %cmp.n87, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i11.i.preheader

.lr.ph.i11.i.preheader:                           ; preds = %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit.i, %middle.block86
  %.ph112 = phi ptr [ %.sroa.017.1.i, %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit.i ], [ %i.ci, %middle.block86 ] ; 2 uses
  %.0617.i.i.ph = phi i64 [ %i.cf, %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit.i ], [ %i.cj, %middle.block86 ] ; 4 uses
  %.01416.i.i.ph = phi ptr [ %.1.i, %_ZN5boost9container18copy_n_source_destINS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultES8_EES6_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_SC_E4typeESC_mRSD_.exit.i ], [ %i.ck, %middle.block86 ] ; 2 uses
  %i.cr = add i64 %.0617.i.i.ph, -1
  %xtraiter122 = and i64 %.0617.i.i.ph, 3         ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph.i11.i.prol.loopexit, label %.lr.ph.i11.i.prol

.lr.ph.i11.i.prol:                                ; preds = %.lr.ph.i11.i.preheader, %.lr.ph.i11.i.prol
  %i.cs = phi ptr [ %i.cw, %.lr.ph.i11.i.prol ], [ %.ph112, %.lr.ph.i11.i.preheader ] ; 2 uses
  %.0617.i.i.prol = phi i64 [ %i.ct, %.lr.ph.i11.i.prol ], [ %.0617.i.i.ph, %.lr.ph.i11.i.preheader ]
  %.01416.i.i.prol = phi ptr [ %i.cx, %.lr.ph.i11.i.prol ], [ %.01416.i.i.ph, %.lr.ph.i11.i.preheader ] ; 3 uses
  %prol.iter124 = phi i64 [ %prol.iter124.next, %.lr.ph.i11.i.prol ], [ 0, %.lr.ph.i11.i.preheader ]
  %i.ct = add i64 %.0617.i.i.prol, -1             ; 2 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !22
  %i.cv = shl nsw i32 %i.cu, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.prol) ]
  store i32 %i.cv, ptr %.01416.i.i.prol, align 4, !tbaa !22
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.01416.i.i.prol, i64 4 ; 2 uses
  %prol.iter124.next = add i64 %prol.iter124, 1   ; 2 uses
  %prol.iter124.cmp.not = icmp eq i64 %prol.iter124.next, %xtraiter122
  br i1 %prol.iter124.cmp.not, label %.lr.ph.i11.i.prol.loopexit, label %.lr.ph.i11.i.prol, !llvm.loop !209

.lr.ph.i11.i.prol.loopexit:                       ; preds = %.lr.ph.i11.i.prol, %.lr.ph.i11.i.preheader
  %.unr125 = phi ptr [ %.ph112, %.lr.ph.i11.i.preheader ], [ %i.cw, %.lr.ph.i11.i.prol ]
  %.0617.i.i.unr = phi i64 [ %.0617.i.i.ph, %.lr.ph.i11.i.preheader ], [ %i.ct, %.lr.ph.i11.i.prol ]
  %.01416.i.i.unr = phi ptr [ %.01416.i.i.ph, %.lr.ph.i11.i.preheader ], [ %i.cx, %.lr.ph.i11.i.prol ]
  %i.cy = icmp ult i64 %i.cr, 3
  br i1 %i.cy, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i.prol.loopexit, %.lr.ph.i11.i
  %i.cz = phi ptr [ %i.dp, %.lr.ph.i11.i ], [ %.unr125, %.lr.ph.i11.i.prol.loopexit ] ; 5 uses
  %.0617.i.i = phi i64 [ %i.dm, %.lr.ph.i11.i ], [ %.0617.i.i.unr, %.lr.ph.i11.i.prol.loopexit ]
  %.01416.i.i = phi ptr [ %i.dq, %.lr.ph.i11.i ], [ %.01416.i.i.unr, %.lr.ph.i11.i.prol.loopexit ] ; 6 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !22
  %i.db = shl nsw i32 %i.da, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i) ]
  store i32 %i.db, ptr %.01416.i.i, align 4, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !22
  %i.df = shl nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 8
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !22
  %i.dj = shl nsw i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.dl = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 12
  %i.dm = add i64 %.0617.i.i, -4                  ; 2 uses
  %i.dn = load i32, ptr %i.dk, align 4, !tbaa !22
  %i.do = shl nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !22
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %.01416.i.i, i64 16
  %.not.i12.i.3 = icmp eq i64 %i.dm, 0
  br i1 %.not.i12.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i11.i, !llvm.loop !210

bb.i:                                             ; preds = %bb.g
  %.not5.i.i = icmp eq ptr %i.a, %i.b
  br i1 %.not5.i.i, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i13.i.preheader

.lr.ph.i13.i.preheader:                           ; preds = %bb.i
  %min.iters.check = icmp ult i64 %i.g, 8
  %6 = ptrtoaddr ptr %i.as to i64
  %i.dr = sub i64 %i.c, %6
  %diff.check = icmp ugt i64 %i.dr, -32
  %or.cond110 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond110, label %.lr.ph.i13.i.preheader116, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i13.i.preheader
  %n.vec = and i64 %i.g, -8                       ; 3 uses
  %i.ds = shl i64 %n.vec, 2                       ; 2 uses
  %i.dt = getelementptr i8, ptr %i.a, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.as, i64 %i.ds
  %i.dv = and i64 %i.g, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.dw ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.as, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !22
  %wide.load43 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !22
  %i.dy = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %i.dz = shl nsw <4 x i32> %wide.load43, splat (i32 1)
  %i.ea = getelementptr i8, ptr %next.gep42, i64 16
  store <4 x i32> %i.dy, ptr %next.gep42, align 4, !tbaa !22
  store <4 x i32> %i.dz, ptr %i.ea, align 4, !tbaa !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eb = icmp eq i64 %index.next, %n.vec
  br i1 %i.eb, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br i1 %cmp.n, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i13.i.preheader116

.lr.ph.i13.i.preheader116:                        ; preds = %.lr.ph.i13.i.preheader, %middle.block
  %.ph117 = phi ptr [ %i.a, %.lr.ph.i13.i.preheader ], [ %i.dt, %middle.block ] ; 2 uses
  %.07.i.i.ph = phi ptr [ %i.as, %.lr.ph.i13.i.preheader ], [ %i.du, %middle.block ] ; 2 uses
  %.046.i.i.ph = phi i64 [ %i.g, %.lr.ph.i13.i.preheader ], [ %i.dv, %middle.block ] ; 4 uses
  %i.ec = add nsw i64 %.046.i.i.ph, -1
  %xtraiter = and i64 %.046.i.i.ph, 3             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i13.i.prol.loopexit, label %.lr.ph.i13.i.prol

.lr.ph.i13.i.prol:                                ; preds = %.lr.ph.i13.i.preheader116, %.lr.ph.i13.i.prol
  %i.ed = phi ptr [ %i.eh, %.lr.ph.i13.i.prol ], [ %.ph117, %.lr.ph.i13.i.preheader116 ] ; 2 uses
  %.07.i.i.prol = phi ptr [ %i.ei, %.lr.ph.i13.i.prol ], [ %.07.i.i.ph, %.lr.ph.i13.i.preheader116 ] ; 2 uses
  %.046.i.i.prol = phi i64 [ %i.ee, %.lr.ph.i13.i.prol ], [ %.046.i.i.ph, %.lr.ph.i13.i.preheader116 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i13.i.prol ], [ 0, %.lr.ph.i13.i.preheader116 ]
  %i.ee = add i64 %.046.i.i.prol, -1              ; 2 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !22
  %i.eg = shl nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %.07.i.i.prol, align 4, !tbaa !22
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i13.i.prol.loopexit, label %.lr.ph.i13.i.prol, !llvm.loop !212

.lr.ph.i13.i.prol.loopexit:                       ; preds = %.lr.ph.i13.i.prol, %.lr.ph.i13.i.preheader116
  %.unr = phi ptr [ %.ph117, %.lr.ph.i13.i.preheader116 ], [ %i.eh, %.lr.ph.i13.i.prol ]
  %.07.i.i.unr = phi ptr [ %.07.i.i.ph, %.lr.ph.i13.i.preheader116 ], [ %i.ei, %.lr.ph.i13.i.prol ]
  %.046.i.i.unr = phi i64 [ %.046.i.i.ph, %.lr.ph.i13.i.preheader116 ], [ %i.ee, %.lr.ph.i13.i.prol ]
  %i.ej = icmp ult i64 %i.ec, 3
  br i1 %i.ej, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.lr.ph.i13.i.prol.loopexit, %.lr.ph.i13.i
  %i.ek = phi ptr [ %i.fa, %.lr.ph.i13.i ], [ %.unr, %.lr.ph.i13.i.prol.loopexit ] ; 5 uses
  %.07.i.i = phi ptr [ %i.fb, %.lr.ph.i13.i ], [ %.07.i.i.unr, %.lr.ph.i13.i.prol.loopexit ] ; 5 uses
  %.046.i.i = phi i64 [ %i.ex, %.lr.ph.i13.i ], [ %.046.i.i.unr, %.lr.ph.i13.i.prol.loopexit ]
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !22
  %i.em = shl nsw i32 %i.el, 1
  store i32 %i.em, ptr %.07.i.i, align 4, !tbaa !22
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 4
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !22
  %i.eq = shl nsw i32 %i.ep, 1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !22
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.et = load i32, ptr %i.er, align 4, !tbaa !22
  %i.eu = shl nsw i32 %i.et, 1
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !22
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  %i.ew = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 12
  %i.ex = add i64 %.046.i.i, -4                   ; 2 uses
  %i.ey = load i32, ptr %i.ev, align 4, !tbaa !22
  %i.ez = shl nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ew, align 4, !tbaa !22
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %.not.i15.i.3 = icmp eq i64 %i.ex, 0
  br i1 %.not.i15.i.3, label %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EEvRT_T0_mT1_m.exit, label %.lr.ph.i13.i, !llvm.loop !213

_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EEvRT_T0_mT1_m.exit: ; preds = %.lr.ph.i13.i.prol.loopexit, %.lr.ph.i13.i, %.lr.ph.i11.i.prol.loopexit, %.lr.ph.i11.i, %middle.block, %middle.block86, %bb.i
  store i64 %i.g, ptr %i.at, align 8, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN5boost9container25copy_assign_range_alloc_nINS0_13new_allocatorIiEENS_9iterators18transform_iteratorI4funcNS0_12vec_iteratorIPiLb0EEENS_11use_defaultESA_EES8_EEvRT_T0_mT1_m.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  br i1 %4, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN5boost6detail12test_resultsEv.exit, !prof !52

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #21
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !55
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !56
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #21 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #21
  br label %_ZN5boost6detail12test_resultsEv.exit

bb.e:                                             ; preds = %bb.a
  %.not.i5 = icmp eq ptr %1, null
  br i1 %.not.i5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !58
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !215
  %i.k = or i32 %i.j, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.h, i32 noundef %i.k)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.g:                                             ; preds = %bb.e
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %1, i64 noundef %i.l) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f, %bb.g
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.2, i64 noundef 1) ; 0 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %2) ; 12 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.3, i64 noundef 9) ; 0 uses
  %.not.i6 = icmp eq ptr %0, null
  br i1 %.not.i6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !215
  %i.w = or i32 %i.v, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.t, i32 noundef %i.w)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %0, i64 noundef %i.x) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7: ; preds = %bb.h, %bb.i
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.4, i64 noundef 22) ; 0 uses
  %.not.i8 = icmp eq ptr %3, null
  br i1 %.not.i8, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.o, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !215
  %i.ag = or i32 %i.af, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.ad, i32 noundef %i.ag)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit7
  %i.ah = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #21
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %3, i64 noundef %i.ah) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %bb.j, %bb.k
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %i.ak = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.al = getelementptr i8, ptr %i.ak, i64 -24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds i8, ptr %i.o, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !73 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %bb.l, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  tail call void @_ZSt16__throw_bad_castv() #23
  unreachable
end_hunk_0
