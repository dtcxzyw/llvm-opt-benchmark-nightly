Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_vector_test?download=true
inline.NumInlined: 8588
inline.NumDeleted: 2636
loop-unroll.NumCompletelyUnrolled: 207
loop-unroll.NumRuntimeUnrolled: 103
loop-unroll.NumUnrolled: 313
begin_hunk_0_@_Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !41, !noalias !1640
  store i32 %i.w, ptr %i.t, align 4, !tbaa !41, !noalias !1640
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 12
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !188, !noalias !1639 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !41, !noalias !1640
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !41, !noalias !1640
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16
  %i.ac = add nsw i64 %.015.i.i.i.i.i.i.i.i.i, -4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !22

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i.i.i
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1639
  unreachable

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i)
  br label %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit

_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i.i.i
  %i.ad = phi i64 [ 0, %bb.a ], [ %i.e, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i.i.i ] ; 4 uses
  %i.ae = load i64, ptr %0, align 8, !tbaa !114
  %i.af = icmp eq i64 %i.ad, %i.ae
  %i.ag = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext %i.af) ; 0 uses
  %.idx = shl nuw nsw i64 %i.ad, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1641 ; 3 uses
  %.not2.i.i.i = icmp eq ptr %i.ai, %i.a
  br i1 %.not2.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.ai, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit ]
  %.03.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ 0, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit ]
  %i.ak = add nuw nsw i64 %.03.i.i.i, 1           ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.a
  br i1 %.not.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !21

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost9container13static_vectorI8value_ndLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit ], [ %i.ak, %.lr.ph.i.i.i ]
  %i.am = icmp eq i64 %i.ad, %.0.lcssa.i.i.i
  %i.an = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.am) ; 0 uses
  %.not5.i = icmp eq i64 %i.ad, 0
  br i1 %.not5.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i, %.noexc13
  %.sroa.046.0 = phi ptr [ %i.au, %.noexc13 ], [ %i.ai, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i ] ; 3 uses
  %.sroa.051.0 = phi ptr [ %i.at, %.noexc13 ], [ %1, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.046.0, %i.a
  br i1 %.not4.i, label %.critedge.i, label %.noexc13

.noexc13:                                         ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.046.0, i64 16
  %i.ap = load i32, ptr %.sroa.051.0, align 4, !tbaa !77
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !77
  %i.ar = icmp eq i32 %i.ap, %i.aq
  %i.as = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.ar) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.051.0, i64 4 ; 2 uses
  %i.au = load ptr, ptr %.sroa.046.0, align 8, !tbaa !105
  %.not.i = icmp eq ptr %i.at, %i.ah
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1617

.critedge.i:                                      ; preds = %.lr.ph.i, %.noexc13, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.av = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.1, i32 noundef 217, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext true) ; 0 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1642 ; 3 uses
  %.not73 = icmp eq ptr %i.aw, %i.a
  br i1 %.not73, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge.i, %.lr.ph.i.i.i.i
  %i.ax = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %i.aw, %.critedge.i ]
  %.03.i.i.i.i = phi i64 [ %i.ay, %.lr.ph.i.i.i.i ], [ 0, %.critedge.i ] ; 3 uses
  %i.ay = add nuw i64 %.03.i.i.i.i, 1             ; 5 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !105, !noalias !1643 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.a
  br i1 %.not.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.not.i.i = icmp samesign ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i.not.i.i, label %bb.d, label %.noexc15, !prof !185

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  store ptr %i.aw, ptr %.sroa.0.i.i.i.i, align 8, !tbaa !192, !noalias !1644
  %xtraiter84 = and i64 %i.ay, 3                  ; 2 uses
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.prol
  %.in.i.i.i.i.i.prol = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.0.i.i.i.i, %bb.d ]
  %.015.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ay, %bb.d ]
  %.01214.i.i.i.i.i.i.i.prol = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %2, %bb.d ] ; 2 uses
  %prol.iter86 = phi i64 [ %prol.iter86.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %bb.d ]
  %i.ba = load ptr, ptr %.in.i.i.i.i.i.prol, align 8, !tbaa !188, !noalias !1644 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !41, !noalias !1645
  store i32 %i.bc, ptr %.01214.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1645
  %i.bd = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.be = add nsw i64 %.015.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter86.next = add i64 %prol.iter86, 1     ; 2 uses
  %prol.iter86.cmp.not = icmp eq i64 %prol.iter86.next, %xtraiter84
  br i1 %prol.iter86.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1630

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %bb.d
  %.in.i.i.i.i.i.unr = phi ptr [ %.sroa.0.i.i.i.i, %bb.d ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.015.i.i.i.i.i.i.i.unr = phi i64 [ %i.ay, %bb.d ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01214.i.i.i.i.i.i.i.unr = phi ptr [ %2, %bb.d ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %.03.i.i.i.i, 3
  br i1 %i.bf, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.in.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.in.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.015.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i.i.i.i ], [ %.015.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i.i ], [ %.01214.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.bg = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !188, !noalias !1644 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !41, !noalias !1645
  store i32 %i.bi, ptr %.01214.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1645
  %i.bj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 4
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !188, !noalias !1644 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !41, !noalias !1645
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !41, !noalias !1645
  %i.bn = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 8
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !188, !noalias !1644 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !41, !noalias !1645
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !41, !noalias !1645
  %i.br = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 12
  %i.bs = load ptr, ptr %i.bo, align 8, !tbaa !188, !noalias !1644 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !41, !noalias !1645
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !41, !noalias !1645
  %i.bv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i, i64 16
  %i.bw = add nsw i64 %.015.i.i.i.i.i.i.i, -4     ; 2 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !22

.noexc15:                                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i
  call void @_ZN5boost9container3dtl24static_storage_allocatorI8value_ndLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit

_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit: ; preds = %.critedge.i, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i
  %i.bx = phi i64 [ %i.ay, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEENS0_12vec_iteratorIPS2_Lb0EEENSO_ISP_Lb1EEET_SS_PNS_11move_detail13disable_if_orIvNST_14is_convertibleISS_mEENS3_17is_input_iteratorISS_Xsr21has_iterator_categoryISS_EE5valueEEENST_5bool_ILb0EEES10_E4typeE.exit.i ], [ 0, %.critedge.i ] ; 4 uses
  %i.by = load i64, ptr %0, align 8, !tbaa !114
  %i.bz = icmp eq i64 %i.bx, %i.by
  %i.ca = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI8value_ndLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext %i.bz) ; 0 uses
  %.idx57 = shl nuw nsw i64 %i.bx, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 %.idx57
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1646 ; 3 uses
  %.not2.i.i.i16 = icmp eq ptr %i.cc, %i.a
  br i1 %.not2.i.i.i16, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit, %.lr.ph.i.i.i17
  %i.cd = phi ptr [ %i.cf, %.lr.ph.i.i.i17 ], [ %i.cc, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit ]
  %.03.i.i.i18 = phi i64 [ %i.ce, %.lr.ph.i.i.i17 ], [ 0, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit ]
  %i.ce = add nuw nsw i64 %.03.i.i.i18, 1         ; 2 uses
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.cf, %i.a
  br i1 %.not.i.i.i19, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, label %.lr.ph.i.i.i17, !llvm.loop !21

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20: ; preds = %.lr.ph.i.i.i17, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit
  %.0.lcssa.i.i.i21 = phi i64 [ 0, %_ZN5boost9container6vectorI8value_ndNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit ], [ %i.ce, %.lr.ph.i.i.i17 ]
  %i.cg = icmp eq i64 %i.bx, %.0.lcssa.i.i.i21
  %i.ch = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.cg) ; 0 uses
  %.not5.i22 = icmp eq i64 %i.bx, 0
  br i1 %.not5.i22, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, %.noexc30
  %.sroa.038.0 = phi ptr [ %i.cn, %.noexc30 ], [ %2, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20 ] ; 2 uses
  %.sroa.033.0 = phi ptr [ %i.co, %.noexc30 ], [ %i.cc, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20 ] ; 3 uses
  %.not4.i26 = icmp eq ptr %.sroa.033.0, %i.a
  br i1 %.not4.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.noexc30

.noexc30:                                         ; preds = %.lr.ph.i25
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.033.0, i64 16
  %i.cj = load i32, ptr %.sroa.038.0, align 4, !tbaa !77
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !77
  %i.cl = icmp eq i32 %i.cj, %i.ck
  %i.cm = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.cl) ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.038.0, i64 4 ; 2 uses
  %i.co = load ptr, ptr %.sroa.033.0, align 8, !tbaa !105
  %.not.i27 = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i27, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.lr.ph.i25, !llvm.loop !1617

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP8value_ndLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31: ; preds = %.noexc30, %.lr.ph.i25, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI8value_ndNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.53") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !125  ; 6 uses
  %i.d = sub i64 2305843009213693951, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !193  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !42

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #27 ; 6 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !126    ; 10 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !124  ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %5 = ptrtoaddr ptr %2 to i64
  %6 = ptrtoaddr ptr %i.t to i64
  %i.w = add i64 %5, -4
  %i.x = sub i64 %i.w, %6                         ; 2 uses
  %i.y = lshr i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.aa   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !41
  %wide.load15 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !41
  %i.af = getelementptr i8, ptr %next.gep14, i64 16
  store <4 x i32> %wide.load, ptr %next.gep14, align 4, !tbaa !41
  store <4 x i32> %wide.load15, ptr %i.af, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !1647

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader33

.lr.ph.i.i.i.preheader33:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.018.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader33, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader33 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader33 ] ; 2 uses
  %i.ah = load i32, ptr %.018.i.i.i, align 4, !tbaa !41
  store i32 %i.ah, ptr %.01517.i.i.i, align 4, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1648

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ac, %middle.block ], [ %i.aj, %.lr.ph.i.i.i ] ; 3 uses
  %.015.lcssa.i.i.i17 = ptrtoaddr ptr %.015.lcssa.i.i.i to i64
  %i.ak = load i32, ptr %4, align 4, !tbaa !41
  store i32 %i.ak, ptr %.015.lcssa.i.i.i, align 4, !tbaa !41
  %.not16.i19.i.i = icmp eq ptr %2, %i.v
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 4 uses
  %7 = ptrtoaddr ptr %i.t to i64
  %i.am = shl i64 %i.u, 2
  %i.an = add i64 %i.am, %7
  %i.ao = add i64 %i.an, -4
  %i.ap = sub i64 %i.ao, %i.a                     ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check19 = icmp ult i64 %i.ap, 76
  br i1 %min.iters.check19, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i20.preheader.i.i
  %i.as = shl i64 %3, 2
  %i.at = add i64 %i.as, %.015.lcssa.i.i.i17
  %i.au = sub i64 %i.a, %i.at
  %diff.check = icmp ugt i64 %i.au, -32
  br i1 %diff.check, label %.lr.ph.i20.i.i.preheader, label %vector.ph20

vector.ph20:                                      ; preds = %vector.memcheck
  %n.vec21 = and i64 %i.ar, 9223372036854775800   ; 3 uses
  %i.av = shl i64 %n.vec21, 2                     ; 2 uses
  %i.aw = getelementptr i8, ptr %2, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.av
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next28, %vector.body22 ] ; 2 uses
  %i.ay = shl i64 %index23, 2                     ; 2 uses
  %next.gep24 = getelementptr i8, ptr %2, i64 %i.ay ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load26 = load <4 x i32>, ptr %next.gep24, align 4, !tbaa !41
  %wide.load27 = load <4 x i32>, ptr %i.az, align 4, !tbaa !41
  %i.ba = getelementptr i8, ptr %next.gep25, i64 16
  store <4 x i32> %wide.load26, ptr %next.gep25, align 4, !tbaa !41
  store <4 x i32> %wide.load27, ptr %i.ba, align 4, !tbaa !41
  %index.next28 = add nuw i64 %index23, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next28, %n.vec21
  br i1 %i.bb, label %middle.block29, label %vector.body22, !llvm.loop !1649

middle.block29:                                   ; preds = %vector.body22
  %cmp.n30 = icmp eq i64 %i.ar, %n.vec21
  br i1 %cmp.n30, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.i20.preheader.i.i, %middle.block29
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.aw, %middle.block29 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i20.preheader.i.i ], [ %i.ax, %middle.block29 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %.018.i21.i.i = phi ptr [ %i.bd, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.be, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bc = load i32, ptr %.018.i21.i.i, align 4, !tbaa !41
  store i32 %i.bc, ptr %.01517.i22.i.i, align 4, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bd, %i.v
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !1650

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block29, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !125
  %i.bg = shl i64 %i.bf, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bg) #25
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !193
  br label %_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit

_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, %bb.g
  %i.bh = phi i64 [ %i.u, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i ], [ %.pre.i, %bb.g ]
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = ptrtoint ptr %i.t to i64
  %i.bk = sub i64 %i.bi, %i.bj
  store ptr %i.s, ptr %1, align 8, !tbaa !126
  %i.bl = add i64 %i.bh, %3
  store i64 %i.bl, ptr %i.e, align 8, !tbaa !193
  store i64 %i.p, ptr %i.b, align 8, !tbaa !75
  %i.bm = getelementptr inbounds i8, ptr %i.s, i64 %i.bk
  store ptr %i.bm, ptr %0, align 8, !tbaa !195
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  %2 = alloca %"class.boost::container::static_vector.29", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !1683 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp ugt i64 %i.b, 10
  br i1 %.not.i.i.i.i.i, label %bb.c, label %.lr.ph.i.i.i.i.i.i.i.i.i, !prof !42

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b
  %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1684
  %xtraiter = and i64 %i.b, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.prol.preheader
  %i.e = phi ptr [ %i.g, %.prol.preheader ], [ %0, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.i, %.prol.preheader ], [ %i.b, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.01214.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.h, %.prol.preheader ], [ %1, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.f, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, align 4, !tbaa !41, !noalias !1684
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.i = add nsw i64 %.015.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1661

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.unr = phi ptr [ %0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.g, %.prol.preheader ]
  %.015.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.b, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.i, %.prol.preheader ]
  %.01214.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.h, %.prol.preheader ]
  %i.j = icmp ult i64 %i.b, 8
  br i1 %i.j, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.i.i.i.i.new:                     ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.new
  %i.k = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.unr, %.prol.loopexit ] ; 9 uses
  %.015.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.015.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.01214.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.new ], [ %.01214.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ] ; 9 uses
  %i.l = load <2 x i32>, ptr %i.k, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.l, ptr %.01214.i.i.i.i.i.i.i.i.i, align 4, !tbaa !41, !noalias !1684
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 8
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.o, ptr %i.n, align 4, !tbaa !41, !noalias !1684
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 16
  %i.r = load <2 x i32>, ptr %i.p, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.r, ptr %i.q, align 4, !tbaa !41, !noalias !1684
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 24
  %i.u = load <2 x i32>, ptr %i.s, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.u, ptr %i.t, align 4, !tbaa !41, !noalias !1684
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 32
  %i.x = load <2 x i32>, ptr %i.v, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.x, ptr %i.w, align 4, !tbaa !41, !noalias !1684
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 40
  %i.aa = load <2 x i32>, ptr %i.y, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.aa, ptr %i.z, align 4, !tbaa !41, !noalias !1684
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 48
  %i.ad = load <2 x i32>, ptr %i.ab, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.ad, ptr %i.ac, align 4, !tbaa !41, !noalias !1684
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 56
  %i.ag = load <2 x i32>, ptr %i.ae, align 4, !tbaa !41, !noalias !1684
  store <2 x i32> %i.ag, ptr %i.af, align 4, !tbaa !41, !noalias !1684
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i.i, i64 64
  %i.aj = add nsw i64 %.015.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.new, !llvm.loop !23

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24, !noalias !1685
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.new, %.prol.loopexit
  %i.ak = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i.i.i, %i.b
  store i64 %i.ak, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1684
  br label %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit

_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit: ; preds = %bb.a, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6insertINS0_12vec_iteratorIPS2_Lb1EEEEENS8_IS9_Lb0EEESA_T_SC_PNS_11move_detail13disable_if_orIvNSD_14is_convertibleISC_mEENS3_17is_input_iteratorISC_Xsr21has_iterator_categoryISC_EE5valueEEENSD_5bool_ILb0EEESK_E4typeE.exit.i.i.i
  store i64 %i.b, ptr %i.c, align 8, !tbaa !128
  %i.al = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 212, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container13static_vectorIS0_Lm10EvEEEvRKT1_, i1 noundef zeroext true)
          to label %bb.d unwind label %.loopexit.split-lp68 ; 0 uses

bb.d:                                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_12vec_iteratorIPS2_Lb1EEEEET_S8_.exit
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.an = load i64, ptr %i.a, align 8, !tbaa !102, !noalias !1686 ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  %i.ap = icmp eq i64 %i.b, %i.an
  %i.aq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS2_IS4_Lb1EEEEvT_S7_T0_S8_, i1 noundef zeroext %i.ap)
          to label %.noexc unwind label %.loopexit.split-lp68 ; 0 uses

.noexc:                                           ; preds = %bb.d
  %.not5.i = icmp eq i64 %i.b, 0
  br i1 %.not5.i, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc, %.noexc13
  %.sroa.052.0 = phi ptr [ %i.az, %.noexc13 ], [ %0, %.noexc ] ; 3 uses
  %.sroa.057.0 = phi ptr [ %i.ay, %.noexc13 ], [ %1, %.noexc ] ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.052.0, %i.ao
  br i1 %.not4.i, label %.lr.ph.preheader.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ar = load <2 x i32>, ptr %.sroa.057.0, align 4
  %i.as = load <2 x i32>, ptr %.sroa.052.0, align 4
  %i.at = icmp eq <2 x i32> %i.ar, %i.as          ; 2 uses
end_hunk_0
begin_hunk_1_@_Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_:bb.a
  %.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.new, !llvm.loop !26

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.new, %.prol.loopexit105
  %i.ce = add i64 %_ZZN14counting_value1cEvE2co.promoted.i.i.i.i.i.i.i, %i.bf
  store i64 %i.ce, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75, !noalias !1792
  store i64 %i.bf, ptr %i.bb, align 8, !tbaa !128, !noalias !1791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit

bb.e:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i.i
  invoke void @_ZN5boost9container3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.e
  unreachable

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i
  %i.cf = phi i64 [ %i.bf, %._crit_edge.i.i.i.i.i.i.i ], [ 0, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE19priv_destroy_last_nEm.exit.i ]
  %i.cg = load i64, ptr %0, align 8, !tbaa !114
  %i.ch = icmp eq i64 %i.cf, %i.cg
  %i.ci = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.1, i32 noundef 219, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_and_assignI14counting_valueLm10EN5boost9container4listIS0_vEEEvRKT1_, i1 noundef zeroext %i.ch)
          to label %bb.f unwind label %.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit
  %i.cj = load i64, ptr %i.bb, align 8, !tbaa !102, !noalias !1793 ; 3 uses
  %.idx69 = shl nsw i64 %i.cj, 3
  %i.ck = getelementptr inbounds i8, ptr %2, i64 %.idx69
  %i.cl = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1794 ; 3 uses
  %.not2.i.i.i16 = icmp eq ptr %i.cl, %i.a
  br i1 %.not2.i.i.i16, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %bb.f, %.lr.ph.i.i.i17
  %i.cm = phi ptr [ %i.co, %.lr.ph.i.i.i17 ], [ %i.cl, %bb.f ]
  %.03.i.i.i18 = phi i64 [ %i.cn, %.lr.ph.i.i.i17 ], [ 0, %bb.f ]
  %i.cn = add nuw nsw i64 %.03.i.i.i18, 1         ; 2 uses
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.co, %i.a
  br i1 %.not.i.i.i19, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20, label %.lr.ph.i.i.i17, !llvm.loop !25

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20: ; preds = %.lr.ph.i.i.i17, %bb.f
  %.0.lcssa.i.i.i21 = phi i64 [ 0, %bb.f ], [ %i.cn, %.lr.ph.i.i.i17 ]
  %i.cp = icmp eq i64 %i.cj, %.0.lcssa.i.i.i21
  %i.cq = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.1, i32 noundef 202, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.cp)
          to label %.noexc29 unwind label %.loopexit.split-lp ; 0 uses

.noexc29:                                         ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20
  %.not5.i22 = icmp eq i64 %i.cj, 0
  br i1 %.not5.i22, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.noexc29, %.noexc30
  %.sroa.050.0 = phi ptr [ %i.cz, %.noexc30 ], [ %2, %.noexc29 ] ; 2 uses
  %.sroa.045.0 = phi ptr [ %i.da, %.noexc30 ], [ %i.cl, %.noexc29 ] ; 3 uses
  %.not4.i26 = icmp eq ptr %.sroa.045.0, %i.a
  br i1 %.not4.i26, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i25
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.045.0, i64 16
  %i.cs = load <2 x i32>, ptr %.sroa.050.0, align 4
  %i.ct = load <2 x i32>, ptr %i.cr, align 4
  %i.cu = icmp eq <2 x i32> %i.cs, %i.ct          ; 2 uses
  %i.cv = extractelement <2 x i1> %i.cu, i64 0
  %i.cw = extractelement <2 x i1> %i.cu, i64 1
  %i.cx = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cy = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull @__PRETTY_FUNCTION__._Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_, i1 noundef zeroext %i.cx)
          to label %.noexc30 unwind label %.loopexit ; 0 uses

.noexc30:                                         ; preds = %bb.g
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.050.0, i64 8 ; 2 uses
  %i.da = load ptr, ptr %.sroa.045.0, align 8, !tbaa !105
  %.not.i27 = icmp eq ptr %i.cz, %i.ck
  br i1 %.not.i27, label %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, label %.lr.ph.i25, !llvm.loop !1762

_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31: ; preds = %.noexc30, %.lr.ph.i25, %.noexc29
  %i.db = load i64, ptr %i.bb, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i32 = icmp eq i64 %i.db, 0
  br i1 %.not3.i.i32, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit35, label %.lr.ph.preheader.i.i33

.lr.ph.preheader.i.i33:                           ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31
  %_ZZN14counting_value1cEvE2co.promoted.i.i34 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.dc = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i34, %i.db
  store i64 %i.dc, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit35

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit35: ; preds = %_Z19test_compare_rangesIN5boost9container12vec_iteratorIP14counting_valueLb0EEENS1_3dtl23iterator_from_iiteratorINS0_9intrusive13list_iteratorINS8_8bhtraitsINS1_9base_nodeIS3_NS6_9list_hookIPvEELb0EEENS8_16list_node_traitsISD_EELNS8_14link_mode_typeE0ENS8_7dft_tagELj1EEELb0EEELb1EEEEvT_SN_T0_SO_.exit31, %.lr.ph.preheader.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

.loopexit70:                                      ; preds = %bb.d
  %lpad.loopexit72 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp71:                             ; preds = %_ZN5boost9container13static_vectorI14counting_valueLm10EvEC2INS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS7_8bhtraitsINS0_9base_nodeIS2_NS5_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEELb0EEELb1EEEEET_SM_.exit, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i
  %lpad.loopexit.split-lp73 = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp71, %.loopexit70
  %lpad.phi74 = phi { ptr, i32 } [ %lpad.loopexit72, %.loopexit70 ], [ %lpad.loopexit.split-lp73, %.loopexit.split-lp71 ]
  %.not3.i.i36 = icmp eq i64 %i.af, 0
  br i1 %.not3.i.i36, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39, label %.lr.ph.preheader.i.i37

.lr.ph.preheader.i.i37:                           ; preds = %bb.h
  %_ZZN14counting_value1cEvE2co.promoted.i.i38 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.dd = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i38, %i.af
  store i64 %i.dd, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39: ; preds = %bb.h, %.lr.ph.preheader.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.j

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvE6assignINS3_23iterator_from_iiteratorINS_9intrusive13list_iteratorINS9_8bhtraitsINS0_9base_nodeIS2_NS3_9list_hookIPvEELb0EEENS9_16list_node_traitsISE_EELNS9_14link_mode_typeE0ENS9_7dft_tagELj1EEELb0EEELb1EEEEEvT_SO_PNS_11move_detail13disable_if_orIvNSP_14is_convertibleISO_mEENSP_4and_INSP_12is_differentINSP_17integral_constantIjLj0EEESW_EENS3_21is_not_input_iteratorISO_EENSP_5bool_ILb1EEES11_EENS10_ILb0EEES13_E4typeE.exit, %bb.e, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeI14counting_valueNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsISA_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb1EEEEENS_7movelib9iter_sizeIT_E4typeESM_SM_.exit.i20
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.de = load i64, ptr %i.bb, align 8, !tbaa !102 ; 2 uses
  %.not3.i.i40 = icmp eq i64 %i.de, 0
  br i1 %.not3.i.i40, label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43, label %.lr.ph.preheader.i.i41

.lr.ph.preheader.i.i41:                           ; preds = %bb.i
  %_ZZN14counting_value1cEvE2co.promoted.i.i42 = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.df = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i42, %i.de
  store i64 %i.df, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43

_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43: ; preds = %bb.i, %.lr.ph.preheader.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39
  %.pn = phi { ptr, i32 } [ %lpad.phi, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit43 ], [ %lpad.phi74, %_ZN5boost9container6vectorI14counting_valueNS0_3dtl24static_storage_allocatorIS2_Lm10ELm0ELb1EEEvED2Ev.exit39 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorI14counting_valuevvED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !132  ; 2 uses
  %.not3.i = icmp eq i64 %i.b, 0
  br i1 %.not3.i, label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %_ZZN14counting_value1cEvE2co.promoted.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8
  %i.c = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i, %i.b
  store i64 %i.c, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit

_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit: ; preds = %.lr.ph.preheader.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !133  ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit
  %i.f = load ptr, ptr %0, align 8, !tbaa !136
  %i.g = shl i64 %i.e, 3
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.g) #25
  br label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEED2Ev.exit: ; preds = %_ZN5boost9container15destroy_alloc_nINS0_13new_allocatorI14counting_valueEEPS3_EENS0_3dtl33disable_if_trivially_destructibleIT0_vE4typeERT_S8_m.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorI14counting_valueEENS_9intrusive9list_implINS6_8bhtraitsINS0_9base_nodeIS4_NS1_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105, !noalias !1797 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.04.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !105 ; 2 uses
  %i.d = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i, i64 noundef 24) #25
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !9

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a
  store ptr %i.a, ptr %i.a, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorI14counting_valuevvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESD_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !133  ; 6 uses
  %i.c = sub i64 1152921504606846975, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 1152921504606846975
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !42

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27 ; 7 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !134    ; 11 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !132  ; 6 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  %.pre.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 3 uses
  br i1 %.not16.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %5 = ptrtoaddr ptr %2 to i64
  %6 = ptrtoaddr ptr %i.s to i64
  %i.v = add i64 %5, -8
  %i.w = sub i64 %i.v, %6                         ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.z    ; 2 uses
  %i.ac = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.pre.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ac, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi23 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.s, i64 %i.ae ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep26 = getelementptr i8, ptr %i.r, i64 %i.ae
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !41
  %wide.vec28 = load <4 x i32>, ptr %next.gep24, align 4, !tbaa !41
  store <4 x i32> %wide.vec, ptr %next.gep25, align 4, !tbaa !41
  store <4 x i32> %wide.vec28, ptr %next.gep26, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep24, align 4, !tbaa !41
  %i.af = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.ag = add <2 x i64> %vec.phi23, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !1798

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ag, %i.af
  %i.ai = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader74

.lr.ph.i.i.i.preheader74:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph75 = phi i64 [ %.pre.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader74, %.lr.ph.i.i.i
  %i.aj = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ %.ph75, %.lr.ph.i.i.i.preheader74 ]
  %.018.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 4 uses
  %.01517.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4
  %i.al = load <2 x i32>, ptr %.018.i.i.i, align 4, !tbaa !41
  store <2 x i32> %i.al, ptr %.01517.i.i.i, align 4, !tbaa !41
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %i.ak, align 4, !tbaa !80
  %i.am = add i64 %i.aj, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %2
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1799

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.ap = phi i64 [ %.pre.i.i, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ai, %middle.block ], [ %i.am, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ab, %middle.block ], [ %i.ao, %.lr.ph.i.i.i ] ; 5 uses
  %i.aq = load <2 x i32>, ptr %4, align 4, !tbaa !41
  store <2 x i32> %i.aq, ptr %.015.lcssa.i.i.i, align 4, !tbaa !41
  %i.ar = add i64 %i.ap, 1                        ; 5 uses
  store i64 %i.ar, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %._crit_edge.i.i.i
  %i.as = getelementptr [8 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %7 = ptrtoaddr ptr %i.s to i64                  ; 2 uses
  %i.at = shl i64 %i.t, 3
  %8 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %i.au = add i64 %i.at, %7
  %i.av = add i64 %i.au, -8
  %i.aw = sub i64 %i.av, %8                       ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check42 = icmp ult i64 %i.aw, 200
  br i1 %min.iters.check42, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i20.preheader.i.i
  %i.az = shl i64 %3, 3                           ; 2 uses
  %i.ba = shl i64 %i.t, 3
  %i.bb = add i64 %i.ba, %7
  %i.bc = add i64 %i.bb, -8
  %i.bd = sub i64 %i.bc, %8
  %i.be = and i64 %i.bd, -8                       ; 3 uses
  %i.bf = add i64 %i.az, %i.be                    ; 2 uses
  %i.bg = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 4
  %i.bi = getelementptr i8, ptr %2, i64 %i.be
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %i.bk = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.az
  %i.bl = getelementptr i8, ptr %i.bk, i64 4
  %i.bm = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bf
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = getelementptr i8, ptr %2, i64 4
  %i.bp = getelementptr i8, ptr %2, i64 %i.be
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %bound0 = icmp ult ptr %i.as, %i.bj
  %bound1 = icmp ult ptr %2, %i.bh
  %found.conflict = and i1 %bound0, %bound1
  %bound043 = icmp ult ptr %i.bl, %i.bq
  %bound144 = icmp ult ptr %i.bo, %i.bn
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  br i1 %conflict.rdx, label %.lr.ph.i20.i.i.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %vector.memcheck
  %n.vec47 = and i64 %i.ay, 4611686018427387900   ; 3 uses
  %i.br = shl i64 %n.vec47, 3                     ; 2 uses
  %i.bs = getelementptr i8, ptr %2, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.as, i64 %i.br
  %i.bu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ar, i64 0
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next64, %vector.body48 ] ; 2 uses
  %vec.phi50 = phi <2 x i64> [ %i.bu, %vector.ph46 ], [ %i.bx, %vector.body48 ]
  %vec.phi51 = phi <2 x i64> [ zeroinitializer, %vector.ph46 ], [ %i.by, %vector.body48 ]
  %i.bv = shl i64 %index49, 3                     ; 3 uses
  %i.bw = or disjoint i64 %i.bv, 16               ; 2 uses
  %next.gep52 = getelementptr i8, ptr %2, i64 %i.bv ; 2 uses
  %next.gep53 = getelementptr i8, ptr %2, i64 %i.bw ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.as, i64 %i.bv
  %next.gep55 = getelementptr i8, ptr %i.as, i64 %i.bw
  %wide.vec56 = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !41
  %wide.vec59 = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !41
  store <4 x i32> %wide.vec56, ptr %next.gep54, align 4, !tbaa !41
  store <4 x i32> %wide.vec59, ptr %next.gep55, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep52, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep53, align 4, !tbaa !41
  %i.bx = add <2 x i64> %vec.phi50, splat (i64 1) ; 2 uses
  %i.by = add <2 x i64> %vec.phi51, splat (i64 1) ; 2 uses
  %index.next64 = add nuw i64 %index49, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next64, %n.vec47
  br i1 %i.bz, label %middle.block65, label %vector.body48, !llvm.loop !1800

middle.block65:                                   ; preds = %vector.body48
  %bin.rdx66 = add <2 x i64> %i.by, %i.bx
  %i.ca = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx66) ; 2 uses
  %cmp.n67 = icmp eq i64 %i.ay, %n.vec47
  br i1 %cmp.n67, label %._crit_edge.i25.i.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.i20.preheader.i.i, %middle.block65
  %.ph = phi i64 [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i20.preheader.i.i ], [ %i.ca, %middle.block65 ]
  %.018.i22.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.bs, %middle.block65 ]
  %.01517.i23.i.i.ph = phi ptr [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i20.preheader.i.i ], [ %i.bt, %middle.block65 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.cb = phi i64 [ %i.ce, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i22.i.i = phi ptr [ %i.cf, %.lr.ph.i20.i.i ], [ %.018.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 4 uses
  %.01517.i23.i.i = phi ptr [ %i.cg, %.lr.ph.i20.i.i ], [ %.01517.i23.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.018.i22.i.i, i64 4
  %i.cd = load <2 x i32>, ptr %.018.i22.i.i, align 4, !tbaa !41
  store <2 x i32> %i.cd, ptr %.01517.i23.i.i, align 4, !tbaa !41
  store i32 0, ptr %.018.i22.i.i, align 4, !tbaa !79
  store i32 0, ptr %i.cc, align 4, !tbaa !80
  %i.ce = add i64 %i.cb, 1                        ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.018.i22.i.i, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.01517.i23.i.i, i64 8
  %.not.i24.i.i = icmp eq ptr %i.cf, %i.u
  br i1 %.not.i24.i.i, label %._crit_edge.i25.i.i, label %.lr.ph.i20.i.i, !llvm.loop !1801

._crit_edge.i25.i.i:                              ; preds = %.lr.ph.i20.i.i, %middle.block65
  %.lcssa = phi i64 [ %i.ca, %middle.block65 ], [ %i.ce, %.lr.ph.i20.i.i ] ; 2 uses
  store i64 %.lcssa, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i: ; preds = %._crit_edge.i25.i.i, %._crit_edge.i.i.i
  %_ZZN14counting_value1cEvE2co.promoted.i.i = phi i64 [ %.lcssa, %._crit_edge.i25.i.i ], [ %i.ar, %._crit_edge.i.i.i ]
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorI14counting_valuevvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %bb.h, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.ch = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.t
  store i64 %i.ch, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.i.i, %bb.g
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !133
  %i.cj = shl i64 %i.ci, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.cj) #25
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !135
  br label %_ZN5boost9container6vectorI14counting_valuevvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit

_ZN5boost9container6vectorI14counting_valuevvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJRKS2_EEEEEvPS2_mSC_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i, %bb.h
  %i.ck = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JRKS3_EEEEEvRT_T0_SD_SD_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ]
  %i.cl = ptrtoint ptr %2 to i64
  %i.cm = ptrtoint ptr %i.s to i64
  %i.cn = sub i64 %i.cl, %i.cm
  store ptr %i.r, ptr %1, align 8, !tbaa !134
  %i.co = add i64 %i.ck, %3
  store i64 %i.co, ptr %i.d, align 8, !tbaa !135
  store i64 %i.o, ptr %i.a, align 8, !tbaa !75
  %i.cp = getelementptr inbounds i8, ptr %i.r, i64 %i.cn
  store ptr %i.cp, ptr %0, align 8, !tbaa !199
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_NS2_18insert_range_proxyIS5_NS0_12vec_iteratorIS6_Lb1EEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_(ptr noundef nonnull align 4 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 8 uses
  %.not = icmp ult i64 %i.d, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i64 0, %3
  %i.f = getelementptr inbounds [8 x i8], ptr %2, i64 %i.e ; 5 uses
  %.not17.i = icmp eq i64 %3, 0                   ; 2 uses
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %_ZZN14counting_value1cEvE2co.promoted.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %min.iters.check = icmp eq i64 %3, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %3, -2                         ; 3 uses
  %i.g = and i64 %3, 1
  %i.h = shl i64 %n.vec, 3                        ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr i8, ptr %2, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.k ; 2 uses
  %next.gep93 = getelementptr i8, ptr %2, i64 %i.k ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep93) ]
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !41
  store <4 x i32> %wide.vec, ptr %next.gep93, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !1802

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.020.i.ph = phi i64 [ %3, %.lr.ph.i ], [ %i.g, %middle.block ]
  %.0819.i.ph = phi ptr [ %i.f, %.lr.ph.i ], [ %i.i, %middle.block ]
  %.01618.i.ph = phi ptr [ %2, %.lr.ph.i ], [ %i.j, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.020.i = phi i64 [ %i.m, %scalar.ph ], [ %.020.i.ph, %scalar.ph.preheader ]
  %.0819.i = phi ptr [ %i.p, %scalar.ph ], [ %.0819.i.ph, %scalar.ph.preheader ] ; 4 uses
  %.01618.i = phi ptr [ %i.q, %scalar.ph ], [ %.01618.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.m = add i64 %.020.i, -1                      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4
  %i.o = load <2 x i32>, ptr %.0819.i, align 4, !tbaa !41
  store <2 x i32> %i.o, ptr %.01618.i, align 4, !tbaa !41
  store i32 0, ptr %.0819.i, align 4, !tbaa !79
  store i32 0, ptr %i.n, align 4, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1803

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.r = add i64 %_ZZN14counting_value1cEvE2co.promoted.i, %3
  store i64 %i.r, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit

_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit: ; preds = %bb.b, %._crit_edge.i
  %.not8.i = icmp eq ptr %1, %i.f
  br i1 %.not8.i, label %_ZN5boost9container13move_backwardIP14counting_valueS3_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S7_E4typeES6_S6_S7_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit, %.lr.ph.i40
  %.010.i = phi ptr [ %i.t, %.lr.ph.i40 ], [ %2, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit ]
  %.079.i = phi ptr [ %i.s, %.lr.ph.i40 ], [ %i.f, %_ZN5boost9container26uninitialized_move_alloc_nINS0_3dtl24static_storage_allocatorI14counting_valueLm10ELm0ELb1EEEPS4_S6_EENS2_41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit ] ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.079.i, i64 -8 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS_9intrusive9list_implINS7_8bhtraitsINS0_9base_nodeIS5_NS1_9list_hookIPvEELb0EEENS7_16list_node_traitsISC_EELNS7_14link_mode_typeE0ENS7_7dft_tagELj1EEEmLb1EvEEED2Ev:bb.a
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.04.09.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !105 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 16
  store i32 -2147483648, ptr %i.d, align 8, !tbaa !82
  %i.e = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.f = add i32 %i.e, -1
  store i32 %i.f, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i, i64 noundef 24) #25
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.a
  store ptr %i.a, ptr %i.a, align 8, !tbaa !105
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESE_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.59") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !146  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !148  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !42

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !147    ; 8 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !145  ; 7 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge, label %.lr.ph.i.i.i

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.pre = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  br label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.v = load i32, ptr %.018.i.i.i, align 4, !tbaa !82
  store i32 %i.v, ptr %.01517.i.i.i, align 4, !tbaa !82
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !82
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !30

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge
  %i.aa = phi i32 [ %.pre, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.x, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit..loopexit.i.i_crit_edge ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %i.ab = load i32, ptr %4, align 4, !tbaa !82
  store i32 %i.ab, ptr %.015.lcssa.i.i.i, align 4, !tbaa !82
  %i.ac = add i32 %i.aa, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %.018.i21.i.i = phi ptr [ %i.ah, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  %.01517.i22.i.i = phi ptr [ %i.ai, %.lr.ph.i20.i.i ], [ %i.ad, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %i.ae = load i32, ptr %.018.i21.i.i, align 4, !tbaa !82
  store i32 %i.ae, ptr %.01517.i22.i.i, align 4, !tbaa !82
  store i32 0, ptr %.018.i21.i.i, align 4, !tbaa !82
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.ah, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !30

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJRKS3_EEEEEvPS3_mSD_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JRKS4_EEEEEvRT_T0_SE_SE_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.05.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ]
  %storemerge4.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.prol ], [ %i.s, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.aj = add i64 %.05.i.i.prol, -1               ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i.i.prol, align 4, !tbaa !82
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.al = add i32 %i.ak, -1
  store i32 %i.al, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge4.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2017

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.05.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %storemerge4.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i.preheader ], [ %i.am, %.lr.ph.i.i.prol ]
  %i.an = icmp ult i64 %i.t, 4
  br i1 %i.an, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.05.i.i = phi i64 [ %i.av, %.lr.ph.i.i ], [ %.05.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %storemerge4.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %storemerge4.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %storemerge4.i.i, align 4, !tbaa !82
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41 ; 4 uses
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
  %5 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %i.ay = shl i64 %i.c, 2
  %i.az = shl i64 %3, 2
  %i.ba = add i64 %i.ay, %5
  %i.bb = add i64 %i.ba, -4
  %i.bc = add i64 %i.az, %i.ab
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bd, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bg = shl i64 %i.c, 2                         ; 2 uses
  %i.bh = shl i64 %3, 2                           ; 2 uses
  %i.bi = add i64 %i.bg, %5
  %i.bj = add i64 %i.bi, -4
  %i.bk = add i64 %i.bh, %i.ab
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = add i64 %i.bg, -4                       ; 2 uses
  %i.bo = sub i64 %i.bn, %i.bm
  %i.bp = getelementptr i8, ptr %1, i64 %i.bo
  %i.bq = add i64 %i.bh, %i.bm
  %i.br = sub i64 %i.bn, %i.bq
  %i.bs = getelementptr i8, ptr %1, i64 %i.br
  %bound0 = icmp ult ptr %i.bp, %i.af
  %bound1 = icmp ult ptr %i.bs, %i.f
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 9223372036854775800     ; 3 uses
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
  %cmp.n = icmp eq i64 %i.bf, %n.vec
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
  br label %.lr.ph.i.i56.i.i.i.prol.loopexit

.lr.ph.i.i56.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i56.i.i.i.prol, %.loopexit.i.i.i
  %.unr35 = phi ptr [ %.lcssa, %.loopexit.i.i.i ], [ %i.em, %.lr.ph.i.i56.i.i.i.prol ]
  %.015.i.i.i.i.i.unr = phi i64 [ %i.eh, %.loopexit.i.i.i ], [ %i.eo, %.lr.ph.i.i56.i.i.i.prol ]
  %.01214.i.i.i.i.i.unr = phi ptr [ %i.f, %.loopexit.i.i.i ], [ %i.en, %.lr.ph.i.i56.i.i.i.prol ]
  %i.ep = icmp eq i64 %3, %.neg
  br i1 %i.ep, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i56.i.i.i

.lr.ph.i.i56.i.i.i:                               ; preds = %.lr.ph.i.i56.i.i.i.prol.loopexit, %.lr.ph.i.i56.i.i.i
  %i.eq = phi ptr [ %i.fa, %.lr.ph.i.i56.i.i.i ], [ %.unr35, %.lr.ph.i.i56.i.i.i.prol.loopexit ] ; 2 uses
  %.015.i.i.i.i.i = phi i64 [ %i.fc, %.lr.ph.i.i56.i.i.i ], [ %.015.i.i.i.i.i.unr, %.lr.ph.i.i56.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i56.i.i.i ], [ %.01214.i.i.i.i.i.unr, %.lr.ph.i.i56.i.i.i.prol.loopexit ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.i) ]
  %i.es = load i32, ptr %i.er, align 4, !tbaa !82, !noalias !2044
  store i32 %i.es, ptr %.01214.i.i.i.i.i, align 4, !tbaa !82, !noalias !2044
  %i.et = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2044 ; 2 uses
  %i.eu = add i32 %i.et, 1
  store i32 %i.eu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2044
  %i.ev = load ptr, ptr %i.eq, align 8, !tbaa !105, !noalias !2044 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !82, !noalias !2044
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !82, !noalias !2044
  %i.ez = add i32 %i.et, 2
  store i32 %i.ez, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41, !noalias !2044
  %i.fa = load ptr, ptr %i.ev, align 8, !tbaa !105, !noalias !2044
  %i.fb = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.fc = add i64 %.015.i.i.i.i.i, -2             ; 2 uses
  %.not.i.i57.i.i.i.1 = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i57.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i56.i.i.i, !llvm.loop !2020

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_3dtl24static_storage_allocatorIS3_Lm10ELm0ELb1EEEvE40priv_insert_forward_range_expand_forwardINS4_18insert_range_proxyIS6_NS4_23iterator_from_iiteratorINS_9intrusive13list_iteratorINSB_8bhtraitsINS0_9base_nodeIS3_NS4_9list_hookIPvEELb0EEENSB_16list_node_traitsISG_EELNSB_14link_mode_typeE0ENSB_7dft_tagELj1EEELb0EEELb1EEEEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i56.i.i.i.prol.loopexit, %.lr.ph.i.i56.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.fd = add i64 %i.c, %3
  store i64 %i.fd, ptr %i.b, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr %i.a, ptr %0, align 8, !tbaa !205
  ret void

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container3dtl24static_storage_allocatorINS0_4test24movable_and_copyable_intELm10ELm0ELb1EE20on_capacity_overflowENS_11move_detail17integral_constantIbLb1EEE() #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorIivvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEENS0_12vec_iteratorIPiLb0EEESA_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !110  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !189  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
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
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !42

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27 ; 5 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !111    ; 6 uses
  %i.t = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w ; 2 uses
  %i.y = icmp ne ptr %i.s, %2
  %i.z = icmp ne ptr %i.s, null                   ; 2 uses
  %spec.select.i.i.i.i = and i1 %i.z, %i.y
  br i1 %spec.select.i.i.i.i, label %bb.g, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i, !prof !190

bb.g:                                             ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 4 %i.s, i64 %i.v, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  br label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i: ; preds = %bb.g, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.0.i.i.i.i = phi ptr [ %i.aa, %bb.g ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIiEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i.i.i) ]
  %i.ab = load i32, ptr %4, align 4, !tbaa !41
  store i32 %i.ab, ptr %.0.i.i.i.i, align 4, !tbaa !41
  %i.ac = icmp ne ptr %2, %i.x
  %i.ad = icmp ne ptr %2, null
  %spec.select.i.i18.i.i = and i1 %i.ad, %i.ac
  br i1 %spec.select.i.i18.i.i, label %bb.h, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvRT_T0_SA_SA_T1_mT2_.exit.i, !prof !190

bb.h:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %3
  %i.af = ptrtoint ptr %i.x to i64
  %i.ag = sub i64 %i.af, %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 4 %2, i64 %i.ag, i1 false)
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvRT_T0_SA_SA_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvRT_T0_SA_SA_T1_mT2_.exit.i: ; preds = %bb.h, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorIiEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i.i
  br i1 %i.z, label %bb.i, label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEvPimS9_mT_.exit

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvRT_T0_SA_SA_T1_mT2_.exit.i
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !110
  %i.ai = shl i64 %i.ah, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.ai) #25
  %.pre = load i64, ptr %i.d, align 8, !tbaa !189
  br label %_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEvPimS9_mT_.exit

_ZN5boost9container6vectorIivvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJiEEEEEvPimS9_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvRT_T0_SA_SA_T1_mT2_.exit.i, %bb.i
  %i.aj = phi i64 [ %i.w, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIiEEPiS4_NS0_3dtl20insert_emplace_proxyIS3_JiEEEEEvRT_T0_SA_SA_T1_mT2_.exit.i ], [ %.pre, %bb.i ]
  store ptr %i.r, ptr %1, align 8, !tbaa !111
  %i.ak = add i64 %i.aj, %3
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !189
  store i64 %i.o, ptr %i.a, align 8, !tbaa !75
  %i.al = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.al, ptr %0, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorI8value_ndvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.53") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !125  ; 6 uses
  %i.d = sub i64 2305843009213693951, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !193  ; 2 uses
  %.neg.i = sub i64 %3, %i.c
  %i.g = add i64 %.neg.i, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = shl nuw i64 %i.c, 3
  %i.k = udiv i64 %i.j, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.c, -6917529027641081857
  %i.m = shl i64 %i.c, 3
  %spec.select.i.i = select i1 %i.l, i64 -1, i64 %i.m
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.k, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.n = add i64 %i.f, %3                         ; 2 uses
  %i.o = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.p = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %i.o) ; 2 uses
  %i.q = icmp ugt i64 %i.n, 2305843009213693951
  br i1 %i.q, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !42

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #27 ; 6 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !126    ; 10 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !124  ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %5 = ptrtoaddr ptr %2 to i64
  %6 = ptrtoaddr ptr %i.t to i64
  %i.w = add i64 %5, -4
  %i.x = sub i64 %i.w, %6                         ; 2 uses
  %i.y = lshr i64 %i.x, 2
  %i.z = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.x, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader33, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.z, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.s, i64 %i.aa   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ad ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !41
  %wide.load15 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !41
  %i.af = getelementptr i8, ptr %next.gep14, i64 16
  store <4 x i32> %wide.load, ptr %next.gep14, align 4, !tbaa !41
  store <4 x i32> %wide.load15, ptr %i.af, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !2045

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i, label %.lr.ph.i.i.i.preheader33

.lr.ph.i.i.i.preheader33:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.018.i.i.i.ph = phi ptr [ %i.t, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader33, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader33 ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader33 ] ; 2 uses
  %i.ah = load i32, ptr %.018.i.i.i, align 4, !tbaa !41
  store i32 %i.ah, ptr %.01517.i.i.i, align 4, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2046

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI8value_ndEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ac, %middle.block ], [ %i.aj, %.lr.ph.i.i.i ] ; 3 uses
  %.015.lcssa.i.i.i17 = ptrtoaddr ptr %.015.lcssa.i.i.i to i64
  %i.ak = load i32, ptr %4, align 4, !tbaa !41
  store i32 %i.ak, ptr %.015.lcssa.i.i.i, align 4, !tbaa !41
  %.not16.i19.i.i = icmp eq ptr %2, %i.v
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 4 uses
  %7 = ptrtoaddr ptr %i.t to i64
  %i.am = shl i64 %i.u, 2
  %i.an = add i64 %i.am, %7
  %i.ao = add i64 %i.an, -4
  %i.ap = sub i64 %i.ao, %i.a                     ; 2 uses
  %i.aq = lshr i64 %i.ap, 2
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check19 = icmp ult i64 %i.ap, 76
  br i1 %min.iters.check19, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i20.preheader.i.i
  %i.as = shl i64 %3, 2
  %i.at = add i64 %i.as, %.015.lcssa.i.i.i17
  %i.au = sub i64 %i.a, %i.at
  %diff.check = icmp ugt i64 %i.au, -32
  br i1 %diff.check, label %.lr.ph.i20.i.i.preheader, label %vector.ph20

vector.ph20:                                      ; preds = %vector.memcheck
  %n.vec21 = and i64 %i.ar, 9223372036854775800   ; 3 uses
  %i.av = shl i64 %n.vec21, 2                     ; 2 uses
  %i.aw = getelementptr i8, ptr %2, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.av
  br label %vector.body22

vector.body22:                                    ; preds = %vector.body22, %vector.ph20
  %index23 = phi i64 [ 0, %vector.ph20 ], [ %index.next28, %vector.body22 ] ; 2 uses
  %i.ay = shl i64 %index23, 2                     ; 2 uses
  %next.gep24 = getelementptr i8, ptr %2, i64 %i.ay ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.al, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load26 = load <4 x i32>, ptr %next.gep24, align 4, !tbaa !41
  %wide.load27 = load <4 x i32>, ptr %i.az, align 4, !tbaa !41
  %i.ba = getelementptr i8, ptr %next.gep25, i64 16
  store <4 x i32> %wide.load26, ptr %next.gep25, align 4, !tbaa !41
  store <4 x i32> %wide.load27, ptr %i.ba, align 4, !tbaa !41
  %index.next28 = add nuw i64 %index23, 8         ; 2 uses
  %i.bb = icmp eq i64 %index.next28, %n.vec21
  br i1 %i.bb, label %middle.block29, label %vector.body22, !llvm.loop !2047

middle.block29:                                   ; preds = %vector.body22
  %cmp.n30 = icmp eq i64 %i.ar, %n.vec21
  br i1 %cmp.n30, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.i20.preheader.i.i, %middle.block29
  %.018.i21.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.aw, %middle.block29 ]
  %.01517.i22.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i20.preheader.i.i ], [ %i.ax, %middle.block29 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %.018.i21.i.i = phi ptr [ %i.bd, %.lr.ph.i20.i.i ], [ %.018.i21.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.be, %.lr.ph.i20.i.i ], [ %.01517.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.bc = load i32, ptr %.018.i21.i.i, align 4, !tbaa !41
  store i32 %i.bc, ptr %.01517.i22.i.i, align 4, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.bd, %i.v
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !2048

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %middle.block29, %.loopexit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEEvPS2_mSA_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !125
  %i.bg = shl i64 %i.bf, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bg) #25
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !193
  br label %_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEEvPS2_mSA_mT_.exit

_ZN5boost9container6vectorI8value_ndvvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEEvPS2_mSA_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i, %bb.g
  %i.bh = phi i64 [ %i.u, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI8value_ndEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i ], [ %.pre.i, %bb.g ]
  %i.bi = ptrtoint ptr %2 to i64
  %i.bj = ptrtoint ptr %i.t to i64
  %i.bk = sub i64 %i.bi, %i.bj
  store ptr %i.s, ptr %1, align 8, !tbaa !126
  %i.bl = add i64 %i.bh, %3
  store i64 %i.bl, ptr %i.e, align 8, !tbaa !193
  store i64 %i.p, ptr %i.b, align 8, !tbaa !75
  %i.bm = getelementptr inbounds i8, ptr %i.s, i64 %i.bk
  store ptr %i.bm, ptr %0, align 8, !tbaa !195
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorI14counting_valuevvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEENS0_12vec_iteratorIPS2_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !133  ; 6 uses
  %i.c = sub i64 1152921504606846975, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 1152921504606846975)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 1152921504606846975
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !42

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27 ; 7 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !134    ; 11 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !132  ; 6 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  %.pre.i.i = load i64, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75 ; 3 uses
  br i1 %.not16.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %5 = ptrtoaddr ptr %2 to i64
  %6 = ptrtoaddr ptr %i.s to i64
  %i.v = add i64 %5, -8
  %i.w = sub i64 %i.v, %6                         ; 2 uses
  %i.x = lshr i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.z    ; 2 uses
  %i.ac = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.pre.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ac, %vector.ph ], [ %i.af, %vector.body ]
  %vec.phi23 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ag, %vector.body ]
  %i.ad = shl i64 %index, 3                       ; 3 uses
  %i.ae = or disjoint i64 %i.ad, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.ad ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.s, i64 %i.ae ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.r, i64 %i.ad
  %next.gep26 = getelementptr i8, ptr %i.r, i64 %i.ae
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !tbaa !41
  %wide.vec28 = load <4 x i32>, ptr %next.gep24, align 4, !tbaa !41
  store <4 x i32> %wide.vec, ptr %next.gep25, align 4, !tbaa !41
  store <4 x i32> %wide.vec28, ptr %next.gep26, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep24, align 4, !tbaa !41
  %i.af = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.ag = add <2 x i64> %vec.phi23, splat (i64 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !2049

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ag, %i.af
  %i.ai = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader74

.lr.ph.i.i.i.preheader74:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.ph75 = phi i64 [ %.pre.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.018.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.preheader ], [ %i.aa, %middle.block ]
  %.01517.i.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.i.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader74, %.lr.ph.i.i.i
  %i.aj = phi i64 [ %i.am, %.lr.ph.i.i.i ], [ %.ph75, %.lr.ph.i.i.i.preheader74 ]
  %.018.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.018.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 4 uses
  %.01517.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.01517.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4
  %i.al = load <2 x i32>, ptr %.018.i.i.i, align 4, !tbaa !41
  store <2 x i32> %i.al, ptr %.01517.i.i.i, align 4, !tbaa !41
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !79
  store i32 0, ptr %i.ak, align 4, !tbaa !80
  %i.am = add i64 %i.aj, 1                        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %2
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !2050

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %i.ap = phi i64 [ %.pre.i.i, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ai, %middle.block ], [ %i.am, %.lr.ph.i.i.i ]
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorI14counting_valueEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.ab, %middle.block ], [ %i.ao, %.lr.ph.i.i.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ar = load <2 x i32>, ptr %4, align 4, !tbaa !41
  store <2 x i32> %i.ar, ptr %.015.lcssa.i.i.i, align 4, !tbaa !41
  store i32 0, ptr %4, align 4, !tbaa !79
  store i32 0, ptr %i.aq, align 4, !tbaa !80
  %i.as = add i64 %i.ap, 1                        ; 5 uses
  store i64 %i.as, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %._crit_edge.i.i.i
  %i.at = getelementptr [8 x i8], ptr %.015.lcssa.i.i.i, i64 %3 ; 6 uses
  %7 = ptrtoaddr ptr %i.s to i64                  ; 2 uses
  %i.au = shl i64 %i.t, 3
  %8 = ptrtoaddr ptr %2 to i64                    ; 2 uses
  %i.av = add i64 %i.au, %7
  %i.aw = add i64 %i.av, -8
  %i.ax = sub i64 %i.aw, %8                       ; 2 uses
  %i.ay = lshr i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check42 = icmp ult i64 %i.ax, 200
  br i1 %min.iters.check42, label %.lr.ph.i20.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i20.preheader.i.i
  %i.ba = shl i64 %3, 3                           ; 2 uses
  %i.bb = shl i64 %i.t, 3
  %i.bc = add i64 %i.bb, %7
  %i.bd = add i64 %i.bc, -8
  %i.be = sub i64 %i.bd, %8
  %i.bf = and i64 %i.be, -8                       ; 3 uses
  %i.bg = add i64 %i.ba, %i.bf                    ; 2 uses
  %i.bh = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %i.bj = getelementptr i8, ptr %2, i64 %i.bf
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %i.bl = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ba
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  %i.bn = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.bg
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %i.bp = getelementptr i8, ptr %2, i64 4
  %i.bq = getelementptr i8, ptr %2, i64 %i.bf
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %bound0 = icmp ult ptr %i.at, %i.bk
  %bound1 = icmp ult ptr %2, %i.bi
  %found.conflict = and i1 %bound0, %bound1
  %bound043 = icmp ult ptr %i.bm, %i.br
  %bound144 = icmp ult ptr %i.bp, %i.bo
  %found.conflict45 = and i1 %bound043, %bound144
  %conflict.rdx = or i1 %found.conflict, %found.conflict45
  br i1 %conflict.rdx, label %.lr.ph.i20.i.i.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %vector.memcheck
  %n.vec47 = and i64 %i.az, 4611686018427387900   ; 3 uses
  %i.bs = shl i64 %n.vec47, 3                     ; 2 uses
  %i.bt = getelementptr i8, ptr %2, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.at, i64 %i.bs
  %i.bv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.as, i64 0
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next64, %vector.body48 ] ; 2 uses
  %vec.phi50 = phi <2 x i64> [ %i.bv, %vector.ph46 ], [ %i.by, %vector.body48 ]
  %vec.phi51 = phi <2 x i64> [ zeroinitializer, %vector.ph46 ], [ %i.bz, %vector.body48 ]
  %i.bw = shl i64 %index49, 3                     ; 3 uses
  %i.bx = or disjoint i64 %i.bw, 16               ; 2 uses
  %next.gep52 = getelementptr i8, ptr %2, i64 %i.bw ; 2 uses
  %next.gep53 = getelementptr i8, ptr %2, i64 %i.bx ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.at, i64 %i.bw
  %next.gep55 = getelementptr i8, ptr %i.at, i64 %i.bx
  %wide.vec56 = load <4 x i32>, ptr %next.gep52, align 4, !tbaa !41
  %wide.vec59 = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !41
  store <4 x i32> %wide.vec56, ptr %next.gep54, align 4, !tbaa !41
  store <4 x i32> %wide.vec59, ptr %next.gep55, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep52, align 4, !tbaa !41
  store <4 x i32> zeroinitializer, ptr %next.gep53, align 4, !tbaa !41
  %i.by = add <2 x i64> %vec.phi50, splat (i64 1) ; 2 uses
  %i.bz = add <2 x i64> %vec.phi51, splat (i64 1) ; 2 uses
  %index.next64 = add nuw i64 %index49, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next64, %n.vec47
  br i1 %i.ca, label %middle.block65, label %vector.body48, !llvm.loop !2051

middle.block65:                                   ; preds = %vector.body48
  %bin.rdx66 = add <2 x i64> %i.bz, %i.by
  %i.cb = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx66) ; 2 uses
  %cmp.n67 = icmp eq i64 %i.az, %n.vec47
  br i1 %cmp.n67, label %._crit_edge.i25.i.i, label %.lr.ph.i20.i.i.preheader

.lr.ph.i20.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.i20.preheader.i.i, %middle.block65
  %.ph = phi i64 [ %i.as, %vector.memcheck ], [ %i.as, %.lr.ph.i20.preheader.i.i ], [ %i.cb, %middle.block65 ]
  %.018.i22.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i20.preheader.i.i ], [ %i.bt, %middle.block65 ]
  %.01517.i23.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i20.preheader.i.i ], [ %i.bu, %middle.block65 ]
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i.preheader, %.lr.ph.i20.i.i
  %i.cc = phi i64 [ %i.cf, %.lr.ph.i20.i.i ], [ %.ph, %.lr.ph.i20.i.i.preheader ]
  %.018.i22.i.i = phi ptr [ %i.cg, %.lr.ph.i20.i.i ], [ %.018.i22.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 4 uses
  %.01517.i23.i.i = phi ptr [ %i.ch, %.lr.ph.i20.i.i ], [ %.01517.i23.i.i.ph, %.lr.ph.i20.i.i.preheader ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.018.i22.i.i, i64 4
  %i.ce = load <2 x i32>, ptr %.018.i22.i.i, align 4, !tbaa !41
  store <2 x i32> %i.ce, ptr %.01517.i23.i.i, align 4, !tbaa !41
  store i32 0, ptr %.018.i22.i.i, align 4, !tbaa !79
  store i32 0, ptr %i.cd, align 4, !tbaa !80
  %i.cf = add i64 %i.cc, 1                        ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.018.i22.i.i, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.01517.i23.i.i, i64 8
  %.not.i24.i.i = icmp eq ptr %i.cg, %i.u
  br i1 %.not.i24.i.i, label %._crit_edge.i25.i.i, label %.lr.ph.i20.i.i, !llvm.loop !2052

._crit_edge.i25.i.i:                              ; preds = %.lr.ph.i20.i.i, %middle.block65
  %.lcssa = phi i64 [ %i.cb, %middle.block65 ], [ %i.cf, %.lr.ph.i20.i.i ] ; 2 uses
  store i64 %.lcssa, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i: ; preds = %._crit_edge.i25.i.i, %._crit_edge.i.i.i
  %_ZZN14counting_value1cEvE2co.promoted.i.i = phi i64 [ %.lcssa, %._crit_edge.i25.i.i ], [ %i.as, %._crit_edge.i.i.i ]
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorI14counting_valuevvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEEvPS2_mSA_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %bb.h, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %i.ci = sub i64 %_ZZN14counting_value1cEvE2co.promoted.i.i, %i.t
  store i64 %i.ci, ptr @_ZZN14counting_value1cEvE2co, align 8, !tbaa !75
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.i.i, %bb.g
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !133
  %i.ck = shl i64 %i.cj, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.ck) #25
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !135
  br label %_ZN5boost9container6vectorI14counting_valuevvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEEvPS2_mSA_mT_.exit

_ZN5boost9container6vectorI14counting_valuevvE40priv_insert_forward_range_new_allocationINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS2_EEJS2_EEEEEvPS2_mSA_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i, %bb.h
  %i.cl = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorI14counting_valueEEPS3_S5_NS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvRT_T0_SB_SB_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ]
  %i.cm = ptrtoint ptr %2 to i64
  %i.cn = ptrtoint ptr %i.s to i64
  %i.co = sub i64 %i.cm, %i.cn
  store ptr %i.r, ptr %1, align 8, !tbaa !134
  %i.cp = add i64 %i.cl, %3
  store i64 %i.cp, ptr %i.d, align 8, !tbaa !135
  store i64 %i.o, ptr %i.a, align 8, !tbaa !75
  %i.cq = getelementptr inbounds i8, ptr %i.r, i64 %i.co
  store ptr %i.cq, ptr %0, align 8, !tbaa !199
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intEvvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIS3_EEJS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.59") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !146  ; 6 uses
  %i.c = sub i64 2305843009213693951, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !148  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !42

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.71) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27 ; 4 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !147    ; 8 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !145  ; 7 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, %.lr.ph.i.i.i
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 3 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ] ; 2 uses
  %i.v = load i32, ptr %.018.i.i.i, align 4, !tbaa !82
  store i32 %i.v, ptr %.01517.i.i.i, align 4, !tbaa !82
  store i32 0, ptr %.018.i.i.i, align 4, !tbaa !82
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !30

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.z, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !82
  store i32 %i.aa, ptr %.015.lcssa.i.i.i, align 4, !tbaa !82
  store i32 0, ptr %4, align 4, !tbaa !82
  %i.ab = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !41
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl20insert_emplace_proxyIS5_JS4_EEEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %.loopexit.i.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  br label %.lr.ph.i20.i.i
end_hunk_2
