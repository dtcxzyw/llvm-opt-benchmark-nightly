Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/devector_test?download=true
inline.NumInlined: 42022
inline.NumDeleted: 5232
loop-unroll.NumCompletelyUnrolled: 330
loop-unroll.NumRuntimeUnrolled: 853
loop-unroll.NumUnrolled: 1191
begin_hunk_0_@_Z25test_assign_forward_rangeIN5boost9container8devectorIivvEEEvv:bb.a
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !310
  br label %.lr.ph.i.i3.i

.lr.ph.i.i3.i:                                    ; preds = %.lr.ph.i.i3.i, %.noexc34
  %i.dh = phi ptr [ %i.dk, %.lr.ph.i.i3.i ], [ %i.cj, %.noexc34 ] ; 2 uses
  %.011.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i3.i ], [ %i.dd, %.noexc34 ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !259
  store i32 %i.dj, ptr %.011.i.i.i, align 4, !tbaa !259
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !322 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 4
  %.not.i.i4.i = icmp eq ptr %i.dk, %i.cp
  br i1 %.not.i.i4.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i, label %.lr.ph.i.i3.i, !llvm.loop !882

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i: ; preds = %.lr.ph.i.i3.i
  %i.dm = load ptr, ptr %1, align 8, !tbaa !312   ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i14.i.i, label %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i
  %i.dn = load i64, ptr %i.cw, align 8, !tbaa !316
  %i.do = shl i64 %i.dn, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.do) #26
  br label %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i

_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i: ; preds = %bb.n, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.cz, ptr %i.cw, align 8, !tbaa !311
  store ptr %i.dd, ptr %1, align 8, !tbaa !312
  store i64 0, ptr %i.dq, align 8, !tbaa !313
  store i64 %i.cz, ptr %i.dp, align 8, !tbaa !314
  br label %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit

_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit: ; preds = %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i, %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.i, ptr noundef nonnull align 16 dereferenceable(24) @__const._Z9test_swapIN5boost9container8devectorINS1_15no_default_ctorEvvEEEvv.expected2.646, i64 24, i1 false)
  invoke void @_Z16test_equal_rangeIN5boost9container8devectorIivvEEiLj6EEvRKT_RAT1__KT0_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(24) %i.i)
          to label %bb.o unwind label %bb.cj

bb.o:                                             ; preds = %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  %i.dr = load ptr, ptr %1, align 8, !tbaa !312   ; 2 uses
  %.not.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i, label %_ZN5boost9container8devectorIivvED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !316
  %i.du = shl i64 %i.dt, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.du) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit

_ZN5boost9container8devectorIivvED2Ev.exit:       ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  invoke void @_Z9get_rangeIN5boost9container8devectorIivvEEEviRT_(i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.q unwind label %bb.cm

bb.q:                                             ; preds = %_ZN5boost9container8devectorIivvED2Ev.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i8 0, i64 16, i1 false)
  %i.dw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.26, i32 noundef 57, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_equal_rangeIN5boost9container8devectorIivvEEEvRKT_, i1 noundef zeroext true)
          to label %_Z16test_equal_rangeIN5boost9container8devectorIivvEEEvRKT_.exit unwind label %bb.cm ; 0 uses

_Z16test_equal_rangeIN5boost9container8devectorIivvEEEvRKT_.exit: ; preds = %bb.q
  %i.dx = load ptr, ptr %2, align 8, !tbaa !312   ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i68, label %_ZN5boost9container8devectorIivvED2Ev.exit69, label %bb.r

bb.r:                                             ; preds = %_Z16test_equal_rangeIN5boost9container8devectorIivvEEEvRKT_.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !316
  %i.ea = shl i64 %i.dz, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ea) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit69

_ZN5boost9container8devectorIivvED2Ev.exit69:     ; preds = %_Z16test_equal_rangeIN5boost9container8devectorIivvEEEvRKT_.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  br label %.lr.ph.i70

._crit_edge.i:                                    ; preds = %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26
  store i32 15, ptr %i.h, align 4, !tbaa !259
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  br label %bb.u

.lr.ph.i70thread-pre-split:                       ; preds = %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i
  %.pr = load i64, ptr %i.eb, align 8, !tbaa !313
  %.pre = load ptr, ptr %3, align 8, !tbaa !312
  br label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %.lr.ph.i70thread-pre-split, %_ZN5boost9container8devectorIivvED2Ev.exit69
  %i.ee = phi ptr [ %.pre, %.lr.ph.i70thread-pre-split ], [ null, %_ZN5boost9container8devectorIivvED2Ev.exit69 ] ; 2 uses
  %i.ef = phi i64 [ %.pr, %.lr.ph.i70thread-pre-split ], [ 0, %_ZN5boost9container8devectorIivvED2Ev.exit69 ] ; 3 uses
  %i.eg = phi i32 [ %i.em, %.lr.ph.i70thread-pre-split ], [ 15, %_ZN5boost9container8devectorIivvED2Ev.exit69 ]
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.g, align 4, !tbaa !259
  %.not.i.i71 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.i71, label %bb.t, label %bb.s, !prof !267

bb.s:                                             ; preds = %.lr.ph.i70
  %i.ei = getelementptr [4 x i8], ptr %i.ee, i64 %i.ef
  %i.ej = getelementptr i8, ptr %i.ei, i64 -4     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  store i32 %i.eh, ptr %i.ej, align 4, !tbaa !259
  %i.ek = add i64 %i.ef, -1
  store i64 %i.ek, ptr %i.eb, align 8, !tbaa !313
  br label %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i

bb.t:                                             ; preds = %.lr.ph.i70
  %i.el = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.ee, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i unwind label %.loopexit.split-lp379.loopexit ; 0 uses

_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i: ; preds = %bb.t, %bb.s
  %i.em = load i32, ptr %i.g, align 4, !tbaa !259 ; 2 uses
  %i.en = icmp sgt i32 %i.em, 11
  br i1 %i.en, label %.lr.ph.i70thread-pre-split, label %._crit_edge.i, !llvm.loop !2

bb.u:                                             ; preds = %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i, %._crit_edge.i
  %storemerge8.i = phi i32 [ 15, %._crit_edge.i ], [ %i.ew, %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i ]
  %i.eo = load i64, ptr %i.ed, align 8, !tbaa !316 ; 2 uses
  %i.ep = load i64, ptr %i.ec, align 8, !tbaa !317 ; 3 uses
  %.not.i6.i = icmp eq i64 %i.eo, %i.ep
  %i.eq = load ptr, ptr %3, align 8, !tbaa !312   ; 2 uses
  br i1 %.not.i6.i, label %bb.w, label %bb.v, !prof !267

bb.v:                                             ; preds = %bb.u
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.ep
  store i32 %storemerge8.i, ptr %i.er, align 4, !tbaa !259
  %i.es = add i64 %i.ep, 1
  store i64 %i.es, ptr %i.ec, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i

bb.w:                                             ; preds = %bb.u
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.eo
  %i.eu = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.et, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.h)
          to label %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i unwind label %.loopexit378 ; 0 uses

_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i: ; preds = %bb.w, %bb.v
  %i.ev = load i32, ptr %i.h, align 4, !tbaa !259 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1                    ; 2 uses
  store i32 %i.ew, ptr %i.h, align 4, !tbaa !259
  %i.ex = icmp slt i32 %i.ev, 18
  br i1 %i.ex, label %bb.u, label %bb.x, !llvm.loop !3

bb.x:                                             ; preds = %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26
  br i1 %.not2.i.i.i, label %.thread.i102, label %.lr.ph.i.i.i76

.thread.i102:                                     ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i74)
  br label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i100

.lr.ph.i.i.i76:                                   ; preds = %bb.x, %.lr.ph.i.i.i76
  %i.ey = phi ptr [ %i.fa, %.lr.ph.i.i.i76 ], [ %i.cj, %bb.x ]
  %.03.i.i.i77 = phi i64 [ %i.ez, %.lr.ph.i.i.i76 ], [ 0, %bb.x ] ; 2 uses
  %i.ez = add nuw nsw i64 %.03.i.i.i77, 1
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.fa, %i.cp
  br i1 %.not.i.i.i78, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i79, label %.lr.ph.i.i.i76, !llvm.loop !881

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i79: ; preds = %.lr.ph.i.i.i76
  %i.fb = load i64, ptr %i.ed, align 8, !tbaa !316
  %.not.not.i80 = icmp ugt i64 %i.fb, %.03.i.i.i77
  br i1 %.not.not.i80, label %bb.y, label %.lr.ph.i.i.i1.i81

bb.y:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i79
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i74)
  br label %.lr.ph.i.i.i.i.i92

.lr.ph.i.i.i.i.i92:                               ; preds = %.lr.ph.i.i.i.i.i92, %bb.y
  %i.fc = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i92 ], [ %i.cj, %bb.y ]
  %.03.i.i.i.i.i93 = phi i64 [ %i.fd, %.lr.ph.i.i.i.i.i92 ], [ 0, %bb.y ] ; 2 uses
  %i.fd = add nuw i64 %.03.i.i.i.i.i93, 1         ; 6 uses
  %i.fe = load ptr, ptr %i.fc, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i.i.i94 = icmp eq ptr %i.fe, %i.cp
  br i1 %.not.i.i.i.i.i94, label %.lr.ph.i.i.i.i95, label %.lr.ph.i.i.i.i.i92, !llvm.loop !881

.lr.ph.i.i.i.i95:                                 ; preds = %.lr.ph.i.i.i.i.i92
  store ptr %i.cj, ptr %.sroa.0.i.i.i74, align 8, !tbaa !919
  %i.ff = load ptr, ptr %3, align 8, !tbaa !312   ; 2 uses
  %xtraiter = and i64 %i.fd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i.i.i95, %.prol.preheader
  %.in.i.i.i.i96.prol = phi ptr [ %i.fg, %.prol.preheader ], [ %.sroa.0.i.i.i74, %.lr.ph.i.i.i.i95 ]
  %.016.i.i.i.i97.prol = phi i64 [ %i.fh, %.prol.preheader ], [ %i.fd, %.lr.ph.i.i.i.i95 ]
  %.01315.i.i.i.i98.prol = phi ptr [ %i.fk, %.prol.preheader ], [ %i.ff, %.lr.ph.i.i.i.i95 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i.i.i.i95 ]
  %i.fg = load ptr, ptr %.in.i.i.i.i96.prol, align 8, !tbaa !920 ; 3 uses
  %i.fh = add nsw i64 %.016.i.i.i.i97.prol, -1    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i98.prol) ]
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !259
  store i32 %i.fj, ptr %.01315.i.i.i.i98.prol, align 4, !tbaa !259
  %i.fk = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i98.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !883

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i.i.i95
  %.in.i.i.i.i96.unr = phi ptr [ %.sroa.0.i.i.i74, %.lr.ph.i.i.i.i95 ], [ %i.fg, %.prol.preheader ]
  %.016.i.i.i.i97.unr = phi i64 [ %i.fd, %.lr.ph.i.i.i.i95 ], [ %i.fh, %.prol.preheader ]
  %.01315.i.i.i.i98.unr = phi ptr [ %i.ff, %.lr.ph.i.i.i.i95 ], [ %i.fk, %.prol.preheader ]
  %i.fl = icmp ult i64 %.03.i.i.i.i.i93, 3
  br i1 %i.fl, label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i100, label %.lr.ph.i.i.i.i95.new

.lr.ph.i.i.i.i95.new:                             ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i95.new
  %.in.i.i.i.i96 = phi ptr [ %i.fy, %.lr.ph.i.i.i.i95.new ], [ %.in.i.i.i.i96.unr, %.prol.loopexit ]
  %.016.i.i.i.i97 = phi i64 [ %i.fz, %.lr.ph.i.i.i.i95.new ], [ %.016.i.i.i.i97.unr, %.prol.loopexit ]
  %.01315.i.i.i.i98 = phi ptr [ %i.gc, %.lr.ph.i.i.i.i95.new ], [ %.01315.i.i.i.i98.unr, %.prol.loopexit ] ; 6 uses
  %i.fm = load ptr, ptr %.in.i.i.i.i96, align 8, !tbaa !920 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i98) ]
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !259
  store i32 %i.fo, ptr %.01315.i.i.i.i98, align 4, !tbaa !259
  %i.fp = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i98, i64 4
  %i.fq = load ptr, ptr %i.fm, align 8, !tbaa !920 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !259
  store i32 %i.fs, ptr %i.fp, align 4, !tbaa !259
  %i.ft = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i98, i64 8
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !920 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !259
  store i32 %i.fw, ptr %i.ft, align 4, !tbaa !259
  %i.fx = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i98, i64 12
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !920 ; 2 uses
  %i.fz = add nsw i64 %.016.i.i.i.i97, -4         ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !259
  store i32 %i.gb, ptr %i.fx, align 4, !tbaa !259
  %i.gc = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i98, i64 16
  %.not.i.i.i.i99.3 = icmp eq i64 %i.fz, 0
  br i1 %.not.i.i.i.i99.3, label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i100, label %.lr.ph.i.i.i.i95.new, !llvm.loop !884

_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i100: ; preds = %.prol.loopexit, %.lr.ph.i.i.i.i95.new, %.thread.i102
  %.0.lcssa.i.i6.i.i.i101 = phi i64 [ 0, %.thread.i102 ], [ %i.fd, %.lr.ph.i.i.i.i95.new ], [ %i.fd, %.prol.loopexit ]
  store i64 0, ptr %i.eb, align 8, !tbaa !313
  store i64 %.0.lcssa.i.i6.i.i.i101, ptr %i.ec, align 8, !tbaa !314
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i74)
  br label %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit105

.lr.ph.i.i.i1.i81:                                ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i79, %.lr.ph.i.i.i1.i81
  %i.gd = phi ptr [ %i.gf, %.lr.ph.i.i.i1.i81 ], [ %i.cj, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i79 ]
  %.03.i.i.i.i82 = phi i64 [ %i.ge, %.lr.ph.i.i.i1.i81 ], [ 0, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i79 ] ; 2 uses
  %i.ge = add nuw nsw i64 %.03.i.i.i.i82, 1       ; 4 uses
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i2.i83 = icmp eq ptr %i.gf, %i.cp
  br i1 %.not.i.i.i2.i83, label %.split.i.i84, label %.lr.ph.i.i.i1.i81, !llvm.loop !881

.split.i.i84:                                     ; preds = %.lr.ph.i.i.i1.i81
  %i.gg = icmp samesign ugt i64 %.03.i.i.i.i82, 2305843009213693950
  br i1 %i.gg, label %bb.z, label %.split12.i.i85, !prof !267

bb.z:                                             ; preds = %.split.i.i84
  invoke void @_ZN5boost9container15throw_bad_allocEv() #28
          to label %.noexc103 unwind label %.loopexit.split-lp379.loopexit.split-lp

.noexc103:                                        ; preds = %bb.z
  unreachable

.split12.i.i85:                                   ; preds = %.split.i.i84
  %i.gh = shl nuw nsw i64 %i.ge, 2
  %i.gi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #27
          to label %.noexc104 unwind label %.loopexit.split-lp379.loopexit.split-lp ; 2 uses

.noexc104:                                        ; preds = %.split12.i.i85
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !310
  %i.gl = add i64 %i.gk, 1
  store i64 %i.gl, ptr %i.gj, align 8, !tbaa !310
  br label %.lr.ph.i.i3.i86

.lr.ph.i.i3.i86:                                  ; preds = %.lr.ph.i.i3.i86, %.noexc104
  %i.gm = phi ptr [ %i.gp, %.lr.ph.i.i3.i86 ], [ %i.cj, %.noexc104 ] ; 2 uses
  %.011.i.i.i87 = phi ptr [ %i.gq, %.lr.ph.i.i3.i86 ], [ %i.gi, %.noexc104 ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !259
  store i32 %i.go, ptr %.011.i.i.i87, align 4, !tbaa !259
  %i.gp = load ptr, ptr %i.gm, align 8, !tbaa !322 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.011.i.i.i87, i64 4
  %.not.i.i4.i88 = icmp eq ptr %i.gp, %i.cp
  br i1 %.not.i.i4.i88, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i89, label %.lr.ph.i.i3.i86, !llvm.loop !882

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i89: ; preds = %.lr.ph.i.i3.i86
  %i.gr = load ptr, ptr %3, align 8, !tbaa !312   ; 2 uses
  %.not.i14.i.i90 = icmp eq ptr %i.gr, null
  br i1 %.not.i14.i.i90, label %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i91, label %bb.aa

bb.aa:                                            ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i89
  %i.gs = load i64, ptr %i.ed, align 8, !tbaa !316
  %i.gt = shl i64 %i.gs, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.gt) #26
  br label %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i91

_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i91: ; preds = %bb.aa, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i89
  store i64 %i.ge, ptr %i.ed, align 8, !tbaa !311
  store ptr %i.gi, ptr %3, align 8, !tbaa !312
  store i64 0, ptr %i.eb, align 8, !tbaa !313
  store i64 %i.ge, ptr %i.ec, align 8, !tbaa !314
  br label %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit105

_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit105: ; preds = %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i91, %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.j, ptr noundef nonnull align 16 dereferenceable(24) @__const._Z9test_swapIN5boost9container8devectorINS1_15no_default_ctorEvvEEEvv.expected2.646, i64 24, i1 false)
  invoke void @_Z16test_equal_rangeIN5boost9container8devectorIivvEEiLj6EEvRKT_RAT1__KT0_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(24) %i.j)
          to label %bb.ab unwind label %bb.co

bb.ab:                                            ; preds = %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26
  %i.gu = load ptr, ptr %3, align 8, !tbaa !312   ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i106, label %_ZN5boost9container8devectorIivvED2Ev.exit107, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gv = load i64, ptr %i.ed, align 8, !tbaa !316
  %i.gw = shl i64 %i.gv, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.gu, i64 noundef %i.gw) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit107

_ZN5boost9container8devectorIivvED2Ev.exit107:    ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  br label %.lr.ph.i108

._crit_edge.i111:                                 ; preds = %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  store i32 15, ptr %i.f, align 4, !tbaa !259
  %i.gz = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 8 uses
  br label %bb.af

.lr.ph.i108thread-pre-split:                      ; preds = %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i110
  %.pr355 = load i64, ptr %i.gx, align 8, !tbaa !313
  %.pre407 = load ptr, ptr %4, align 8, !tbaa !312
  br label %.lr.ph.i108

.lr.ph.i108:                                      ; preds = %.lr.ph.i108thread-pre-split, %_ZN5boost9container8devectorIivvED2Ev.exit107
  %i.ha = phi ptr [ %.pre407, %.lr.ph.i108thread-pre-split ], [ null, %_ZN5boost9container8devectorIivvED2Ev.exit107 ] ; 2 uses
  %i.hb = phi i64 [ %.pr355, %.lr.ph.i108thread-pre-split ], [ 0, %_ZN5boost9container8devectorIivvED2Ev.exit107 ] ; 3 uses
  %i.hc = phi i32 [ %i.hi, %.lr.ph.i108thread-pre-split ], [ 15, %_ZN5boost9container8devectorIivvED2Ev.exit107 ]
  %i.hd = add nsw i32 %i.hc, -1                   ; 2 uses
  store i32 %i.hd, ptr %i.e, align 4, !tbaa !259
  %.not.i.i109 = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i109, label %bb.ae, label %bb.ad, !prof !267

bb.ad:                                            ; preds = %.lr.ph.i108
  %i.he = getelementptr [4 x i8], ptr %i.ha, i64 %i.hb
  %i.hf = getelementptr i8, ptr %i.he, i64 -4     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hf) ]
  store i32 %i.hd, ptr %i.hf, align 4, !tbaa !259
  %i.hg = add i64 %i.hb, -1
  store i64 %i.hg, ptr %i.gx, align 8, !tbaa !313
  br label %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i110

bb.ae:                                            ; preds = %.lr.ph.i108
  %i.hh = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.ha, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.e)
          to label %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i110 unwind label %.loopexit.split-lp372.loopexit ; 0 uses

_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i110: ; preds = %bb.ae, %bb.ad
  %i.hi = load i32, ptr %i.e, align 4, !tbaa !259 ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, 11
  br i1 %i.hj, label %.lr.ph.i108thread-pre-split, label %._crit_edge.i111, !llvm.loop !2

bb.af:                                            ; preds = %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i114, %._crit_edge.i111
  %storemerge8.i112 = phi i32 [ 15, %._crit_edge.i111 ], [ %i.hs, %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i114 ]
  %i.hk = load i64, ptr %i.gz, align 8, !tbaa !316 ; 2 uses
  %i.hl = load i64, ptr %i.gy, align 8, !tbaa !317 ; 3 uses
  %.not.i6.i113 = icmp eq i64 %i.hk, %i.hl
  %i.hm = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  br i1 %.not.i6.i113, label %bb.ah, label %bb.ag, !prof !267

bb.ag:                                            ; preds = %bb.af
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hl
  store i32 %storemerge8.i112, ptr %i.hn, align 4, !tbaa !259
  %i.ho = add i64 %i.hl, 1
  store i64 %i.ho, ptr %i.gy, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i114

bb.ah:                                            ; preds = %bb.af
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hk
  %i.hq = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %i.hp, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.f)
          to label %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i114 unwind label %.loopexit371 ; 0 uses

_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i114: ; preds = %bb.ah, %bb.ag
  %i.hr = load i32, ptr %i.f, align 4, !tbaa !259 ; 2 uses
  %i.hs = add nsw i32 %i.hr, 1                    ; 2 uses
  store i32 %i.hs, ptr %i.f, align 4, !tbaa !259
  %i.ht = icmp slt i32 %i.hr, 18
  br i1 %i.ht, label %bb.af, label %bb.ai, !llvm.loop !3

bb.ai:                                            ; preds = %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.hu = load i64, ptr %i.gy, align 8, !tbaa !317 ; 4 uses
  %.not.i = icmp ult i64 %i.hu, 8
  br i1 %.not.i, label %bb.aj, label %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit

bb.aj:                                            ; preds = %bb.ai
  %i.hv = load i64, ptr %i.gz, align 8, !tbaa !316
  %i.hw = sub i64 %i.hv, %i.hu
  %i.hx = add i64 %i.hw, 8                        ; 4 uses
  %i.hy = load i64, ptr %i.gx, align 8, !tbaa !313 ; 2 uses
  %.neg.i = sub i64 %i.hy, %i.hu
  %i.hz = add i64 %.neg.i, 8                      ; 3 uses
  %.not.i.i.i.i118 = icmp eq i64 %i.hx, 0
  br i1 %.not.i.i.i.i118, label %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ia = icmp ugt i64 %i.hx, 2305843009213693951
  br i1 %i.ia, label %.invoke, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i, !prof !267

_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i: ; preds = %bb.ak
  %i.ib = shl nuw nsw i64 %i.hx, 2
  %i.ic = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ib) #27
          to label %.noexc120 unwind label %.loopexit.split-lp372.loopexit.split-lp

.noexc120:                                        ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i
  %.pre.i = load i64, ptr %i.gx, align 8, !tbaa !313
  %.pre4.i = load i64, ptr %i.gy, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i

_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i: ; preds = %.noexc120, %bb.aj
  %i.id = phi i64 [ %.pre4.i, %.noexc120 ], [ %i.hu, %bb.aj ] ; 3 uses
  %i.ie = phi i64 [ %.pre.i, %.noexc120 ], [ %i.hy, %bb.aj ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.ic, %.noexc120 ], [ null, %bb.aj ] ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !310
  %i.ih = add i64 %i.ig, 1
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !310
  %i.ii = load ptr, ptr %4, align 8, !tbaa !312   ; 3 uses
  %i.ij = icmp samesign ne i64 %i.ie, %i.id
  %i.ik = icmp ne ptr %.0.i.i.i.i, null
  %or.cond.i.i.i.i = and i1 %i.ij, %i.ik
  %i.il = icmp ne ptr %i.ii, null                 ; 2 uses
  %spec.select.i.i.i.i = and i1 %or.cond.i.i.i.i, %i.il
  br i1 %spec.select.i.i.i.i, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i, !prof !262

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i: ; preds = %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i
  %.idx13.i.i = shl nuw nsw i64 %i.ie, 2
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.idx13.i.i
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i, i64 %i.hz
  %i.io = sub nsw i64 %i.id, %i.ie
  %gepdiff.i.i = shl nsw i64 %i.io, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.in, ptr nonnull align 4 %i.im, i64 %gepdiff.i.i, i1 false)
  br label %bb.al

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i: ; preds = %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i
  br i1 %i.il, label %bb.al, label %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i

bb.al:                                            ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i
  %i.ip = load i64, ptr %i.gz, align 8, !tbaa !316
  %i.iq = shl i64 %i.ip, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.iq) #26
  %.pre.i.i = load i64, ptr %i.gy, align 8, !tbaa !317
  %.pre14.i.i = load i64, ptr %i.gx, align 8, !tbaa !313
  br label %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i

_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i: ; preds = %bb.al, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i
  %i.ir = phi i64 [ %i.ie, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i ], [ %.pre14.i.i, %bb.al ]
  %i.is = phi i64 [ %i.id, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i ], [ %.pre.i.i, %bb.al ]
  store ptr %.0.i.i.i.i, ptr %4, align 8, !tbaa !312
  store i64 %i.hx, ptr %i.gz, align 8, !tbaa !311
  %i.it = sub i64 %i.hz, %i.ir
  %i.iu = add i64 %i.it, %i.is
  store i64 %i.iu, ptr %i.gy, align 8, !tbaa !314
  store i64 %i.hz, ptr %i.gx, align 8, !tbaa !318
  br label %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit

_ZN5boost9container8devectorIivvE13reserve_frontEm.exit: ; preds = %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i, %bb.ai
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  store i64 0, ptr %i.iv, align 8, !tbaa !310
  br i1 %.not2.i.i.i, label %.thread.i149, label %.lr.ph.i.i.i123

.thread.i149:                                     ; preds = %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i121)
  br label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i147

.lr.ph.i.i.i123:                                  ; preds = %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit, %.lr.ph.i.i.i123
  %i.iw = phi ptr [ %i.iy, %.lr.ph.i.i.i123 ], [ %i.cj, %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit ]
  %.03.i.i.i124 = phi i64 [ %i.ix, %.lr.ph.i.i.i123 ], [ 0, %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit ] ; 2 uses
  %i.ix = add nuw nsw i64 %.03.i.i.i124, 1
  %i.iy = load ptr, ptr %i.iw, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.iy, %i.cp
  br i1 %.not.i.i.i125, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i126, label %.lr.ph.i.i.i123, !llvm.loop !881

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i126: ; preds = %.lr.ph.i.i.i123
  %i.iz = load i64, ptr %i.gz, align 8, !tbaa !316
  %.not.not.i127 = icmp ugt i64 %i.iz, %.03.i.i.i124
  br i1 %.not.not.i127, label %bb.am, label %.lr.ph.i.i.i1.i128

bb.am:                                            ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i126
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i121)
  br label %.lr.ph.i.i.i.i.i139

.lr.ph.i.i.i.i.i139:                              ; preds = %.lr.ph.i.i.i.i.i139, %bb.am
  %i.ja = phi ptr [ %i.jc, %.lr.ph.i.i.i.i.i139 ], [ %i.cj, %bb.am ]
  %.03.i.i.i.i.i140 = phi i64 [ %i.jb, %.lr.ph.i.i.i.i.i139 ], [ 0, %bb.am ] ; 2 uses
  %i.jb = add nuw i64 %.03.i.i.i.i.i140, 1        ; 6 uses
  %i.jc = load ptr, ptr %i.ja, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i.i.i141 = icmp eq ptr %i.jc, %i.cp
  br i1 %.not.i.i.i.i.i141, label %.lr.ph.i.i.i.i142, label %.lr.ph.i.i.i.i.i139, !llvm.loop !881

.lr.ph.i.i.i.i142:                                ; preds = %.lr.ph.i.i.i.i.i139
  store ptr %i.cj, ptr %.sroa.0.i.i.i121, align 8, !tbaa !919
  %i.jd = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %xtraiter503 = and i64 %i.jb, 3                 ; 2 uses
  %lcmp.mod504.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod504.not, label %.prol.loopexit502, label %.prol.preheader501

.prol.preheader501:                               ; preds = %.lr.ph.i.i.i.i142, %.prol.preheader501
  %.in.i.i.i.i143.prol = phi ptr [ %i.je, %.prol.preheader501 ], [ %.sroa.0.i.i.i121, %.lr.ph.i.i.i.i142 ]
  %.016.i.i.i.i144.prol = phi i64 [ %i.jf, %.prol.preheader501 ], [ %i.jb, %.lr.ph.i.i.i.i142 ]
  %.01315.i.i.i.i145.prol = phi ptr [ %i.ji, %.prol.preheader501 ], [ %i.jd, %.lr.ph.i.i.i.i142 ] ; 3 uses
  %prol.iter505 = phi i64 [ %prol.iter505.next, %.prol.preheader501 ], [ 0, %.lr.ph.i.i.i.i142 ]
  %i.je = load ptr, ptr %.in.i.i.i.i143.prol, align 8, !tbaa !920 ; 3 uses
  %i.jf = add nsw i64 %.016.i.i.i.i144.prol, -1   ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i145.prol) ]
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !259
  store i32 %i.jh, ptr %.01315.i.i.i.i145.prol, align 4, !tbaa !259
  %i.ji = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i145.prol, i64 4 ; 2 uses
  %prol.iter505.next = add i64 %prol.iter505, 1   ; 2 uses
  %prol.iter505.cmp.not = icmp eq i64 %prol.iter505.next, %xtraiter503
  br i1 %prol.iter505.cmp.not, label %.prol.loopexit502, label %.prol.preheader501, !llvm.loop !885

.prol.loopexit502:                                ; preds = %.prol.preheader501, %.lr.ph.i.i.i.i142
  %.in.i.i.i.i143.unr = phi ptr [ %.sroa.0.i.i.i121, %.lr.ph.i.i.i.i142 ], [ %i.je, %.prol.preheader501 ]
  %.016.i.i.i.i144.unr = phi i64 [ %i.jb, %.lr.ph.i.i.i.i142 ], [ %i.jf, %.prol.preheader501 ]
  %.01315.i.i.i.i145.unr = phi ptr [ %i.jd, %.lr.ph.i.i.i.i142 ], [ %i.ji, %.prol.preheader501 ]
  %i.jj = icmp ult i64 %.03.i.i.i.i.i140, 3
  br i1 %i.jj, label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i147, label %.lr.ph.i.i.i.i142.new

.lr.ph.i.i.i.i142.new:                            ; preds = %.prol.loopexit502, %.lr.ph.i.i.i.i142.new
  %.in.i.i.i.i143 = phi ptr [ %i.jw, %.lr.ph.i.i.i.i142.new ], [ %.in.i.i.i.i143.unr, %.prol.loopexit502 ]
  %.016.i.i.i.i144 = phi i64 [ %i.jx, %.lr.ph.i.i.i.i142.new ], [ %.016.i.i.i.i144.unr, %.prol.loopexit502 ]
  %.01315.i.i.i.i145 = phi ptr [ %i.ka, %.lr.ph.i.i.i.i142.new ], [ %.01315.i.i.i.i145.unr, %.prol.loopexit502 ] ; 6 uses
  %i.jk = load ptr, ptr %.in.i.i.i.i143, align 8, !tbaa !920 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i145) ]
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !259
  store i32 %i.jm, ptr %.01315.i.i.i.i145, align 4, !tbaa !259
  %i.jn = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i145, i64 4
  %i.jo = load ptr, ptr %i.jk, align 8, !tbaa !920 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !259
  store i32 %i.jq, ptr %i.jn, align 4, !tbaa !259
  %i.jr = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i145, i64 8
  %i.js = load ptr, ptr %i.jo, align 8, !tbaa !920 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !259
  store i32 %i.ju, ptr %i.jr, align 4, !tbaa !259
  %i.jv = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i145, i64 12
  %i.jw = load ptr, ptr %i.js, align 8, !tbaa !920 ; 2 uses
  %i.jx = add nsw i64 %.016.i.i.i.i144, -4        ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !259
  store i32 %i.jz, ptr %i.jv, align 4, !tbaa !259
  %i.ka = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i145, i64 16
  %.not.i.i.i.i146.3 = icmp eq i64 %i.jx, 0
  br i1 %.not.i.i.i.i146.3, label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i147, label %.lr.ph.i.i.i.i142.new, !llvm.loop !884

_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i147: ; preds = %.prol.loopexit502, %.lr.ph.i.i.i.i142.new, %.thread.i149
  %.0.lcssa.i.i6.i.i.i148 = phi i64 [ 0, %.thread.i149 ], [ %i.jb, %.lr.ph.i.i.i.i142.new ], [ %i.jb, %.prol.loopexit502 ]
  store i64 0, ptr %i.gx, align 8, !tbaa !313
  store i64 %.0.lcssa.i.i6.i.i.i148, ptr %i.gy, align 8, !tbaa !314
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i121)
  br label %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit152

.lr.ph.i.i.i1.i128:                               ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i126, %.lr.ph.i.i.i1.i128
  %i.kb = phi ptr [ %i.kd, %.lr.ph.i.i.i1.i128 ], [ %i.cj, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i126 ]
  %.03.i.i.i.i129 = phi i64 [ %i.kc, %.lr.ph.i.i.i1.i128 ], [ 0, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i126 ] ; 2 uses
  %i.kc = add nuw nsw i64 %.03.i.i.i.i129, 1      ; 4 uses
  %i.kd = load ptr, ptr %i.kb, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i2.i130 = icmp eq ptr %i.kd, %i.cp
  br i1 %.not.i.i.i2.i130, label %.split.i.i131, label %.lr.ph.i.i.i1.i128, !llvm.loop !881

.split.i.i131:                                    ; preds = %.lr.ph.i.i.i1.i128
  %i.ke = icmp samesign ugt i64 %.03.i.i.i.i129, 2305843009213693950
  br i1 %i.ke, label %.invoke, label %.split12.i.i132, !prof !267

.invoke:                                          ; preds = %.split.i.i131, %bb.ak
  invoke void @_ZN5boost9container15throw_bad_allocEv() #28
          to label %.cont unwind label %.loopexit.split-lp372.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

.split12.i.i132:                                  ; preds = %.split.i.i131
  %i.kf = shl nuw nsw i64 %i.kc, 2
  %i.kg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kf) #27
          to label %.noexc151 unwind label %.loopexit.split-lp372.loopexit.split-lp ; 2 uses

.noexc151:                                        ; preds = %.split12.i.i132
  %i.kh = load i64, ptr %i.iv, align 8, !tbaa !310
  %i.ki = add i64 %i.kh, 1
  store i64 %i.ki, ptr %i.iv, align 8, !tbaa !310
  br label %.lr.ph.i.i3.i133

.lr.ph.i.i3.i133:                                 ; preds = %.lr.ph.i.i3.i133, %.noexc151
  %i.kj = phi ptr [ %i.km, %.lr.ph.i.i3.i133 ], [ %i.cj, %.noexc151 ] ; 2 uses
  %.011.i.i.i134 = phi ptr [ %i.kn, %.lr.ph.i.i3.i133 ], [ %i.kg, %.noexc151 ] ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !259
  store i32 %i.kl, ptr %.011.i.i.i134, align 4, !tbaa !259
  %i.km = load ptr, ptr %i.kj, align 8, !tbaa !322 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.011.i.i.i134, i64 4
  %.not.i.i4.i135 = icmp eq ptr %i.km, %i.cp
  br i1 %.not.i.i4.i135, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i136, label %.lr.ph.i.i3.i133, !llvm.loop !882

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i136: ; preds = %.lr.ph.i.i3.i133
  %i.ko = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %.not.i14.i.i137 = icmp eq ptr %i.ko, null
  br i1 %.not.i14.i.i137, label %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i138, label %bb.an

bb.an:                                            ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i136
  %i.kp = load i64, ptr %i.gz, align 8, !tbaa !316
  %i.kq = shl i64 %i.kp, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef %i.kq) #26
  br label %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i138

_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i138: ; preds = %bb.an, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i136
  store i64 %i.kc, ptr %i.gz, align 8, !tbaa !311
  store ptr %i.kg, ptr %4, align 8, !tbaa !312
  store i64 0, ptr %i.gx, align 8, !tbaa !313
  store i64 %i.kc, ptr %i.gy, align 8, !tbaa !314
  br label %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit152

_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit152: ; preds = %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i138, %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.k, ptr noundef nonnull align 16 dereferenceable(24) @__const._Z9test_swapIN5boost9container8devectorINS1_15no_default_ctorEvvEEEvv.expected2.646, i64 24, i1 false)
  invoke void @_Z16test_equal_rangeIN5boost9container8devectorIivvEEiLj6EEvRKT_RAT1__KT0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 4 dereferenceable(24) %i.k)
          to label %bb.ao unwind label %bb.cq

bb.ao:                                            ; preds = %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit152
  %i.kr = load i64, ptr %i.iv, align 8, !tbaa !310
  %i.ks = icmp eq i64 %i.kr, 0
  %i.kt = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 832, ptr noundef nonnull @__PRETTY_FUNCTION__._Z25test_assign_forward_rangeIN5boost9container8devectorIivvEEEvv, i1 noundef zeroext %i.ks)
          to label %bb.ap unwind label %bb.cq     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  %i.ku = load ptr, ptr %4, align 8, !tbaa !312   ; 2 uses
  %.not.i.i153 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i153, label %_ZN5boost9container8devectorIivvED2Ev.exit154, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kv = load i64, ptr %i.gz, align 8, !tbaa !316
  %i.kw = shl i64 %i.kv, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef %i.kw) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit154

_ZN5boost9container8devectorIivvED2Ev.exit154:    ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  br label %.lr.ph.i155

._crit_edge.i158:                                 ; preds = %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 15, ptr %i.d, align 4, !tbaa !259
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 8 uses
  br label %bb.at

.lr.ph.i155thread-pre-split:                      ; preds = %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i157
  %.pr356 = load i64, ptr %i.kx, align 8, !tbaa !313
  %.pre408 = load ptr, ptr %5, align 8, !tbaa !312
  br label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %.lr.ph.i155thread-pre-split, %_ZN5boost9container8devectorIivvED2Ev.exit154
  %i.la = phi ptr [ %.pre408, %.lr.ph.i155thread-pre-split ], [ null, %_ZN5boost9container8devectorIivvED2Ev.exit154 ] ; 2 uses
  %i.lb = phi i64 [ %.pr356, %.lr.ph.i155thread-pre-split ], [ 0, %_ZN5boost9container8devectorIivvED2Ev.exit154 ] ; 3 uses
  %i.lc = phi i32 [ %i.li, %.lr.ph.i155thread-pre-split ], [ 15, %_ZN5boost9container8devectorIivvED2Ev.exit154 ]
  %i.ld = add nsw i32 %i.lc, -1                   ; 2 uses
  store i32 %i.ld, ptr %i.c, align 4, !tbaa !259
  %.not.i.i156 = icmp eq i64 %i.lb, 0
  br i1 %.not.i.i156, label %bb.as, label %bb.ar, !prof !267

bb.ar:                                            ; preds = %.lr.ph.i155
  %i.le = getelementptr [4 x i8], ptr %i.la, i64 %i.lb
  %i.lf = getelementptr i8, ptr %i.le, i64 -4     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lf) ]
  store i32 %i.ld, ptr %i.lf, align 4, !tbaa !259
  %i.lg = add i64 %i.lb, -1
  store i64 %i.lg, ptr %i.kx, align 8, !tbaa !313
  br label %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i157

bb.as:                                            ; preds = %.lr.ph.i155
  %i.lh = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.la, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i157 unwind label %.loopexit.split-lp365.loopexit ; 0 uses

_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i157: ; preds = %bb.as, %bb.ar
  %i.li = load i32, ptr %i.c, align 4, !tbaa !259 ; 2 uses
  %i.lj = icmp sgt i32 %i.li, 11
  br i1 %i.lj, label %.lr.ph.i155thread-pre-split, label %._crit_edge.i158, !llvm.loop !2

bb.at:                                            ; preds = %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i161, %._crit_edge.i158
  %storemerge8.i159 = phi i32 [ 15, %._crit_edge.i158 ], [ %i.ls, %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i161 ]
  %i.lk = load i64, ptr %i.kz, align 8, !tbaa !316 ; 2 uses
  %i.ll = load i64, ptr %i.ky, align 8, !tbaa !317 ; 3 uses
  %.not.i6.i160 = icmp eq i64 %i.lk, %i.ll
  %i.lm = load ptr, ptr %5, align 8, !tbaa !312   ; 2 uses
  br i1 %.not.i6.i160, label %bb.av, label %bb.au, !prof !267

bb.au:                                            ; preds = %bb.at
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ll
  store i32 %storemerge8.i159, ptr %i.ln, align 4, !tbaa !259
  %i.lo = add i64 %i.ll, 1
  store i64 %i.lo, ptr %i.ky, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i161

bb.av:                                            ; preds = %bb.at
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.lk
  %i.lq = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %i.lp, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i161 unwind label %.loopexit364 ; 0 uses

_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i161: ; preds = %bb.av, %bb.au
  %i.lr = load i32, ptr %i.d, align 4, !tbaa !259 ; 2 uses
  %i.ls = add nsw i32 %i.lr, 1                    ; 2 uses
  store i32 %i.ls, ptr %i.d, align 4, !tbaa !259
  %i.lt = icmp slt i32 %i.lr, 18
  br i1 %i.lt, label %bb.at, label %bb.aw, !llvm.loop !3

bb.aw:                                            ; preds = %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.lu = load i64, ptr %i.ky, align 8, !tbaa !317 ; 4 uses
  %.not.i165 = icmp ult i64 %i.lu, 12
  br i1 %.not.i165, label %bb.ax, label %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit184

bb.ax:                                            ; preds = %bb.aw
  %i.lv = load i64, ptr %i.kz, align 8, !tbaa !316
  %i.lw = sub i64 %i.lv, %i.lu
  %i.lx = add i64 %i.lw, 12                       ; 4 uses
  %i.ly = load i64, ptr %i.kx, align 8, !tbaa !313 ; 2 uses
  %.neg.i166 = sub i64 %i.ly, %i.lu
  %i.lz = add i64 %.neg.i166, 12                  ; 3 uses
  %.not.i.i.i.i167 = icmp eq i64 %i.lx, 0
  br i1 %.not.i.i.i.i167, label %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i171, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ma = icmp ugt i64 %i.lx, 2305843009213693951
  br i1 %i.ma, label %.invoke481, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i168, !prof !267

_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i168: ; preds = %bb.ay
  %i.mb = shl nuw nsw i64 %i.lx, 2
  %i.mc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mb) #27
          to label %.noexc183 unwind label %.loopexit.split-lp365.loopexit.split-lp

.noexc183:                                        ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i168
  %.pre.i169 = load i64, ptr %i.kx, align 8, !tbaa !313
  %.pre4.i170 = load i64, ptr %i.ky, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i171

_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i171: ; preds = %.noexc183, %bb.ax
  %i.md = phi i64 [ %.pre4.i170, %.noexc183 ], [ %i.lu, %bb.ax ] ; 3 uses
  %i.me = phi i64 [ %.pre.i169, %.noexc183 ], [ %i.ly, %bb.ax ] ; 4 uses
  %.0.i.i.i.i172 = phi ptr [ %i.mc, %.noexc183 ], [ null, %bb.ax ] ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !310
  %i.mh = add i64 %i.mg, 1
  store i64 %i.mh, ptr %i.mf, align 8, !tbaa !310
  %i.mi = load ptr, ptr %5, align 8, !tbaa !312   ; 3 uses
  %i.mj = icmp samesign ne i64 %i.me, %i.md
  %i.mk = icmp ne ptr %.0.i.i.i.i172, null
  %or.cond.i.i.i.i173 = and i1 %i.mj, %i.mk
  %i.ml = icmp ne ptr %i.mi, null                 ; 2 uses
  %spec.select.i.i.i.i174 = and i1 %or.cond.i.i.i.i173, %i.ml
  br i1 %spec.select.i.i.i.i174, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i179, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i175, !prof !262

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i179: ; preds = %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i171
  %.idx13.i.i180 = shl nuw nsw i64 %i.me, 2
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 %.idx13.i.i180
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i172, i64 %i.lz
  %i.mo = sub nsw i64 %i.md, %i.me
  %gepdiff.i.i181 = shl nsw i64 %i.mo, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mn, ptr nonnull align 4 %i.mm, i64 %gepdiff.i.i181, i1 false)
  br label %bb.az

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i175: ; preds = %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i171
  br i1 %i.ml, label %bb.az, label %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i176

bb.az:                                            ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i175, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i179
  %i.mp = load i64, ptr %i.kz, align 8, !tbaa !316
  %i.mq = shl i64 %i.mp, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.mq) #26
  %.pre.i.i177 = load i64, ptr %i.ky, align 8, !tbaa !317
  %.pre14.i.i178 = load i64, ptr %i.kx, align 8, !tbaa !313
  br label %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i176

_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i176: ; preds = %bb.az, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i175
  %i.mr = phi i64 [ %i.me, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i175 ], [ %.pre14.i.i178, %bb.az ]
  %i.ms = phi i64 [ %i.md, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i175 ], [ %.pre.i.i177, %bb.az ]
  store ptr %.0.i.i.i.i172, ptr %5, align 8, !tbaa !312
  store i64 %i.lx, ptr %i.kz, align 8, !tbaa !311
  %i.mt = sub i64 %i.lz, %i.mr
  %i.mu = add i64 %i.mt, %i.ms
  store i64 %i.mu, ptr %i.ky, align 8, !tbaa !314
  store i64 %i.lz, ptr %i.kx, align 8, !tbaa !318
  br label %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit184

_ZN5boost9container8devectorIivvE13reserve_frontEm.exit184: ; preds = %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i176, %bb.aw
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store i64 0, ptr %i.mv, align 8, !tbaa !310
  br i1 %.not2.i.i.i, label %.thread.i213, label %.lr.ph.i.i.i187

.thread.i213:                                     ; preds = %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit184
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i185)
  br label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i211

.lr.ph.i.i.i187:                                  ; preds = %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit184, %.lr.ph.i.i.i187
  %i.mw = phi ptr [ %i.my, %.lr.ph.i.i.i187 ], [ %i.cj, %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit184 ]
  %.03.i.i.i188 = phi i64 [ %i.mx, %.lr.ph.i.i.i187 ], [ 0, %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit184 ] ; 2 uses
  %i.mx = add nuw nsw i64 %.03.i.i.i188, 1
  %i.my = load ptr, ptr %i.mw, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i189 = icmp eq ptr %i.my, %i.cp
  br i1 %.not.i.i.i189, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i190, label %.lr.ph.i.i.i187, !llvm.loop !881

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i190: ; preds = %.lr.ph.i.i.i187
  %i.mz = load i64, ptr %i.kz, align 8, !tbaa !316
  %.not.not.i191 = icmp ugt i64 %i.mz, %.03.i.i.i188
  br i1 %.not.not.i191, label %bb.ba, label %.lr.ph.i.i.i1.i192

bb.ba:                                            ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i190
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i185)
  br label %.lr.ph.i.i.i.i.i203

.lr.ph.i.i.i.i.i203:                              ; preds = %.lr.ph.i.i.i.i.i203, %bb.ba
  %i.na = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i203 ], [ %i.cj, %bb.ba ]
  %.03.i.i.i.i.i204 = phi i64 [ %i.nb, %.lr.ph.i.i.i.i.i203 ], [ 0, %bb.ba ] ; 2 uses
  %i.nb = add nuw i64 %.03.i.i.i.i.i204, 1        ; 6 uses
  %i.nc = load ptr, ptr %i.na, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i.i.i205 = icmp eq ptr %i.nc, %i.cp
  br i1 %.not.i.i.i.i.i205, label %.lr.ph.i.i.i.i206, label %.lr.ph.i.i.i.i.i203, !llvm.loop !881

.lr.ph.i.i.i.i206:                                ; preds = %.lr.ph.i.i.i.i.i203
  store ptr %i.cj, ptr %.sroa.0.i.i.i185, align 8, !tbaa !919
  %i.nd = load ptr, ptr %5, align 8, !tbaa !312   ; 2 uses
  %xtraiter508 = and i64 %i.nb, 3                 ; 2 uses
  %lcmp.mod509.not = icmp eq i64 %xtraiter508, 0
  br i1 %lcmp.mod509.not, label %.prol.loopexit507, label %.prol.preheader506

.prol.preheader506:                               ; preds = %.lr.ph.i.i.i.i206, %.prol.preheader506
  %.in.i.i.i.i207.prol = phi ptr [ %i.ne, %.prol.preheader506 ], [ %.sroa.0.i.i.i185, %.lr.ph.i.i.i.i206 ]
  %.016.i.i.i.i208.prol = phi i64 [ %i.nf, %.prol.preheader506 ], [ %i.nb, %.lr.ph.i.i.i.i206 ]
  %.01315.i.i.i.i209.prol = phi ptr [ %i.ni, %.prol.preheader506 ], [ %i.nd, %.lr.ph.i.i.i.i206 ] ; 3 uses
  %prol.iter510 = phi i64 [ %prol.iter510.next, %.prol.preheader506 ], [ 0, %.lr.ph.i.i.i.i206 ]
  %i.ne = load ptr, ptr %.in.i.i.i.i207.prol, align 8, !tbaa !920 ; 3 uses
  %i.nf = add nsw i64 %.016.i.i.i.i208.prol, -1   ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i209.prol) ]
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !259
  store i32 %i.nh, ptr %.01315.i.i.i.i209.prol, align 4, !tbaa !259
  %i.ni = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i209.prol, i64 4 ; 2 uses
  %prol.iter510.next = add i64 %prol.iter510, 1   ; 2 uses
  %prol.iter510.cmp.not = icmp eq i64 %prol.iter510.next, %xtraiter508
  br i1 %prol.iter510.cmp.not, label %.prol.loopexit507, label %.prol.preheader506, !llvm.loop !886

.prol.loopexit507:                                ; preds = %.prol.preheader506, %.lr.ph.i.i.i.i206
  %.in.i.i.i.i207.unr = phi ptr [ %.sroa.0.i.i.i185, %.lr.ph.i.i.i.i206 ], [ %i.ne, %.prol.preheader506 ]
  %.016.i.i.i.i208.unr = phi i64 [ %i.nb, %.lr.ph.i.i.i.i206 ], [ %i.nf, %.prol.preheader506 ]
  %.01315.i.i.i.i209.unr = phi ptr [ %i.nd, %.lr.ph.i.i.i.i206 ], [ %i.ni, %.prol.preheader506 ]
  %i.nj = icmp ult i64 %.03.i.i.i.i.i204, 3
  br i1 %i.nj, label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i211, label %.lr.ph.i.i.i.i206.new

.lr.ph.i.i.i.i206.new:                            ; preds = %.prol.loopexit507, %.lr.ph.i.i.i.i206.new
  %.in.i.i.i.i207 = phi ptr [ %i.nw, %.lr.ph.i.i.i.i206.new ], [ %.in.i.i.i.i207.unr, %.prol.loopexit507 ]
  %.016.i.i.i.i208 = phi i64 [ %i.nx, %.lr.ph.i.i.i.i206.new ], [ %.016.i.i.i.i208.unr, %.prol.loopexit507 ]
  %.01315.i.i.i.i209 = phi ptr [ %i.oa, %.lr.ph.i.i.i.i206.new ], [ %.01315.i.i.i.i209.unr, %.prol.loopexit507 ] ; 6 uses
  %i.nk = load ptr, ptr %.in.i.i.i.i207, align 8, !tbaa !920 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i209) ]
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !259
  store i32 %i.nm, ptr %.01315.i.i.i.i209, align 4, !tbaa !259
  %i.nn = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i209, i64 4
  %i.no = load ptr, ptr %i.nk, align 8, !tbaa !920 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !259
  store i32 %i.nq, ptr %i.nn, align 4, !tbaa !259
  %i.nr = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i209, i64 8
  %i.ns = load ptr, ptr %i.no, align 8, !tbaa !920 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !259
  store i32 %i.nu, ptr %i.nr, align 4, !tbaa !259
  %i.nv = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i209, i64 12
  %i.nw = load ptr, ptr %i.ns, align 8, !tbaa !920 ; 2 uses
  %i.nx = add nsw i64 %.016.i.i.i.i208, -4        ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !259
  store i32 %i.nz, ptr %i.nv, align 4, !tbaa !259
  %i.oa = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i209, i64 16
  %.not.i.i.i.i210.3 = icmp eq i64 %i.nx, 0
  br i1 %.not.i.i.i.i210.3, label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i211, label %.lr.ph.i.i.i.i206.new, !llvm.loop !884

_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i211: ; preds = %.prol.loopexit507, %.lr.ph.i.i.i.i206.new, %.thread.i213
  %.0.lcssa.i.i6.i.i.i212 = phi i64 [ 0, %.thread.i213 ], [ %i.nb, %.lr.ph.i.i.i.i206.new ], [ %i.nb, %.prol.loopexit507 ]
  store i64 0, ptr %i.kx, align 8, !tbaa !313
  store i64 %.0.lcssa.i.i6.i.i.i212, ptr %i.ky, align 8, !tbaa !314
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i185)
  br label %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit216

.lr.ph.i.i.i1.i192:                               ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i190, %.lr.ph.i.i.i1.i192
  %i.ob = phi ptr [ %i.od, %.lr.ph.i.i.i1.i192 ], [ %i.cj, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i190 ]
  %.03.i.i.i.i193 = phi i64 [ %i.oc, %.lr.ph.i.i.i1.i192 ], [ 0, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i190 ] ; 2 uses
  %i.oc = add nuw nsw i64 %.03.i.i.i.i193, 1      ; 4 uses
  %i.od = load ptr, ptr %i.ob, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i2.i194 = icmp eq ptr %i.od, %i.cp
  br i1 %.not.i.i.i2.i194, label %.split.i.i195, label %.lr.ph.i.i.i1.i192, !llvm.loop !881

.split.i.i195:                                    ; preds = %.lr.ph.i.i.i1.i192
  %i.oe = icmp samesign ugt i64 %.03.i.i.i.i193, 2305843009213693950
  br i1 %i.oe, label %.invoke481, label %.split12.i.i196, !prof !267

.invoke481:                                       ; preds = %.split.i.i195, %bb.ay
  invoke void @_ZN5boost9container15throw_bad_allocEv() #28
          to label %.cont482 unwind label %.loopexit.split-lp365.loopexit.split-lp

.cont482:                                         ; preds = %.invoke481
  unreachable

.split12.i.i196:                                  ; preds = %.split.i.i195
  %i.of = shl nuw nsw i64 %i.oc, 2
  %i.og = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.of) #27
          to label %.noexc215 unwind label %.loopexit.split-lp365.loopexit.split-lp ; 2 uses

.noexc215:                                        ; preds = %.split12.i.i196
  %i.oh = load i64, ptr %i.mv, align 8, !tbaa !310
  %i.oi = add i64 %i.oh, 1
  store i64 %i.oi, ptr %i.mv, align 8, !tbaa !310
  br label %.lr.ph.i.i3.i197

.lr.ph.i.i3.i197:                                 ; preds = %.lr.ph.i.i3.i197, %.noexc215
  %i.oj = phi ptr [ %i.om, %.lr.ph.i.i3.i197 ], [ %i.cj, %.noexc215 ] ; 2 uses
  %.011.i.i.i198 = phi ptr [ %i.on, %.lr.ph.i.i3.i197 ], [ %i.og, %.noexc215 ] ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !259
  store i32 %i.ol, ptr %.011.i.i.i198, align 4, !tbaa !259
  %i.om = load ptr, ptr %i.oj, align 8, !tbaa !322 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.011.i.i.i198, i64 4
  %.not.i.i4.i199 = icmp eq ptr %i.om, %i.cp
  br i1 %.not.i.i4.i199, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i200, label %.lr.ph.i.i3.i197, !llvm.loop !882

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i200: ; preds = %.lr.ph.i.i3.i197
  %i.oo = load ptr, ptr %5, align 8, !tbaa !312   ; 2 uses
  %.not.i14.i.i201 = icmp eq ptr %i.oo, null
  br i1 %.not.i14.i.i201, label %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i202, label %bb.bb

bb.bb:                                            ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i200
  %i.op = load i64, ptr %i.kz, align 8, !tbaa !316
  %i.oq = shl i64 %i.op, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.oo, i64 noundef %i.oq) #26
  br label %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i202

_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i202: ; preds = %bb.bb, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i200
  store i64 %i.oc, ptr %i.kz, align 8, !tbaa !311
  store ptr %i.og, ptr %5, align 8, !tbaa !312
  store i64 0, ptr %i.kx, align 8, !tbaa !313
  store i64 %i.oc, ptr %i.ky, align 8, !tbaa !314
  br label %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit216

_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit216: ; preds = %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i202, %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.l, ptr noundef nonnull align 16 dereferenceable(24) @__const._Z9test_swapIN5boost9container8devectorINS1_15no_default_ctorEvvEEEvv.expected2.646, i64 24, i1 false)
  invoke void @_Z16test_equal_rangeIN5boost9container8devectorIivvEEiLj6EEvRKT_RAT1__KT0_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 4 dereferenceable(24) %i.l)
          to label %bb.bc unwind label %bb.cs

bb.bc:                                            ; preds = %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit216
  %i.or = load i64, ptr %i.mv, align 8, !tbaa !310
  %i.os = icmp eq i64 %i.or, 0
  %i.ot = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 844, ptr noundef nonnull @__PRETTY_FUNCTION__._Z25test_assign_forward_rangeIN5boost9container8devectorIivvEEEvv, i1 noundef zeroext %i.os)
          to label %bb.bd unwind label %bb.cs     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #26
  %i.ou = load ptr, ptr %5, align 8, !tbaa !312   ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i217, label %_ZN5boost9container8devectorIivvED2Ev.exit218, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ov = load i64, ptr %i.kz, align 8, !tbaa !316
  %i.ow = shl i64 %i.ov, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef %i.ow) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit218

_ZN5boost9container8devectorIivvED2Ev.exit218:    ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 11 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  br label %.lr.ph.i219

._crit_edge.i222:                                 ; preds = %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 13, ptr %i.b, align 4, !tbaa !259
  %i.oz = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 9 uses
  br label %bb.bh

.lr.ph.i219thread-pre-split:                      ; preds = %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i221
  %.pr357 = load i64, ptr %i.ox, align 8, !tbaa !313
  %.pre409 = load ptr, ptr %6, align 8, !tbaa !312
  br label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %.lr.ph.i219thread-pre-split, %_ZN5boost9container8devectorIivvED2Ev.exit218
  %i.pa = phi ptr [ %.pre409, %.lr.ph.i219thread-pre-split ], [ null, %_ZN5boost9container8devectorIivvED2Ev.exit218 ] ; 2 uses
  %i.pb = phi i64 [ %.pr357, %.lr.ph.i219thread-pre-split ], [ 0, %_ZN5boost9container8devectorIivvED2Ev.exit218 ] ; 3 uses
  %i.pc = phi i32 [ %i.pi, %.lr.ph.i219thread-pre-split ], [ 13, %_ZN5boost9container8devectorIivvED2Ev.exit218 ]
  %i.pd = add nsw i32 %i.pc, -1                   ; 2 uses
  store i32 %i.pd, ptr %i.a, align 4, !tbaa !259
  %.not.i.i220 = icmp eq i64 %i.pb, 0
  br i1 %.not.i.i220, label %bb.bg, label %bb.bf, !prof !267

bb.bf:                                            ; preds = %.lr.ph.i219
  %i.pe = getelementptr [4 x i8], ptr %i.pa, i64 %i.pb
  %i.pf = getelementptr i8, ptr %i.pe, i64 -4     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pf) ]
  store i32 %i.pd, ptr %i.pf, align 4, !tbaa !259
  %i.pg = add i64 %i.pb, -1
  store i64 %i.pg, ptr %i.ox, align 8, !tbaa !313
  br label %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i221

bb.bg:                                            ; preds = %.lr.ph.i219
  %i.ph = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %i.pa, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i221 unwind label %.loopexit.split-lp.loopexit ; 0 uses

_ZN5boost9container8devectorIivvE13emplace_frontIJRiEEES4_DpOT_.exit.i221: ; preds = %bb.bg, %bb.bf
  %i.pi = load i32, ptr %i.a, align 4, !tbaa !259 ; 2 uses
  %i.pj = icmp sgt i32 %i.pi, 11
  br i1 %i.pj, label %.lr.ph.i219thread-pre-split, label %._crit_edge.i222, !llvm.loop !2

bb.bh:                                            ; preds = %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i225, %._crit_edge.i222
  %storemerge8.i223 = phi i32 [ 13, %._crit_edge.i222 ], [ %i.ps, %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i225 ]
  %i.pk = load i64, ptr %i.oz, align 8, !tbaa !316 ; 2 uses
  %i.pl = load i64, ptr %i.oy, align 8, !tbaa !317 ; 3 uses
  %.not.i6.i224 = icmp eq i64 %i.pk, %i.pl
  %i.pm = load ptr, ptr %6, align 8, !tbaa !312   ; 2 uses
  br i1 %.not.i6.i224, label %bb.bj, label %bb.bi, !prof !267

bb.bi:                                            ; preds = %bb.bh
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.pl
  store i32 %storemerge8.i223, ptr %i.pn, align 4, !tbaa !259
  %i.po = add i64 %i.pl, 1
  store i64 %i.po, ptr %i.oy, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i225

bb.bj:                                            ; preds = %bb.bh
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %i.pk
  %i.pq = invoke noundef ptr @_ZN5boost9container8devectorIivvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyINS0_13new_allocatorIiEEJRiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %i.pp, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.b)
          to label %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i225 unwind label %.loopexit ; 0 uses

_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i225: ; preds = %bb.bj, %bb.bi
  %i.pr = load i32, ptr %i.b, align 4, !tbaa !259 ; 2 uses
  %i.ps = add nsw i32 %i.pr, 1                    ; 2 uses
  store i32 %i.ps, ptr %i.b, align 4, !tbaa !259
  %i.pt = icmp slt i32 %i.pr, 14
  br i1 %i.pt, label %bb.bh, label %bb.bk, !llvm.loop !3

bb.bk:                                            ; preds = %_ZN5boost9container8devectorIivvE12emplace_backIJRiEEES4_DpOT_.exit.i225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.pu = load i64, ptr %i.oy, align 8, !tbaa !317 ; 5 uses
  %.not.i229 = icmp ult i64 %i.pu, 8
  %.pre410 = load i64, ptr %i.oz, align 8, !tbaa !316 ; 2 uses
  %.pre411 = load i64, ptr %i.ox, align 8, !tbaa !313 ; 3 uses
  br i1 %.not.i229, label %bb.bl, label %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit248

bb.bl:                                            ; preds = %bb.bk
  %i.pv = sub i64 %.pre410, %i.pu
  %i.pw = add i64 %i.pv, 8                        ; 5 uses
  %.neg.i230 = sub i64 %.pre411, %i.pu
  %i.px = add i64 %.neg.i230, 8                   ; 4 uses
  %.not.i.i.i.i231 = icmp eq i64 %i.pw, 0
  br i1 %.not.i.i.i.i231, label %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i235, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.py = icmp ugt i64 %i.pw, 2305843009213693951
  br i1 %i.py, label %.invoke483, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i232, !prof !267

_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i232: ; preds = %bb.bm
  %i.pz = shl nuw nsw i64 %i.pw, 2
  %i.qa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pz) #27
          to label %.noexc247 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc247:                                        ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i232
  %.pre.i233 = load i64, ptr %i.ox, align 8, !tbaa !313
  %.pre4.i234 = load i64, ptr %i.oy, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i235

_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i235: ; preds = %.noexc247, %bb.bl
  %i.qb = phi i64 [ %.pre4.i234, %.noexc247 ], [ %i.pu, %bb.bl ] ; 3 uses
  %i.qc = phi i64 [ %.pre.i233, %.noexc247 ], [ %.pre411, %bb.bl ] ; 4 uses
  %.0.i.i.i.i236 = phi ptr [ %i.qa, %.noexc247 ], [ null, %bb.bl ] ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !310
  %i.qf = add i64 %i.qe, 1
  store i64 %i.qf, ptr %i.qd, align 8, !tbaa !310
  %i.qg = load ptr, ptr %6, align 8, !tbaa !312   ; 3 uses
  %i.qh = icmp samesign ne i64 %i.qc, %i.qb
  %i.qi = icmp ne ptr %.0.i.i.i.i236, null
  %or.cond.i.i.i.i237 = and i1 %i.qh, %i.qi
  %i.qj = icmp ne ptr %i.qg, null                 ; 2 uses
  %spec.select.i.i.i.i238 = and i1 %or.cond.i.i.i.i237, %i.qj
  br i1 %spec.select.i.i.i.i238, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i243, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i239, !prof !262

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i243: ; preds = %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i235
  %.idx13.i.i244 = shl nuw nsw i64 %i.qc, 2
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qg, i64 %.idx13.i.i244
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i236, i64 %i.px
  %i.qm = sub nsw i64 %i.qb, %i.qc
  %gepdiff.i.i245 = shl nsw i64 %i.qm, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ql, ptr nonnull align 4 %i.qk, i64 %gepdiff.i.i245, i1 false)
  br label %bb.bn

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i239: ; preds = %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i235
  br i1 %i.qj, label %bb.bn, label %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i240

bb.bn:                                            ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i239, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i243
  %i.qn = load i64, ptr %i.oz, align 8, !tbaa !316
  %i.qo = shl i64 %i.qn, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.qg, i64 noundef %i.qo) #26
  %.pre.i.i241 = load i64, ptr %i.oy, align 8, !tbaa !317
  %.pre14.i.i242 = load i64, ptr %i.ox, align 8, !tbaa !313
  br label %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i240

_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i240: ; preds = %bb.bn, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i239
  %i.qp = phi i64 [ %i.qc, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i239 ], [ %.pre14.i.i242, %bb.bn ]
  %i.qq = phi i64 [ %i.qb, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i239 ], [ %.pre.i.i241, %bb.bn ]
  store ptr %.0.i.i.i.i236, ptr %6, align 8, !tbaa !312
  store i64 %i.pw, ptr %i.oz, align 8, !tbaa !311
  %i.qr = sub i64 %i.px, %i.qp
  %i.qs = add i64 %i.qr, %i.qq                    ; 2 uses
  store i64 %i.qs, ptr %i.oy, align 8, !tbaa !314
  store i64 %i.px, ptr %i.ox, align 8, !tbaa !318
  br label %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit248

_ZN5boost9container8devectorIivvE13reserve_frontEm.exit248: ; preds = %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i240, %bb.bk
  %i.qt = phi i64 [ %i.qs, %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i240 ], [ %i.pu, %bb.bk ]
  %i.qu = phi i64 [ %i.px, %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i240 ], [ %.pre411, %bb.bk ] ; 5 uses
  %i.qv = phi i64 [ %i.pw, %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i240 ], [ %.pre410, %bb.bk ] ; 2 uses
  %i.qw = sub i64 %i.qv, %i.qu
  %.not.i249 = icmp ult i64 %i.qw, 8
  br i1 %.not.i249, label %bb.bo, label %_ZN5boost9container8devectorIivvE12reserve_backEm.exit

bb.bo:                                            ; preds = %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit248
  %i.qx = add i64 %i.qu, 8                        ; 5 uses
  %.not.i.i.i.i250 = icmp eq i64 %i.qx, 0
  br i1 %.not.i.i.i.i250, label %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i253, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qy = icmp ugt i64 %i.qx, 2305843009213693951
  br i1 %i.qy, label %.invoke483, label %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i251, !prof !267

_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i251: ; preds = %bb.bp
  %i.qz = shl nuw nsw i64 %i.qx, 2
  %i.ra = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qz) #27
          to label %.noexc265 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc265:                                        ; preds = %_ZN5boost9container16allocator_traitsINS0_13new_allocatorIiEEE8allocateERS3_m.exit.i.i.i.i251
  %.pre.i252 = load i64, ptr %i.ox, align 8, !tbaa !313
  %.pre412 = load i64, ptr %i.oy, align 8, !tbaa !317
  br label %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i253

_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i253: ; preds = %.noexc265, %bb.bo
  %i.rb = phi i64 [ %.pre412, %.noexc265 ], [ %i.qt, %bb.bo ] ; 3 uses
  %i.rc = phi i64 [ %.pre.i252, %.noexc265 ], [ -8, %bb.bo ] ; 4 uses
  %.0.i.i.i.i254 = phi ptr [ %i.ra, %.noexc265 ], [ null, %bb.bo ] ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !310
  %i.rf = add i64 %i.re, 1
  store i64 %i.rf, ptr %i.rd, align 8, !tbaa !310
  %i.rg = load ptr, ptr %6, align 8, !tbaa !312   ; 3 uses
  %i.rh = icmp samesign ne i64 %i.rc, %i.rb
  %i.ri = icmp ne ptr %.0.i.i.i.i254, null
  %or.cond.i.i.i.i255 = and i1 %i.ri, %i.rh
  %i.rj = icmp ne ptr %i.rg, null                 ; 2 uses
  %spec.select.i.i.i.i256 = and i1 %i.rj, %or.cond.i.i.i.i255
  br i1 %spec.select.i.i.i.i256, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i261, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i257, !prof !262

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i261: ; preds = %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i253
  %.idx13.i.i262 = shl nuw nsw i64 %i.rc, 2
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rg, i64 %.idx13.i.i262
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i254, i64 %i.qu
  %i.rm = sub nsw i64 %i.rb, %i.rc
  %gepdiff.i.i263 = shl nsw i64 %i.rm, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rl, ptr nonnull align 4 %i.rk, i64 %gepdiff.i.i263, i1 false)
  br label %bb.bq

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i257: ; preds = %_ZN5boost9container8devectorIivvE8allocateEm.exit.i.i253
  br i1 %i.rj, label %bb.bq, label %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i258

bb.bq:                                            ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i257, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.thread.i.i261
  %i.rn = load i64, ptr %i.oz, align 8, !tbaa !316
  %i.ro = shl i64 %i.rn, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.rg, i64 noundef %i.ro) #26
  %.pre.i.i259 = load i64, ptr %i.oy, align 8, !tbaa !317
  %.pre14.i.i260 = load i64, ptr %i.ox, align 8, !tbaa !313
  br label %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i258

_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i258: ; preds = %bb.bq, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i257
  %i.rp = phi i64 [ %i.rc, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i257 ], [ %.pre14.i.i260, %bb.bq ]
  %i.rq = phi i64 [ %i.rb, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorIiEEED2Ev.exit.i.i257 ], [ %.pre.i.i259, %bb.bq ]
  store ptr %.0.i.i.i.i254, ptr %6, align 8, !tbaa !312
  store i64 %i.qx, ptr %i.oz, align 8, !tbaa !311
  %i.rr = sub i64 %i.qu, %i.rp
  %i.rs = add i64 %i.rr, %i.rq
  store i64 %i.rs, ptr %i.oy, align 8, !tbaa !314
  store i64 %i.qu, ptr %i.ox, align 8, !tbaa !318
  br label %_ZN5boost9container8devectorIivvE12reserve_backEm.exit

_ZN5boost9container8devectorIivvE12reserve_backEm.exit: ; preds = %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i258, %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit248
  %i.rt = phi i64 [ %i.qx, %_ZN5boost9container8devectorIivvE13reallocate_atEmm.exit.i258 ], [ %i.qv, %_ZN5boost9container8devectorIivvE13reserve_frontEm.exit248 ]
  %i.ru = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  store i64 0, ptr %i.ru, align 8, !tbaa !310
  %.not2.i.i.i267 = icmp eq ptr %i.cj, %i.cv
  br i1 %.not2.i.i.i267, label %.thread.i294, label %.lr.ph.i.i.i268

.thread.i294:                                     ; preds = %_ZN5boost9container8devectorIivvE12reserve_backEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i266)
  br label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i292

.lr.ph.i.i.i268:                                  ; preds = %_ZN5boost9container8devectorIivvE12reserve_backEm.exit, %.lr.ph.i.i.i268
  %i.rv = phi ptr [ %i.rx, %.lr.ph.i.i.i268 ], [ %i.cj, %_ZN5boost9container8devectorIivvE12reserve_backEm.exit ]
  %.03.i.i.i269 = phi i64 [ %i.rw, %.lr.ph.i.i.i268 ], [ 0, %_ZN5boost9container8devectorIivvE12reserve_backEm.exit ] ; 2 uses
  %i.rw = add nuw nsw i64 %.03.i.i.i269, 1
  %i.rx = load ptr, ptr %i.rv, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i270 = icmp eq ptr %i.rx, %i.cv
  br i1 %.not.i.i.i270, label %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i271, label %.lr.ph.i.i.i268, !llvm.loop !881

_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i271: ; preds = %.lr.ph.i.i.i268
  %.not.not.i272 = icmp ugt i64 %i.rt, %.03.i.i.i269
  br i1 %.not.not.i272, label %bb.br, label %.lr.ph.i.i.i1.i273

bb.br:                                            ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i271
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i266)
  br label %.lr.ph.i.i.i.i.i284

.lr.ph.i.i.i.i.i284:                              ; preds = %.lr.ph.i.i.i.i.i284, %bb.br
  %i.ry = phi ptr [ %i.sa, %.lr.ph.i.i.i.i.i284 ], [ %i.cj, %bb.br ]
  %.03.i.i.i.i.i285 = phi i64 [ %i.rz, %.lr.ph.i.i.i.i.i284 ], [ 0, %bb.br ] ; 2 uses
  %i.rz = add nuw i64 %.03.i.i.i.i.i285, 1        ; 6 uses
  %i.sa = load ptr, ptr %i.ry, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i.i.i286 = icmp eq ptr %i.sa, %i.cv
  br i1 %.not.i.i.i.i.i286, label %.lr.ph.i.i.i.i287, label %.lr.ph.i.i.i.i.i284, !llvm.loop !881

.lr.ph.i.i.i.i287:                                ; preds = %.lr.ph.i.i.i.i.i284
  store ptr %i.cj, ptr %.sroa.0.i.i.i266, align 8, !tbaa !919
  %i.sb = load ptr, ptr %6, align 8, !tbaa !312   ; 2 uses
  %xtraiter513 = and i64 %i.rz, 3                 ; 2 uses
  %lcmp.mod514.not = icmp eq i64 %xtraiter513, 0
  br i1 %lcmp.mod514.not, label %.prol.loopexit512, label %.prol.preheader511

.prol.preheader511:                               ; preds = %.lr.ph.i.i.i.i287, %.prol.preheader511
  %.in.i.i.i.i288.prol = phi ptr [ %i.sc, %.prol.preheader511 ], [ %.sroa.0.i.i.i266, %.lr.ph.i.i.i.i287 ]
  %.016.i.i.i.i289.prol = phi i64 [ %i.sd, %.prol.preheader511 ], [ %i.rz, %.lr.ph.i.i.i.i287 ]
  %.01315.i.i.i.i290.prol = phi ptr [ %i.sg, %.prol.preheader511 ], [ %i.sb, %.lr.ph.i.i.i.i287 ] ; 3 uses
  %prol.iter515 = phi i64 [ %prol.iter515.next, %.prol.preheader511 ], [ 0, %.lr.ph.i.i.i.i287 ]
  %i.sc = load ptr, ptr %.in.i.i.i.i288.prol, align 8, !tbaa !920 ; 3 uses
  %i.sd = add nsw i64 %.016.i.i.i.i289.prol, -1   ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i290.prol) ]
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !259
  store i32 %i.sf, ptr %.01315.i.i.i.i290.prol, align 4, !tbaa !259
  %i.sg = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i290.prol, i64 4 ; 2 uses
  %prol.iter515.next = add i64 %prol.iter515, 1   ; 2 uses
  %prol.iter515.cmp.not = icmp eq i64 %prol.iter515.next, %xtraiter513
  br i1 %prol.iter515.cmp.not, label %.prol.loopexit512, label %.prol.preheader511, !llvm.loop !887

.prol.loopexit512:                                ; preds = %.prol.preheader511, %.lr.ph.i.i.i.i287
  %.in.i.i.i.i288.unr = phi ptr [ %.sroa.0.i.i.i266, %.lr.ph.i.i.i.i287 ], [ %i.sc, %.prol.preheader511 ]
  %.016.i.i.i.i289.unr = phi i64 [ %i.rz, %.lr.ph.i.i.i.i287 ], [ %i.sd, %.prol.preheader511 ]
  %.01315.i.i.i.i290.unr = phi ptr [ %i.sb, %.lr.ph.i.i.i.i287 ], [ %i.sg, %.prol.preheader511 ]
  %i.sh = icmp ult i64 %.03.i.i.i.i.i285, 3
  br i1 %i.sh, label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i292, label %.lr.ph.i.i.i.i287.new

.lr.ph.i.i.i.i287.new:                            ; preds = %.prol.loopexit512, %.lr.ph.i.i.i.i287.new
  %.in.i.i.i.i288 = phi ptr [ %i.su, %.lr.ph.i.i.i.i287.new ], [ %.in.i.i.i.i288.unr, %.prol.loopexit512 ]
  %.016.i.i.i.i289 = phi i64 [ %i.sv, %.lr.ph.i.i.i.i287.new ], [ %.016.i.i.i.i289.unr, %.prol.loopexit512 ]
  %.01315.i.i.i.i290 = phi ptr [ %i.sy, %.lr.ph.i.i.i.i287.new ], [ %.01315.i.i.i.i290.unr, %.prol.loopexit512 ] ; 6 uses
  %i.si = load ptr, ptr %.in.i.i.i.i288, align 8, !tbaa !920 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i290) ]
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !259
  store i32 %i.sk, ptr %.01315.i.i.i.i290, align 4, !tbaa !259
  %i.sl = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i290, i64 4
  %i.sm = load ptr, ptr %i.si, align 8, !tbaa !920 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !259
  store i32 %i.so, ptr %i.sl, align 4, !tbaa !259
  %i.sp = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i290, i64 8
  %i.sq = load ptr, ptr %i.sm, align 8, !tbaa !920 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !259
  store i32 %i.ss, ptr %i.sp, align 4, !tbaa !259
  %i.st = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i290, i64 12
  %i.su = load ptr, ptr %i.sq, align 8, !tbaa !920 ; 2 uses
  %i.sv = add nsw i64 %.016.i.i.i.i289, -4        ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !259
  store i32 %i.sx, ptr %i.st, align 4, !tbaa !259
  %i.sy = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i290, i64 16
  %.not.i.i.i.i291.3 = icmp eq i64 %i.sv, 0
  br i1 %.not.i.i.i.i291.3, label %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i292, label %.lr.ph.i.i.i.i287.new, !llvm.loop !884

_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i292: ; preds = %.prol.loopexit512, %.lr.ph.i.i.i.i287.new, %.thread.i294
  %.0.lcssa.i.i6.i.i.i293 = phi i64 [ 0, %.thread.i294 ], [ %i.rz, %.lr.ph.i.i.i.i287.new ], [ %i.rz, %.prol.loopexit512 ]
  store i64 0, ptr %i.ox, align 8, !tbaa !313
  store i64 %.0.lcssa.i.i6.i.i.i293, ptr %i.oy, align 8, !tbaa !314
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i266)
  br label %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit297

.lr.ph.i.i.i1.i273:                               ; preds = %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i271, %.lr.ph.i.i.i1.i273
  %i.sz = phi ptr [ %i.tb, %.lr.ph.i.i.i1.i273 ], [ %i.cj, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i271 ]
  %.03.i.i.i.i274 = phi i64 [ %i.ta, %.lr.ph.i.i.i1.i273 ], [ 0, %_ZN5boost9intrusive18iterator_udistanceINS_9container3dtl23iterator_from_iiteratorINS0_13list_iteratorINS0_8bhtraitsINS2_9base_nodeIiNS3_9list_hookIPvEELb0EEENS0_16list_node_traitsIS9_EELNS0_14link_mode_typeE0ENS0_7dft_tagELj1EEELb0EEELb0EEEEENS_7movelib9iter_sizeIT_E4typeESL_SL_.exit.i271 ] ; 2 uses
  %i.ta = add nuw nsw i64 %.03.i.i.i.i274, 1      ; 4 uses
  %i.tb = load ptr, ptr %i.sz, align 8, !tbaa !322 ; 2 uses
  %.not.i.i.i2.i275 = icmp eq ptr %i.tb, %i.cv
  br i1 %.not.i.i.i2.i275, label %.split.i.i276, label %.lr.ph.i.i.i1.i273, !llvm.loop !881

.split.i.i276:                                    ; preds = %.lr.ph.i.i.i1.i273
  %i.tc = icmp samesign ugt i64 %.03.i.i.i.i274, 2305843009213693950
  br i1 %i.tc, label %.invoke483, label %.split12.i.i277, !prof !267

.invoke483:                                       ; preds = %.split.i.i276, %bb.bp, %bb.bm
  invoke void @_ZN5boost9container15throw_bad_allocEv() #28
          to label %.cont484 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont484:                                         ; preds = %.invoke483
  unreachable

.split12.i.i277:                                  ; preds = %.split.i.i276
  %i.td = shl nuw nsw i64 %i.ta, 2
  %i.te = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.td) #27
          to label %.noexc296 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc296:                                        ; preds = %.split12.i.i277
  %i.tf = load i64, ptr %i.ru, align 8, !tbaa !310
  %i.tg = add i64 %i.tf, 1
  store i64 %i.tg, ptr %i.ru, align 8, !tbaa !310
  br label %.lr.ph.i.i3.i278

.lr.ph.i.i3.i278:                                 ; preds = %.lr.ph.i.i3.i278, %.noexc296
  %i.th = phi ptr [ %i.tk, %.lr.ph.i.i3.i278 ], [ %i.cj, %.noexc296 ] ; 2 uses
  %.011.i.i.i279 = phi ptr [ %i.tl, %.lr.ph.i.i3.i278 ], [ %i.te, %.noexc296 ] ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !259
  store i32 %i.tj, ptr %.011.i.i.i279, align 4, !tbaa !259
  %i.tk = load ptr, ptr %i.th, align 8, !tbaa !322 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.011.i.i.i279, i64 4
  %.not.i.i4.i280 = icmp eq ptr %i.tk, %i.cv
  br i1 %.not.i.i4.i280, label %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i281, label %.lr.ph.i.i3.i278, !llvm.loop !882

_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i281: ; preds = %.lr.ph.i.i3.i278
  %i.tm = load ptr, ptr %6, align 8, !tbaa !312   ; 2 uses
  %.not.i14.i.i282 = icmp eq ptr %i.tm, null
  br i1 %.not.i14.i.i282, label %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i283, label %bb.bs

bb.bs:                                            ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i281
  %i.tn = load i64, ptr %i.oz, align 8, !tbaa !316
  %i.to = shl i64 %i.tn, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.tm, i64 noundef %i.to) #26
  br label %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i283

_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i283: ; preds = %bb.bs, %_ZN5boost9container24uninitialized_copy_allocINS0_13new_allocatorIiEENS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEPiEENS4_41disable_if_memtransfer_copy_constructibleIT0_T1_SO_E4typeERT_SN_SN_SO_.exit.i.i281
  store i64 %i.ta, ptr %i.oz, align 8, !tbaa !311
  store ptr %i.te, ptr %6, align 8, !tbaa !312
  store i64 0, ptr %i.ox, align 8, !tbaa !313
  store i64 %i.ta, ptr %i.oy, align 8, !tbaa !314
  br label %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit297

_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit297: ; preds = %_ZN5boost9container8devectorIivvE23allocate_and_copy_rangeINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i283, %_ZN5boost9container8devectorIivvE16overwrite_bufferINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_.exit.i292
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.m, ptr noundef nonnull align 16 dereferenceable(48) @__const._Z25test_assign_pointer_rangeIN5boost9container8devectorINS1_15no_default_ctorEvvEEEvv.expected.553, i64 48, i1 false)
  invoke void @_Z16test_equal_rangeIN5boost9container8devectorIivvEEiLj12EEvRKT_RAT1__KT0_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 4 dereferenceable(48) %i.m)
          to label %bb.bt unwind label %bb.cu

bb.bt:                                            ; preds = %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit297
  %i.tp = load i64, ptr %i.ru, align 8, !tbaa !310
  %i.tq = icmp eq i64 %i.tp, 0
  %i.tr = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.1, i32 noundef 857, ptr noundef nonnull @__PRETTY_FUNCTION__._Z25test_assign_forward_rangeIN5boost9container8devectorIivvEEEvv, i1 noundef zeroext %i.tq)
          to label %bb.bu unwind label %bb.cu     ; 0 uses

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  %i.ts = load ptr, ptr %6, align 8, !tbaa !312   ; 2 uses
  %.not.i.i298 = icmp eq ptr %i.ts, null
  br i1 %.not.i.i298, label %_ZN5boost9container8devectorIivvED2Ev.exit299, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tt = load i64, ptr %i.oz, align 8, !tbaa !316
  %i.tu = shl i64 %i.tt, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ts, i64 noundef %i.tu) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit299

_ZN5boost9container8devectorIivvED2Ev.exit299:    ; preds = %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.tv = load ptr, ptr %i.n, align 8, !tbaa !322, !noalias !921 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.tv, %i.n
  br i1 %.not8.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i300

.lr.ph.i.i.i300:                                  ; preds = %_ZN5boost9container8devectorIivvED2Ev.exit299, %.lr.ph.i.i.i300
  %.sroa.04.09.i.i.i = phi ptr [ %i.tw, %.lr.ph.i.i.i300 ], [ %i.tv, %_ZN5boost9container8devectorIivvED2Ev.exit299 ] ; 2 uses
  %i.tw = load ptr, ptr %.sroa.04.09.i.i.i, align 8, !tbaa !322 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.04.09.i.i.i, i64 noundef 24) #26
  %.not.i.i.i301 = icmp eq ptr %i.tw, %i.n
  br i1 %.not.i.i.i301, label %_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i300, !llvm.loop !890

_ZN5boost9container3dtl17node_alloc_holderINS0_13new_allocatorIiEENS_9intrusive9list_implINS5_8bhtraitsINS0_9base_nodeIiNS1_9list_hookIPvEELb0EEENS5_16list_node_traitsISA_EELNS5_14link_mode_typeE0ENS5_7dft_tagELj1EEEmLb1EvEEED2Ev.exit: ; preds = %.lr.ph.i.i.i300, %_ZN5boost9container8devectorIivvED2Ev.exit299
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  ret void

bb.bw:                                            ; preds = %bb.a
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.bx:                                            ; preds = %bb.b
  %i.ty = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.by:                                            ; preds = %bb.c
  %i.tz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.bz:                                            ; preds = %bb.d
  %i.ua = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ca:                                            ; preds = %bb.e
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cb:                                            ; preds = %bb.f
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cc:                                            ; preds = %bb.g
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cd:                                            ; preds = %bb.h
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ce:                                            ; preds = %bb.i
  %i.uf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cf:                                            ; preds = %bb.j
  %i.ug = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cg:                                            ; preds = %bb.k
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ch:                                            ; preds = %bb.l
  %i.ui = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.ci:                                            ; preds = %.split12.i.i, %bb.m
  %i.uj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %_ZN5boost9container8devectorIivvE6assignINS0_3dtl23iterator_from_iiteratorINS_9intrusive13list_iteratorINS6_8bhtraitsINS0_9base_nodeIiNS4_9list_hookIPvEELb0EEENS6_16list_node_traitsISB_EELNS6_14link_mode_typeE0ENS6_7dft_tagELj1EEELb0EEELb0EEEEEvT_SL_PNS_11move_detail13disable_if_orIvNSM_14is_convertibleISL_mEENS4_17is_input_iteratorISL_Xsr21has_iterator_categoryISL_EE5valueEEENSM_5bool_ILb0EEEST_E4typeE.exit
  %i.uk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #26
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pn = phi { ptr, i32 } [ %i.uk, %bb.cj ], [ %i.uj, %bb.ci ]
  %i.ul = load ptr, ptr %1, align 8, !tbaa !312   ; 2 uses
  %.not.i.i302 = icmp eq ptr %i.ul, null
  br i1 %.not.i.i302, label %_ZN5boost9container8devectorIivvED2Ev.exit303, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.um = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.un = load i64, ptr %i.um, align 8, !tbaa !316
  %i.uo = shl i64 %i.un, 2
  call void @_ZdlPvm(ptr noundef nonnull %i.ul, i64 noundef %i.uo) #26
  br label %_ZN5boost9container8devectorIivvED2Ev.exit303

_ZN5boost9container8devectorIivvED2Ev.exit303:    ; preds = %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
end_hunk_0
begin_hunk_1_@_ZN5boost9containergtERKNS0_8devectorIiSaIiEvEES5_:bb.a
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerleERKNS0_8devectorIiSaIiEvEES5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !598    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !597  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !596  ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %0, align 8, !tbaa !598    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !597
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !596
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %.not16.i.i.i = icmp samesign eq i64 %i.c, %i.e
  br i1 %.not16.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.preheader.i
  %.01318.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.01417.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.n, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.o = icmp eq ptr %.01318.i.i.i, %i.m
  br i1 %i.o, label %_ZN5boost9containerltERKNS0_8devectorIiSaIiEvEES5_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.p = load i32, ptr %.01318.i.i.i, align 4, !tbaa !259 ; 2 uses
  %i.q = load i32, ptr %.01417.i.i.i, align 4, !tbaa !259 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %_ZN5boost9containerltERKNS0_8devectorIiSaIiEvEES5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i32 %i.q, %i.p
  br i1 %i.s, label %_ZN5boost9containerltERKNS0_8devectorIiSaIiEvEES5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01318.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.f
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !97

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.a
  %.013.lcssa.i.i.i = phi ptr [ %i.j, %bb.a ], [ %i.u, %bb.d ]
  %i.v = icmp eq ptr %.013.lcssa.i.i.i, %i.m
  br label %_ZN5boost9containerltERKNS0_8devectorIiSaIiEvEES5_.exit

_ZN5boost9containerltERKNS0_8devectorIiSaIiEvEES5_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %._crit_edge.i.i.i
  %.0.i.i.i = phi i1 [ %i.v, %._crit_edge.i.i.i ], [ true, %.lr.ph.i.i.i ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.0.i.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containergeERKNS0_8devectorIiSaIiEvEES5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !598    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !597  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !596  ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !598    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !597
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !596
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %.not16.i.i.i = icmp samesign eq i64 %i.c, %i.e
  br i1 %.not16.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.preheader.i
  %.01318.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.01417.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.n, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.o = icmp eq ptr %.01318.i.i.i, %i.m
  br i1 %i.o, label %_ZN5boost9containerltERKNS0_8devectorIiSaIiEvEES5_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.p = load i32, ptr %.01318.i.i.i, align 4, !tbaa !259 ; 2 uses
  %i.q = load i32, ptr %.01417.i.i.i, align 4, !tbaa !259 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %_ZN5boost9containerltERKNS0_8devectorIiSaIiEvEES5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i32 %i.q, %i.p
  br i1 %i.s, label %_ZN5boost9containerltERKNS0_8devectorIiSaIiEvEES5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01318.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.f
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !97

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.a
  %.013.lcssa.i.i.i = phi ptr [ %i.j, %bb.a ], [ %i.u, %bb.d ]
  %i.v = icmp eq ptr %.013.lcssa.i.i.i, %i.m
  br label %_ZN5boost9containerltERKNS0_8devectorIiSaIiEvEES5_.exit

_ZN5boost9containerltERKNS0_8devectorIiSaIiEvEES5_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %._crit_edge.i.i.i
  %.0.i.i.i = phi i1 [ %i.v, %._crit_edge.i.i.i ], [ true, %.lr.ph.i.i.i ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx114listIiSaIiEEC2EmRKiRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !693
  store ptr %0, ptr %0, align 8, !tbaa !677
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !2954
  %.not3.i = icmp eq i64 %1, 0
  br i1 %.not3.i, label %_ZNSt7__cxx114listIiSaIiEE18_M_fill_initializeEmRKi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %.04.i = phi i64 [ %i.h, %.noexc ], [ %1, %bb.a ]
  %i.c = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i32, ptr %2, align 4, !tbaa !259
  store i32 %i.e, ptr %i.d, align 4, !tbaa !259
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  %i.f = load i64, ptr %i.b, align 8, !tbaa !2957
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.b, align 8, !tbaa !2957
  %i.h = add i64 %.04.i, -1                       ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %_ZNSt7__cxx114listIiSaIiEE18_M_fill_initializeEmRKi.exit, label %.lr.ph.i, !llvm.loop !2952

_ZNSt7__cxx114listIiSaIiEE18_M_fill_initializeEmRKi.exit: ; preds = %.noexc, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8, !tbaa !677    ; 2 uses
  %.not8.i.i = icmp eq ptr %i.j, %0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = load ptr, ptr %.09.i.i, align 8, !tbaa !677 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #30
  %.not.i.i = icmp eq ptr %i.k, %0
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !93

_ZNSt7__cxx1110_List_baseIiSaIiEED2Ev.exit:       ; preds = %.lr.ph.i.i, %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8devectorIiSaIiEvE6assignISt14_List_iteratorIiEEEvT_S7_PNS_11move_detail13disable_if_orIvNS8_14is_convertibleIS7_mEENS0_3dtl17is_input_iteratorIS7_Xsr21has_iterator_categoryIS7_EE5valueEEENS8_5bool_ILb0EEESG_E4typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %1, %2
  br i1 %.not4.i.i, label %_ZN5boost9container8devectorIiSaIiEvE16overwrite_bufferISt14_List_iteratorIiEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.a = add nuw nsw i64 %.06.i.i, 1
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %2
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !599
  %.not.not = icmp ugt i64 %i.d, %.06.i.i
  br i1 %.not.not, label %.lr.ph.i.i.i.i, label %.lr.ph.i.i.i8

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i ], [ 0, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit ] ; 2 uses
  %.sroa.02.05.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %1, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit ]
  %i.e = add nuw i64 %.06.i.i.i.i, 1              ; 6 uses
  %i.f = load ptr, ptr %.sroa.02.05.i.i.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %2
  br i1 %.not.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !98

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !598    ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i, %.lr.ph.i.i.i.prol
  %.018.i.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.i.prol ], [ %i.e, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ]
  %.01417.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.prol ], [ %i.g, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ] ; 3 uses
  %.sroa.0.016.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.prol ], [ %1, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ]
  %i.h = add nsw i64 %.018.i.i.i.prol, -1         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.prol) ]
  %i.j = load i32, ptr %i.i, align 4, !tbaa !259
  store i32 %i.j, ptr %.01417.i.i.i.prol, align 4, !tbaa !259
  %i.k = load ptr, ptr %.sroa.0.016.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !2958

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i
  %.018.i.i.i.unr = phi i64 [ %i.e, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ], [ %i.h, %.lr.ph.i.i.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.g, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ], [ %i.l, %.lr.ph.i.i.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %1, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ], [ %i.k, %.lr.ph.i.i.i.prol ]
  %i.m = icmp ult i64 %.06.i.i.i.i, 3
  br i1 %i.m, label %_ZN5boost9container8devectorIiSaIiEvE16overwrite_bufferISt14_List_iteratorIiEEEvT_S7_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !259
  store i32 %i.o, ptr %.01417.i.i.i, align 4, !tbaa !259
  %i.p = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !259
  store i32 %i.s, ptr %i.q, align 4, !tbaa !259
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !677  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !259
  store i32 %i.w, ptr %i.u, align 4, !tbaa !259
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !677  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 12
  %i.z = add nsw i64 %.018.i.i.i, -4              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !259
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !259
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !677
  %i.ad = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container8devectorIiSaIiEvE16overwrite_bufferISt14_List_iteratorIiEEEvT_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !2959

_ZN5boost9container8devectorIiSaIiEvE16overwrite_bufferISt14_List_iteratorIiEEEvT_S7_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.a
  %.0.lcssa.i.i8.i.i = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph.i.i.i ], [ %i.e, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !597
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.0.lcssa.i.i8.i.i, ptr %i.af, align 8, !tbaa !589
  br label %bb.f

.lr.ph.i.i.i8:                                    ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, %.lr.ph.i.i.i8
  %.06.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i8 ], [ 0, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit ] ; 3 uses
  %.sroa.02.05.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i8 ], [ %1, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit ]
  %i.ag = add nuw nsw i64 %.06.i.i.i, 1           ; 4 uses
  %i.ah = load ptr, ptr %.sroa.02.05.i.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.ah, %2
  br i1 %.not.i.i.i9, label %.split.i, label %.lr.ph.i.i.i8, !llvm.loop !98

.split.i:                                         ; preds = %.lr.ph.i.i.i8
  %i.ai = icmp samesign ugt i64 %.06.i.i.i, 2305843009213693950
  br i1 %i.ai, label %bb.b, label %.split17.i, !prof !267

bb.b:                                             ; preds = %.split.i
  %i.aj = icmp samesign ugt i64 %.06.i.i.i, 4611686018427387902
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

.split17.i:                                       ; preds = %.split.i
  %i.ak = shl nuw nsw i64 %i.ag, 2
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #29 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !692
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !692
  br label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %.lr.ph.i.i10, %.split17.i
  %.015.i.i = phi ptr [ %i.as, %.lr.ph.i.i10 ], [ %i.al, %.split17.i ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ar, %.lr.ph.i.i10 ], [ %1, %.split17.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !259
  store i32 %i.aq, ptr %.015.i.i, align 4, !tbaa !259
  %i.ar = load ptr, ptr %.sroa.010.014.i.i, align 8, !tbaa !677 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 4
  %.not.i.i11 = icmp eq ptr %i.ar, %2
  br i1 %.not.i.i11, label %_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i10, !llvm.loop !99

_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i.i10
  %i.at = load ptr, ptr %0, align 8, !tbaa !598   ; 2 uses
  %.not.i19.i = icmp eq ptr %i.at, null
  br i1 %.not.i19.i, label %_ZN5boost9container8devectorIiSaIiEvE23allocate_and_copy_rangeISt14_List_iteratorIiEEEvT_S7_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %i.au = load i64, ptr %i.c, align 8, !tbaa !599
  %i.av = shl i64 %i.au, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.av) #30
  br label %_ZN5boost9container8devectorIiSaIiEvE23allocate_and_copy_rangeISt14_List_iteratorIiEEEvT_S7_.exit

_ZN5boost9container8devectorIiSaIiEvE23allocate_and_copy_rangeISt14_List_iteratorIiEEEvT_S7_.exit: ; preds = %_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.c, align 8, !tbaa !590
  store ptr %i.al, ptr %0, align 8, !tbaa !598
  store i64 0, ptr %i.ax, align 8, !tbaa !597
  store i64 %i.ag, ptr %i.aw, align 8, !tbaa !589
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container8devectorIiSaIiEvE23allocate_and_copy_rangeISt14_List_iteratorIiEEEvT_S7_.exit, %_ZN5boost9container8devectorIiSaIiEvE16overwrite_bufferISt14_List_iteratorIiEEEvT_S7_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8devectorIiSaIiEvE6assignINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_14is_convertibleISA_mEENS0_3dtl21is_not_input_iteratorISA_EENSB_5bool_ILb0EEESJ_E4typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !598    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = icmp eq ptr %1, %2
  %i.d = load i64, ptr %i.b, align 8
  %.not43.i = icmp eq i64 %i.d, 0
  %or.cond44.i = select i1 %i.c, i1 true, i1 %.not43.i
  br i1 %or.cond44.i, label %.critedge.preheader.i, label %.lr.ph.i

.critedge.preheader.i:                            ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph.i ] ; 3 uses
  %.sroa.034.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.i, %.lr.ph.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not3948.i = icmp eq ptr %.sroa.034.0.lcssa.i, %2
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %.not1049.i = icmp eq ptr %.0.lcssa.i, %i.g
  %or.cond4250.i = select i1 %.not3948.i, i1 true, i1 %.not1049.i
  br i1 %or.cond4250.i, label %.critedge2.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.034.046.i = phi ptr [ %i.i, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.045.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.045.i, i64 4 ; 3 uses
  %i.i = load ptr, ptr %.sroa.034.046.i, align 8, !tbaa !677 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.046.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.045.i) ]
  %i.k = load i32, ptr %i.j, align 8, !tbaa !259
  store i32 %i.k, ptr %.045.i, align 4, !tbaa !259
  %i.l = icmp eq ptr %i.i, %2
  %i.m = load i64, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m
  %.not.i = icmp eq ptr %i.h, %i.n
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %.critedge.preheader.i, label %.lr.ph.i, !llvm.loop !2960

.critedge.i:                                      ; preds = %.critedge.preheader.i, %.critedge.i
  %.sroa.034.152.i = phi ptr [ %i.o, %.critedge.i ], [ %.sroa.034.0.lcssa.i, %.critedge.preheader.i ] ; 2 uses
  %.151.i = phi ptr [ %i.r, %.critedge.i ], [ %.0.lcssa.i, %.critedge.preheader.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.034.152.i, align 8, !tbaa !677 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.034.152.i, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !259
  %i.r = getelementptr inbounds nuw i8, ptr %.151.i, i64 4 ; 3 uses
  store i32 %i.q, ptr %.151.i, align 4, !tbaa !259
  %.not39.i = icmp eq ptr %i.o, %2
  %i.s = load i64, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s
  %.not10.i = icmp eq ptr %i.r, %i.t
  %or.cond42.i = select i1 %.not39.i, i1 true, i1 %.not10.i
  br i1 %or.cond42.i, label %.critedge2.i, label %.critedge.i, !llvm.loop !2961

.critedge2.i:                                     ; preds = %.critedge.i, %.critedge.preheader.i
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.critedge.preheader.i ], [ %i.r, %.critedge.i ] ; 3 uses
  %.sroa.034.1.lcssa.i = phi ptr [ %.sroa.034.0.lcssa.i, %.critedge.preheader.i ], [ %i.o, %.critedge.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !599
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = icmp ne ptr %.sroa.034.1.lcssa.i, %2
  %i.y = icmp ne ptr %.1.lcssa.i, %i.w
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph58.i, label %_ZN5boost9container8devectorIiSaIiEvE21overwrite_buffer_implINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEET_SA_SA_NS_11move_detail5bool_ILb0EEE.exit

.lr.ph58.i:                                       ; preds = %.critedge2.i, %.lr.ph58.i
  %.sroa.034.257.i = phi ptr [ %i.ab, %.lr.ph58.i ], [ %.sroa.034.1.lcssa.i, %.critedge2.i ] ; 2 uses
  %.256.i = phi ptr [ %i.aa, %.lr.ph58.i ], [ %.1.lcssa.i, %.critedge2.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.256.i, i64 4 ; 3 uses
  %i.ab = load ptr, ptr %.sroa.034.257.i, align 8, !tbaa !677 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.034.257.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.256.i) ]
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !259
  store i32 %i.ad, ptr %.256.i, align 4, !tbaa !259
  %i.ae = icmp ne ptr %i.ab, %2
  %i.af = icmp ne ptr %i.aa, %i.w
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %.lr.ph58.i, label %_ZN5boost9container8devectorIiSaIiEvE21overwrite_buffer_implINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEET_SA_SA_NS_11move_detail5bool_ILb0EEE.exit, !llvm.loop !2962

_ZN5boost9container8devectorIiSaIiEvE21overwrite_buffer_implINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEET_SA_SA_NS_11move_detail5bool_ILb0EEE.exit: ; preds = %.lr.ph58.i, %.critedge2.i
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.critedge2.i ], [ %i.aa, %.lr.ph58.i ]
  %.sroa.034.2.lcssa.i = phi ptr [ %.sroa.034.1.lcssa.i, %.critedge2.i ], [ %i.ab, %.lr.ph58.i ] ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !597
  %i.ah = ptrtoint ptr %.2.lcssa.i to i64
  %i.ai = ptrtoint ptr %i.a to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  store i64 %i.ak, ptr %i.e, align 8, !tbaa !589
  %.not11 = icmp eq ptr %.sroa.034.2.lcssa.i, %2
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9container8devectorIiSaIiEvE21overwrite_buffer_implINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEET_SA_SA_NS_11move_detail5bool_ILb0EEE.exit, %_ZN5boost9container8devectorIiSaIiEvE12emplace_backIJRiEEES5_DpOT_.exit
  %.sroa.05.012 = phi ptr [ %i.al, %_ZN5boost9container8devectorIiSaIiEvE12emplace_backIJRiEEES5_DpOT_.exit ], [ %.sroa.034.2.lcssa.i, %_ZN5boost9container8devectorIiSaIiEvE21overwrite_buffer_implINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEET_SA_SA_NS_11move_detail5bool_ILb0EEE.exit ] ; 2 uses
  %i.al = load ptr, ptr %.sroa.05.012, align 8, !tbaa !677 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.05.012, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.u, align 8, !tbaa !599 ; 2 uses
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !596 ; 3 uses
  %.not.i3 = icmp eq i64 %i.an, %i.ao
  %i.ap = load ptr, ptr %0, align 8, !tbaa !598   ; 2 uses
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i32, ptr %i.am, align 8, !tbaa !259
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !259
  %i.as = add i64 %i.ao, 1
  store i64 %i.as, ptr %i.e, align 8, !tbaa !596
  br label %_ZN5boost9container8devectorIiSaIiEvE12emplace_backIJRiEEES5_DpOT_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  %i.au = tail call noundef ptr @_ZN5boost9container8devectorIiSaIiEvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS2_JRiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.at, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.am) ; 0 uses
  br label %_ZN5boost9container8devectorIiSaIiEvE12emplace_backIJRiEEES5_DpOT_.exit

_ZN5boost9container8devectorIiSaIiEvE12emplace_backIJRiEEES5_DpOT_.exit: ; preds = %bb.b, %bb.c
  %.not = icmp eq ptr %i.al, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2963
end_hunk_1
begin_hunk_2_@_ZN5boost9container8devectorIiSaIiEvE12insert_rangeINS0_17constant_iteratorIiEEEEPiPKiT_SA_:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat, ptr %i.bn, align 4, !tbaa !259
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !3362

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.012.i.i.i.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i ], [ %i.bj, %middle.block ]
  %.0511.i.i.i.ph = phi ptr [ %1, %.lr.ph.preheader.i.i.i ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.0511.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %.0511.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bp = add i64 %.012.i.i.i, -1                 ; 2 uses
  store i32 %.pre.i.i.i, ptr %.0511.i.i.i, align 4, !tbaa !259
  %i.bq = getelementptr inbounds nuw i8, ptr %.0511.i.i.i, i64 4
  %.not.i.i35.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i35.i, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i.i, !llvm.loop !3363

bb.o:                                             ; preds = %bb.k
  %.not103 = icmp eq ptr %1, null
  br i1 %.not103, label %.lr.ph.preheader.i.i42.i, label %bb.p, !prof !267

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 4 %1, i64 %i.az, i1 false)
  br label %.lr.ph.preheader.i.i42.i

.lr.ph.preheader.i.i42.i:                         ; preds = %bb.o, %bb.p
  %.pre.i.i43.i = load i32, ptr %2, align 4, !tbaa !259 ; 2 uses
  %min.iters.check128 = icmp ult i64 %i.ba, 8
  br i1 %min.iters.check128, label %.lr.ph.i.i44.i.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %.lr.ph.preheader.i.i42.i
  %n.vec130 = and i64 %i.ba, -8                   ; 3 uses
  %i.bs = and i64 %i.ba, 7
  %i.bt = shl nsw i64 %n.vec130, 2
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %.pre.i.i43.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph129
  %index134 = phi i64 [ 0, %vector.ph129 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.bv = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x i32> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat132, ptr %i.bw, align 4, !tbaa !259
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.bx, label %middle.block137, label %vector.body133, !llvm.loop !3364

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ba, %n.vec130
  br i1 %cmp.n138, label %_ZN5boost9container3dtl18insert_range_proxyISaIiENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS3_T_m.exit50.i, label %.lr.ph.i.i44.i.preheader

.lr.ph.i.i44.i.preheader:                         ; preds = %.lr.ph.preheader.i.i42.i, %middle.block137
  %.012.i.i45.i.ph = phi i64 [ %i.ba, %.lr.ph.preheader.i.i42.i ], [ %i.bs, %middle.block137 ]
  %.0511.i.i46.i.ph = phi ptr [ %1, %.lr.ph.preheader.i.i42.i ], [ %i.bu, %middle.block137 ]
  br label %.lr.ph.i.i44.i

.lr.ph.i.i44.i:                                   ; preds = %.lr.ph.i.i44.i.preheader, %.lr.ph.i.i44.i
  %.012.i.i45.i = phi i64 [ %i.by, %.lr.ph.i.i44.i ], [ %.012.i.i45.i.ph, %.lr.ph.i.i44.i.preheader ]
  %.0511.i.i46.i = phi ptr [ %i.bz, %.lr.ph.i.i44.i ], [ %.0511.i.i46.i.ph, %.lr.ph.i.i44.i.preheader ] ; 2 uses
  %i.by = add i64 %.012.i.i45.i, -1               ; 2 uses
  store i32 %.pre.i.i43.i, ptr %.0511.i.i46.i, align 4, !tbaa !259
  %i.bz = getelementptr inbounds nuw i8, ptr %.0511.i.i46.i, i64 4
  %.not.i.i47.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i47.i, label %_ZN5boost9container3dtl18insert_range_proxyISaIiENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS3_T_m.exit50.i, label %.lr.ph.i.i44.i, !llvm.loop !3365

_ZN5boost9container3dtl18insert_range_proxyISaIiENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS3_T_m.exit50.i: ; preds = %.lr.ph.i.i44.i, %middle.block137
  %i.ca = sub i64 %i.a, %i.ba                     ; 5 uses
  %.pre.i.i55.i = load i32, ptr %2, align 4, !tbaa !259 ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check142, label %.lr.ph.i.i56.i.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaIiENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS3_T_m.exit50.i
  %n.vec144 = and i64 %i.ca, -8                   ; 3 uses
  %i.cb = and i64 %i.ca, 7
  %i.cc = shl i64 %n.vec144, 2
  %i.cd = getelementptr i8, ptr %i.l, i64 %i.cc
  %broadcast.splatinsert145 = insertelement <4 x i32> poison, i32 %.pre.i.i55.i, i64 0
  %broadcast.splat146 = shufflevector <4 x i32> %broadcast.splatinsert145, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph143
  %index148 = phi i64 [ 0, %vector.ph143 ], [ %index.next157, %vector.body147 ] ; 2 uses
  %i.ce = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.l, i64 %i.ce ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep149) ]
  %i.cf = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat146, ptr %i.cf, align 4, !tbaa !259
  %index.next157 = add nuw i64 %index148, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next157, %n.vec144
  br i1 %i.cg, label %middle.block158, label %vector.body147, !llvm.loop !3366

middle.block158:                                  ; preds = %vector.body147
  %cmp.n159 = icmp eq i64 %i.ca, %n.vec144
  br i1 %cmp.n159, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i56.i.preheader

.lr.ph.i.i56.i.preheader:                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaIiENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS3_T_m.exit50.i, %middle.block158
  %.022.i.i.i.ph = phi i64 [ %i.ca, %_ZN5boost9container3dtl18insert_range_proxyISaIiENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS3_T_m.exit50.i ], [ %i.cb, %middle.block158 ]
  %.01821.i.i.i.ph = phi ptr [ %i.l, %_ZN5boost9container3dtl18insert_range_proxyISaIiENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS3_T_m.exit50.i ], [ %i.cd, %middle.block158 ]
  br label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i
  %.022.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i56.i ], [ %.022.i.i.i.ph, %.lr.ph.i.i56.i.preheader ]
  %.01821.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i56.i ], [ %.01821.i.i.i.ph, %.lr.ph.i.i56.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i) ]
  store i32 %.pre.i.i55.i, ptr %.01821.i.i.i, align 4, !tbaa !259
  %i.ch = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 4
  %i.ci = add i64 %.022.i.i.i, -1                 ; 2 uses
  %.not.i.i57.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i57.i, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i56.i, !llvm.loop !3367

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i56.i, %middle.block, %middle.block158
  %i.cj = load i64, ptr %i.j, align 8, !tbaa !596
  %i.ck = add i64 %i.cj, %i.a
  store i64 %i.ck, ptr %i.j, align 8, !tbaa !589
  br label %bb.w

bb.q:                                             ; preds = %bb.i
  %.not61 = icmp ult i64 %i.aa, %i.a
  br i1 %.not61, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i76 = icmp ult i64 %i.as, %i.a
  %i.cl = sub i64 0, %i.a                         ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.cl ; 4 uses
  %.not101 = icmp eq ptr %i.b, null               ; 2 uses
  br i1 %.not.i76, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not101, label %.lr.ph.preheader.i.i.i79, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i: ; preds = %bb.s
  %i.cn = shl nuw nsw i64 %i.a, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull align 1 %i.ab, i64 %i.cn, i1 false)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.a ; 3 uses
  %.not100 = icmp eq ptr %i.co, %1
  br i1 %.not100, label %.lr.ph.preheader.i.i.i79, label %bb.t, !prof !585

bb.t:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.ap, %i.cp                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 4 %i.co, i64 %i.cq, i1 false)
  %i.cr = getelementptr inbounds i8, ptr %i.ab, i64 %i.cq
  br label %.lr.ph.preheader.i.i.i79

.lr.ph.preheader.i.i.i79:                         ; preds = %bb.s, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i, %bb.t
  %.0.i.i36.i = phi ptr [ %i.cr, %bb.t ], [ %i.ab, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i ], [ null, %bb.s ] ; 3 uses
  %.pre.i.i.i80 = load i32, ptr %2, align 4, !tbaa !259 ; 2 uses
  %min.iters.check163 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check163, label %.lr.ph.i.i.i81.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph.preheader.i.i.i79
  %n.vec165 = and i64 %i.a, -8                    ; 3 uses
  %i.cs = and i64 %i.a, 7
  %i.ct = shl i64 %n.vec165, 2
  %i.cu = getelementptr i8, ptr %.0.i.i36.i, i64 %i.ct
  %broadcast.splatinsert166 = insertelement <4 x i32> poison, i32 %.pre.i.i.i80, i64 0
  %broadcast.splat167 = shufflevector <4 x i32> %broadcast.splatinsert166, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph164
  %index169 = phi i64 [ 0, %vector.ph164 ], [ %index.next171, %vector.body168 ] ; 2 uses
  %i.cv = shl i64 %index169, 2
  %next.gep170 = getelementptr i8, ptr %.0.i.i36.i, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep170, i64 16
  store <4 x i32> %broadcast.splat167, ptr %next.gep170, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat167, ptr %i.cw, align 4, !tbaa !259
  %index.next171 = add nuw i64 %index169, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.cx, label %middle.block172, label %vector.body168, !llvm.loop !3368

middle.block172:                                  ; preds = %vector.body168
  %cmp.n173 = icmp eq i64 %i.a, %n.vec165
  br i1 %cmp.n173, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i.i81.preheader

.lr.ph.i.i.i81.preheader:                         ; preds = %.lr.ph.preheader.i.i.i79, %middle.block172
  %.012.i.i.i82.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i79 ], [ %i.cs, %middle.block172 ]
  %.0511.i.i.i83.ph = phi ptr [ %.0.i.i36.i, %.lr.ph.preheader.i.i.i79 ], [ %i.cu, %middle.block172 ]
  br label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %.lr.ph.i.i.i81.preheader, %.lr.ph.i.i.i81
  %.012.i.i.i82 = phi i64 [ %i.cy, %.lr.ph.i.i.i81 ], [ %.012.i.i.i82.ph, %.lr.ph.i.i.i81.preheader ]
  %.0511.i.i.i83 = phi ptr [ %i.cz, %.lr.ph.i.i.i81 ], [ %.0511.i.i.i83.ph, %.lr.ph.i.i.i81.preheader ] ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i82, -1           ; 2 uses
  store i32 %.pre.i.i.i80, ptr %.0511.i.i.i83, align 4, !tbaa !259
  %i.cz = getelementptr inbounds nuw i8, ptr %.0511.i.i.i83, i64 4
  %.not.i.i37.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i37.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i.i81, !llvm.loop !3369

bb.u:                                             ; preds = %bb.r
  br i1 %.not101, label %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i84, label %bb.v, !prof !267

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull align 4 %i.ab, i64 %i.ar, i1 false)
  %i.da = getelementptr inbounds i8, ptr %i.cm, i64 %i.ar
  br label %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i84

_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i84: ; preds = %bb.v, %bb.u
  %.0.i.i40.i = phi ptr [ %i.da, %bb.v ], [ %i.cm, %bb.u ] ; 3 uses
  %i.db = sub i64 %i.a, %i.as                     ; 5 uses
  %.pre.i.i45.i = load i32, ptr %2, align 4, !tbaa !259 ; 2 uses
  %min.iters.check177 = icmp ult i64 %i.db, 8
  br i1 %min.iters.check177, label %.lr.ph.i.i46.i.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i84
  %n.vec179 = and i64 %i.db, -8                   ; 3 uses
  %i.dc = and i64 %i.db, 7
  %i.dd = shl i64 %n.vec179, 2
  %i.de = getelementptr i8, ptr %.0.i.i40.i, i64 %i.dd
  %broadcast.splatinsert180 = insertelement <4 x i32> poison, i32 %.pre.i.i45.i, i64 0
  %broadcast.splat181 = shufflevector <4 x i32> %broadcast.splatinsert180, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph178
  %index183 = phi i64 [ 0, %vector.ph178 ], [ %index.next192, %vector.body182 ] ; 2 uses
  %i.df = shl i64 %index183, 2
  %next.gep184 = getelementptr i8, ptr %.0.i.i40.i, i64 %i.df ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep184) ]
  %i.dg = getelementptr i8, ptr %next.gep184, i64 16
  store <4 x i32> %broadcast.splat181, ptr %next.gep184, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat181, ptr %i.dg, align 4, !tbaa !259
  %index.next192 = add nuw i64 %index183, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next192, %n.vec179
  br i1 %i.dh, label %middle.block193, label %vector.body182, !llvm.loop !3370

middle.block193:                                  ; preds = %vector.body182
  %cmp.n194 = icmp eq i64 %i.db, %n.vec179
  br i1 %cmp.n194, label %.lr.ph.preheader.i.i54.i, label %.lr.ph.i.i46.i.preheader

.lr.ph.i.i46.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i84, %middle.block193
  %.022.i.i.i85.ph = phi i64 [ %i.db, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i84 ], [ %i.dc, %middle.block193 ]
  %.01821.i.i.i86.ph = phi ptr [ %.0.i.i40.i, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i84 ], [ %i.de, %middle.block193 ]
  br label %.lr.ph.i.i46.i

.lr.ph.i.i46.i:                                   ; preds = %.lr.ph.i.i46.i.preheader, %.lr.ph.i.i46.i
  %.022.i.i.i85 = phi i64 [ %i.dj, %.lr.ph.i.i46.i ], [ %.022.i.i.i85.ph, %.lr.ph.i.i46.i.preheader ]
  %.01821.i.i.i86 = phi ptr [ %i.di, %.lr.ph.i.i46.i ], [ %.01821.i.i.i86.ph, %.lr.ph.i.i46.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i86) ]
  store i32 %.pre.i.i45.i, ptr %.01821.i.i.i86, align 4, !tbaa !259
  %i.di = getelementptr inbounds nuw i8, ptr %.01821.i.i.i86, i64 4
  %i.dj = add i64 %.022.i.i.i85, -1               ; 2 uses
  %.not.i.i47.i87 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i47.i87, label %.lr.ph.preheader.i.i54.i, label %.lr.ph.i.i46.i, !llvm.loop !3371

.lr.ph.preheader.i.i54.i:                         ; preds = %.lr.ph.i.i46.i, %middle.block193
  %.pre.i.i55.i88 = load i32, ptr %2, align 4, !tbaa !259 ; 2 uses
  %min.iters.check198 = icmp ult i64 %i.as, 8
  br i1 %min.iters.check198, label %.lr.ph.i.i56.i89.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.preheader.i.i54.i
  %n.vec200 = and i64 %i.as, -8                   ; 3 uses
  %i.dk = and i64 %i.as, 7
  %i.dl = shl nsw i64 %n.vec200, 2
  %i.dm = getelementptr i8, ptr %i.ab, i64 %i.dl
  %broadcast.splatinsert201 = insertelement <4 x i32> poison, i32 %.pre.i.i55.i88, i64 0
  %broadcast.splat202 = shufflevector <4 x i32> %broadcast.splatinsert201, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph199
  %index204 = phi i64 [ 0, %vector.ph199 ], [ %index.next206, %vector.body203 ] ; 2 uses
  %i.dn = shl i64 %index204, 2
  %next.gep205 = getelementptr i8, ptr %i.ab, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep205, i64 16
  store <4 x i32> %broadcast.splat202, ptr %next.gep205, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat202, ptr %i.do, align 4, !tbaa !259
  %index.next206 = add nuw i64 %index204, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next206, %n.vec200
  br i1 %i.dp, label %middle.block207, label %vector.body203, !llvm.loop !3372

middle.block207:                                  ; preds = %vector.body203
  %cmp.n208 = icmp eq i64 %i.as, %n.vec200
  br i1 %cmp.n208, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i56.i89.preheader

.lr.ph.i.i56.i89.preheader:                       ; preds = %.lr.ph.preheader.i.i54.i, %middle.block207
  %.012.i.i57.i.ph = phi i64 [ %i.as, %.lr.ph.preheader.i.i54.i ], [ %i.dk, %middle.block207 ]
  %.0511.i.i58.i.ph = phi ptr [ %i.ab, %.lr.ph.preheader.i.i54.i ], [ %i.dm, %middle.block207 ]
  br label %.lr.ph.i.i56.i89

.lr.ph.i.i56.i89:                                 ; preds = %.lr.ph.i.i56.i89.preheader, %.lr.ph.i.i56.i89
  %.012.i.i57.i = phi i64 [ %i.dq, %.lr.ph.i.i56.i89 ], [ %.012.i.i57.i.ph, %.lr.ph.i.i56.i89.preheader ]
  %.0511.i.i58.i = phi ptr [ %i.dr, %.lr.ph.i.i56.i89 ], [ %.0511.i.i58.i.ph, %.lr.ph.i.i56.i89.preheader ] ; 2 uses
  %i.dq = add i64 %.012.i.i57.i, -1               ; 2 uses
  store i32 %.pre.i.i55.i88, ptr %.0511.i.i58.i, align 4, !tbaa !259
  %i.dr = getelementptr inbounds nuw i8, ptr %.0511.i.i58.i, i64 4
  %.not.i.i59.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i59.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i56.i89, !llvm.loop !3373

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit: ; preds = %.lr.ph.i.i.i81, %.lr.ph.i.i56.i89, %middle.block172, %middle.block207
  %i.ds = load i64, ptr %i.z, align 8, !tbaa !597
  %i.dt = sub i64 %i.ds, %i.a
  store i64 %i.dt, ptr %i.z, align 8, !tbaa !588
  %i.du = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cl
  br label %bb.w

.thread:                                          ; preds = %bb.j, %bb.q, %bb.g, %bb.d
  %i.dv = tail call noundef ptr @_ZN5boost9container8devectorIiSaIiEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2, i64 %3)
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocISaIiENS0_17constant_iteratorIiEEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit73, %_ZN5boost9container24uninitialized_copy_allocISaIiENS0_17constant_iteratorIiEEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, %bb.b
  %.1 = phi ptr [ %i.i, %bb.b ], [ %i.l, %_ZN5boost9container24uninitialized_copy_allocISaIiENS0_17constant_iteratorIiEEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.dv, %.thread ], [ %i.ao, %_ZN5boost9container24uninitialized_copy_allocISaIiENS0_17constant_iteratorIiEEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit73 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit ], [ %i.du, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorIiSaIiEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.279", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !599  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !596  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !597  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !598    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not52 = icmp ult i64 %i.k, %i.l
  br i1 %.not52, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %.sroa.261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %.sroa.261.0..sroa_idx, align 8
  %i.r = icmp samesign ult i64 %i.p, %i.g
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPiNS0_3dtl18insert_range_proxyISaIiENS0_17constant_iteratorIiEEEES5_EEvT_mS9_S9_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.279") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyISaIiENS0_17constant_iteratorIiEEEES5_EEvT_mS9_S9_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaIiEPiNS0_3dtl18insert_range_proxyIS2_NS0_17constant_iteratorIiEEEEEEvT0_mS9_S9_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.279") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyISaIiENS0_17constant_iteratorIiEEEES5_EEvT_mS9_S9_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyISaIiENS0_17constant_iteratorIiEEEES5_EEvT_mS9_S9_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.p, ptr %i.f, align 8, !tbaa !588
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !589
  %.pre68 = load ptr, ptr %0, align 8, !tbaa !598
  br label %bb.r

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 4611686018427387903, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 4611686018427387903)
  %i.ac = select i1 %i.z, i64 4611686018427387903, i64 %i.ab
  br label %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %i.ac, %bb.j ]
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIiSaIiEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi:bb.a
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #29 ; 5 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.d ; 2 uses
  %i.ak = load i32, ptr %2, align 4, !tbaa !259
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !259
  %i.al = icmp sgt i64 %i.d, 0
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.an = sub i64 %i.z, %i.b                      ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.y, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %.not.i17.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !350
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ar) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i, %bb.l
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  store ptr %i.ai, ptr %0, align 8, !tbaa !349
  store ptr %i.as, ptr %i.e, align 8, !tbaa !600
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.at, ptr %i.g, align 8, !tbaa !350
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit
  %i.au = phi ptr [ %i.a, %bb.c ], [ %.pre, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit ], [ %i.ai, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.d
  ret ptr %i.av
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorIiSaIiEvE12insert_rangeISt14_List_iteratorIiEEEPiPKiT_SA_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 14 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add nuw i64 %.06.i.i, 1                  ; 18 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !598
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !597
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.r

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !598    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !596  ; 5 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m ; 9 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !599
  %i.r = sub i64 %i.q, %i.m
  %.not49.not = icmp ugt i64 %i.r, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.u, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !259
  store i32 %i.t, ptr %.015.i, align 4, !tbaa !259
  %i.u = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !677 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.u, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, label %.lr.ph.i, !llvm.loop !99

_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit: ; preds = %.lr.ph.i
  %i.w = add i64 %i.m, %i.a
  store i64 %i.w, ptr %i.l, align 8, !tbaa !589
  br label %bb.r

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !597  ; 5 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.y ; 12 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.y, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = xor i64 %.06.i.i, -1
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.ag, %.lr.ph.i51 ], [ %i.ac, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.af, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !259
  store i32 %i.ae, ptr %.015.i52, align 4, !tbaa !259
  %i.af = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !677 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.af, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit56, label %.lr.ph.i51, !llvm.loop !99

_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit56: ; preds = %.lr.ph.i51
  %i.ah = sub nuw i64 %i.y, %i.a                  ; 2 uses
  store i64 %i.ah, ptr %i.x, align 8, !tbaa !588
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ah
  br label %bb.r

bb.g:                                             ; preds = %bb.d
  %i.aj = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ak = ptrtoint ptr %i.z to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = ashr exact i64 %i.al, 2                 ; 8 uses
  %i.an = sub i64 %i.m, %i.y
  %i.ao = lshr i64 %i.an, 1
  %.not = icmp ult i64 %i.am, %i.ao
  br i1 %.not, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !599
  %i.ar = sub i64 %i.aq, %i.m
  %.not47.not = icmp ugt i64 %i.ar, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.as = ptrtoint ptr %i.n to i64
  %i.at = sub i64 %i.as, %i.aj                    ; 2 uses
  %i.au = ashr exact i64 %i.at, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.au, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.av = xor i64 %.06.i.i, -1
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.av ; 3 uses
  %.not80 = icmp eq ptr %i.k, null
  br i1 %.not80, label %_ZN5boost9container26uninitialized_move_alloc_nISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_mS7_.exit.i, label %bb.k, !prof !370

bb.k:                                             ; preds = %bb.j
  %i.ax = shl i64 %i.a, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.aw, i64 %i.ax, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_mS7_.exit.i

_ZN5boost9container26uninitialized_move_alloc_nISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_mS7_.exit.i: ; preds = %bb.k, %bb.j
  %.not.i.i58 = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i58, label %.lr.ph.i.i.i.preheader, label %bb.l, !prof !267

bb.l:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_mS7_.exit.i
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ay, %i.aj                    ; 2 uses
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bc, ptr align 4 %1, i64 %i.az, i1 false)
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.l, %_ZN5boost9container26uninitialized_move_alloc_nISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_mS7_.exit.i
  %xtraiter116 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter118 = phi i64 [ %prol.iter118.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bd = add nsw i64 %.09.i.i.i.prol, -1         ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !259
  store i32 %i.bf, ptr %.048.i.i.i.prol, align 4, !tbaa !259
  %i.bg = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3422

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.prol ]
  %i.bi = icmp ult i64 %.06.i.i, 3
  br i1 %i.bi, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !259
  store i32 %i.bk, ptr %.048.i.i.i, align 4, !tbaa !259
  %i.bl = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !259
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !259
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !677 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !259
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !259
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !677 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.bv = add nsw i64 %.09.i.i.i, -4              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !259
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !259
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !677
  %i.bz = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i35.i.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i35.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i.i, !llvm.loop !107

bb.m:                                             ; preds = %bb.i
  %.not81 = icmp eq ptr %1, null
  br i1 %.not81, label %.lr.ph.i.i40.i.preheader, label %bb.n, !prof !267

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 4 %1, i64 %i.at, i1 false)
  br label %.lr.ph.i.i40.i.preheader

.lr.ph.i.i40.i.preheader:                         ; preds = %bb.n, %bb.m
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i40.i.prol.loopexit, label %.lr.ph.i.i40.i.prol

.lr.ph.i.i40.i.prol:                              ; preds = %.lr.ph.i.i40.i.preheader, %.lr.ph.i.i40.i.prol
  %.09.i.i41.i.prol = phi i64 [ %i.cb, %.lr.ph.i.i40.i.prol ], [ %i.au, %.lr.ph.i.i40.i.preheader ]
  %.048.i.i42.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i40.i.prol ], [ %1, %.lr.ph.i.i40.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i43.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i40.i.prol ], [ %2, %.lr.ph.i.i40.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i40.i.prol ], [ 0, %.lr.ph.i.i40.i.preheader ]
  %i.cb = add i64 %.09.i.i41.i.prol, -1           ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i.prol, i64 16
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !259
  store i32 %i.cd, ptr %.048.i.i42.i.prol, align 4, !tbaa !259
  %i.ce = load ptr, ptr %.sroa.0.07.i.i43.i.prol, align 8, !tbaa !677 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.048.i.i42.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i40.i.prol.loopexit, label %.lr.ph.i.i40.i.prol, !llvm.loop !3423

.lr.ph.i.i40.i.prol.loopexit:                     ; preds = %.lr.ph.i.i40.i.prol, %.lr.ph.i.i40.i.preheader
  %.lcssa111.unr = phi ptr [ poison, %.lr.ph.i.i40.i.preheader ], [ %i.ce, %.lr.ph.i.i40.i.prol ]
  %.09.i.i41.i.unr = phi i64 [ %i.au, %.lr.ph.i.i40.i.preheader ], [ %i.cb, %.lr.ph.i.i40.i.prol ]
  %.048.i.i42.i.unr = phi ptr [ %1, %.lr.ph.i.i40.i.preheader ], [ %i.cf, %.lr.ph.i.i40.i.prol ]
  %.sroa.0.07.i.i43.i.unr = phi ptr [ %2, %.lr.ph.i.i40.i.preheader ], [ %i.ce, %.lr.ph.i.i40.i.prol ]
  %i.cg = icmp ult i64 %i.au, 4
  br i1 %i.cg, label %_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i, label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i.prol.loopexit, %.lr.ph.i.i40.i
  %.09.i.i41.i = phi i64 [ %i.ct, %.lr.ph.i.i40.i ], [ %.09.i.i41.i.unr, %.lr.ph.i.i40.i.prol.loopexit ]
  %.048.i.i42.i = phi ptr [ %i.cx, %.lr.ph.i.i40.i ], [ %.048.i.i42.i.unr, %.lr.ph.i.i40.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i43.i = phi ptr [ %i.cw, %.lr.ph.i.i40.i ], [ %.sroa.0.07.i.i43.i.unr, %.lr.ph.i.i40.i.prol.loopexit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i, i64 16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !259
  store i32 %i.ci, ptr %.048.i.i42.i, align 4, !tbaa !259
  %i.cj = load ptr, ptr %.sroa.0.07.i.i43.i, align 8, !tbaa !677 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !259
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !259
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !677 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !259
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !259
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !677 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 12
  %i.ct = add i64 %.09.i.i41.i, -4                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !259
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !259
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !677 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 16
  %.not.i.i44.i.3 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i44.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i, label %.lr.ph.i.i40.i, !llvm.loop !107

_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i: ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.i40.i.prol.loopexit
  %.lcssa111 = phi ptr [ %.lcssa111.unr, %.lr.ph.i.i40.i.prol.loopexit ], [ %i.cw, %.lr.ph.i.i40.i ] ; 2 uses
  %i.cy = sub i64 %i.a, %i.au                     ; 3 uses
  %i.cz = sub i64 %.06.i.i, %i.au
  %xtraiter113 = and i64 %i.cy, 3                 ; 2 uses
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.lr.ph.i.i48.i.prol.loopexit, label %.lr.ph.i.i48.i.prol

.lr.ph.i.i48.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i, %.lr.ph.i.i48.i.prol
  %.018.i.i.i.prol = phi i64 [ %i.de, %.lr.ph.i.i48.i.prol ], [ %i.cy, %_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i ]
  %.01417.i.i.i.prol = phi ptr [ %i.dd, %.lr.ph.i.i48.i.prol ], [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i ] ; 3 uses
  %.sroa.0.016.i.i.i.prol = phi ptr [ %i.dc, %.lr.ph.i.i48.i.prol ], [ %.lcssa111, %_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i ] ; 2 uses
  %prol.iter115 = phi i64 [ %prol.iter115.next, %.lr.ph.i.i48.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.prol) ]
  %i.db = load i32, ptr %i.da, align 4, !tbaa !259
  store i32 %i.db, ptr %.01417.i.i.i.prol, align 4, !tbaa !259
  %i.dc = load ptr, ptr %.sroa.0.016.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.prol, i64 4 ; 2 uses
  %i.de = add nsw i64 %.018.i.i.i.prol, -1        ; 2 uses
  %prol.iter115.next = add i64 %prol.iter115, 1   ; 2 uses
  %prol.iter115.cmp.not = icmp eq i64 %prol.iter115.next, %xtraiter113
  br i1 %prol.iter115.cmp.not, label %.lr.ph.i.i48.i.prol.loopexit, label %.lr.ph.i.i48.i.prol, !llvm.loop !3424

.lr.ph.i.i48.i.prol.loopexit:                     ; preds = %.lr.ph.i.i48.i.prol, %_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i
  %.018.i.i.i.unr = phi i64 [ %i.cy, %_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i ], [ %i.de, %.lr.ph.i.i48.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i ], [ %i.dd, %.lr.ph.i.i48.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa111, %_ZN5boost9container3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS3_T_m.exit46.i ], [ %i.dc, %.lr.ph.i.i48.i.prol ]
  %i.df = icmp ult i64 %i.cz, 3
  br i1 %i.df, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i48.i

.lr.ph.i.i48.i:                                   ; preds = %.lr.ph.i.i48.i.prol.loopexit, %.lr.ph.i.i48.i
  %.018.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i48.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i48.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i48.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i48.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i48.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i48.i.prol.loopexit ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !259
  store i32 %i.dh, ptr %.01417.i.i.i, align 4, !tbaa !259
  %i.di = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !259
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !259
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !677 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !259
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !259
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !677 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !259
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !259
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !677
  %i.dv = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 16
  %i.dw = add nsw i64 %.018.i.i.i, -4             ; 2 uses
  %.not.i.i49.i.3 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i49.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i48.i, !llvm.loop !108

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit: ; preds = %.lr.ph.i.i48.i.prol.loopexit, %.lr.ph.i.i48.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.dx = load i64, ptr %i.l, align 8, !tbaa !596
  %i.dy = add i64 %i.dx, %i.a
  store i64 %i.dy, ptr %i.l, align 8, !tbaa !589
  br label %bb.r

bb.o:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.y, %.06.i.i
  br i1 %.not46.not, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %.not.i59.not = icmp ugt i64 %i.am, %.06.i.i
  %i.dz = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.dz ; 3 uses
  br i1 %.not.i59.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i, label %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i: ; preds = %bb.p
  %i.eb = shl nuw nsw i64 %i.a, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ea, ptr noundef nonnull align 1 dereferenceable(1) %i.z, i64 %i.eb, i1 false)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.a ; 3 uses
  %.not79 = icmp eq ptr %i.ec, %1
  br i1 %.not79, label %.lr.ph.i.i.i62.preheader, label %bb.q, !prof !585

bb.q:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.aj, %i.ed                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.ec, i64 %i.ee, i1 false)
  %i.ef = getelementptr inbounds i8, ptr %i.z, i64 %i.ee
  br label %.lr.ph.i.i.i62.preheader

.lr.ph.i.i.i62.preheader:                         ; preds = %bb.q, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i
  %.048.i.i.i64.ph = phi ptr [ %i.z, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S6_E4typeERT_S6_mS7_.exit.i ], [ %i.ef, %bb.q ] ; 2 uses
  %xtraiter125 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i.i.i62.prol.loopexit, label %.lr.ph.i.i.i62.prol

.lr.ph.i.i.i62.prol:                              ; preds = %.lr.ph.i.i.i62.preheader, %.lr.ph.i.i.i62.prol
  %.09.i.i.i63.prol = phi i64 [ %i.eg, %.lr.ph.i.i.i62.prol ], [ %i.a, %.lr.ph.i.i.i62.preheader ]
  %.048.i.i.i64.prol = phi ptr [ %i.ek, %.lr.ph.i.i.i62.prol ], [ %.048.i.i.i64.ph, %.lr.ph.i.i.i62.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i65.prol = phi ptr [ %i.ej, %.lr.ph.i.i.i62.prol ], [ %2, %.lr.ph.i.i.i62.preheader ] ; 2 uses
  %prol.iter127 = phi i64 [ %prol.iter127.next, %.lr.ph.i.i.i62.prol ], [ 0, %.lr.ph.i.i.i62.preheader ]
  %i.eg = add nsw i64 %.09.i.i.i63.prol, -1       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i65.prol, i64 16
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !259
  store i32 %i.ei, ptr %.048.i.i.i64.prol, align 4, !tbaa !259
  %i.ej = load ptr, ptr %.sroa.0.07.i.i.i65.prol, align 8, !tbaa !677 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.048.i.i.i64.prol, i64 4 ; 2 uses
  %prol.iter127.next = add i64 %prol.iter127, 1   ; 2 uses
  %prol.iter127.cmp.not = icmp eq i64 %prol.iter127.next, %xtraiter125
  br i1 %prol.iter127.cmp.not, label %.lr.ph.i.i.i62.prol.loopexit, label %.lr.ph.i.i.i62.prol, !llvm.loop !3425

.lr.ph.i.i.i62.prol.loopexit:                     ; preds = %.lr.ph.i.i.i62.prol, %.lr.ph.i.i.i62.preheader
  %.09.i.i.i63.unr = phi i64 [ %i.a, %.lr.ph.i.i.i62.preheader ], [ %i.eg, %.lr.ph.i.i.i62.prol ]
  %.048.i.i.i64.unr = phi ptr [ %.048.i.i.i64.ph, %.lr.ph.i.i.i62.preheader ], [ %i.ek, %.lr.ph.i.i.i62.prol ]
  %.sroa.0.07.i.i.i65.unr = phi ptr [ %2, %.lr.ph.i.i.i62.preheader ], [ %i.ej, %.lr.ph.i.i.i62.prol ]
  %i.el = icmp ult i64 %.06.i.i, 3
  br i1 %i.el, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i.i62

.lr.ph.i.i.i62:                                   ; preds = %.lr.ph.i.i.i62.prol.loopexit, %.lr.ph.i.i.i62
  %.09.i.i.i63 = phi i64 [ %i.ey, %.lr.ph.i.i.i62 ], [ %.09.i.i.i63.unr, %.lr.ph.i.i.i62.prol.loopexit ]
  %.048.i.i.i64 = phi ptr [ %i.fc, %.lr.ph.i.i.i62 ], [ %.048.i.i.i64.unr, %.lr.ph.i.i.i62.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i65 = phi ptr [ %i.fb, %.lr.ph.i.i.i62 ], [ %.sroa.0.07.i.i.i65.unr, %.lr.ph.i.i.i62.prol.loopexit ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i65, i64 16
  %i.en = load i32, ptr %i.em, align 4, !tbaa !259
  store i32 %i.en, ptr %.048.i.i.i64, align 4, !tbaa !259
  %i.eo = load ptr, ptr %.sroa.0.07.i.i.i65, align 8, !tbaa !677 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.048.i.i.i64, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !259
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !259
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !677 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.048.i.i.i64, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !259
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !259
  %i.ew = load ptr, ptr %i.es, align 8, !tbaa !677 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.048.i.i.i64, i64 12
  %i.ey = add nsw i64 %.09.i.i.i63, -4            ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !259
  store i32 %i.fa, ptr %i.ex, align 4, !tbaa !259
  %i.fb = load ptr, ptr %i.ew, align 8, !tbaa !677
  %i.fc = getelementptr inbounds nuw i8, ptr %.048.i.i.i64, i64 16
  %.not.i.i37.i.3 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i37.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i.i62, !llvm.loop !107

_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66: ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull align 4 %i.z, i64 %i.al, i1 false)
  %i.fd = getelementptr inbounds i8, ptr %i.ea, i64 %i.al ; 2 uses
  %i.fe = sub nuw i64 %i.a, %i.am                 ; 3 uses
  %i.ff = sub nuw i64 %.06.i.i, %i.am
  %xtraiter119 = and i64 %i.fe, 3                 ; 2 uses
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %.lr.ph.i.i42.i.prol.loopexit, label %.lr.ph.i.i42.i.prol

.lr.ph.i.i42.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66, %.lr.ph.i.i42.i.prol
  %.018.i.i.i67.prol = phi i64 [ %i.fk, %.lr.ph.i.i42.i.prol ], [ %i.fe, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66 ]
  %.01417.i.i.i68.prol = phi ptr [ %i.fj, %.lr.ph.i.i42.i.prol ], [ %i.fd, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66 ] ; 3 uses
  %.sroa.0.016.i.i.i69.prol = phi ptr [ %i.fi, %.lr.ph.i.i42.i.prol ], [ %2, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66 ] ; 2 uses
  %prol.iter121 = phi i64 [ %prol.iter121.next, %.lr.ph.i.i42.i.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i69.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i68.prol) ]
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !259
  store i32 %i.fh, ptr %.01417.i.i.i68.prol, align 4, !tbaa !259
  %i.fi = load ptr, ptr %.sroa.0.016.i.i.i69.prol, align 8, !tbaa !677 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i68.prol, i64 4 ; 2 uses
  %i.fk = add nsw i64 %.018.i.i.i67.prol, -1      ; 2 uses
  %prol.iter121.next = add i64 %prol.iter121, 1   ; 2 uses
  %prol.iter121.cmp.not = icmp eq i64 %prol.iter121.next, %xtraiter119
  br i1 %prol.iter121.cmp.not, label %.lr.ph.i.i42.i.prol.loopexit, label %.lr.ph.i.i42.i.prol, !llvm.loop !3426

.lr.ph.i.i42.i.prol.loopexit:                     ; preds = %.lr.ph.i.i42.i.prol, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66
  %.lcssa.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66 ], [ %i.fi, %.lr.ph.i.i42.i.prol ]
  %.018.i.i.i67.unr = phi i64 [ %i.fe, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66 ], [ %i.fk, %.lr.ph.i.i42.i.prol ]
  %.01417.i.i.i68.unr = phi ptr [ %i.fd, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66 ], [ %i.fj, %.lr.ph.i.i42.i.prol ]
  %.sroa.0.016.i.i.i69.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i66 ], [ %i.fi, %.lr.ph.i.i42.i.prol ]
  %i.fl = icmp ult i64 %i.ff, 3
  br i1 %i.fl, label %.lr.ph.i.i47.i.preheader, label %.lr.ph.i.i42.i

.lr.ph.i.i42.i:                                   ; preds = %.lr.ph.i.i42.i.prol.loopexit, %.lr.ph.i.i42.i
  %.018.i.i.i67 = phi i64 [ %i.gc, %.lr.ph.i.i42.i ], [ %.018.i.i.i67.unr, %.lr.ph.i.i42.i.prol.loopexit ]
  %.01417.i.i.i68 = phi ptr [ %i.gb, %.lr.ph.i.i42.i ], [ %.01417.i.i.i68.unr, %.lr.ph.i.i42.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i69 = phi ptr [ %i.ga, %.lr.ph.i.i42.i ], [ %.sroa.0.016.i.i.i69.unr, %.lr.ph.i.i42.i.prol.loopexit ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i69, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i68) ]
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !259
  store i32 %i.fn, ptr %.01417.i.i.i68, align 4, !tbaa !259
  %i.fo = load ptr, ptr %.sroa.0.016.i.i.i69, align 8, !tbaa !677 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i68, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !259
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !259
  %i.fs = load ptr, ptr %i.fo, align 8, !tbaa !677 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.01417.i.i.i68, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !259
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !259
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !677 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.01417.i.i.i68, i64 12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !259
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !259
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !677 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i68, i64 16
  %i.gc = add nsw i64 %.018.i.i.i67, -4           ; 2 uses
  %.not.i.i43.i.3 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i43.i.3, label %.lr.ph.i.i47.i.preheader, label %.lr.ph.i.i42.i, !llvm.loop !108

.lr.ph.i.i47.i.preheader:                         ; preds = %.lr.ph.i.i42.i, %.lr.ph.i.i42.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i42.i.prol.loopexit ], [ %i.ga, %.lr.ph.i.i42.i ] ; 2 uses
  %xtraiter122 = and i64 %i.am, 3                 ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph.i.i47.i.prol.loopexit, label %.lr.ph.i.i47.i.prol

.lr.ph.i.i47.i.prol:                              ; preds = %.lr.ph.i.i47.i.preheader, %.lr.ph.i.i47.i.prol
  %.09.i.i48.i.prol = phi i64 [ %i.gd, %.lr.ph.i.i47.i.prol ], [ %i.am, %.lr.ph.i.i47.i.preheader ]
  %.048.i.i49.i.prol = phi ptr [ %i.gh, %.lr.ph.i.i47.i.prol ], [ %i.z, %.lr.ph.i.i47.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i50.i.prol = phi ptr [ %i.gg, %.lr.ph.i.i47.i.prol ], [ %.lcssa, %.lr.ph.i.i47.i.preheader ] ; 2 uses
  %prol.iter124 = phi i64 [ %prol.iter124.next, %.lr.ph.i.i47.i.prol ], [ 0, %.lr.ph.i.i47.i.preheader ]
  %i.gd = add i64 %.09.i.i48.i.prol, -1           ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i.prol, i64 16
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !259
  store i32 %i.gf, ptr %.048.i.i49.i.prol, align 4, !tbaa !259
  %i.gg = load ptr, ptr %.sroa.0.07.i.i50.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.048.i.i49.i.prol, i64 4 ; 2 uses
  %prol.iter124.next = add i64 %prol.iter124, 1   ; 2 uses
  %prol.iter124.cmp.not = icmp eq i64 %prol.iter124.next, %xtraiter122
  br i1 %prol.iter124.cmp.not, label %.lr.ph.i.i47.i.prol.loopexit, label %.lr.ph.i.i47.i.prol, !llvm.loop !3427

.lr.ph.i.i47.i.prol.loopexit:                     ; preds = %.lr.ph.i.i47.i.prol, %.lr.ph.i.i47.i.preheader
  %.09.i.i48.i.unr = phi i64 [ %i.am, %.lr.ph.i.i47.i.preheader ], [ %i.gd, %.lr.ph.i.i47.i.prol ]
  %.048.i.i49.i.unr = phi ptr [ %i.z, %.lr.ph.i.i47.i.preheader ], [ %i.gh, %.lr.ph.i.i47.i.prol ]
  %.sroa.0.07.i.i50.i.unr = phi ptr [ %.lcssa, %.lr.ph.i.i47.i.preheader ], [ %i.gg, %.lr.ph.i.i47.i.prol ]
  %i.gi = icmp ult i64 %i.am, 4
  br i1 %i.gi, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i47.i

.lr.ph.i.i47.i:                                   ; preds = %.lr.ph.i.i47.i.prol.loopexit, %.lr.ph.i.i47.i
  %.09.i.i48.i = phi i64 [ %i.gv, %.lr.ph.i.i47.i ], [ %.09.i.i48.i.unr, %.lr.ph.i.i47.i.prol.loopexit ]
  %.048.i.i49.i = phi ptr [ %i.gz, %.lr.ph.i.i47.i ], [ %.048.i.i49.i.unr, %.lr.ph.i.i47.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i50.i = phi ptr [ %i.gy, %.lr.ph.i.i47.i ], [ %.sroa.0.07.i.i50.i.unr, %.lr.ph.i.i47.i.prol.loopexit ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i, i64 16
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !259
  store i32 %i.gk, ptr %.048.i.i49.i, align 4, !tbaa !259
  %i.gl = load ptr, ptr %.sroa.0.07.i.i50.i, align 8, !tbaa !677 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !259
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !259
  %i.gp = load ptr, ptr %i.gl, align 8, !tbaa !677 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !259
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !259
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !677 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 12
  %i.gv = add i64 %.09.i.i48.i, -4                ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !259
  store i32 %i.gx, ptr %i.gu, align 4, !tbaa !259
  %i.gy = load ptr, ptr %i.gt, align 8, !tbaa !677
  %i.gz = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 16
  %.not.i.i51.i.3 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i51.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, label %.lr.ph.i.i47.i, !llvm.loop !107

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit: ; preds = %.lr.ph.i.i47.i.prol.loopexit, %.lr.ph.i.i47.i, %.lr.ph.i.i.i62.prol.loopexit, %.lr.ph.i.i.i62
  %i.ha = load i64, ptr %i.x, align 8, !tbaa !597
  %i.hb = sub i64 %i.ha, %i.a
  store i64 %i.hb, ptr %i.x, align 8, !tbaa !588
  %i.hc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dz
  br label %bb.r

.thread:                                          ; preds = %bb.h, %bb.o, %bb.e, %bb.c
  %i.hd = tail call noundef ptr @_ZN5boost9container8devectorIiSaIiEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2)
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit56, %_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.n, %_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit ], [ %i.hd, %.thread ], [ %i.ai, %_ZN5boost9container24uninitialized_copy_allocISaIiESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit56 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit ], [ %i.hc, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SG_mSB_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorIiSaIiEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !599  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !596  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !597  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !598    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPiNS0_3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEEES5_EEvT_mS9_S9_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEEES5_EEvT_mS9_S9_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaIiEPiNS0_3dtl18insert_range_proxyIS2_St14_List_iteratorIiEEEEEvT0_mS9_S9_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEEES5_EEvT_mS9_S9_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyISaIiESt14_List_iteratorIiEEES5_EEvT_mS9_S9_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !588
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !589
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !598
  br label %bb.r

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 4611686018427387903, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 4611686018427387903)
  %i.ac = select i1 %i.z, i64 4611686018427387903, i64 %i.ab
  br label %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorIiSaIiEvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit
  %i.ae = icmp ugt i64 %i.ad, 2305843009213693951
  br i1 %i.ae, label %bb.l, label %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ugt i64 %i.t, 4611686018427387903
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i: ; preds = %bb.k
  %i.ag = shl nuw nsw i64 %i.ad, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #29
  %.pre = load i64, ptr %i.c, align 8, !tbaa !596
  %.pre60 = load i64, ptr %i.f, align 8, !tbaa !597
  %.pre61 = load ptr, ptr %0, align 8, !tbaa !598
  br label %_ZN5boost9container8devectorIiSaIiEvE8allocateEm.exit

_ZN5boost9container8devectorIiSaIiEvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i
  %i.ai = phi ptr [ %.pre61, %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = phi i64 [ %.pre60, %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit ] ; 2 uses
  %i.ak = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit ] ; 2 uses
  %.0.i.i52 = phi ptr [ %i.ah, %_ZN5boost9container16allocator_traitsISaIiEE8allocateERS2_m.exit.i.i ], [ null, %_ZN5boost9container8devectorIiSaIiEvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !692
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !692
  %i.ao = sub i64 %i.ak, %i.aj
  %i.ap = add i64 %2, %i.ao                       ; 2 uses
  %i.aq = sub i64 %i.ad, %i.ap
  %i.ar = lshr i64 %i.aq, 1                       ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.ar ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %i.av = icmp ne ptr %i.at, %1
  %i.aw = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.aw, %i.av
  %i.ax = icmp ne ptr %i.ai, null                 ; 2 uses
  %spec.select.i.i.i = and i1 %i.ax, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.o, label %_ZN5boost9container24uninitialized_move_allocISaIiEPiS3_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S6_S6_S7_.exit.i, !prof !262
end_hunk_3
begin_hunk_4_@_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE13reallocate_atEmm:bb.a
  %i.ad = add i64 %i.ab, %2
  %i.ae = sub i64 %i.ad, %i.aa
  store i64 %i.ae, ptr %i.l, align 8, !tbaa !608
  store i64 %2, ptr %i.i, align 8, !tbaa !607
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE14priv_push_backIS3_EEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !620  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !617  ; 3 uses
  %.not.i = icmp eq i64 %i.b, %i.d
  %i.e = load ptr, ptr %0, align 8, !tbaa !619    ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %1, align 4, !tbaa !612
  store i32 %i.g, ptr %i.f, align 4, !tbaa !612
  store i32 0, ptr %1, align 4, !tbaa !612
  %i.h = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.j = add i64 %i.d, 1
  store i64 %i.j, ptr %i.c, align 8, !tbaa !617
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b
  %i.l = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.k, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 23 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add i64 %.06.i.i, 1                      ; 18 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !619
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !618
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !619    ; 10 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !617  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 17 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !620
  %i.s = sub i64 %i.r, %i.n
  %.not49.not = icmp ugt i64 %i.s, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.u = load i32, ptr %i.t, align 4, !tbaa !259
  store i32 %i.u, ptr %.015.i, align 4, !tbaa !612
  %i.v = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.x = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !677 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.x, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, label %.lr.ph.i, !llvm.loop !132

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit: ; preds = %.lr.ph.i
  %i.z = add i64 %i.n, %i.a
  store i64 %i.z, ptr %i.m, align 8, !tbaa !608
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !618 ; 8 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab ; 15 uses
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = xor i64 %.06.i.i, -1
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.al, %.lr.ph.i51 ], [ %i.af, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !259
  store i32 %i.ah, ptr %.015.i52, align 4, !tbaa !612
  %i.ai = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ak = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !677 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.ak, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56, label %.lr.ph.i51, !llvm.loop !132

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56: ; preds = %.lr.ph.i51
  %i.am = sub nuw i64 %i.ab, %i.a                 ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !607
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.am
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.ap = ptrtoint ptr %i.ac to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %i.as = sub i64 %i.n, %i.ab
  %i.at = lshr i64 %i.as, 1
  %.not = icmp ult i64 %i.ar, %i.at
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !620
  %i.aw = sub i64 %i.av, %i.n
  %.not47.not = icmp ugt i64 %i.aw, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = sub i64 %i.ax, %i.ao
  %i.az = ashr exact i64 %i.ay, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.az, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ba = xor i64 %.06.i.i, -1
  %i.bb = getelementptr [4 x i8], ptr %i.o, i64 %i.ba ; 10 uses
  %i.bc = and i64 %.06.i.i, 1
  %lcmp.mod178.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod178.not.not, label %.lr.ph.i.i58.prol, label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol:                                ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !612
  store i32 %i.bd, ptr %i.o, align 4, !tbaa !612
  store i32 0, ptr %i.bb, align 4, !tbaa !612
  %i.be = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %.06.i.i, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bb, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.j ], [ %i.bh, %.lr.ph.i.i58.prol ]
  %i.bi = icmp eq i64 %.06.i.i, 0
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bo, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bs, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.bt, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bj = load i32, ptr %.0819.i.i, align 4, !tbaa !612
  store i32 %i.bj, ptr %.01618.i.i, align 4, !tbaa !612
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !612
  %i.bk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bo = add nsw i64 %.020.i.i, -2               ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !612
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !612
  store i32 0, ptr %i.bm, align 4, !tbaa !612
  %i.bq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i59.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i59.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58, !llvm.loop !124

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bb
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %i.bu = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.bu, %i.ao
  %i.bv = add i64 %reass.sub, -8
  %i.bw = add i64 %i.bv, %i.l
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add i64 %i.bx, %i.n
  %i.bz = and i64 %i.by, 4611686018427387903      ; 2 uses
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bz, 43
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.cb = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.k, i64 %i.cb
  %scevgep = getelementptr i8, ptr %i.cc, i64 -4
  %i.cd = add i64 %i.cb, %i.l
  %i.ce = mul i64 %.06.i.i, -4                    ; 2 uses
  %reass.sub164 = sub i64 %i.ce, %i.ao
  %i.cf = add i64 %reass.sub164, -8
  %i.cg = add i64 %i.cd, %i.cf                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = mul i64 %i.ch, -4
  %scevgep136 = getelementptr i8, ptr %scevgep, i64 %i.ci
  %scevgep137 = getelementptr i8, ptr %i.k, i64 %i.cb
  %i.cj = add i64 %i.ce, -8
  %i.ck = and i64 %i.cg, -4
  %i.cl = sub i64 %i.cj, %i.ck
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.cl
  %bound0 = icmp ult ptr %scevgep136, %i.bb
  %bound1 = icmp ult ptr %scevgep138, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ca, 9223372036854775800     ; 3 uses
  %i.cm = mul i64 %n.vec, -4                      ; 2 uses
  %i.cn = getelementptr i8, ptr %i.o, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bb, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.cp ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.bb, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep139, i64 -16 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep139, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cq, align 4, !tbaa !612, !alias.scope !3927
  %wide.load140 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !612, !alias.scope !3927
  %i.cs = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cs, align 4, !tbaa !612, !alias.scope !3928, !noalias !3927
  store <4 x i32> %wide.load140, ptr %i.ct, align 4, !tbaa !612, !alias.scope !3928, !noalias !3927
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !612, !alias.scope !3927
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !612, !alias.scope !3927
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !3916

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader170

.lr.ph.i40.i.preheader170:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.cn, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i40.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader170, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cw, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader170 ]
  %.079.i.i = phi ptr [ %i.cv, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader170 ]
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !612
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !612
  store i32 0, ptr %i.cv, align 4, !tbaa !612
  %.not.i41.i = icmp eq ptr %1, %i.cv
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !3917

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %xtraiter180 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.dc, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cy = add nsw i64 %.09.i.i.i.prol, -1         ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !259
  store i32 %i.da, ptr %.048.i.i.i.prol, align 4, !tbaa !612
  %i.db = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !3918

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.db, %.lr.ph.i.i.i.prol ]
  %i.dd = icmp ult i64 %.06.i.i, 3
  br i1 %i.dd, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.df = load i32, ptr %i.de, align 4, !tbaa !259
  store i32 %i.df, ptr %.048.i.i.i, align 4, !tbaa !612
  %i.dg = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !259
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !612
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !677 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !259
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !612
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !677 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.dq = add nsw i64 %.09.i.i.i, -4              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !259
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !612
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !677
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !133

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dz, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.ea, %.lr.ph.i48.i ], [ %i.dv, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.dw = load i32, ptr %.018.i.i, align 4, !tbaa !612
  store i32 %i.dw, ptr %.01517.i.i, align 4, !tbaa !612
  store i32 0, ptr %.018.i.i, align 4, !tbaa !612
  %i.dx = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dz = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dz, %i.o
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !126

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.eb, %.lr.ph.i.i52.i.prol ], [ %i.az, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ef, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ee, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.eb = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !259
  store i32 %i.ed, ptr %.048.i.i54.i.prol, align 4, !tbaa !612
  %i.ee = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !677 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !3919

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa172.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ee, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.az, %.lr.ph.i.i52.i.preheader ], [ %i.eb, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ef, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ee, %.lr.ph.i.i52.i.prol ]
  %i.eg = icmp ult i64 %i.az, 4
  br i1 %i.eg, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.et, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ex, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.ew, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !259
  store i32 %i.ei, ptr %.048.i.i54.i, align 4, !tbaa !612
  %i.ej = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !677 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = load i32, ptr %i.el, align 4, !tbaa !259
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !612
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !677 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !259
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !612
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !677 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.et = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !259
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !612
  %i.ew = load ptr, ptr %i.er, align 8, !tbaa !677 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !133

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa172 = phi ptr [ %.lcssa172.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.ew, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ey = sub i64 %i.a, %i.az                     ; 3 uses
  %xtraiter174 = and i64 %i.ey, 1
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.lcssa172, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !259
  store i32 %i.fa, ptr %i.o, align 4, !tbaa !612
  %i.fb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fd = load ptr, ptr %.lcssa172, align 8, !tbaa !677
  %i.fe = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ff = add nsw i64 %i.ey, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ey, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.ff, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fe, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa172, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test11movable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %i.fg = icmp eq i64 %.06.i.i, %i.az
  br i1 %i.fg, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !259
  store i32 %i.fi, ptr %.01417.i.i.i, align 4, !tbaa !612
  %i.fj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fl = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !259
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !612
  %i.fp = add i32 %i.fj, 2
  store i32 %i.fp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !677
  %i.fr = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fs = add nsw i64 %.018.i.i.i, -2             ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i, !llvm.loop !134

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ft = add i64 %i.n, %i.a
  store i64 %i.ft, ptr %i.m, align 8, !tbaa !608
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.ar, %.06.i.i
  %i.fu = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fu ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fw = icmp eq i64 %.06.i.i, 0
  br i1 %i.fw, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader.new ], [ %i.gf, %.lr.ph.i.i62 ] ; 4 uses
  %.01618.i.i64 = phi ptr [ %i.fv, %.lr.ph.i.i62.preheader.new ], [ %i.gg, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fx = load i32, ptr %.0919.i.i, align 4, !tbaa !612
  store i32 %i.fx, ptr %.01618.i.i64, align 4, !tbaa !612
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !612
  %i.fy = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ga = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !612
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !612
  store i32 0, ptr %i.ga, align 4, !tbaa !612
  %i.gd = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gf = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !128

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.gh = and i64 %.06.i.i, 1
  %lcmp.mod190.not.not = icmp eq i64 %i.gh, 0
  br i1 %lcmp.mod190.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader ], [ %i.gf, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.fv, %.lr.ph.i.i62.preheader ], [ %i.gg, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.gi = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !612
  store i32 %i.gi, ptr %.01618.i.i64.epil.init, align 4, !tbaa !612
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !612
  %i.gj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gl = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa166 = phi ptr [ %i.gf, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %i.gl, %.lr.ph.i.i62.epil.preheader ] ; 6 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa166, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %i.gm = add i64 %i.ao, -8
  %i.gn = add i64 %.06.i.i, %i.ab
  %i.go = shl i64 %i.gn, 2
  %i.gp = add i64 %i.go, %i.l
  %i.gq = sub i64 %i.gm, %i.gp                    ; 2 uses
  %i.gr = lshr i64 %i.gq, 2
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.gq, 172
  br i1 %min.iters.check150, label %.lr.ph.i40.i67.preheader165, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.gt = shl nuw nsw i64 %i.ab, 2                ; 3 uses
  %i.gu = getelementptr i8, ptr %i.k, i64 %i.gt
  %scevgep143 = getelementptr i8, ptr %i.gu, i64 4
  %i.gv = add i64 %i.gt, %i.l
  %i.gw = add i64 %i.ao, -8
  %i.gx = shl i64 %.06.i.i, 2
  %i.gy = add i64 %i.gx, %i.gv
  %i.gz = sub i64 %i.gw, %i.gy
  %i.ha = and i64 %i.gz, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.ha
  %i.hb = shl i64 %indvar.lcssa, 2
  %i.hc = getelementptr i8, ptr %i.k, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.gt
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %scevgep145 = getelementptr i8, ptr %i.he, i64 %i.ha
  %bound0146 = icmp ult ptr %i.ac, %scevgep145
  %bound1147 = icmp ult ptr %.lcssa166, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.i40.i67.preheader165, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck142
  %n.vec152 = and i64 %i.gs, 9223372036854775800  ; 3 uses
  %i.hf = shl i64 %n.vec152, 2                    ; 2 uses
  %i.hg = getelementptr i8, ptr %i.ac, i64 %i.hf  ; 2 uses
  %i.hh = getelementptr i8, ptr %.lcssa166, i64 %i.hf
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.hi = shl i64 %index154, 2                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.ac, i64 %i.hi ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.lcssa166, i64 %i.hi ; 3 uses
  %i.hj = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !612, !alias.scope !3929
  %wide.load158 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !612, !alias.scope !3929
  %i.hk = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %wide.load157, ptr %next.gep155, align 4, !tbaa !612, !alias.scope !3930, !noalias !3929
  store <4 x i32> %wide.load158, ptr %i.hk, align 4, !tbaa !612, !alias.scope !3930, !noalias !3929
  store <4 x i32> zeroinitializer, ptr %next.gep156, align 4, !tbaa !612, !alias.scope !3929
  store <4 x i32> zeroinitializer, ptr %i.hj, align 4, !tbaa !612, !alias.scope !3929
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.hl, label %middle.block160, label %vector.body153, !llvm.loop !3923

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.gs, %n.vec152
  br i1 %cmp.n161, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader165

.lr.ph.i40.i67.preheader165:                      ; preds = %vector.memcheck142, %.lr.ph.i40.i67.preheader, %middle.block160
  %.010.i.i68.ph = phi ptr [ %i.ac, %vector.memcheck142 ], [ %i.ac, %.lr.ph.i40.i67.preheader ], [ %i.hg, %middle.block160 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa166, %vector.memcheck142 ], [ %.lcssa166, %.lr.ph.i40.i67.preheader ], [ %i.hh, %middle.block160 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader165, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.ho, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader165 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.hn, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader165 ] ; 3 uses
  %i.hm = load i32, ptr %.079.i.i69, align 4, !tbaa !612
  store i32 %i.hm, ptr %.010.i.i68, align 4, !tbaa !612
  store i32 0, ptr %.079.i.i69, align 4, !tbaa !612
  %i.hn = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.hn, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !3924

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block160, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ac, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i ], [ %i.hg, %middle.block160 ], [ %i.ho, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter194 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.hp, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.ht, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.hs, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.hp = add nsw i64 %.09.i.i.i73.prol, -1       ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !259
  store i32 %i.hr, ptr %.048.i.i.i74.prol, align 4, !tbaa !612
  %i.hs = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !677 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !3925

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.hp, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.ht, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.hs, %.lr.ph.i.i.i72.prol ]
  %i.hu = icmp ult i64 %.06.i.i, 3
  br i1 %i.hu, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.ih, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.il, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.ik, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !259
  store i32 %i.hw, ptr %.048.i.i.i74, align 4, !tbaa !612
  %i.hx = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !677 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !259
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !612
  %i.ib = load ptr, ptr %i.hx, align 8, !tbaa !677 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !259
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !612
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !677 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.ih = add nsw i64 %.09.i.i.i73, -4            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !259
  store i32 %i.ij, ptr %i.ig, align 4, !tbaa !612
  %i.ik = load ptr, ptr %i.if, align 8, !tbaa !677
  %i.il = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72, !llvm.loop !133

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.ip, %.lr.ph.i48.i78 ], [ %i.ac, %bb.l ] ; 3 uses
  %.01517.i.i80 = phi ptr [ %i.iq, %.lr.ph.i48.i78 ], [ %i.fv, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.im = load i32, ptr %.018.i.i79, align 4, !tbaa !612
  store i32 %i.im, ptr %.01517.i.i80, align 4, !tbaa !612
  store i32 0, ptr %.018.i.i79, align 4, !tbaa !612
  %i.in = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ip = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.ip, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !126

_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.ir = sub i64 %i.a, %i.ar                     ; 3 uses
  %xtraiter183 = and i64 %i.ir, 1
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !259
  store i32 %i.it, ptr %i.iq, align 4, !tbaa !612
  %i.iu = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.iw = load ptr, ptr %2, align 8, !tbaa !677   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.iy = add nsw i64 %i.ir, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.lcssa168.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.iw, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.ir, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.iy, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.iq, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ix, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.iw, %.lr.ph.i.i51.i.prol ]
  %i.iz = icmp eq i64 %.06.i.i, %i.ar
  br i1 %i.iz, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.jl, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.jk, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.jj, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !259
  store i32 %i.jb, ptr %.01417.i.i.i83, align 4, !tbaa !612
  %i.jc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.jd = add i32 %i.jc, 1
  store i32 %i.jd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.je = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !677 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !259
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !612
  %i.ji = add i32 %i.jc, 2
  store i32 %i.ji, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !677 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.jl = add nsw i64 %.018.i.i.i82, -2           ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !134

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa168 = phi ptr [ %.lcssa168.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.jj, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter186 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.jm, %.lr.ph.i.i56.i.prol ], [ %i.ar, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.jq, %.lr.ph.i.i56.i.prol ], [ %i.ac, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.jp, %.lr.ph.i.i56.i.prol ], [ %.lcssa168, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.jm = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !259
  store i32 %i.jo, ptr %.048.i.i58.i.prol, align 4, !tbaa !612
  %i.jp = load ptr, ptr %.sroa.0.07.i.i59.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.048.i.i58.i.prol, i64 4 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol, !llvm.loop !3926

.lr.ph.i.i56.i.prol.loopexit:                     ; preds = %.lr.ph.i.i56.i.prol, %.lr.ph.i.i56.i.preheader
  %.09.i.i57.i.unr = phi i64 [ %i.ar, %.lr.ph.i.i56.i.preheader ], [ %i.jm, %.lr.ph.i.i56.i.prol ]
  %.048.i.i58.i.unr = phi ptr [ %i.ac, %.lr.ph.i.i56.i.preheader ], [ %i.jq, %.lr.ph.i.i56.i.prol ]
  %.sroa.0.07.i.i59.i.unr = phi ptr [ %.lcssa168, %.lr.ph.i.i56.i.preheader ], [ %i.jp, %.lr.ph.i.i56.i.prol ]
  %i.jr = icmp ult i64 %i.ar, 4
  br i1 %i.jr, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i
  %.09.i.i57.i = phi i64 [ %i.ke, %.lr.ph.i.i56.i ], [ %.09.i.i57.i.unr, %.lr.ph.i.i56.i.prol.loopexit ]
  %.048.i.i58.i = phi ptr [ %i.ki, %.lr.ph.i.i56.i ], [ %.048.i.i58.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i59.i = phi ptr [ %i.kh, %.lr.ph.i.i56.i ], [ %.sroa.0.07.i.i59.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i, i64 16
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !259
  store i32 %i.jt, ptr %.048.i.i58.i, align 4, !tbaa !612
  %i.ju = load ptr, ptr %.sroa.0.07.i.i59.i, align 8, !tbaa !677 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !259
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !612
  %i.jy = load ptr, ptr %i.ju, align 8, !tbaa !677 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !259
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !612
  %i.kc = load ptr, ptr %i.jy, align 8, !tbaa !677 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 12
  %i.ke = add i64 %.09.i.i57.i, -4                ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !259
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !612
  %i.kh = load ptr, ptr %i.kc, align 8, !tbaa !677
  %i.ki = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 16
  %.not.i.i60.i.3 = icmp eq i64 %i.ke, 0
  br i1 %.not.i.i60.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i56.i, !llvm.loop !133

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i, %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %i.kj = sub nuw i64 %i.ab, %i.a
  store i64 %i.kj, ptr %i.aa, align 8, !tbaa !607
  %i.kk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fu
  br label %bb.m

.thread:                                          ; preds = %bb.h, %bb.k, %bb.e, %bb.c
  %i.kl = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit ], [ %i.kl, %.thread ], [ %i.an, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test11movable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ], [ %i.kk, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !620  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !617  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !618  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !619    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test11movable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test11movable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test11movable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvT0_mSB_SB_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test11movable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test11movable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !607
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !608
  %.pre65 = load ptr, ptr %0, align 8, !tbaa !619
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 4611686018427387903, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 4611686018427387903)
  %i.ac = select i1 %i.z, i64 4611686018427387903, i64 %i.ab
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22calculate_new_capacityEm.exit
  %i.ae = icmp ugt i64 %i.ad, 2305843009213693951
  br i1 %i.ae, label %bb.l, label %_ZN5boost9container16allocator_traitsISaINS0_4test11movable_intEEE8allocateERS4_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ugt i64 %i.t, 4611686018427387903
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaINS0_4test11movable_intEEE8allocateERS4_m.exit.i.i: ; preds = %bb.k
  %i.ag = shl nuw nsw i64 %i.ad, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #29
  %.pre = load i64, ptr %i.c, align 8, !tbaa !617
  %.pre62 = load i64, ptr %i.f, align 8, !tbaa !618
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !619
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaINS0_4test11movable_intEEE8allocateERS4_m.exit.i.i
  %i.ai = phi ptr [ %.pre63, %_ZN5boost9container16allocator_traitsISaINS0_4test11movable_intEEE8allocateERS4_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = phi i64 [ %.pre62, %_ZN5boost9container16allocator_traitsISaINS0_4test11movable_intEEE8allocateERS4_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.ak = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaINS0_4test11movable_intEEE8allocateERS4_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %.0.i.i52 = phi ptr [ %i.ah, %_ZN5boost9container16allocator_traitsISaINS0_4test11movable_intEEE8allocateERS4_m.exit.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !707
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !707
  %i.ao = sub i64 %i.ak, %i.aj
  %i.ap = add i64 %2, %i.ao                       ; 2 uses
  %i.aq = sub i64 %i.ad, %i.ap
  %i.ar = lshr i64 %i.aq, 1                       ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak ; 3 uses
  %.not16.i.i = icmp eq ptr %i.at, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test11movable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE8allocateEm.exit, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.at, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE8allocateEm.exit ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.as, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
end_hunk_4
begin_hunk_5_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SC_:bb.a
  %i.gb = add i64 %.022.i.i.i, -4                 ; 2 uses
  %.not.i.i67.i.3 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i67.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i66.i, !llvm.loop !154

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i66.i.prol.loopexit, %.lr.ph.i.i66.i, %middle.block149
  %i.gc = add i64 %i.l, %i.a
  store i64 %i.gc, ptr %i.k, align 8, !tbaa !625
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %.not61 = icmp ult i64 %i.ao, %i.a
  br i1 %.not61, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i74 = icmp ult i64 %i.bt, %i.a
  %i.gd = sub i64 0, %i.a                         ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.gd ; 3 uses
  br i1 %.not.i74, label %.lr.ph.i48.i92, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %bb.n
  %.neg237 = add i64 %5, 1
  %xtraiter223 = and i64 %i.a, 1
  %i.gf = icmp eq i64 %3, %.neg237
  br i1 %i.gf, label %.lr.ph.i.i76.epil.preheader, label %.lr.ph.i.i76.preheader.new

.lr.ph.i.i76.preheader.new:                       ; preds = %.lr.ph.i.i76.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76, %.lr.ph.i.i76.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i76 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ap, %.lr.ph.i.i76.preheader.new ], [ %i.go, %.lr.ph.i.i76 ] ; 4 uses
  %.01618.i.i78 = phi ptr [ %i.ge, %.lr.ph.i.i76.preheader.new ], [ %i.gp, %.lr.ph.i.i76 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %niter.next.1, %.lr.ph.i.i76 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78) ]
  %i.gg = load i32, ptr %.0919.i.i, align 4, !tbaa !629
  store i32 %i.gg, ptr %.01618.i.i78, align 4, !tbaa !629
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !629
  %i.gh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gj = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 4
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !629
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !629
  store i32 0, ptr %i.gj, align 4, !tbaa !629
  %i.gm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.go = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, label %.lr.ph.i.i76, !llvm.loop !150

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i76
  %indvar.next = or disjoint i64 %indvar, 1
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i76.epil.preheader

.lr.ph.i.i76.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i76.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ap, %.lr.ph.i.i76.preheader ], [ %i.go, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i78.epil.init = phi ptr [ %i.ge, %.lr.ph.i.i76.preheader ], [ %i.gp, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod227 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod227)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78.epil.init) ]
  %i.gq = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !629
  store i32 %i.gq, ptr %.01618.i.i78.epil.init, align 4, !tbaa !629
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !629
  %i.gr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gt = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i76.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i76.epil.preheader ]
  %.lcssa218 = phi ptr [ %i.go, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %i.gt, %.lr.ph.i.i76.epil.preheader ] ; 6 uses
  %.not8.i.i80 = icmp eq ptr %.lcssa218, %1
  br i1 %.not8.i.i80, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader

.lr.ph.i40.i81.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %i.gu = shl i64 %5, 2
  %i.gv = add i64 %i.ao, %3
  %i.gw = shl i64 %i.gv, 2
  %i.gx = add i64 %i.gu, %i.bq
  %i.gy = add i64 %i.gx, -4
  %i.gz = add i64 %i.gw, %i.c
  %i.ha = sub i64 %i.gy, %i.gz                    ; 2 uses
  %i.hb = lshr i64 %i.ha, 2
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.ha, 172
  br i1 %min.iters.check173, label %.lr.ph.i40.i81.preheader216, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i40.i81.preheader
  %i.hd = shl nuw nsw i64 %i.ao, 2
  %i.he = shl i64 %5, 2
  %i.hf = add i64 %i.he, %i.bq
  %i.hg = add i64 %i.hf, -4
  %i.hh = add i64 %i.ao, %3
  %i.hi = shl i64 %i.hh, 2
  %i.hj = add i64 %i.hi, %i.c
  %i.hk = sub i64 %i.hg, %i.hj
  %i.hl = and i64 %i.hk, -4
  %i.hm = add i64 %i.hd, %i.hl                    ; 2 uses
  %i.hn = getelementptr i8, ptr %i.b, i64 %i.hm
  %scevgep = getelementptr i8, ptr %i.hn, i64 4
  %i.ho = shl i64 %indvar.lcssa, 2
  %i.hp = getelementptr i8, ptr %i.b, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.hm
  %scevgep168 = getelementptr i8, ptr %i.hq, i64 8
  %bound0169 = icmp ult ptr %i.ap, %scevgep168
  %bound1170 = icmp ult ptr %.lcssa218, %scevgep
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph.i40.i81.preheader216, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck167
  %n.vec175 = and i64 %i.hc, 9223372036854775800  ; 3 uses
  %i.hr = shl i64 %n.vec175, 2                    ; 2 uses
  %i.hs = getelementptr i8, ptr %i.ap, i64 %i.hr  ; 2 uses
  %i.ht = getelementptr i8, ptr %.lcssa218, i64 %i.hr
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.hu = shl i64 %index177, 2                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.ap, i64 %i.hu ; 2 uses
  %next.gep179 = getelementptr i8, ptr %.lcssa218, i64 %i.hu ; 3 uses
  %i.hv = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %next.gep179, align 4, !tbaa !629, !alias.scope !4667
  %wide.load181 = load <4 x i32>, ptr %i.hv, align 4, !tbaa !629, !alias.scope !4667
  %i.hw = getelementptr i8, ptr %next.gep178, i64 16
  store <4 x i32> %wide.load180, ptr %next.gep178, align 4, !tbaa !629, !alias.scope !4668, !noalias !4667
  store <4 x i32> %wide.load181, ptr %i.hw, align 4, !tbaa !629, !alias.scope !4668, !noalias !4667
  store <4 x i32> zeroinitializer, ptr %next.gep179, align 4, !tbaa !629, !alias.scope !4667
  store <4 x i32> zeroinitializer, ptr %i.hv, align 4, !tbaa !629, !alias.scope !4667
  %index.next182 = add nuw i64 %index177, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.hx, label %middle.block183, label %vector.body176, !llvm.loop !4658

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.hc, %n.vec175
  br i1 %cmp.n184, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader216

.lr.ph.i40.i81.preheader216:                      ; preds = %vector.memcheck167, %.lr.ph.i40.i81.preheader, %middle.block183
  %.010.i.i82.ph = phi ptr [ %i.ap, %vector.memcheck167 ], [ %i.ap, %.lr.ph.i40.i81.preheader ], [ %i.hs, %middle.block183 ]
  %.079.i.i83.ph = phi ptr [ %.lcssa218, %vector.memcheck167 ], [ %.lcssa218, %.lr.ph.i40.i81.preheader ], [ %i.ht, %middle.block183 ]
  br label %.lr.ph.i40.i81

.lr.ph.i40.i81:                                   ; preds = %.lr.ph.i40.i81.preheader216, %.lr.ph.i40.i81
  %.010.i.i82 = phi ptr [ %i.ia, %.lr.ph.i40.i81 ], [ %.010.i.i82.ph, %.lr.ph.i40.i81.preheader216 ] ; 2 uses
  %.079.i.i83 = phi ptr [ %i.hz, %.lr.ph.i40.i81 ], [ %.079.i.i83.ph, %.lr.ph.i40.i81.preheader216 ] ; 3 uses
  %i.hy = load i32, ptr %.079.i.i83, align 4, !tbaa !629
  store i32 %i.hy, ptr %.010.i.i82, align 4, !tbaa !629
  store i32 0, ptr %.079.i.i83, align 4, !tbaa !629
  %i.hz = getelementptr inbounds nuw i8, ptr %.079.i.i83, i64 4 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.010.i.i82, i64 4 ; 2 uses
  %.not.i41.i84 = icmp eq ptr %i.hz, %1
  br i1 %.not.i41.i84, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81, !llvm.loop !4659

.lr.ph.preheader.i.i.i85:                         ; preds = %.lr.ph.i40.i81, %middle.block183, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.ap, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i ], [ %i.hs, %middle.block183 ], [ %i.ia, %.lr.ph.i40.i81 ] ; 3 uses
  %.pre.i.i.i86 = load i32, ptr %2, align 4, !tbaa !629 ; 2 uses
  %min.iters.check188 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check188, label %.lr.ph.i.i.i87.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.preheader.i.i.i85
  %n.vec190 = and i64 %i.a, -8                    ; 3 uses
  %i.ib = and i64 %i.a, 7
  %i.ic = shl i64 %n.vec190, 2
  %i.id = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ic
  %broadcast.splatinsert191 = insertelement <4 x i32> poison, i32 %.pre.i.i.i86, i64 0
  %broadcast.splat192 = shufflevector <4 x i32> %broadcast.splatinsert191, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph189
  %index194 = phi i64 [ 0, %vector.ph189 ], [ %index.next196, %vector.body193 ] ; 2 uses
  %i.ie = shl i64 %index194, 2
  %next.gep195 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ie ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep195, i64 16
  store <4 x i32> %broadcast.splat192, ptr %next.gep195, align 4, !tbaa !629
  store <4 x i32> %broadcast.splat192, ptr %i.if, align 4, !tbaa !629
  %index.next196 = add nuw i64 %index194, 8       ; 2 uses
  %i.ig = icmp eq i64 %index.next196, %n.vec190
  br i1 %i.ig, label %middle.block197, label %vector.body193, !llvm.loop !4660

middle.block197:                                  ; preds = %vector.body193
  %cmp.n198 = icmp eq i64 %i.a, %n.vec190
  br i1 %cmp.n198, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i87.preheader

.lr.ph.i.i.i87.preheader:                         ; preds = %.lr.ph.preheader.i.i.i85, %middle.block197
  %.012.i.i.i88.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i85 ], [ %i.ib, %middle.block197 ]
  %.0511.i.i.i89.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph.preheader.i.i.i85 ], [ %i.id, %middle.block197 ]
  br label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %.lr.ph.i.i.i87.preheader, %.lr.ph.i.i.i87
  %.012.i.i.i88 = phi i64 [ %i.ih, %.lr.ph.i.i.i87 ], [ %.012.i.i.i88.ph, %.lr.ph.i.i.i87.preheader ]
  %.0511.i.i.i89 = phi ptr [ %i.ii, %.lr.ph.i.i.i87 ], [ %.0511.i.i.i89.ph, %.lr.ph.i.i.i87.preheader ] ; 2 uses
  %i.ih = add nsw i64 %.012.i.i.i88, -1           ; 2 uses
  store i32 %.pre.i.i.i86, ptr %.0511.i.i.i89, align 4, !tbaa !629
  %i.ii = getelementptr inbounds nuw i8, ptr %.0511.i.i.i89, i64 4
  %.not.i.i.i90 = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i.i90, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i87, !llvm.loop !4661

.lr.ph.i48.i92:                                   ; preds = %bb.n, %.lr.ph.i48.i92
  %.018.i.i93 = phi ptr [ %i.im, %.lr.ph.i48.i92 ], [ %i.ap, %bb.n ] ; 3 uses
  %.01517.i.i94 = phi ptr [ %i.in, %.lr.ph.i48.i92 ], [ %i.ge, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i94) ]
  %i.ij = load i32, ptr %.018.i.i93, align 4, !tbaa !629
  store i32 %i.ij, ptr %.01517.i.i94, align 4, !tbaa !629
  store i32 0, ptr %.018.i.i93, align 4, !tbaa !629
  %i.ik = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.im = getelementptr inbounds nuw i8, ptr %.018.i.i93, i64 4 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.01517.i.i94, i64 4 ; 3 uses
  %.not.i49.i95 = icmp eq ptr %i.im, %1
  br i1 %.not.i49.i95, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i48.i92, !llvm.loop !148

_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i48.i92
  %i.io = sub i64 %i.a, %i.bt                     ; 3 uses
  %xtraiter228 = and i64 %i.io, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol

.lr.ph.i.i53.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, %.lr.ph.i.i53.i.prol
  %.022.i.i.i96.prol = phi i64 [ %i.it, %.lr.ph.i.i53.i.prol ], [ %i.io, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ]
  %.01821.i.i.i97.prol = phi ptr [ %i.is, %.lr.ph.i.i53.i.prol ], [ %i.in, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ] ; 2 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %.lr.ph.i.i53.i.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ]
  %i.ip = load i32, ptr %2, align 4, !tbaa !629
  store i32 %i.ip, ptr %.01821.i.i.i97.prol, align 4, !tbaa !629
  %i.iq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.is = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97.prol, i64 4 ; 2 uses
  %i.it = add i64 %.022.i.i.i96.prol, -1          ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol, !llvm.loop !4662

.lr.ph.i.i53.i.prol.loopexit:                     ; preds = %.lr.ph.i.i53.i.prol, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.022.i.i.i96.unr = phi i64 [ %i.io, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.it, %.lr.ph.i.i53.i.prol ]
  %.01821.i.i.i97.unr = phi ptr [ %i.in, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.is, %.lr.ph.i.i53.i.prol ]
  %i.iu = sub i64 %i.bt, %3
  %i.iv = add i64 %i.iu, %5
  %i.iw = icmp ugt i64 %i.iv, -4
  br i1 %i.iw, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i
  %.022.i.i.i96 = phi i64 [ %i.jk, %.lr.ph.i.i53.i ], [ %.022.i.i.i96.unr, %.lr.ph.i.i53.i.prol.loopexit ]
  %.01821.i.i.i97 = phi ptr [ %i.jj, %.lr.ph.i.i53.i ], [ %.01821.i.i.i97.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 5 uses
  %i.ix = load i32, ptr %2, align 4, !tbaa !629
  store i32 %i.ix, ptr %.01821.i.i.i97, align 4, !tbaa !629
  %i.iy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.iz = add i32 %i.iy, 1
  store i32 %i.iz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ja = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 4
  %i.jb = load i32, ptr %2, align 4, !tbaa !629
  store i32 %i.jb, ptr %i.ja, align 4, !tbaa !629
  %i.jc = add i32 %i.iy, 2
  store i32 %i.jc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.jd = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 8
  %i.je = load i32, ptr %2, align 4, !tbaa !629
  store i32 %i.je, ptr %i.jd, align 4, !tbaa !629
  %i.jf = add i32 %i.iy, 3
  store i32 %i.jf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.jg = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 12
  %i.jh = load i32, ptr %2, align 4, !tbaa !629
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !629
  %i.ji = add i32 %i.iy, 4
  store i32 %i.ji, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.jj = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 16
  %i.jk = add i64 %.022.i.i.i96, -4               ; 2 uses
  %.not.i.i54.i.3 = icmp eq i64 %i.jk, 0
  br i1 %.not.i.i54.i.3, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i, !llvm.loop !154

.lr.ph.preheader.i.i61.i:                         ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.prol.loopexit
  %.pre.i.i62.i = load i32, ptr %2, align 4, !tbaa !629 ; 2 uses
  %min.iters.check202 = icmp ult i64 %i.bt, 8
  br i1 %min.iters.check202, label %.lr.ph.i.i63.i.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph.preheader.i.i61.i
  %n.vec204 = and i64 %i.bt, -8                   ; 3 uses
  %i.jl = and i64 %i.bt, 7
  %i.jm = shl nsw i64 %n.vec204, 2
  %i.jn = getelementptr i8, ptr %i.ap, i64 %i.jm
  %broadcast.splatinsert205 = insertelement <4 x i32> poison, i32 %.pre.i.i62.i, i64 0
  %broadcast.splat206 = shufflevector <4 x i32> %broadcast.splatinsert205, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph203
  %index208 = phi i64 [ 0, %vector.ph203 ], [ %index.next210, %vector.body207 ] ; 2 uses
  %i.jo = shl i64 %index208, 2
  %next.gep209 = getelementptr i8, ptr %i.ap, i64 %i.jo ; 2 uses
  %i.jp = getelementptr i8, ptr %next.gep209, i64 16
  store <4 x i32> %broadcast.splat206, ptr %next.gep209, align 4, !tbaa !629
  store <4 x i32> %broadcast.splat206, ptr %i.jp, align 4, !tbaa !629
  %index.next210 = add nuw i64 %index208, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next210, %n.vec204
  br i1 %i.jq, label %middle.block211, label %vector.body207, !llvm.loop !4663

middle.block211:                                  ; preds = %vector.body207
  %cmp.n212 = icmp eq i64 %i.bt, %n.vec204
  br i1 %cmp.n212, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i63.i.preheader

.lr.ph.i.i63.i.preheader:                         ; preds = %.lr.ph.preheader.i.i61.i, %middle.block211
  %.012.i.i64.i.ph = phi i64 [ %i.bt, %.lr.ph.preheader.i.i61.i ], [ %i.jl, %middle.block211 ]
  %.0511.i.i65.i.ph = phi ptr [ %i.ap, %.lr.ph.preheader.i.i61.i ], [ %i.jn, %middle.block211 ]
  br label %.lr.ph.i.i63.i

.lr.ph.i.i63.i:                                   ; preds = %.lr.ph.i.i63.i.preheader, %.lr.ph.i.i63.i
  %.012.i.i64.i = phi i64 [ %i.jr, %.lr.ph.i.i63.i ], [ %.012.i.i64.i.ph, %.lr.ph.i.i63.i.preheader ]
  %.0511.i.i65.i = phi ptr [ %i.js, %.lr.ph.i.i63.i ], [ %.0511.i.i65.i.ph, %.lr.ph.i.i63.i.preheader ] ; 2 uses
  %i.jr = add i64 %.012.i.i64.i, -1               ; 2 uses
  store i32 %.pre.i.i62.i, ptr %.0511.i.i65.i, align 4, !tbaa !629
  %i.js = getelementptr inbounds nuw i8, ptr %.0511.i.i65.i, i64 4
  %.not.i.i66.i = icmp eq i64 %i.jr, 0
  br i1 %.not.i.i66.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i63.i, !llvm.loop !4664

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i.i87, %.lr.ph.i.i63.i, %middle.block197, %middle.block211
  %i.jt = sub nuw i64 %i.ao, %i.a
  store i64 %i.jt, ptr %i.an, align 8, !tbaa !624
  %i.ju = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gd
  br label %bb.o

.thread:                                          ; preds = %bb.j, %bb.m, %bb.g, %bb.d
  %i.jv = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2, i64 %3)
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit71, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.m, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit ], [ %i.jv, %.thread ], [ %i.bp, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit71 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ], [ %i.ju, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.331", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !637  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !634  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !635  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !636    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not52 = icmp ult i64 %i.k, %i.l
  br i1 %.not52, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %.sroa.263.0..sroa_idx, align 8
  %i.r = icmp samesign ult i64 %i.p, %i.g
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.331") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvT0_mSB_SB_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.331") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.p, ptr %i.f, align 8, !tbaa !624
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !625
  %.pre70 = load ptr, ptr %0, align 8, !tbaa !636
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 4611686018427387903, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
end_hunk_5
begin_hunk_6_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE21resize_back_slow_pathIJRKS3_EEEvmmDpOT_:bb.a
  store i32 0, ptr %.018.i, align 4, !tbaa !629
  %i.bn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bp = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i19 = icmp eq ptr %i.bp, %i.bk
  br i1 %.not.i19, label %.lr.ph.i21, label %.lr.ph.i18, !llvm.loop !148

.lr.ph.i21:                                       ; preds = %.lr.ph.i18, %.lr.ph.i21
  %.06.i = phi ptr [ %i.bt, %.lr.ph.i21 ], [ %i.bj, %.lr.ph.i18 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !629
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bt = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i22 = icmp eq ptr %i.bt, %i.bk
  br i1 %.not.i22, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i21, !llvm.loop !88

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i21, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit
  %.not.i24 = icmp eq ptr %i.bh, null
  br i1 %.not.i24, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.bu = load i64, ptr %i.d, align 8, !tbaa !637
  %i.bv = shl i64 %i.bu, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bv) #30
  %.pre43 = load i64, ptr %i.x, align 8, !tbaa !634
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test24movable_and_copyable_intEEED2Ev.exit: ; preds = %bb.j, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.bw = phi i64 [ %.pre43, %bb.j ], [ %i.y, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit ]
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !636
  store i64 %i.p, ptr %i.d, align 8, !tbaa !626
  %i.bx = add i64 %i.bw, %2
  store i64 %i.bx, ptr %i.x, align 8, !tbaa !625
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 23 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add i64 %.06.i.i, 1                      ; 18 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !636
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !635
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !636    ; 10 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !634  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 17 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !637
  %i.s = sub i64 %i.r, %i.n
  %.not49.not = icmp ugt i64 %i.s, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.u = load i32, ptr %i.t, align 4, !tbaa !259
  store i32 %i.u, ptr %.015.i, align 4, !tbaa !629
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.x = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !677 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.x, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, label %.lr.ph.i, !llvm.loop !155

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit: ; preds = %.lr.ph.i
  %i.z = add i64 %i.n, %i.a
  store i64 %i.z, ptr %i.m, align 8, !tbaa !625
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !635 ; 8 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab ; 15 uses
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = xor i64 %.06.i.i, -1
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.al, %.lr.ph.i51 ], [ %i.af, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !259
  store i32 %i.ah, ptr %.015.i52, align 4, !tbaa !629
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ak = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !677 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.ak, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56, label %.lr.ph.i51, !llvm.loop !155

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56: ; preds = %.lr.ph.i51
  %i.am = sub nuw i64 %i.ab, %i.a                 ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !624
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.am
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.ap = ptrtoint ptr %i.ac to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %i.as = sub i64 %i.n, %i.ab
  %i.at = lshr i64 %i.as, 1
  %.not = icmp ult i64 %i.ar, %i.at
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !637
  %i.aw = sub i64 %i.av, %i.n
  %.not47.not = icmp ugt i64 %i.aw, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = sub i64 %i.ax, %i.ao
  %i.az = ashr exact i64 %i.ay, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.az, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ba = xor i64 %.06.i.i, -1
  %i.bb = getelementptr [4 x i8], ptr %i.o, i64 %i.ba ; 10 uses
  %i.bc = and i64 %.06.i.i, 1
  %lcmp.mod178.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod178.not.not, label %.lr.ph.i.i58.prol, label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol:                                ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !629
  store i32 %i.bd, ptr %i.o, align 4, !tbaa !629
  store i32 0, ptr %i.bb, align 4, !tbaa !629
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %.06.i.i, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bb, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.j ], [ %i.bh, %.lr.ph.i.i58.prol ]
  %i.bi = icmp eq i64 %.06.i.i, 0
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bo, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bs, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.bt, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bj = load i32, ptr %.0819.i.i, align 4, !tbaa !629
  store i32 %i.bj, ptr %.01618.i.i, align 4, !tbaa !629
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !629
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bo = add nsw i64 %.020.i.i, -2               ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !629
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !629
  store i32 0, ptr %i.bm, align 4, !tbaa !629
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i59.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i59.1, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58, !llvm.loop !146

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bb
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %i.bu = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.bu, %i.ao
  %i.bv = add i64 %reass.sub, -8
  %i.bw = add i64 %i.bv, %i.l
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add i64 %i.bx, %i.n
  %i.bz = and i64 %i.by, 4611686018427387903      ; 2 uses
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bz, 43
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.cb = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.k, i64 %i.cb
  %scevgep = getelementptr i8, ptr %i.cc, i64 -4
  %i.cd = add i64 %i.cb, %i.l
  %i.ce = mul i64 %.06.i.i, -4                    ; 2 uses
  %reass.sub164 = sub i64 %i.ce, %i.ao
  %i.cf = add i64 %reass.sub164, -8
  %i.cg = add i64 %i.cd, %i.cf                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = mul i64 %i.ch, -4
  %scevgep136 = getelementptr i8, ptr %scevgep, i64 %i.ci
  %scevgep137 = getelementptr i8, ptr %i.k, i64 %i.cb
  %i.cj = add i64 %i.ce, -8
  %i.ck = and i64 %i.cg, -4
  %i.cl = sub i64 %i.cj, %i.ck
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.cl
  %bound0 = icmp ult ptr %scevgep136, %i.bb
  %bound1 = icmp ult ptr %scevgep138, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ca, 9223372036854775800     ; 3 uses
  %i.cm = mul i64 %n.vec, -4                      ; 2 uses
  %i.cn = getelementptr i8, ptr %i.o, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bb, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.cp ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.bb, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep139, i64 -16 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep139, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cq, align 4, !tbaa !629, !alias.scope !4934
  %wide.load140 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !629, !alias.scope !4934
  %i.cs = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cs, align 4, !tbaa !629, !alias.scope !4935, !noalias !4934
  store <4 x i32> %wide.load140, ptr %i.ct, align 4, !tbaa !629, !alias.scope !4935, !noalias !4934
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !629, !alias.scope !4934
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !629, !alias.scope !4934
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !4923

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader170

.lr.ph.i40.i.preheader170:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.cn, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i40.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader170, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cw, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader170 ]
  %.079.i.i = phi ptr [ %i.cv, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader170 ]
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !629
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !629
  store i32 0, ptr %i.cv, align 4, !tbaa !629
  %.not.i41.i = icmp eq ptr %1, %i.cv
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !4924

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %xtraiter180 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.dc, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cy = add nsw i64 %.09.i.i.i.prol, -1         ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !259
  store i32 %i.da, ptr %.048.i.i.i.prol, align 4, !tbaa !629
  %i.db = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !4925

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.db, %.lr.ph.i.i.i.prol ]
  %i.dd = icmp ult i64 %.06.i.i, 3
  br i1 %i.dd, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.df = load i32, ptr %i.de, align 4, !tbaa !259
  store i32 %i.df, ptr %.048.i.i.i, align 4, !tbaa !629
  %i.dg = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !259
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !629
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !677 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !259
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !629
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !677 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.dq = add nsw i64 %.09.i.i.i, -4              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !259
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !629
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !677
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !156

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dz, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.ea, %.lr.ph.i48.i ], [ %i.dv, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.dw = load i32, ptr %.018.i.i, align 4, !tbaa !629
  store i32 %i.dw, ptr %.01517.i.i, align 4, !tbaa !629
  store i32 0, ptr %.018.i.i, align 4, !tbaa !629
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dz = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dz, %i.o
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !148

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.eb, %.lr.ph.i.i52.i.prol ], [ %i.az, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ef, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ee, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.eb = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !259
  store i32 %i.ed, ptr %.048.i.i54.i.prol, align 4, !tbaa !629
  %i.ee = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !677 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !4926

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa172.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ee, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.az, %.lr.ph.i.i52.i.preheader ], [ %i.eb, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ef, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ee, %.lr.ph.i.i52.i.prol ]
  %i.eg = icmp ult i64 %i.az, 4
  br i1 %i.eg, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.et, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ex, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.ew, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !259
  store i32 %i.ei, ptr %.048.i.i54.i, align 4, !tbaa !629
  %i.ej = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !677 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = load i32, ptr %i.el, align 4, !tbaa !259
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !629
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !677 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !259
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !629
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !677 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.et = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !259
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !629
  %i.ew = load ptr, ptr %i.er, align 8, !tbaa !677 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !156

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa172 = phi ptr [ %.lcssa172.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.ew, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ey = sub i64 %i.a, %i.az                     ; 3 uses
  %xtraiter174 = and i64 %i.ey, 1
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.lcssa172, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !259
  store i32 %i.fa, ptr %i.o, align 4, !tbaa !629
  %i.fb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fd = load ptr, ptr %.lcssa172, align 8, !tbaa !677
  %i.fe = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ff = add nsw i64 %i.ey, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ey, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.ff, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fe, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa172, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %i.fg = icmp eq i64 %.06.i.i, %i.az
  br i1 %i.fg, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !259
  store i32 %i.fi, ptr %.01417.i.i.i, align 4, !tbaa !629
  %i.fj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fl = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !259
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !629
  %i.fp = add i32 %i.fj, 2
  store i32 %i.fp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !677
  %i.fr = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fs = add nsw i64 %.018.i.i.i, -2             ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i, !llvm.loop !157

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ft = add i64 %i.n, %i.a
  store i64 %i.ft, ptr %i.m, align 8, !tbaa !625
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.ar, %.06.i.i
  %i.fu = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fu ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fw = icmp eq i64 %.06.i.i, 0
  br i1 %i.fw, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader.new ], [ %i.gf, %.lr.ph.i.i62 ] ; 4 uses
  %.01618.i.i64 = phi ptr [ %i.fv, %.lr.ph.i.i62.preheader.new ], [ %i.gg, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fx = load i32, ptr %.0919.i.i, align 4, !tbaa !629
  store i32 %i.fx, ptr %.01618.i.i64, align 4, !tbaa !629
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !629
  %i.fy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ga = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !629
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !629
  store i32 0, ptr %i.ga, align 4, !tbaa !629
  %i.gd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gf = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !150

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.gh = and i64 %.06.i.i, 1
  %lcmp.mod190.not.not = icmp eq i64 %i.gh, 0
  br i1 %lcmp.mod190.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader ], [ %i.gf, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.fv, %.lr.ph.i.i62.preheader ], [ %i.gg, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.gi = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !629
  store i32 %i.gi, ptr %.01618.i.i64.epil.init, align 4, !tbaa !629
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !629
  %i.gj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gl = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa166 = phi ptr [ %i.gf, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %i.gl, %.lr.ph.i.i62.epil.preheader ] ; 6 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa166, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %i.gm = add i64 %i.ao, -8
  %i.gn = add i64 %.06.i.i, %i.ab
  %i.go = shl i64 %i.gn, 2
  %i.gp = add i64 %i.go, %i.l
  %i.gq = sub i64 %i.gm, %i.gp                    ; 2 uses
  %i.gr = lshr i64 %i.gq, 2
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.gq, 172
  br i1 %min.iters.check150, label %.lr.ph.i40.i67.preheader165, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.gt = shl nuw nsw i64 %i.ab, 2                ; 3 uses
  %i.gu = getelementptr i8, ptr %i.k, i64 %i.gt
  %scevgep143 = getelementptr i8, ptr %i.gu, i64 4
  %i.gv = add i64 %i.gt, %i.l
  %i.gw = add i64 %i.ao, -8
  %i.gx = shl i64 %.06.i.i, 2
  %i.gy = add i64 %i.gx, %i.gv
  %i.gz = sub i64 %i.gw, %i.gy
  %i.ha = and i64 %i.gz, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.ha
  %i.hb = shl i64 %indvar.lcssa, 2
  %i.hc = getelementptr i8, ptr %i.k, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.gt
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %scevgep145 = getelementptr i8, ptr %i.he, i64 %i.ha
  %bound0146 = icmp ult ptr %i.ac, %scevgep145
  %bound1147 = icmp ult ptr %.lcssa166, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.i40.i67.preheader165, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck142
  %n.vec152 = and i64 %i.gs, 9223372036854775800  ; 3 uses
  %i.hf = shl i64 %n.vec152, 2                    ; 2 uses
  %i.hg = getelementptr i8, ptr %i.ac, i64 %i.hf  ; 2 uses
  %i.hh = getelementptr i8, ptr %.lcssa166, i64 %i.hf
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.hi = shl i64 %index154, 2                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.ac, i64 %i.hi ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.lcssa166, i64 %i.hi ; 3 uses
  %i.hj = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !629, !alias.scope !4936
  %wide.load158 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !629, !alias.scope !4936
  %i.hk = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %wide.load157, ptr %next.gep155, align 4, !tbaa !629, !alias.scope !4937, !noalias !4936
  store <4 x i32> %wide.load158, ptr %i.hk, align 4, !tbaa !629, !alias.scope !4937, !noalias !4936
  store <4 x i32> zeroinitializer, ptr %next.gep156, align 4, !tbaa !629, !alias.scope !4936
  store <4 x i32> zeroinitializer, ptr %i.hj, align 4, !tbaa !629, !alias.scope !4936
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.hl, label %middle.block160, label %vector.body153, !llvm.loop !4930

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.gs, %n.vec152
  br i1 %cmp.n161, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader165

.lr.ph.i40.i67.preheader165:                      ; preds = %vector.memcheck142, %.lr.ph.i40.i67.preheader, %middle.block160
  %.010.i.i68.ph = phi ptr [ %i.ac, %vector.memcheck142 ], [ %i.ac, %.lr.ph.i40.i67.preheader ], [ %i.hg, %middle.block160 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa166, %vector.memcheck142 ], [ %.lcssa166, %.lr.ph.i40.i67.preheader ], [ %i.hh, %middle.block160 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader165, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.ho, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader165 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.hn, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader165 ] ; 3 uses
  %i.hm = load i32, ptr %.079.i.i69, align 4, !tbaa !629
  store i32 %i.hm, ptr %.010.i.i68, align 4, !tbaa !629
  store i32 0, ptr %.079.i.i69, align 4, !tbaa !629
  %i.hn = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.hn, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !4931

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block160, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ac, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i ], [ %i.hg, %middle.block160 ], [ %i.ho, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter194 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.hp, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.ht, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.hs, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.hp = add nsw i64 %.09.i.i.i73.prol, -1       ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !259
  store i32 %i.hr, ptr %.048.i.i.i74.prol, align 4, !tbaa !629
  %i.hs = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !677 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !4932

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.hp, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.ht, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.hs, %.lr.ph.i.i.i72.prol ]
  %i.hu = icmp ult i64 %.06.i.i, 3
  br i1 %i.hu, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.ih, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.il, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.ik, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !259
  store i32 %i.hw, ptr %.048.i.i.i74, align 4, !tbaa !629
  %i.hx = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !677 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !259
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !629
  %i.ib = load ptr, ptr %i.hx, align 8, !tbaa !677 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !259
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !629
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !677 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.ih = add nsw i64 %.09.i.i.i73, -4            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !259
  store i32 %i.ij, ptr %i.ig, align 4, !tbaa !629
  %i.ik = load ptr, ptr %i.if, align 8, !tbaa !677
  %i.il = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72, !llvm.loop !156

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.ip, %.lr.ph.i48.i78 ], [ %i.ac, %bb.l ] ; 3 uses
  %.01517.i.i80 = phi ptr [ %i.iq, %.lr.ph.i48.i78 ], [ %i.fv, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.im = load i32, ptr %.018.i.i79, align 4, !tbaa !629
  store i32 %i.im, ptr %.01517.i.i80, align 4, !tbaa !629
  store i32 0, ptr %.018.i.i79, align 4, !tbaa !629
  %i.in = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ip = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.ip, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !148

_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.ir = sub i64 %i.a, %i.ar                     ; 3 uses
  %xtraiter183 = and i64 %i.ir, 1
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !259
  store i32 %i.it, ptr %i.iq, align 4, !tbaa !629
  %i.iu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.iw = load ptr, ptr %2, align 8, !tbaa !677   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.iy = add nsw i64 %i.ir, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.lcssa168.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.iw, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.ir, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.iy, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.iq, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ix, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.iw, %.lr.ph.i.i51.i.prol ]
  %i.iz = icmp eq i64 %.06.i.i, %i.ar
  br i1 %i.iz, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.jl, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.jk, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.jj, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !259
  store i32 %i.jb, ptr %.01417.i.i.i83, align 4, !tbaa !629
  %i.jc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.jd = add i32 %i.jc, 1
  store i32 %i.jd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.je = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !677 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !259
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !629
  %i.ji = add i32 %i.jc, 2
  store i32 %i.ji, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !677 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.jl = add nsw i64 %.018.i.i.i82, -2           ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !157

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa168 = phi ptr [ %.lcssa168.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.jj, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter186 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.jm, %.lr.ph.i.i56.i.prol ], [ %i.ar, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.jq, %.lr.ph.i.i56.i.prol ], [ %i.ac, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.jp, %.lr.ph.i.i56.i.prol ], [ %.lcssa168, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.jm = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !259
  store i32 %i.jo, ptr %.048.i.i58.i.prol, align 4, !tbaa !629
  %i.jp = load ptr, ptr %.sroa.0.07.i.i59.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.048.i.i58.i.prol, i64 4 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol, !llvm.loop !4933

.lr.ph.i.i56.i.prol.loopexit:                     ; preds = %.lr.ph.i.i56.i.prol, %.lr.ph.i.i56.i.preheader
  %.09.i.i57.i.unr = phi i64 [ %i.ar, %.lr.ph.i.i56.i.preheader ], [ %i.jm, %.lr.ph.i.i56.i.prol ]
  %.048.i.i58.i.unr = phi ptr [ %i.ac, %.lr.ph.i.i56.i.preheader ], [ %i.jq, %.lr.ph.i.i56.i.prol ]
  %.sroa.0.07.i.i59.i.unr = phi ptr [ %.lcssa168, %.lr.ph.i.i56.i.preheader ], [ %i.jp, %.lr.ph.i.i56.i.prol ]
  %i.jr = icmp ult i64 %i.ar, 4
  br i1 %i.jr, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i
  %.09.i.i57.i = phi i64 [ %i.ke, %.lr.ph.i.i56.i ], [ %.09.i.i57.i.unr, %.lr.ph.i.i56.i.prol.loopexit ]
  %.048.i.i58.i = phi ptr [ %i.ki, %.lr.ph.i.i56.i ], [ %.048.i.i58.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i59.i = phi ptr [ %i.kh, %.lr.ph.i.i56.i ], [ %.sroa.0.07.i.i59.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i, i64 16
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !259
  store i32 %i.jt, ptr %.048.i.i58.i, align 4, !tbaa !629
  %i.ju = load ptr, ptr %.sroa.0.07.i.i59.i, align 8, !tbaa !677 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !259
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !629
  %i.jy = load ptr, ptr %i.ju, align 8, !tbaa !677 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !259
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !629
  %i.kc = load ptr, ptr %i.jy, align 8, !tbaa !677 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 12
  %i.ke = add i64 %.09.i.i57.i, -4                ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !259
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !629
  %i.kh = load ptr, ptr %i.kc, align 8, !tbaa !677
  %i.ki = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 16
  %.not.i.i60.i.3 = icmp eq i64 %i.ke, 0
  br i1 %.not.i.i60.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i56.i, !llvm.loop !156

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i, %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %i.kj = sub nuw i64 %i.ab, %i.a
  store i64 %i.kj, ptr %i.aa, align 8, !tbaa !624
  %i.kk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fu
  br label %bb.m

.thread:                                          ; preds = %bb.h, %bb.k, %bb.e, %bb.c
  %i.kl = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit ], [ %i.kl, %.thread ], [ %i.an, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test24movable_and_copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ], [ %i.kk, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !637  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !634  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !635  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !636    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test24movable_and_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvT0_mSB_SB_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !624
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !625
  %.pre65 = load ptr, ptr %0, align 8, !tbaa !636
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 4611686018427387903, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 4611686018427387903)
  %i.ac = select i1 %i.z, i64 4611686018427387903, i64 %i.ab
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit
  %i.ae = icmp ugt i64 %i.ad, 2305843009213693951
  br i1 %i.ae, label %bb.l, label %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ugt i64 %i.t, 4611686018427387903
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i: ; preds = %bb.k
  %i.ag = shl nuw nsw i64 %i.ad, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #29
  %.pre = load i64, ptr %i.c, align 8, !tbaa !634
  %.pre62 = load i64, ptr %i.f, align 8, !tbaa !635
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !636
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i
  %i.ai = phi ptr [ %.pre63, %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.aj = phi i64 [ %.pre62, %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.ak = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %.0.i.i52 = phi ptr [ %i.ah, %_ZN5boost9container16allocator_traitsISaINS0_4test24movable_and_copyable_intEEE8allocateERS4_m.exit.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !711
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !711
  %i.ao = sub i64 %i.ak, %i.aj
  %i.ap = add i64 %2, %i.ao                       ; 2 uses
  %i.aq = sub i64 %i.ad, %i.ap
  %i.ar = lshr i64 %i.aq, 1                       ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak ; 3 uses
  %.not16.i.i = icmp eq ptr %i.at, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24movable_and_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %i.at, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.as, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
end_hunk_6
begin_hunk_7_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SC_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i) ]
  %i.fh = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.fh, ptr %.01821.i.i.i, align 4, !tbaa !646
  %i.fi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fk = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 4
  %i.fl = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !646
  %i.fm = add i32 %i.fi, 2
  store i32 %i.fm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fn = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 8
  %i.fo = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !646
  %i.fp = add i32 %i.fi, 3
  store i32 %i.fp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fq = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 12
  %i.fr = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !646
  %i.fs = add i32 %i.fi, 4
  store i32 %i.fs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ft = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 16
  %i.fu = add i64 %.022.i.i.i, -4                 ; 2 uses
  %.not.i.i67.i.3 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i67.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i66.i, !llvm.loop !175

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i66.i.prol.loopexit, %.lr.ph.i.i66.i, %middle.block149
  %i.fv = add i64 %i.k, %i.a
  store i64 %i.fv, ptr %i.j, align 8, !tbaa !642
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %.not61 = icmp ult i64 %i.an, %i.a
  br i1 %.not61, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i74 = icmp ult i64 %i.bs, %i.a
  %i.fw = sub i64 0, %i.a                         ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.fw ; 3 uses
  br i1 %.not.i74, label %.lr.ph.i48.i92, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %bb.n
  %.neg = add i64 %5, 1
  %xtraiter221 = and i64 %i.a, 1
  %i.fy = icmp eq i64 %3, %.neg
  br i1 %i.fy, label %.lr.ph.i.i76.epil.preheader, label %.lr.ph.i.i76.preheader.new

.lr.ph.i.i76.preheader.new:                       ; preds = %.lr.ph.i.i76.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76, %.lr.ph.i.i76.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i76 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ao, %.lr.ph.i.i76.preheader.new ], [ %i.gg, %.lr.ph.i.i76 ] ; 3 uses
  %.01618.i.i78 = phi ptr [ %i.fx, %.lr.ph.i.i76.preheader.new ], [ %i.gh, %.lr.ph.i.i76 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %niter.next.1, %.lr.ph.i.i76 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78) ]
  %i.fz = load i32, ptr %.0919.i.i, align 4, !tbaa !646
  store i32 %i.fz, ptr %.01618.i.i78, align 4, !tbaa !646
  %i.ga = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gc = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 4
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !646
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !646
  %i.gf = add i32 %i.ga, 2
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gg = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, label %.lr.ph.i.i76, !llvm.loop !171

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i76
  %indvar.next = or disjoint i64 %indvar, 1
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i76.epil.preheader

.lr.ph.i.i76.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i76.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ao, %.lr.ph.i.i76.preheader ], [ %i.gg, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 2 uses
  %.01618.i.i78.epil.init = phi ptr [ %i.fx, %.lr.ph.i.i76.preheader ], [ %i.gh, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod225 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78.epil.init) ]
  %i.gi = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !646
  store i32 %i.gi, ptr %.01618.i.i78.epil.init, align 4, !tbaa !646
  %i.gj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gl = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i76.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i76.epil.preheader ]
  %.lcssa215 = phi ptr [ %i.gg, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %i.gl, %.lr.ph.i.i76.epil.preheader ] ; 5 uses
  %.not8.i.i80 = icmp eq ptr %.lcssa215, %1
  br i1 %.not8.i.i80, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader

.lr.ph.i40.i81.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %i.gm = shl i64 %5, 2
  %i.gn = ptrtoaddr ptr %i.b to i64
  %i.go = add i64 %i.an, %3
  %i.gp = shl i64 %i.go, 2
  %i.gq = add i64 %i.gm, %i.bp
  %i.gr = add i64 %i.gq, -4
  %i.gs = add i64 %i.gp, %i.gn
  %i.gt = sub i64 %i.gr, %i.gs                    ; 2 uses
  %i.gu = lshr i64 %i.gt, 2
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %min.iters.check170 = icmp ult i64 %i.gt, 76
  br i1 %min.iters.check170, label %.lr.ph.i40.i81.preheader213, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i40.i81.preheader
  %i.gw = shl i64 %indvar.lcssa, 2
  %i.gx = add i64 %i.gw, 35
  %diff.check168 = icmp ult i64 %i.gx, 31
  br i1 %diff.check168, label %.lr.ph.i40.i81.preheader213, label %vector.ph171

vector.ph171:                                     ; preds = %vector.memcheck167
  %n.vec172 = and i64 %i.gv, 9223372036854775800  ; 3 uses
  %i.gy = shl i64 %n.vec172, 2                    ; 2 uses
  %i.gz = getelementptr i8, ptr %i.ao, i64 %i.gy  ; 2 uses
  %i.ha = getelementptr i8, ptr %.lcssa215, i64 %i.gy
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next179, %vector.body173 ] ; 2 uses
  %i.hb = shl i64 %index174, 2                    ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.ao, i64 %i.hb ; 2 uses
  %next.gep176 = getelementptr i8, ptr %.lcssa215, i64 %i.hb ; 2 uses
  %i.hc = getelementptr i8, ptr %next.gep176, i64 16
  %wide.load177 = load <4 x i32>, ptr %next.gep176, align 4, !tbaa !646
  %wide.load178 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !646
  %i.hd = getelementptr i8, ptr %next.gep175, i64 16
  store <4 x i32> %wide.load177, ptr %next.gep175, align 4, !tbaa !646
  store <4 x i32> %wide.load178, ptr %i.hd, align 4, !tbaa !646
  %index.next179 = add nuw i64 %index174, 8       ; 2 uses
  %i.he = icmp eq i64 %index.next179, %n.vec172
  br i1 %i.he, label %middle.block180, label %vector.body173, !llvm.loop !5543

middle.block180:                                  ; preds = %vector.body173
  %cmp.n181 = icmp eq i64 %i.gv, %n.vec172
  br i1 %cmp.n181, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader213

.lr.ph.i40.i81.preheader213:                      ; preds = %vector.memcheck167, %.lr.ph.i40.i81.preheader, %middle.block180
  %.010.i.i82.ph = phi ptr [ %i.ao, %vector.memcheck167 ], [ %i.ao, %.lr.ph.i40.i81.preheader ], [ %i.gz, %middle.block180 ]
  %.079.i.i83.ph = phi ptr [ %.lcssa215, %vector.memcheck167 ], [ %.lcssa215, %.lr.ph.i40.i81.preheader ], [ %i.ha, %middle.block180 ]
  br label %.lr.ph.i40.i81

.lr.ph.i40.i81:                                   ; preds = %.lr.ph.i40.i81.preheader213, %.lr.ph.i40.i81
  %.010.i.i82 = phi ptr [ %i.hh, %.lr.ph.i40.i81 ], [ %.010.i.i82.ph, %.lr.ph.i40.i81.preheader213 ] ; 2 uses
  %.079.i.i83 = phi ptr [ %i.hg, %.lr.ph.i40.i81 ], [ %.079.i.i83.ph, %.lr.ph.i40.i81.preheader213 ] ; 2 uses
  %i.hf = load i32, ptr %.079.i.i83, align 4, !tbaa !646
  store i32 %i.hf, ptr %.010.i.i82, align 4, !tbaa !646
  %i.hg = getelementptr inbounds nuw i8, ptr %.079.i.i83, i64 4 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i82, i64 4 ; 2 uses
  %.not.i41.i84 = icmp eq ptr %i.hg, %1
  br i1 %.not.i41.i84, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81, !llvm.loop !5544

.lr.ph.preheader.i.i.i85:                         ; preds = %.lr.ph.i40.i81, %middle.block180, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.ao, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i ], [ %i.gz, %middle.block180 ], [ %i.hh, %.lr.ph.i40.i81 ] ; 3 uses
  %.pre.i.i.i86 = load i32, ptr %2, align 4, !tbaa !646 ; 2 uses
  %min.iters.check185 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check185, label %.lr.ph.i.i.i87.preheader, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph.preheader.i.i.i85
  %n.vec187 = and i64 %i.a, -8                    ; 3 uses
  %i.hi = and i64 %i.a, 7
  %i.hj = shl i64 %n.vec187, 2
  %i.hk = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.hj
  %broadcast.splatinsert188 = insertelement <4 x i32> poison, i32 %.pre.i.i.i86, i64 0
  %broadcast.splat189 = shufflevector <4 x i32> %broadcast.splatinsert188, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph186
  %index191 = phi i64 [ 0, %vector.ph186 ], [ %index.next193, %vector.body190 ] ; 2 uses
  %i.hl = shl i64 %index191, 2
  %next.gep192 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.hl ; 2 uses
  %i.hm = getelementptr i8, ptr %next.gep192, i64 16
  store <4 x i32> %broadcast.splat189, ptr %next.gep192, align 4, !tbaa !646
  store <4 x i32> %broadcast.splat189, ptr %i.hm, align 4, !tbaa !646
  %index.next193 = add nuw i64 %index191, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next193, %n.vec187
  br i1 %i.hn, label %middle.block194, label %vector.body190, !llvm.loop !5545

middle.block194:                                  ; preds = %vector.body190
  %cmp.n195 = icmp eq i64 %i.a, %n.vec187
  br i1 %cmp.n195, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i87.preheader

.lr.ph.i.i.i87.preheader:                         ; preds = %.lr.ph.preheader.i.i.i85, %middle.block194
  %.012.i.i.i88.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i85 ], [ %i.hi, %middle.block194 ]
  %.0511.i.i.i89.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph.preheader.i.i.i85 ], [ %i.hk, %middle.block194 ]
  br label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %.lr.ph.i.i.i87.preheader, %.lr.ph.i.i.i87
  %.012.i.i.i88 = phi i64 [ %i.ho, %.lr.ph.i.i.i87 ], [ %.012.i.i.i88.ph, %.lr.ph.i.i.i87.preheader ]
  %.0511.i.i.i89 = phi ptr [ %i.hp, %.lr.ph.i.i.i87 ], [ %.0511.i.i.i89.ph, %.lr.ph.i.i.i87.preheader ] ; 2 uses
  %i.ho = add nsw i64 %.012.i.i.i88, -1           ; 2 uses
  store i32 %.pre.i.i.i86, ptr %.0511.i.i.i89, align 4, !tbaa !646
  %i.hp = getelementptr inbounds nuw i8, ptr %.0511.i.i.i89, i64 4
  %.not.i.i.i90 = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i.i90, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i87, !llvm.loop !5546

.lr.ph.i48.i92:                                   ; preds = %bb.n, %.lr.ph.i48.i92
  %.018.i.i93 = phi ptr [ %i.ht, %.lr.ph.i48.i92 ], [ %i.ao, %bb.n ] ; 2 uses
  %.01517.i.i94 = phi ptr [ %i.hu, %.lr.ph.i48.i92 ], [ %i.fx, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i94) ]
  %i.hq = load i32, ptr %.018.i.i93, align 4, !tbaa !646
  store i32 %i.hq, ptr %.01517.i.i94, align 4, !tbaa !646
  %i.hr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ht = getelementptr inbounds nuw i8, ptr %.018.i.i93, i64 4 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.01517.i.i94, i64 4 ; 3 uses
  %.not.i49.i95 = icmp eq ptr %i.ht, %1
  br i1 %.not.i49.i95, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i48.i92, !llvm.loop !169

_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i48.i92
  %i.hv = sub i64 %i.a, %i.bs                     ; 3 uses
  %xtraiter226 = and i64 %i.hv, 3                 ; 2 uses
  %lcmp.mod227.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol

.lr.ph.i.i53.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, %.lr.ph.i.i53.i.prol
  %.022.i.i.i96.prol = phi i64 [ %i.ia, %.lr.ph.i.i53.i.prol ], [ %i.hv, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ]
  %.01821.i.i.i97.prol = phi ptr [ %i.hz, %.lr.ph.i.i53.i.prol ], [ %i.hu, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ] ; 2 uses
  %prol.iter228 = phi i64 [ %prol.iter228.next, %.lr.ph.i.i53.i.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ]
  %i.hw = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.hw, ptr %.01821.i.i.i97.prol, align 4, !tbaa !646
  %i.hx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hz = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97.prol, i64 4 ; 2 uses
  %i.ia = add i64 %.022.i.i.i96.prol, -1          ; 2 uses
  %prol.iter228.next = add i64 %prol.iter228, 1   ; 2 uses
  %prol.iter228.cmp.not = icmp eq i64 %prol.iter228.next, %xtraiter226
  br i1 %prol.iter228.cmp.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol, !llvm.loop !5547

.lr.ph.i.i53.i.prol.loopexit:                     ; preds = %.lr.ph.i.i53.i.prol, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.022.i.i.i96.unr = phi i64 [ %i.hv, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ia, %.lr.ph.i.i53.i.prol ]
  %.01821.i.i.i97.unr = phi ptr [ %i.hu, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.hz, %.lr.ph.i.i53.i.prol ]
  %i.ib = sub i64 %i.bs, %3
  %i.ic = add i64 %i.ib, %5
  %i.id = icmp ugt i64 %i.ic, -4
  br i1 %i.id, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i
  %.022.i.i.i96 = phi i64 [ %i.ir, %.lr.ph.i.i53.i ], [ %.022.i.i.i96.unr, %.lr.ph.i.i53.i.prol.loopexit ]
  %.01821.i.i.i97 = phi ptr [ %i.iq, %.lr.ph.i.i53.i ], [ %.01821.i.i.i97.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 5 uses
  %i.ie = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.ie, ptr %.01821.i.i.i97, align 4, !tbaa !646
  %i.if = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ih = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 4
  %i.ii = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.ii, ptr %i.ih, align 4, !tbaa !646
  %i.ij = add i32 %i.if, 2
  store i32 %i.ij, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ik = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 8
  %i.il = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.il, ptr %i.ik, align 4, !tbaa !646
  %i.im = add i32 %i.if, 3
  store i32 %i.im, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.in = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 12
  %i.io = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.io, ptr %i.in, align 4, !tbaa !646
  %i.ip = add i32 %i.if, 4
  store i32 %i.ip, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.iq = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 16
  %i.ir = add i64 %.022.i.i.i96, -4               ; 2 uses
  %.not.i.i54.i.3 = icmp eq i64 %i.ir, 0
  br i1 %.not.i.i54.i.3, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i, !llvm.loop !175

.lr.ph.preheader.i.i61.i:                         ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.prol.loopexit
  %.pre.i.i62.i = load i32, ptr %2, align 4, !tbaa !646 ; 2 uses
  %min.iters.check199 = icmp ult i64 %i.bs, 8
  br i1 %min.iters.check199, label %.lr.ph.i.i63.i.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.preheader.i.i61.i
  %n.vec201 = and i64 %i.bs, -8                   ; 3 uses
  %i.is = and i64 %i.bs, 7
  %i.it = shl nsw i64 %n.vec201, 2
  %i.iu = getelementptr i8, ptr %i.ao, i64 %i.it
  %broadcast.splatinsert202 = insertelement <4 x i32> poison, i32 %.pre.i.i62.i, i64 0
  %broadcast.splat203 = shufflevector <4 x i32> %broadcast.splatinsert202, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph200
  %index205 = phi i64 [ 0, %vector.ph200 ], [ %index.next207, %vector.body204 ] ; 2 uses
  %i.iv = shl i64 %index205, 2
  %next.gep206 = getelementptr i8, ptr %i.ao, i64 %i.iv ; 2 uses
  %i.iw = getelementptr i8, ptr %next.gep206, i64 16
  store <4 x i32> %broadcast.splat203, ptr %next.gep206, align 4, !tbaa !646
  store <4 x i32> %broadcast.splat203, ptr %i.iw, align 4, !tbaa !646
  %index.next207 = add nuw i64 %index205, 8       ; 2 uses
  %i.ix = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.ix, label %middle.block208, label %vector.body204, !llvm.loop !5548

middle.block208:                                  ; preds = %vector.body204
  %cmp.n209 = icmp eq i64 %i.bs, %n.vec201
  br i1 %cmp.n209, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i63.i.preheader

.lr.ph.i.i63.i.preheader:                         ; preds = %.lr.ph.preheader.i.i61.i, %middle.block208
  %.012.i.i64.i.ph = phi i64 [ %i.bs, %.lr.ph.preheader.i.i61.i ], [ %i.is, %middle.block208 ]
  %.0511.i.i65.i.ph = phi ptr [ %i.ao, %.lr.ph.preheader.i.i61.i ], [ %i.iu, %middle.block208 ]
  br label %.lr.ph.i.i63.i

.lr.ph.i.i63.i:                                   ; preds = %.lr.ph.i.i63.i.preheader, %.lr.ph.i.i63.i
  %.012.i.i64.i = phi i64 [ %i.iy, %.lr.ph.i.i63.i ], [ %.012.i.i64.i.ph, %.lr.ph.i.i63.i.preheader ]
  %.0511.i.i65.i = phi ptr [ %i.iz, %.lr.ph.i.i63.i ], [ %.0511.i.i65.i.ph, %.lr.ph.i.i63.i.preheader ] ; 2 uses
  %i.iy = add i64 %.012.i.i64.i, -1               ; 2 uses
  store i32 %.pre.i.i62.i, ptr %.0511.i.i65.i, align 4, !tbaa !646
  %i.iz = getelementptr inbounds nuw i8, ptr %.0511.i.i65.i, i64 4
  %.not.i.i66.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i.i66.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i63.i, !llvm.loop !5549

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i.i87, %.lr.ph.i.i63.i, %middle.block194, %middle.block208
  %i.ja = sub nuw i64 %i.an, %i.a
  store i64 %i.ja, ptr %i.am, align 8, !tbaa !641
  %i.jb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fw
  br label %bb.o

.thread:                                          ; preds = %bb.j, %bb.m, %bb.g, %bb.d
  %i.jc = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2, i64 %3)
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit71, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, %bb.b
  %.1 = phi ptr [ %i.i, %bb.b ], [ %i.l, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit ], [ %i.jc, %.thread ], [ %i.bo, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEENS0_17constant_iteratorIS3_EEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit71 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ], [ %i.jb, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.361", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !654  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !651  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !652  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !653    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not52 = icmp ult i64 %i.k, %i.l
  br i1 %.not52, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %.sroa.263.0..sroa_idx, align 8
  %i.r = icmp samesign ult i64 %i.p, %i.g
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.361") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_NS0_17constant_iteratorIS3_EEEEEEvT0_mSB_SB_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.361") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ENS0_17constant_iteratorIS3_EEEES7_EEvT_mSB_SB_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.p, ptr %i.f, align 8, !tbaa !641
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !642
  %.pre71 = load ptr, ptr %0, align 8, !tbaa !653
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 4611686018427387903, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j
end_hunk_7
begin_hunk_8_@_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE21resize_back_slow_pathIJRKS3_EEEvmmDpOT_:bb.a
  %.not.i19 = icmp eq ptr %i.cg, %i.bk
  br i1 %.not.i19, label %.lr.ph.i21.preheader, label %.lr.ph.i18, !llvm.loop !5741

.lr.ph.i21.preheader:                             ; preds = %.lr.ph.i18, %middle.block89
  %xtraiter100 = and i64 %i.br, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph.i21.prol.loopexit, label %.lr.ph.i21.prol

.lr.ph.i21.prol:                                  ; preds = %.lr.ph.i21.preheader, %.lr.ph.i21.prol
  %.06.i.prol = phi ptr [ %i.ck, %.lr.ph.i21.prol ], [ %i.bj, %.lr.ph.i21.preheader ] ; 2 uses
  %prol.iter102 = phi i64 [ %prol.iter102.next, %.lr.ph.i21.prol ], [ 0, %.lr.ph.i21.preheader ]
  store i32 -2147483648, ptr %.06.i.prol, align 4, !tbaa !646
  %i.ci = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ck = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 4 ; 2 uses
  %prol.iter102.next = add i64 %prol.iter102, 1   ; 2 uses
  %prol.iter102.cmp.not = icmp eq i64 %prol.iter102.next, %xtraiter100
  br i1 %prol.iter102.cmp.not, label %.lr.ph.i21.prol.loopexit, label %.lr.ph.i21.prol, !llvm.loop !5742

.lr.ph.i21.prol.loopexit:                         ; preds = %.lr.ph.i21.prol, %.lr.ph.i21.preheader
  %.06.i.unr = phi ptr [ %i.bj, %.lr.ph.i21.preheader ], [ %i.ck, %.lr.ph.i21.prol ]
  %i.cl = icmp ult i64 %i.bp, 12
  br i1 %i.cl, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.prol.loopexit, %.lr.ph.i21
  %.06.i = phi ptr [ %i.cu, %.lr.ph.i21 ], [ %.06.i.unr, %.lr.ph.i21.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.cm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.co = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  store i32 -2147483648, ptr %i.co, align 4, !tbaa !646
  %i.cp = add i32 %i.cm, -2
  store i32 %i.cp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  store i32 -2147483648, ptr %i.cq, align 4, !tbaa !646
  %i.cr = add i32 %i.cm, -3
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cs = getelementptr inbounds nuw i8, ptr %.06.i, i64 12
  store i32 -2147483648, ptr %i.cs, align 4, !tbaa !646
  %i.ct = add i32 %i.cm, -4
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i, i64 16 ; 2 uses
  %.not.i22.3 = icmp eq ptr %i.cu, %i.bk
  br i1 %.not.i22.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit, label %.lr.ph.i21, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit: ; preds = %.lr.ph.i21.prol.loopexit, %.lr.ph.i21, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE19guarded_construct_nIJRKS3_EEEvPS3_mRNS0_6detail18construction_guardIS4_EEDpOT_.exit
  %.not.i24 = icmp eq ptr %i.bh, null
  br i1 %.not.i24, label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.cv = load i64, ptr %i.d, align 8, !tbaa !654
  %i.cw = shl i64 %i.cv, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.cw) #30
  %.pre43 = load i64, ptr %i.x, align 8, !tbaa !651
  br label %_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardISaINS0_4test12copyable_intEEED2Ev.exit: ; preds = %bb.j, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit
  %i.cx = phi i64 [ %.pre43, %bb.j ], [ %i.y, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit ]
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !653
  store i64 %i.p, ptr %i.d, align 8, !tbaa !643
  %i.cy = add i64 %i.cx, %2
  store i64 %i.cy, ptr %i.x, align 8, !tbaa !642
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SC_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 20 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add nuw i64 %.06.i.i, 1                  ; 20 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !653
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !652
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !653    ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !651  ; 7 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m ; 15 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !654
  %i.r = sub i64 %i.q, %i.m
  %.not49.not = icmp ugt i64 %i.r, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.w, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !259
  store i32 %i.t, ptr %.015.i, align 4, !tbaa !646
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.w = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !677 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.w, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, label %.lr.ph.i, !llvm.loop !176

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit: ; preds = %.lr.ph.i
  %i.y = add i64 %i.m, %i.a
  store i64 %i.y, ptr %i.l, align 8, !tbaa !642
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !652 ; 7 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa ; 14 uses
  %i.ac = icmp eq ptr %1, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.aa, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = xor i64 %.06.i.i, -1
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %i.ae, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.aj, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !259
  store i32 %i.ag, ptr %.015.i52, align 4, !tbaa !646
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.aj = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !677 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.aj, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56, label %.lr.ph.i51, !llvm.loop !176

_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56: ; preds = %.lr.ph.i51
  %i.al = sub nuw i64 %i.aa, %i.a                 ; 2 uses
  store i64 %i.al, ptr %i.z, align 8, !tbaa !641
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.al
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.an = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ao = ptrtoint ptr %i.ab to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 8 uses
  %i.ar = sub i64 %i.m, %i.aa
  %i.as = lshr i64 %i.ar, 1
  %.not = icmp ult i64 %i.aq, %i.as
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !654
  %i.av = sub i64 %i.au, %i.m
  %.not47.not = icmp ugt i64 %i.av, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aw = ptrtoint ptr %i.n to i64
  %i.ax = sub i64 %i.aw, %i.an
  %i.ay = ashr exact i64 %i.ax, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.ay, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.az = xor i64 %.06.i.i, -1
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.az ; 7 uses
  %xtraiter168 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol

.lr.ph.i.i58.prol:                                ; preds = %bb.j, %.lr.ph.i.i58.prol
  %.020.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i58.prol ], [ %i.a, %bb.j ]
  %.0819.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i58.prol ], [ %i.ba, %bb.j ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i58.prol ], [ %i.n, %bb.j ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.i.i58.prol ], [ 0, %bb.j ]
  %i.bb = add nsw i64 %.020.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.bc = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !646
  store i32 %i.bc, ptr %.01618.i.i.prol, align 4, !tbaa !646
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol, !llvm.loop !5749

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %i.bb, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.ba, %bb.j ], [ %i.bf, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.n, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %i.bh = icmp ult i64 %.06.i.i, 3
  br i1 %i.bh, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bv, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.by, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.bz, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bi = load i32, ptr %.0819.i.i, align 4, !tbaa !646
  store i32 %i.bi, ptr %.01618.i.i, align 4, !tbaa !646
  %i.bj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bl = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !646
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !646
  %i.bo = add i32 %i.bj, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !646
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !646
  %i.bs = add i32 %i.bj, 3
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bt = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.bv = add nsw i64 %.020.i.i, -4               ; 2 uses
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !646
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !646
  %i.bx = add i32 %i.bj, 4
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.by = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i.i59.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i59.3, label %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i, label %.lr.ph.i.i58, !llvm.loop !167

_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.ba
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %i.ca = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.ca, %i.an
  %i.cb = add i64 %reass.sub, -8
  %i.cc = ptrtoaddr ptr %i.k to i64
  %i.cd = add i64 %i.cb, %i.cc
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add i64 %i.ce, %i.m
  %i.cg = and i64 %i.cf, 4611686018427387903      ; 2 uses
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cg, 19
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader161, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.ci = shl i64 %.06.i.i, 2
  %i.cj = add i64 %i.ci, 35
  %diff.check = icmp ult i64 %i.cj, 31
  br i1 %diff.check, label %.lr.ph.i40.i.preheader161, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 9223372036854775800     ; 3 uses
  %i.ck = mul i64 %n.vec, -4                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.n, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.ba, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.cn ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.ba, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep136, i64 -16
  %i.cp = getelementptr inbounds i8, ptr %next.gep136, i64 -32
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !646
  %wide.load137 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !646
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cq, align 4, !tbaa !646
  store <4 x i32> %wide.load137, ptr %i.cr, align 4, !tbaa !646
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !5750

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader161

.lr.ph.i40.i.preheader161:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i40.i.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i40.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader161, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cu, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader161 ]
  %.079.i.i = phi ptr [ %i.ct, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader161 ]
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !646
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !646
  %.not.i41.i = icmp eq ptr %1, %i.ct
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !5751

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_mS9_.exit.i
  %xtraiter171 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cw = add nsw i64 %.09.i.i.i.prol, -1         ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !259
  store i32 %i.cy, ptr %.048.i.i.i.prol, align 4, !tbaa !646
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !5752

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.prol ]
  %i.db = icmp ult i64 %.06.i.i, 3
  br i1 %i.db, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !259
  store i32 %i.dd, ptr %.048.i.i.i, align 4, !tbaa !646
  %i.de = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !259
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !646
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !677 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !259
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !646
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !677 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.do = add nsw i64 %.09.i.i.i, -4              ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !259
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !646
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !677
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i, !llvm.loop !177

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dx, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.dy, %.lr.ph.i48.i ], [ %i.dt, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.du = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.du, ptr %.01517.i.i, align 4, !tbaa !646
  %i.dv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dx, %i.n
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !169

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i52.i.prol ], [ %i.ay, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.dz = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !259
  store i32 %i.eb, ptr %.048.i.i54.i.prol, align 4, !tbaa !646
  %i.ec = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !677 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !5753

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa163.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.ay, %.lr.ph.i.i52.i.preheader ], [ %i.dz, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ed, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %i.ee = icmp ult i64 %i.ay, 4
  br i1 %i.ee, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.er, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ev, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.eu, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !259
  store i32 %i.eg, ptr %.048.i.i54.i, align 4, !tbaa !646
  %i.eh = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !677 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !259
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !646
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !677 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !259
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !646
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !677 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.er = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !259
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !646
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !677 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !177

_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa163 = phi ptr [ %.lcssa163.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.eu, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ew = sub i64 %i.a, %i.ay                     ; 3 uses
  %xtraiter165 = and i64 %i.ew, 1
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa163, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !259
  store i32 %i.ey, ptr %i.n, align 4, !tbaa !646
  %i.ez = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fb = load ptr, ptr %.lcssa163, align 8, !tbaa !677
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.fd = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ew, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fc, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa163, %_ZN5boost9container3dtl18insert_range_proxyISaINS0_4test12copyable_intEESt14_List_iteratorIiEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit58.i ], [ %i.fb, %.lr.ph.i.i60.i.prol ]
  %i.fe = icmp eq i64 %.06.i.i, %i.ay
  br i1 %i.fe, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fq, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !259
  store i32 %i.fg, ptr %.01417.i.i.i, align 4, !tbaa !646
  %i.fh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fj = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !259
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !646
  %i.fn = add i32 %i.fh, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !677
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fq = add nsw i64 %.018.i.i.i, -2             ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i60.i, !llvm.loop !178

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.fr = add i64 %i.m, %i.a
  store i64 %i.fr, ptr %i.l, align 8, !tbaa !642
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.aa, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.aq, %.06.i.i
  %i.fs = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.fs ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fu = icmp eq i64 %.06.i.i, 0
  br i1 %i.fu, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ab, %.lr.ph.i.i62.preheader.new ], [ %i.gc, %.lr.ph.i.i62 ] ; 3 uses
  %.01618.i.i64 = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader.new ], [ %i.gd, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fv = load i32, ptr %.0919.i.i, align 4, !tbaa !646
  store i32 %i.fv, ptr %.01618.i.i64, align 4, !tbaa !646
  %i.fw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fy = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !646
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !646
  %i.gb = add i32 %i.fw, 2
  store i32 %i.gb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gc = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !171

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.ge = and i64 %.06.i.i, 1
  %lcmp.mod181.not.not = icmp eq i64 %i.ge, 0
  br i1 %lcmp.mod181.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ab, %.lr.ph.i.i62.preheader ], [ %i.gc, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 2 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader ], [ %i.gd, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod184 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.gf = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !646
  store i32 %i.gf, ptr %.01618.i.i64.epil.init, align 4, !tbaa !646
  %i.gg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gi = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa157 = phi ptr [ %i.gc, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i.unr-lcssa ], [ %i.gi, %.lr.ph.i.i62.epil.preheader ] ; 5 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa157, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %i.gj = add i64 %i.an, -8
  %i.gk = ptrtoaddr ptr %i.k to i64
  %i.gl = add i64 %.06.i.i, %i.aa
  %i.gm = shl i64 %i.gl, 2
  %i.gn = add i64 %i.gm, %i.gk
  %i.go = sub i64 %i.gj, %i.gn                    ; 2 uses
  %i.gp = lshr i64 %i.go, 2
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.go, 76
  br i1 %min.iters.check142, label %.lr.ph.i40.i67.preheader156, label %vector.memcheck139

vector.memcheck139:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.gr = shl i64 %indvar.lcssa, 2
  %i.gs = add i64 %i.gr, 35
  %diff.check140 = icmp ult i64 %i.gs, 31
  br i1 %diff.check140, label %.lr.ph.i40.i67.preheader156, label %vector.ph143

vector.ph143:                                     ; preds = %vector.memcheck139
  %n.vec144 = and i64 %i.gq, 9223372036854775800  ; 3 uses
  %i.gt = shl i64 %n.vec144, 2                    ; 2 uses
  %i.gu = getelementptr i8, ptr %i.ab, i64 %i.gt  ; 2 uses
  %i.gv = getelementptr i8, ptr %.lcssa157, i64 %i.gt
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next151, %vector.body145 ] ; 2 uses
  %i.gw = shl i64 %index146, 2                    ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.ab, i64 %i.gw ; 2 uses
  %next.gep148 = getelementptr i8, ptr %.lcssa157, i64 %i.gw ; 2 uses
  %i.gx = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load149 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !646
  %wide.load150 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !646
  %i.gy = getelementptr i8, ptr %next.gep147, i64 16
  store <4 x i32> %wide.load149, ptr %next.gep147, align 4, !tbaa !646
  store <4 x i32> %wide.load150, ptr %i.gy, align 4, !tbaa !646
  %index.next151 = add nuw i64 %index146, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.gz, label %middle.block152, label %vector.body145, !llvm.loop !5754

middle.block152:                                  ; preds = %vector.body145
  %cmp.n153 = icmp eq i64 %i.gq, %n.vec144
  br i1 %cmp.n153, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader156

.lr.ph.i40.i67.preheader156:                      ; preds = %vector.memcheck139, %.lr.ph.i40.i67.preheader, %middle.block152
  %.010.i.i68.ph = phi ptr [ %i.ab, %vector.memcheck139 ], [ %i.ab, %.lr.ph.i40.i67.preheader ], [ %i.gu, %middle.block152 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa157, %vector.memcheck139 ], [ %.lcssa157, %.lr.ph.i40.i67.preheader ], [ %i.gv, %middle.block152 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader156, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.hc, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader156 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.hb, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader156 ] ; 2 uses
  %i.ha = load i32, ptr %.079.i.i69, align 4, !tbaa !646
  store i32 %i.ha, ptr %.010.i.i68, align 4, !tbaa !646
  %i.hb = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.hb, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !5755

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block152, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ab, %_ZN5boost9container33uninitialized_move_alloc_n_sourceISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S8_mS9_.exit.i ], [ %i.gu, %middle.block152 ], [ %i.hc, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter185 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.hd, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.hh, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.hg, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter187 = phi i64 [ %prol.iter187.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.hd = add nsw i64 %.09.i.i.i73.prol, -1       ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !259
  store i32 %i.hf, ptr %.048.i.i.i74.prol, align 4, !tbaa !646
  %i.hg = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !677 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !5756

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.hd, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.hh, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.hg, %.lr.ph.i.i.i72.prol ]
  %i.hi = icmp ult i64 %.06.i.i, 3
  br i1 %i.hi, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.hv, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.hz, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.hy, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !259
  store i32 %i.hk, ptr %.048.i.i.i74, align 4, !tbaa !646
  %i.hl = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !677 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !259
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !646
  %i.hp = load ptr, ptr %i.hl, align 8, !tbaa !677 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !259
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !646
  %i.ht = load ptr, ptr %i.hp, align 8, !tbaa !677 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.hv = add nsw i64 %.09.i.i.i73, -4            ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !259
  store i32 %i.hx, ptr %i.hu, align 4, !tbaa !646
  %i.hy = load ptr, ptr %i.ht, align 8, !tbaa !677
  %i.hz = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i.i72, !llvm.loop !177

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.id, %.lr.ph.i48.i78 ], [ %i.ab, %bb.l ] ; 2 uses
  %.01517.i.i80 = phi ptr [ %i.ie, %.lr.ph.i48.i78 ], [ %i.ft, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.ia = load i32, ptr %.018.i.i79, align 4, !tbaa !646
  store i32 %i.ia, ptr %.01517.i.i80, align 4, !tbaa !646
  %i.ib = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.id = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.id, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !169

_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.if = sub i64 %i.a, %i.aq                     ; 3 uses
  %xtraiter174 = and i64 %i.if, 1
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !259
  store i32 %i.ih, ptr %i.ie, align 4, !tbaa !646
  %i.ii = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ik = load ptr, ptr %2, align 8, !tbaa !677   ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.im = add nsw i64 %i.if, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i
  %.lcssa159.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ik, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.if, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.im, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.ie, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.il, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i ], [ %i.ik, %.lr.ph.i.i51.i.prol ]
  %i.in = icmp eq i64 %.06.i.i, %i.aq
  br i1 %i.in, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.iz, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.iy, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.ix, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !259
  store i32 %i.ip, ptr %.01417.i.i.i83, align 4, !tbaa !646
  %i.iq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.is = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !677 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !259
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !646
  %i.iw = add i32 %i.iq, 2
  store i32 %i.iw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ix = load ptr, ptr %i.is, align 8, !tbaa !677 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.iz = add nsw i64 %.018.i.i.i82, -2           ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.iz, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !178

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa159 = phi ptr [ %.lcssa159.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.ix, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter177 = and i64 %i.aq, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.ja, %.lr.ph.i.i56.i.prol ], [ %i.aq, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.je, %.lr.ph.i.i56.i.prol ], [ %i.ab, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.jd, %.lr.ph.i.i56.i.prol ], [ %.lcssa159, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.ja = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !259
  store i32 %i.jc, ptr %.048.i.i58.i.prol, align 4, !tbaa !646
  %i.jd = load ptr, ptr %.sroa.0.07.i.i59.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.048.i.i58.i.prol, i64 4 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol, !llvm.loop !5757

.lr.ph.i.i56.i.prol.loopexit:                     ; preds = %.lr.ph.i.i56.i.prol, %.lr.ph.i.i56.i.preheader
  %.09.i.i57.i.unr = phi i64 [ %i.aq, %.lr.ph.i.i56.i.preheader ], [ %i.ja, %.lr.ph.i.i56.i.prol ]
  %.048.i.i58.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i56.i.preheader ], [ %i.je, %.lr.ph.i.i56.i.prol ]
  %.sroa.0.07.i.i59.i.unr = phi ptr [ %.lcssa159, %.lr.ph.i.i56.i.preheader ], [ %i.jd, %.lr.ph.i.i56.i.prol ]
  %i.jf = icmp ult i64 %i.aq, 4
  br i1 %i.jf, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i
  %.09.i.i57.i = phi i64 [ %i.js, %.lr.ph.i.i56.i ], [ %.09.i.i57.i.unr, %.lr.ph.i.i56.i.prol.loopexit ]
  %.048.i.i58.i = phi ptr [ %i.jw, %.lr.ph.i.i56.i ], [ %.048.i.i58.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i59.i = phi ptr [ %i.jv, %.lr.ph.i.i56.i ], [ %.sroa.0.07.i.i59.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i, i64 16
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !259
  store i32 %i.jh, ptr %.048.i.i58.i, align 4, !tbaa !646
  %i.ji = load ptr, ptr %.sroa.0.07.i.i59.i, align 8, !tbaa !677 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !259
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !646
  %i.jm = load ptr, ptr %i.ji, align 8, !tbaa !677 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !259
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !646
  %i.jq = load ptr, ptr %i.jm, align 8, !tbaa !677 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 12
  %i.js = add i64 %.09.i.i57.i, -4                ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !259
  store i32 %i.ju, ptr %i.jr, align 4, !tbaa !646
  %i.jv = load ptr, ptr %i.jq, align 8, !tbaa !677
  %i.jw = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 16
  %.not.i.i60.i.3 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i60.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, label %.lr.ph.i.i56.i, !llvm.loop !177

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit: ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i, %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %i.jx = sub nuw i64 %i.aa, %i.a
  store i64 %i.jx, ptr %i.z, align 8, !tbaa !641
  %i.jy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fs
  br label %bb.m

.thread:                                          ; preds = %bb.h, %bb.k, %bb.e, %bb.c
  %i.jz = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.n, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit ], [ %i.jz, %.thread ], [ %i.am, %_ZN5boost9container24uninitialized_copy_allocISaINS0_4test12copyable_intEESt14_List_iteratorIiEPS3_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SB_E4typeERT_SA_SA_SB_.exit56 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ], [ %i.jy, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SI_mSD_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !654  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !651  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !652  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !653    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardISaINS0_4test12copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St14_List_iteratorIiEEEEEvT0_mSB_SB_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyISaIS3_ESt14_List_iteratorIiEEES7_EEvT_mSB_SB_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !641
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !642
  %.pre66 = load ptr, ptr %0, align 8, !tbaa !653
  br label %bb.p

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 4611686018427387903, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 4611686018427387903)
  %i.ac = select i1 %i.z, i64 4611686018427387903, i64 %i.ab
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %.0.i.i) ; 5 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit
  %i.ae = icmp ugt i64 %i.ad, 2305843009213693951
  br i1 %i.ae, label %bb.l, label %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i, !prof !267

bb.l:                                             ; preds = %bb.k
  %i.af = icmp ugt i64 %i.t, 4611686018427387903
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i: ; preds = %bb.k
  %i.ag = shl nuw nsw i64 %i.ad, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #29
  %.pre = load i64, ptr %i.c, align 8, !tbaa !651
  %.pre62 = load i64, ptr %i.f, align 8, !tbaa !652
  %.pre63 = load ptr, ptr %0, align 8, !tbaa !653
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i
  %i.ai = phi ptr [ %.pre63, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.i, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 7 uses
  %i.aj = phi i64 [ %.pre62, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.g, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %i.ak = phi i64 [ %.pre, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ %i.d, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 5 uses
  %.0.i.i52 = phi ptr [ %i.ah, %_ZN5boost9container16allocator_traitsISaINS0_4test12copyable_intEEE8allocateERS4_m.exit.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE22calculate_new_capacityEm.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !715
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !715
  %i.ao = sub i64 %i.ak, %i.aj
  %i.ap = add i64 %2, %i.ao                       ; 2 uses
  %i.aq = sub i64 %i.ad, %i.ap
  %i.ar = lshr i64 %i.aq, 1                       ; 5 uses
  %i.as = getelementptr [4 x i8], ptr %.0.i.i52, i64 %i.ar ; 7 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj ; 8 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ak ; 3 uses
  %.not16.i.i = icmp eq ptr %i.at, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test12copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE8allocateEm.exit
  %_ZN5boost9container4test12copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 3 uses
  %i.av = ptrtoaddr ptr %1 to i64
  %i.aw = ptrtoaddr ptr %i.ai to i64
end_hunk_8
begin_hunk_9_@_ZN5boost9containergtERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !727  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !726  ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %0, align 8, !tbaa !728    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !727
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !726
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %.not16.i.i.i = icmp samesign eq i64 %i.c, %i.e
  br i1 %.not16.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.preheader.i
  %.01318.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.01417.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.n, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.o = icmp eq ptr %.01318.i.i.i, %i.m
  br i1 %i.o, label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.p = load i32, ptr %.01318.i.i.i, align 4, !tbaa !259 ; 2 uses
  %i.q = load i32, ptr %.01417.i.i.i, align 4, !tbaa !259 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i32 %i.q, %i.p
  br i1 %i.s, label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01318.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.f
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !97

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.a
  %.013.lcssa.i.i.i = phi ptr [ %i.j, %bb.a ], [ %i.u, %bb.d ]
  %i.v = icmp ne ptr %.013.lcssa.i.i.i, %i.m
  br label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit

_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %._crit_edge.i.i.i
  %.0.i.i.i = phi i1 [ %i.v, %._crit_edge.i.i.i ], [ false, %.lr.ph.i.i.i ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0.i.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containerleERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !728    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !727  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !726  ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %0, align 8, !tbaa !728    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !727
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !726
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %.not16.i.i.i = icmp samesign eq i64 %i.c, %i.e
  br i1 %.not16.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.preheader.i
  %.01318.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.01417.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.n, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.o = icmp eq ptr %.01318.i.i.i, %i.m
  br i1 %i.o, label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.p = load i32, ptr %.01318.i.i.i, align 4, !tbaa !259 ; 2 uses
  %i.q = load i32, ptr %.01417.i.i.i, align 4, !tbaa !259 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i32 %i.q, %i.p
  br i1 %i.s, label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01318.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.f
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !97

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.a
  %.013.lcssa.i.i.i = phi ptr [ %i.j, %bb.a ], [ %i.u, %bb.d ]
  %i.v = icmp eq ptr %.013.lcssa.i.i.i, %i.m
  br label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit

_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %._crit_edge.i.i.i
  %.0.i.i.i = phi i1 [ %i.v, %._crit_edge.i.i.i ], [ true, %.lr.ph.i.i.i ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.0.i.i.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9containergeERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !728    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !727  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !726  ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !728    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !727
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !726
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.l ; 2 uses
  %.not16.i.i.i = icmp samesign eq i64 %i.c, %i.e
  br i1 %.not16.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.c
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.preheader.i
  %.01318.i.i.i = phi ptr [ %i.u, %bb.d ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %.01417.i.i.i = phi ptr [ %i.t, %bb.d ], [ %i.n, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.o = icmp eq ptr %.01318.i.i.i, %i.m
  br i1 %i.o, label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.p = load i32, ptr %.01318.i.i.i, align 4, !tbaa !259 ; 2 uses
  %i.q = load i32, ptr %.01417.i.i.i, align 4, !tbaa !259 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp slt i32 %i.q, %i.p
  br i1 %i.s, label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01318.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.f
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !97

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.a
  %.013.lcssa.i.i.i = phi ptr [ %i.j, %bb.a ], [ %i.u, %bb.d ]
  %i.v = icmp eq ptr %.013.lcssa.i.i.i, %i.m
  br label %_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit

_ZN5boost9containerltERKNS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEES6_.exit: ; preds = %.lr.ph.i.i.i, %bb.b, %bb.c, %._crit_edge.i.i.i
  %.0.i.i.i = phi i1 [ %i.v, %._crit_edge.i.i.i ], [ true, %.lr.ph.i.i.i ], [ true, %bb.b ], [ false, %bb.c ]
  ret i1 %.0.i.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE6assignISt14_List_iteratorIiEEEvT_S8_PNS_11move_detail13disable_if_orIvNS9_14is_convertibleIS8_mEENS0_3dtl17is_input_iteratorIS8_Xsr21has_iterator_categoryIS8_EE5valueEEENS9_5bool_ILb0EEESH_E4typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %1, %2
  br i1 %.not4.i.i, label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE16overwrite_bufferISt14_List_iteratorIiEEEvT_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %1, %bb.a ]
  %i.a = add nuw nsw i64 %.06.i.i, 1
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %2
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !782
  %.not.not = icmp ugt i64 %i.d, %.06.i.i
  br i1 %.not.not, label %.lr.ph.i.i.i.i, label %bb.b

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i ], [ 0, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit ] ; 2 uses
  %.sroa.02.05.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %1, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit ]
  %i.e = add nuw i64 %.06.i.i.i.i, 1              ; 6 uses
  %i.f = load ptr, ptr %.sroa.02.05.i.i.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, %2
  br i1 %.not.i.i.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !98

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !728    ; 2 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i, %.lr.ph.i.i.i.prol
  %.018.i.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.i.prol ], [ %i.e, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ]
  %.01417.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.prol ], [ %i.g, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ] ; 3 uses
  %.sroa.0.016.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.prol ], [ %1, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ]
  %i.h = add nsw i64 %.018.i.i.i.prol, -1         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.prol) ]
  %i.j = load i32, ptr %i.i, align 4, !tbaa !259
  store i32 %i.j, ptr %.01417.i.i.i.prol, align 4, !tbaa !259
  %i.k = load ptr, ptr %.sroa.0.016.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !6053

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i
  %.018.i.i.i.unr = phi i64 [ %i.e, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ], [ %i.h, %.lr.ph.i.i.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.g, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ], [ %i.l, %.lr.ph.i.i.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %1, %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit.i.i ], [ %i.k, %.lr.ph.i.i.i.prol ]
  %i.m = icmp ult i64 %.06.i.i.i.i, 3
  br i1 %i.m, label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE16overwrite_bufferISt14_List_iteratorIiEEEvT_S8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.018.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !259
  store i32 %i.o, ptr %.01417.i.i.i, align 4, !tbaa !259
  %i.p = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load i32, ptr %i.r, align 4, !tbaa !259
  store i32 %i.s, ptr %i.q, align 4, !tbaa !259
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !677  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !259
  store i32 %i.w, ptr %i.u, align 4, !tbaa !259
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !677  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 12
  %i.z = add nsw i64 %.018.i.i.i, -4              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !259
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !259
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !677
  %i.ad = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE16overwrite_bufferISt14_List_iteratorIiEEEvT_S8_.exit, label %.lr.ph.i.i.i, !llvm.loop !6054

_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE16overwrite_bufferISt14_List_iteratorIiEEEvT_S8_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.a
  %.0.lcssa.i.i8.i.i = phi i64 [ 0, %bb.a ], [ %i.e, %.lr.ph.i.i.i ], [ %i.e, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ae, align 8, !tbaa !727
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.0.lcssa.i.i8.i.i, ptr %i.af, align 8, !tbaa !719
  br label %bb.c

bb.b:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  tail call void @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE23allocate_and_copy_rangeISt14_List_iteratorIiEEEvT_S8_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE16overwrite_bufferISt14_List_iteratorIiEEEvT_S8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE6assignINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEEvT_SB_PNS_11move_detail13disable_if_orIvNSC_14is_convertibleISB_mEENS0_3dtl21is_not_input_iteratorISB_EENSC_5bool_ILb0EEESK_E4typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !728    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = icmp eq ptr %1, %2
  %i.d = load i64, ptr %i.b, align 8
  %.not43.i = icmp eq i64 %i.d, 0
  %or.cond44.i = select i1 %i.c, i1 true, i1 %.not43.i
  br i1 %or.cond44.i, label %.critedge.preheader.i, label %.lr.ph.i

.critedge.preheader.i:                            ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi ptr [ %i.a, %bb.a ], [ %i.h, %.lr.ph.i ] ; 3 uses
  %.sroa.034.0.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.i, %.lr.ph.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not3948.i = icmp eq ptr %.sroa.034.0.lcssa.i, %2
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.f
  %.not1049.i = icmp eq ptr %.0.lcssa.i, %i.g
  %or.cond4250.i = select i1 %.not3948.i, i1 true, i1 %.not1049.i
  br i1 %or.cond4250.i, label %.critedge2.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.034.046.i = phi ptr [ %i.i, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.045.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.045.i, i64 4 ; 3 uses
  %i.i = load ptr, ptr %.sroa.034.046.i, align 8, !tbaa !677 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.034.046.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.045.i) ]
  %i.k = load i32, ptr %i.j, align 8, !tbaa !259
  store i32 %i.k, ptr %.045.i, align 4, !tbaa !259
  %i.l = icmp eq ptr %i.i, %2
  %i.m = load i64, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m
  %.not.i = icmp eq ptr %i.h, %i.n
  %or.cond.i = select i1 %i.l, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %.critedge.preheader.i, label %.lr.ph.i, !llvm.loop !6055

.critedge.i:                                      ; preds = %.critedge.preheader.i, %.critedge.i
  %.sroa.034.152.i = phi ptr [ %i.o, %.critedge.i ], [ %.sroa.034.0.lcssa.i, %.critedge.preheader.i ] ; 2 uses
  %.151.i = phi ptr [ %i.r, %.critedge.i ], [ %.0.lcssa.i, %.critedge.preheader.i ] ; 2 uses
  %i.o = load ptr, ptr %.sroa.034.152.i, align 8, !tbaa !677 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.034.152.i, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !259
  %i.r = getelementptr inbounds nuw i8, ptr %.151.i, i64 4 ; 3 uses
  store i32 %i.q, ptr %.151.i, align 4, !tbaa !259
  %.not39.i = icmp eq ptr %i.o, %2
  %i.s = load i64, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s
  %.not10.i = icmp eq ptr %i.r, %i.t
  %or.cond42.i = select i1 %.not39.i, i1 true, i1 %.not10.i
  br i1 %or.cond42.i, label %.critedge2.i, label %.critedge.i, !llvm.loop !6056

.critedge2.i:                                     ; preds = %.critedge.i, %.critedge.preheader.i
  %.1.lcssa.i = phi ptr [ %.0.lcssa.i, %.critedge.preheader.i ], [ %i.r, %.critedge.i ] ; 3 uses
  %.sroa.034.1.lcssa.i = phi ptr [ %.sroa.034.0.lcssa.i, %.critedge.preheader.i ], [ %i.o, %.critedge.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !782
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = icmp ne ptr %.sroa.034.1.lcssa.i, %2
  %i.y = icmp ne ptr %.1.lcssa.i, %i.w
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph58.i, label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE21overwrite_buffer_implINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEET_SB_SB_NS_11move_detail5bool_ILb0EEE.exit

.lr.ph58.i:                                       ; preds = %.critedge2.i, %.lr.ph58.i
  %.sroa.034.257.i = phi ptr [ %i.ab, %.lr.ph58.i ], [ %.sroa.034.1.lcssa.i, %.critedge2.i ] ; 2 uses
  %.256.i = phi ptr [ %i.aa, %.lr.ph58.i ], [ %.1.lcssa.i, %.critedge2.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.256.i, i64 4 ; 3 uses
  %i.ab = load ptr, ptr %.sroa.034.257.i, align 8, !tbaa !677 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.034.257.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.256.i) ]
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !259
  store i32 %i.ad, ptr %.256.i, align 4, !tbaa !259
  %i.ae = icmp ne ptr %i.ab, %2
  %i.af = icmp ne ptr %i.aa, %i.w
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %.lr.ph58.i, label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE21overwrite_buffer_implINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEET_SB_SB_NS_11move_detail5bool_ILb0EEE.exit, !llvm.loop !6057

_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE21overwrite_buffer_implINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEET_SB_SB_NS_11move_detail5bool_ILb0EEE.exit: ; preds = %.lr.ph58.i, %.critedge2.i
  %.2.lcssa.i = phi ptr [ %.1.lcssa.i, %.critedge2.i ], [ %i.aa, %.lr.ph58.i ]
  %.sroa.034.2.lcssa.i = phi ptr [ %.sroa.034.1.lcssa.i, %.critedge2.i ], [ %i.ab, %.lr.ph58.i ] ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !727
  %i.ah = ptrtoint ptr %.2.lcssa.i to i64
  %i.ai = ptrtoint ptr %i.a to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  store i64 %i.ak, ptr %i.e, align 8, !tbaa !719
  %.not11 = icmp eq ptr %.sroa.034.2.lcssa.i, %2
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE21overwrite_buffer_implINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEET_SB_SB_NS_11move_detail5bool_ILb0EEE.exit, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE12emplace_backIJRiEEES6_DpOT_.exit
  %.sroa.05.012 = phi ptr [ %i.al, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE12emplace_backIJRiEEES6_DpOT_.exit ], [ %.sroa.034.2.lcssa.i, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE21overwrite_buffer_implINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEET_SB_SB_NS_11move_detail5bool_ILb0EEE.exit ] ; 2 uses
  %i.al = load ptr, ptr %.sroa.05.012, align 8, !tbaa !677 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.05.012, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.u, align 8, !tbaa !782 ; 2 uses
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !726 ; 3 uses
  %.not.i3 = icmp eq i64 %i.an, %i.ao
  %i.ap = load ptr, ptr %0, align 8, !tbaa !728   ; 2 uses
  br i1 %.not.i3, label %bb.c, label %bb.b, !prof !267

bb.b:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i32, ptr %i.am, align 8, !tbaa !259
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !259
  %i.as = add i64 %i.ao, 1
  store i64 %i.as, ptr %i.e, align 8, !tbaa !726
  br label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE12emplace_backIJRiEEES6_DpOT_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  %i.au = tail call noundef ptr @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS3_JRiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.at, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.am) ; 0 uses
  br label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE12emplace_backIJRiEEES6_DpOT_.exit

_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE12emplace_backIJRiEEES6_DpOT_.exit: ; preds = %bb.b, %bb.c
  %.not = icmp eq ptr %i.al, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !6058

._crit_edge:                                      ; preds = %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE12emplace_backIJRiEEES6_DpOT_.exit, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE21overwrite_buffer_implINS0_4test22input_iterator_wrapperISt14_List_iteratorIiEEEEET_SB_SB_NS_11move_detail5bool_ILb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost9container4test20vector_capacity_testINS0_8devectorIiNS0_9allocatorIiLj2ELj0EEEvEESt6vectorIiSaIiEEEEbRT_RT0_NS_11move_detail17integral_constantIbLb1EEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::devector.381", align 8 ; 13 uses
  %3 = alloca %"class.boost::container::devector.381", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !726  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !727  ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = shl i64 %i.e, 1                          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !782  ; 3 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %_ZNK5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8capacityEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = udiv i64 %i.h, 10
  %i.j = sub nuw i64 %i.h, %i.i
  br label %_ZNK5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8capacityEv.exit.i

_ZNK5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8capacityEv.exit.i: ; preds = %bb.b, %bb.a
  %i.k = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.l = icmp ult i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE7reserveEm.exit

bb.c:                                             ; preds = %_ZNK5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8capacityEv.exit.i
  %i.m = add i64 %i.f, 8
  %i.n = udiv i64 %i.m, 9
  %i.o = mul i64 %i.n, 10                         ; 2 uses
  %.neg.i = sub i64 %i.d, %i.b
  %i.p = add i64 %.neg.i, %i.o
  %i.q = lshr i64 %i.p, 1
  tail call void @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE13reallocate_atEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.o, i64 noundef %i.q)
  br label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE7reserveEm.exit

_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE7reserveEm.exit: ; preds = %_ZNK5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8capacityEv.exit.i, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !600  ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !349    ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = ashr exact i64 %i.w, 1                   ; 3 uses
  %i.y = icmp ugt i64 %i.x, 2305843009213693951
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE7reserveEm.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.691) #28
  unreachable

bb.e:                                             ; preds = %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE7reserveEm.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !350
  %i.ab = ptrtoint ptr %i.aa to i64
end_hunk_9
begin_hunk_10_@_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE12insert_rangeINS0_17constant_iteratorIiEEEEPiPKiT_SB_:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat, ptr %i.bn, align 4, !tbaa !259
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !6153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.preheader.i.i.i, %middle.block
  %.012.i.i.i.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i ], [ %i.bj, %middle.block ]
  %.0511.i.i.i.ph = phi ptr [ %1, %.lr.ph.preheader.i.i.i ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.bp, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ]
  %.0511.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i ], [ %.0511.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bp = add i64 %.012.i.i.i, -1                 ; 2 uses
  store i32 %.pre.i.i.i, ptr %.0511.i.i.i, align 4, !tbaa !259
  %i.bq = getelementptr inbounds nuw i8, ptr %.0511.i.i.i, i64 4
  %.not.i.i35.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i35.i, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i.i, !llvm.loop !6154

bb.o:                                             ; preds = %bb.k
  %.not103 = icmp eq ptr %1, null
  br i1 %.not103, label %.lr.ph.preheader.i.i42.i, label %bb.p, !prof !267

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull align 4 %1, i64 %i.az, i1 false)
  br label %.lr.ph.preheader.i.i42.i

.lr.ph.preheader.i.i42.i:                         ; preds = %bb.o, %bb.p
  %.pre.i.i43.i = load i32, ptr %2, align 4, !tbaa !259 ; 2 uses
  %min.iters.check128 = icmp ult i64 %i.ba, 8
  br i1 %min.iters.check128, label %.lr.ph.i.i44.i.preheader, label %vector.ph129

vector.ph129:                                     ; preds = %.lr.ph.preheader.i.i42.i
  %n.vec130 = and i64 %i.ba, -8                   ; 3 uses
  %i.bs = and i64 %i.ba, 7
  %i.bt = shl nsw i64 %n.vec130, 2
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt
  %broadcast.splatinsert131 = insertelement <4 x i32> poison, i32 %.pre.i.i43.i, i64 0
  %broadcast.splat132 = shufflevector <4 x i32> %broadcast.splatinsert131, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.body133, %vector.ph129
  %index134 = phi i64 [ 0, %vector.ph129 ], [ %index.next136, %vector.body133 ] ; 2 uses
  %i.bv = shl i64 %index134, 2
  %next.gep135 = getelementptr i8, ptr %1, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep135, i64 16
  store <4 x i32> %broadcast.splat132, ptr %next.gep135, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat132, ptr %i.bw, align 4, !tbaa !259
  %index.next136 = add nuw i64 %index134, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next136, %n.vec130
  br i1 %i.bx, label %middle.block137, label %vector.body133, !llvm.loop !6155

middle.block137:                                  ; preds = %vector.body133
  %cmp.n138 = icmp eq i64 %i.ba, %n.vec130
  br i1 %cmp.n138, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS4_T_m.exit50.i, label %.lr.ph.i.i44.i.preheader

.lr.ph.i.i44.i.preheader:                         ; preds = %.lr.ph.preheader.i.i42.i, %middle.block137
  %.012.i.i45.i.ph = phi i64 [ %i.ba, %.lr.ph.preheader.i.i42.i ], [ %i.bs, %middle.block137 ]
  %.0511.i.i46.i.ph = phi ptr [ %1, %.lr.ph.preheader.i.i42.i ], [ %i.bu, %middle.block137 ]
  br label %.lr.ph.i.i44.i

.lr.ph.i.i44.i:                                   ; preds = %.lr.ph.i.i44.i.preheader, %.lr.ph.i.i44.i
  %.012.i.i45.i = phi i64 [ %i.by, %.lr.ph.i.i44.i ], [ %.012.i.i45.i.ph, %.lr.ph.i.i44.i.preheader ]
  %.0511.i.i46.i = phi ptr [ %i.bz, %.lr.ph.i.i44.i ], [ %.0511.i.i46.i.ph, %.lr.ph.i.i44.i.preheader ] ; 2 uses
  %i.by = add i64 %.012.i.i45.i, -1               ; 2 uses
  store i32 %.pre.i.i43.i, ptr %.0511.i.i46.i, align 4, !tbaa !259
  %i.bz = getelementptr inbounds nuw i8, ptr %.0511.i.i46.i, i64 4
  %.not.i.i47.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i47.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS4_T_m.exit50.i, label %.lr.ph.i.i44.i, !llvm.loop !6156

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS4_T_m.exit50.i: ; preds = %.lr.ph.i.i44.i, %middle.block137
  %i.ca = sub i64 %i.a, %i.ba                     ; 5 uses
  %.pre.i.i55.i = load i32, ptr %2, align 4, !tbaa !259 ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check142, label %.lr.ph.i.i56.i.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS4_T_m.exit50.i
  %n.vec144 = and i64 %i.ca, -8                   ; 3 uses
  %i.cb = and i64 %i.ca, 7
  %i.cc = shl i64 %n.vec144, 2
  %i.cd = getelementptr i8, ptr %i.l, i64 %i.cc
  %broadcast.splatinsert145 = insertelement <4 x i32> poison, i32 %.pre.i.i55.i, i64 0
  %broadcast.splat146 = shufflevector <4 x i32> %broadcast.splatinsert145, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph143
  %index148 = phi i64 [ 0, %vector.ph143 ], [ %index.next157, %vector.body147 ] ; 2 uses
  %i.ce = shl i64 %index148, 2
  %next.gep149 = getelementptr i8, ptr %i.l, i64 %i.ce ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep149) ]
  %i.cf = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %broadcast.splat146, ptr %next.gep149, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat146, ptr %i.cf, align 4, !tbaa !259
  %index.next157 = add nuw i64 %index148, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next157, %n.vec144
  br i1 %i.cg, label %middle.block158, label %vector.body147, !llvm.loop !6157

middle.block158:                                  ; preds = %vector.body147
  %cmp.n159 = icmp eq i64 %i.ca, %n.vec144
  br i1 %cmp.n159, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i56.i.preheader

.lr.ph.i.i56.i.preheader:                         ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS4_T_m.exit50.i, %middle.block158
  %.022.i.i.i.ph = phi i64 [ %i.ca, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS4_T_m.exit50.i ], [ %i.cb, %middle.block158 ]
  %.01821.i.i.i.ph = phi ptr [ %i.l, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEE17copy_n_and_updateIPiEEvRS4_T_m.exit50.i ], [ %i.cd, %middle.block158 ]
  br label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i
  %.022.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i56.i ], [ %.022.i.i.i.ph, %.lr.ph.i.i56.i.preheader ]
  %.01821.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i56.i ], [ %.01821.i.i.i.ph, %.lr.ph.i.i56.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i) ]
  store i32 %.pre.i.i55.i, ptr %.01821.i.i.i, align 4, !tbaa !259
  %i.ch = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 4
  %i.ci = add i64 %.022.i.i.i, -1                 ; 2 uses
  %.not.i.i57.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i57.i, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i56.i, !llvm.loop !6158

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i56.i, %middle.block, %middle.block158
  %i.cj = load i64, ptr %i.j, align 8, !tbaa !726
  %i.ck = add i64 %i.cj, %i.a
  store i64 %i.ck, ptr %i.j, align 8, !tbaa !719
  br label %bb.w

bb.q:                                             ; preds = %bb.i
  %.not61 = icmp ult i64 %i.aa, %i.a
  br i1 %.not61, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not.i76 = icmp ult i64 %i.as, %i.a
  %i.cl = sub i64 0, %i.a                         ; 2 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.cl ; 4 uses
  %.not101 = icmp eq ptr %i.b, null               ; 2 uses
  br i1 %.not.i76, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not101, label %.lr.ph.preheader.i.i.i79, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i: ; preds = %bb.s
  %i.cn = shl nuw nsw i64 %i.a, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull align 1 %i.ab, i64 %i.cn, i1 false)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.a ; 3 uses
  %.not100 = icmp eq ptr %i.co, %1
  br i1 %.not100, label %.lr.ph.preheader.i.i.i79, label %bb.t, !prof !585

bb.t:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.ap, %i.cp                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull align 4 %i.co, i64 %i.cq, i1 false)
  %i.cr = getelementptr inbounds i8, ptr %i.ab, i64 %i.cq
  br label %.lr.ph.preheader.i.i.i79

.lr.ph.preheader.i.i.i79:                         ; preds = %bb.s, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i, %bb.t
  %.0.i.i36.i = phi ptr [ %i.cr, %bb.t ], [ %i.ab, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i ], [ null, %bb.s ] ; 3 uses
  %.pre.i.i.i80 = load i32, ptr %2, align 4, !tbaa !259 ; 2 uses
  %min.iters.check163 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check163, label %.lr.ph.i.i.i81.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph.preheader.i.i.i79
  %n.vec165 = and i64 %i.a, -8                    ; 3 uses
  %i.cs = and i64 %i.a, 7
  %i.ct = shl i64 %n.vec165, 2
  %i.cu = getelementptr i8, ptr %.0.i.i36.i, i64 %i.ct
  %broadcast.splatinsert166 = insertelement <4 x i32> poison, i32 %.pre.i.i.i80, i64 0
  %broadcast.splat167 = shufflevector <4 x i32> %broadcast.splatinsert166, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph164
  %index169 = phi i64 [ 0, %vector.ph164 ], [ %index.next171, %vector.body168 ] ; 2 uses
  %i.cv = shl i64 %index169, 2
  %next.gep170 = getelementptr i8, ptr %.0.i.i36.i, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep170, i64 16
  store <4 x i32> %broadcast.splat167, ptr %next.gep170, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat167, ptr %i.cw, align 4, !tbaa !259
  %index.next171 = add nuw i64 %index169, 8       ; 2 uses
  %i.cx = icmp eq i64 %index.next171, %n.vec165
  br i1 %i.cx, label %middle.block172, label %vector.body168, !llvm.loop !6159

middle.block172:                                  ; preds = %vector.body168
  %cmp.n173 = icmp eq i64 %i.a, %n.vec165
  br i1 %cmp.n173, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i.i81.preheader

.lr.ph.i.i.i81.preheader:                         ; preds = %.lr.ph.preheader.i.i.i79, %middle.block172
  %.012.i.i.i82.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i79 ], [ %i.cs, %middle.block172 ]
  %.0511.i.i.i83.ph = phi ptr [ %.0.i.i36.i, %.lr.ph.preheader.i.i.i79 ], [ %i.cu, %middle.block172 ]
  br label %.lr.ph.i.i.i81

.lr.ph.i.i.i81:                                   ; preds = %.lr.ph.i.i.i81.preheader, %.lr.ph.i.i.i81
  %.012.i.i.i82 = phi i64 [ %i.cy, %.lr.ph.i.i.i81 ], [ %.012.i.i.i82.ph, %.lr.ph.i.i.i81.preheader ]
  %.0511.i.i.i83 = phi ptr [ %i.cz, %.lr.ph.i.i.i81 ], [ %.0511.i.i.i83.ph, %.lr.ph.i.i.i81.preheader ] ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i82, -1           ; 2 uses
  store i32 %.pre.i.i.i80, ptr %.0511.i.i.i83, align 4, !tbaa !259
  %i.cz = getelementptr inbounds nuw i8, ptr %.0511.i.i.i83, i64 4
  %.not.i.i37.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i37.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i.i81, !llvm.loop !6160

bb.u:                                             ; preds = %bb.r
  br i1 %.not101, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i84, label %bb.v, !prof !267

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr nonnull align 4 %i.ab, i64 %i.ar, i1 false)
  %i.da = getelementptr inbounds i8, ptr %i.cm, i64 %i.ar
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i84

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i84: ; preds = %bb.v, %bb.u
  %.0.i.i40.i = phi ptr [ %i.da, %bb.v ], [ %i.cm, %bb.u ] ; 3 uses
  %i.db = sub i64 %i.a, %i.as                     ; 5 uses
  %.pre.i.i45.i = load i32, ptr %2, align 4, !tbaa !259 ; 2 uses
  %min.iters.check177 = icmp ult i64 %i.db, 8
  br i1 %min.iters.check177, label %.lr.ph.i.i46.i.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i84
  %n.vec179 = and i64 %i.db, -8                   ; 3 uses
  %i.dc = and i64 %i.db, 7
  %i.dd = shl i64 %n.vec179, 2
  %i.de = getelementptr i8, ptr %.0.i.i40.i, i64 %i.dd
  %broadcast.splatinsert180 = insertelement <4 x i32> poison, i32 %.pre.i.i45.i, i64 0
  %broadcast.splat181 = shufflevector <4 x i32> %broadcast.splatinsert180, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph178
  %index183 = phi i64 [ 0, %vector.ph178 ], [ %index.next192, %vector.body182 ] ; 2 uses
  %i.df = shl i64 %index183, 2
  %next.gep184 = getelementptr i8, ptr %.0.i.i40.i, i64 %i.df ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep184) ]
  %i.dg = getelementptr i8, ptr %next.gep184, i64 16
  store <4 x i32> %broadcast.splat181, ptr %next.gep184, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat181, ptr %i.dg, align 4, !tbaa !259
  %index.next192 = add nuw i64 %index183, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next192, %n.vec179
  br i1 %i.dh, label %middle.block193, label %vector.body182, !llvm.loop !6161

middle.block193:                                  ; preds = %vector.body182
  %cmp.n194 = icmp eq i64 %i.db, %n.vec179
  br i1 %cmp.n194, label %.lr.ph.preheader.i.i54.i, label %.lr.ph.i.i46.i.preheader

.lr.ph.i.i46.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i84, %middle.block193
  %.022.i.i.i85.ph = phi i64 [ %i.db, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i84 ], [ %i.dc, %middle.block193 ]
  %.01821.i.i.i86.ph = phi ptr [ %.0.i.i40.i, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i84 ], [ %i.de, %middle.block193 ]
  br label %.lr.ph.i.i46.i

.lr.ph.i.i46.i:                                   ; preds = %.lr.ph.i.i46.i.preheader, %.lr.ph.i.i46.i
  %.022.i.i.i85 = phi i64 [ %i.dj, %.lr.ph.i.i46.i ], [ %.022.i.i.i85.ph, %.lr.ph.i.i46.i.preheader ]
  %.01821.i.i.i86 = phi ptr [ %i.di, %.lr.ph.i.i46.i ], [ %.01821.i.i.i86.ph, %.lr.ph.i.i46.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i86) ]
  store i32 %.pre.i.i45.i, ptr %.01821.i.i.i86, align 4, !tbaa !259
  %i.di = getelementptr inbounds nuw i8, ptr %.01821.i.i.i86, i64 4
  %i.dj = add i64 %.022.i.i.i85, -1               ; 2 uses
  %.not.i.i47.i87 = icmp eq i64 %i.dj, 0
  br i1 %.not.i.i47.i87, label %.lr.ph.preheader.i.i54.i, label %.lr.ph.i.i46.i, !llvm.loop !6162

.lr.ph.preheader.i.i54.i:                         ; preds = %.lr.ph.i.i46.i, %middle.block193
  %.pre.i.i55.i88 = load i32, ptr %2, align 4, !tbaa !259 ; 2 uses
  %min.iters.check198 = icmp ult i64 %i.as, 8
  br i1 %min.iters.check198, label %.lr.ph.i.i56.i89.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph.preheader.i.i54.i
  %n.vec200 = and i64 %i.as, -8                   ; 3 uses
  %i.dk = and i64 %i.as, 7
  %i.dl = shl nsw i64 %n.vec200, 2
  %i.dm = getelementptr i8, ptr %i.ab, i64 %i.dl
  %broadcast.splatinsert201 = insertelement <4 x i32> poison, i32 %.pre.i.i55.i88, i64 0
  %broadcast.splat202 = shufflevector <4 x i32> %broadcast.splatinsert201, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body203

vector.body203:                                   ; preds = %vector.body203, %vector.ph199
  %index204 = phi i64 [ 0, %vector.ph199 ], [ %index.next206, %vector.body203 ] ; 2 uses
  %i.dn = shl i64 %index204, 2
  %next.gep205 = getelementptr i8, ptr %i.ab, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep205, i64 16
  store <4 x i32> %broadcast.splat202, ptr %next.gep205, align 4, !tbaa !259
  store <4 x i32> %broadcast.splat202, ptr %i.do, align 4, !tbaa !259
  %index.next206 = add nuw i64 %index204, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next206, %n.vec200
  br i1 %i.dp, label %middle.block207, label %vector.body203, !llvm.loop !6163

middle.block207:                                  ; preds = %vector.body203
  %cmp.n208 = icmp eq i64 %i.as, %n.vec200
  br i1 %cmp.n208, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i56.i89.preheader

.lr.ph.i.i56.i89.preheader:                       ; preds = %.lr.ph.preheader.i.i54.i, %middle.block207
  %.012.i.i57.i.ph = phi i64 [ %i.as, %.lr.ph.preheader.i.i54.i ], [ %i.dk, %middle.block207 ]
  %.0511.i.i58.i.ph = phi ptr [ %i.ab, %.lr.ph.preheader.i.i54.i ], [ %i.dm, %middle.block207 ]
  br label %.lr.ph.i.i56.i89

.lr.ph.i.i56.i89:                                 ; preds = %.lr.ph.i.i56.i89.preheader, %.lr.ph.i.i56.i89
  %.012.i.i57.i = phi i64 [ %i.dq, %.lr.ph.i.i56.i89 ], [ %.012.i.i57.i.ph, %.lr.ph.i.i56.i89.preheader ]
  %.0511.i.i58.i = phi ptr [ %i.dr, %.lr.ph.i.i56.i89 ], [ %.0511.i.i58.i.ph, %.lr.ph.i.i56.i89.preheader ] ; 2 uses
  %i.dq = add i64 %.012.i.i57.i, -1               ; 2 uses
  store i32 %.pre.i.i55.i88, ptr %.0511.i.i58.i, align 4, !tbaa !259
  %i.dr = getelementptr inbounds nuw i8, ptr %.0511.i.i58.i, i64 4
  %.not.i.i59.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i59.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i56.i89, !llvm.loop !6164

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %.lr.ph.i.i.i81, %.lr.ph.i.i56.i89, %middle.block172, %middle.block207
  %i.ds = load i64, ptr %i.z, align 8, !tbaa !727
  %i.dt = sub i64 %i.ds, %i.a
  store i64 %i.dt, ptr %i.z, align 8, !tbaa !718
  %i.du = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cl
  br label %bb.w

.thread:                                          ; preds = %bb.j, %bb.q, %bb.g, %bb.d
  %i.dv = tail call noundef ptr @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2, i64 %3)
  br label %bb.w

bb.w:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit73, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, %bb.b
  %.1 = phi ptr [ %i.i, %bb.b ], [ %i.l, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit ], [ %i.dv, %.thread ], [ %i.ao, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit73 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ], [ %i.du, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.394", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !782  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !726  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !727  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !728    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not52 = icmp ult i64 %i.k, %i.l
  br i1 %.not52, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %.sroa.256.0..sroa_idx, align 8
  %i.r = icmp samesign ult i64 %i.p, %i.g
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEEES6_EEvT_mSA_SA_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.394") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEEES6_EEvT_mSA_SA_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_NS0_17constant_iteratorIiEEEEEEvT0_mSA_SA_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.394") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEEES6_EEvT_mSA_SA_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEENS0_17constant_iteratorIiEEEES6_EEvT_mSA_SA_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.p, ptr %i.f, align 8, !tbaa !718
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !719
  %.pre62 = load ptr, ptr %0, align 8, !tbaa !728
  br label %bb.s

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 2305843009213693951, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
end_hunk_10
begin_hunk_11_@_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE21resize_back_slow_pathIJRKiEEEvmmDpOT_:bb.a
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.07.i
  store i32 %.pre.i, ptr %i.ab, align 4, !tbaa !259
  %i.ac = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %2
  br i1 %exitcond.not.i, label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE19guarded_construct_nIJRKiEEEvPimRNS0_6detail18construction_guardIS3_EEDpOT_.exit, label %scalar.ph, !llvm.loop !6196

_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE19guarded_construct_nIJRKiEEEvPimRNS0_6detail18construction_guardIS3_EEDpOT_.exit: ; preds = %scalar.ph, %middle.block, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit
  %i.ad = load ptr, ptr %0, align 8, !tbaa !728   ; 3 uses
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !727 ; 4 uses
  %i.af = icmp samesign ne i64 %i.ae, %i.w
  %i.ag = icmp ne ptr %.0.i.i17, null
  %or.cond.i.i = and i1 %i.ag, %i.af
  %i.ah = icmp ne ptr %i.ad, null
  %spec.select.i.i18 = and i1 %i.ah, %or.cond.i.i
  br i1 %spec.select.i.i18, label %bb.j, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit, !prof !262

bb.j:                                             ; preds = %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE19guarded_construct_nIJRKiEEEvPimRNS0_6detail18construction_guardIS3_EEDpOT_.exit
  %.idx22 = shl nuw nsw i64 %i.ae, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx22
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i17, i64 %i.ae
  %i.ak = sub nsw i64 %i.w, %i.ae
  %gepdiff = shl nsw i64 %i.ak, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 4 %i.ai, i64 %gepdiff, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !728
  br label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit: ; preds = %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE19guarded_construct_nIJRKiEEEvPimRNS0_6detail18construction_guardIS3_EEDpOT_.exit, %bb.j
  %i.al = phi ptr [ %i.ad, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE19guarded_construct_nIJRKiEEEvPimRNS0_6detail18construction_guardIS3_EEDpOT_.exit ], [ %.pre, %bb.j ] ; 2 uses
  %.not.i20 = icmp eq ptr %i.al, null
  br i1 %.not.i20, label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorIiLj2ELj0EEEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.al)
          to label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorIiLj2ELj0EEEED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #31
  unreachable

_ZN5boost9container6detail16allocation_guardINS0_9allocatorIiLj2ELj0EEEED2Ev.exit: ; preds = %bb.k, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit
  store ptr %.0.i.i17, ptr %0, align 8, !tbaa !728
  store i64 %i.o, ptr %i.d, align 8, !tbaa !720
  %i.ao = load i64, ptr %i.v, align 8, !tbaa !726
  %i.ap = add i64 %i.ao, %2
  store i64 %i.ap, ptr %i.v, align 8, !tbaa !719
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE12insert_rangeISt14_List_iteratorIiEEEPiPKiT_SB_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 14 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add nuw i64 %.06.i.i, 1                  ; 18 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !728
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !727
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.r

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !728    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !726  ; 5 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m ; 9 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !782
  %i.r = sub i64 %i.q, %i.m
  %.not49.not = icmp ugt i64 %i.r, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.u, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !259
  store i32 %i.t, ptr %.015.i, align 4, !tbaa !259
  %i.u = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !677 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.u, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !190

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i
  %i.w = add i64 %i.m, %i.a
  store i64 %i.w, ptr %i.l, align 8, !tbaa !719
  br label %bb.r

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !727  ; 5 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.y ; 12 uses
  %i.aa = icmp eq ptr %1, %i.z
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.y, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = xor i64 %.06.i.i, -1
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.ag, %.lr.ph.i51 ], [ %i.ac, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.af, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !259
  store i32 %i.ae, ptr %.015.i52, align 4, !tbaa !259
  %i.af = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !677 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.af, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit56, label %.lr.ph.i51, !llvm.loop !190

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit56: ; preds = %.lr.ph.i51
  %i.ah = sub nuw i64 %i.y, %i.a                  ; 2 uses
  store i64 %i.ah, ptr %i.x, align 8, !tbaa !718
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ah
  br label %bb.r

bb.g:                                             ; preds = %bb.d
  %i.aj = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ak = ptrtoint ptr %i.z to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 3 uses
  %i.am = ashr exact i64 %i.al, 2                 ; 8 uses
  %i.an = sub i64 %i.m, %i.y
  %i.ao = lshr i64 %i.an, 1
  %.not = icmp ult i64 %i.am, %i.ao
  br i1 %.not, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !782
  %i.ar = sub i64 %i.aq, %i.m
  %.not47.not = icmp ugt i64 %i.ar, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.as = ptrtoint ptr %i.n to i64
  %i.at = sub i64 %i.as, %i.aj                    ; 2 uses
  %i.au = ashr exact i64 %i.at, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.au, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.av = xor i64 %.06.i.i, -1
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.av ; 3 uses
  %.not80 = icmp eq ptr %i.k, null
  br i1 %.not80, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i, label %bb.k, !prof !370

bb.k:                                             ; preds = %bb.j
  %i.ax = shl i64 %i.a, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %i.aw, i64 %i.ax, i1 false)
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i: ; preds = %bb.k, %bb.j
  %.not.i.i58 = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i58, label %.lr.ph.i.i.i.preheader, label %bb.l, !prof !267

bb.l:                                             ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ay, %i.aj                    ; 2 uses
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bb
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bc, ptr align 4 %1, i64 %i.az, i1 false)
  br label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.l, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_mS8_.exit.i
  %xtraiter116 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.bh, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter118 = phi i64 [ %prol.iter118.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bd = add nsw i64 %.09.i.i.i.prol, -1         ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !259
  store i32 %i.bf, ptr %.048.i.i.i.prol, align 4, !tbaa !259
  %i.bg = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter118.next = add i64 %prol.iter118, 1   ; 2 uses
  %prol.iter118.cmp.not = icmp eq i64 %prol.iter118.next, %xtraiter116
  br i1 %prol.iter118.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !6197

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.i.prol ]
  %i.bi = icmp ult i64 %.06.i.i, 3
  br i1 %i.bi, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !259
  store i32 %i.bk, ptr %.048.i.i.i, align 4, !tbaa !259
  %i.bl = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !259
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !259
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !677 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !259
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !259
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !677 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.bv = add nsw i64 %.09.i.i.i, -4              ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !259
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !259
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !677
  %i.bz = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i35.i.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i35.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i.i, !llvm.loop !107

bb.m:                                             ; preds = %bb.i
  %.not81 = icmp eq ptr %1, null
  br i1 %.not81, label %.lr.ph.i.i40.i.preheader, label %bb.n, !prof !267

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 4 %1, i64 %i.at, i1 false)
  br label %.lr.ph.i.i40.i.preheader

.lr.ph.i.i40.i.preheader:                         ; preds = %bb.n, %bb.m
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i40.i.prol.loopexit, label %.lr.ph.i.i40.i.prol

.lr.ph.i.i40.i.prol:                              ; preds = %.lr.ph.i.i40.i.preheader, %.lr.ph.i.i40.i.prol
  %.09.i.i41.i.prol = phi i64 [ %i.cb, %.lr.ph.i.i40.i.prol ], [ %i.au, %.lr.ph.i.i40.i.preheader ]
  %.048.i.i42.i.prol = phi ptr [ %i.cf, %.lr.ph.i.i40.i.prol ], [ %1, %.lr.ph.i.i40.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i43.i.prol = phi ptr [ %i.ce, %.lr.ph.i.i40.i.prol ], [ %2, %.lr.ph.i.i40.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i40.i.prol ], [ 0, %.lr.ph.i.i40.i.preheader ]
  %i.cb = add i64 %.09.i.i41.i.prol, -1           ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i.prol, i64 16
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !259
  store i32 %i.cd, ptr %.048.i.i42.i.prol, align 4, !tbaa !259
  %i.ce = load ptr, ptr %.sroa.0.07.i.i43.i.prol, align 8, !tbaa !677 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.048.i.i42.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i40.i.prol.loopexit, label %.lr.ph.i.i40.i.prol, !llvm.loop !6198

.lr.ph.i.i40.i.prol.loopexit:                     ; preds = %.lr.ph.i.i40.i.prol, %.lr.ph.i.i40.i.preheader
  %.lcssa111.unr = phi ptr [ poison, %.lr.ph.i.i40.i.preheader ], [ %i.ce, %.lr.ph.i.i40.i.prol ]
  %.09.i.i41.i.unr = phi i64 [ %i.au, %.lr.ph.i.i40.i.preheader ], [ %i.cb, %.lr.ph.i.i40.i.prol ]
  %.048.i.i42.i.unr = phi ptr [ %1, %.lr.ph.i.i40.i.preheader ], [ %i.cf, %.lr.ph.i.i40.i.prol ]
  %.sroa.0.07.i.i43.i.unr = phi ptr [ %2, %.lr.ph.i.i40.i.preheader ], [ %i.ce, %.lr.ph.i.i40.i.prol ]
  %i.cg = icmp ult i64 %i.au, 4
  br i1 %i.cg, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i, label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i.prol.loopexit, %.lr.ph.i.i40.i
  %.09.i.i41.i = phi i64 [ %i.ct, %.lr.ph.i.i40.i ], [ %.09.i.i41.i.unr, %.lr.ph.i.i40.i.prol.loopexit ]
  %.048.i.i42.i = phi ptr [ %i.cx, %.lr.ph.i.i40.i ], [ %.048.i.i42.i.unr, %.lr.ph.i.i40.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i43.i = phi ptr [ %i.cw, %.lr.ph.i.i40.i ], [ %.sroa.0.07.i.i43.i.unr, %.lr.ph.i.i40.i.prol.loopexit ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i43.i, i64 16
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !259
  store i32 %i.ci, ptr %.048.i.i42.i, align 4, !tbaa !259
  %i.cj = load ptr, ptr %.sroa.0.07.i.i43.i, align 8, !tbaa !677 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !259
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !259
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !677 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !259
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !259
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !677 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 12
  %i.ct = add i64 %.09.i.i41.i, -4                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !259
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !259
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !677 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.048.i.i42.i, i64 16
  %.not.i.i44.i.3 = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i44.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i, label %.lr.ph.i.i40.i, !llvm.loop !107

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i: ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.i40.i.prol.loopexit
  %.lcssa111 = phi ptr [ %.lcssa111.unr, %.lr.ph.i.i40.i.prol.loopexit ], [ %i.cw, %.lr.ph.i.i40.i ] ; 2 uses
  %i.cy = sub i64 %i.a, %i.au                     ; 3 uses
  %i.cz = sub i64 %.06.i.i, %i.au
  %xtraiter113 = and i64 %i.cy, 3                 ; 2 uses
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %.lr.ph.i.i48.i.prol.loopexit, label %.lr.ph.i.i48.i.prol

.lr.ph.i.i48.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i, %.lr.ph.i.i48.i.prol
  %.018.i.i.i.prol = phi i64 [ %i.de, %.lr.ph.i.i48.i.prol ], [ %i.cy, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i ]
  %.01417.i.i.i.prol = phi ptr [ %i.dd, %.lr.ph.i.i48.i.prol ], [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i ] ; 3 uses
  %.sroa.0.016.i.i.i.prol = phi ptr [ %i.dc, %.lr.ph.i.i48.i.prol ], [ %.lcssa111, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i ] ; 2 uses
  %prol.iter115 = phi i64 [ %prol.iter115.next, %.lr.ph.i.i48.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.prol) ]
  %i.db = load i32, ptr %i.da, align 4, !tbaa !259
  store i32 %i.db, ptr %.01417.i.i.i.prol, align 4, !tbaa !259
  %i.dc = load ptr, ptr %.sroa.0.016.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.prol, i64 4 ; 2 uses
  %i.de = add nsw i64 %.018.i.i.i.prol, -1        ; 2 uses
  %prol.iter115.next = add i64 %prol.iter115, 1   ; 2 uses
  %prol.iter115.cmp.not = icmp eq i64 %prol.iter115.next, %xtraiter113
  br i1 %prol.iter115.cmp.not, label %.lr.ph.i.i48.i.prol.loopexit, label %.lr.ph.i.i48.i.prol, !llvm.loop !6199

.lr.ph.i.i48.i.prol.loopexit:                     ; preds = %.lr.ph.i.i48.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i
  %.018.i.i.i.unr = phi i64 [ %i.cy, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i ], [ %i.de, %.lr.ph.i.i48.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i ], [ %i.dd, %.lr.ph.i.i48.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa111, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPiEEvRS4_T_m.exit46.i ], [ %i.dc, %.lr.ph.i.i48.i.prol ]
  %i.df = icmp ult i64 %i.cz, 3
  br i1 %i.df, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i48.i

.lr.ph.i.i48.i:                                   ; preds = %.lr.ph.i.i48.i.prol.loopexit, %.lr.ph.i.i48.i
  %.018.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i48.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i48.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i48.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i48.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i48.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i48.i.prol.loopexit ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !259
  store i32 %i.dh, ptr %.01417.i.i.i, align 4, !tbaa !259
  %i.di = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !259
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !259
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !677 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !259
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !259
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !677 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !259
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !259
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !677
  %i.dv = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 16
  %i.dw = add nsw i64 %.018.i.i.i, -4             ; 2 uses
  %.not.i.i49.i.3 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i49.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i48.i, !llvm.loop !191

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %.lr.ph.i.i48.i.prol.loopexit, %.lr.ph.i.i48.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.dx = load i64, ptr %i.l, align 8, !tbaa !726
  %i.dy = add i64 %i.dx, %i.a
  store i64 %i.dy, ptr %i.l, align 8, !tbaa !719
  br label %bb.r

bb.o:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.y, %.06.i.i
  br i1 %.not46.not, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %.not.i59.not = icmp ugt i64 %i.am, %.06.i.i
  %i.dz = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.dz ; 3 uses
  br i1 %.not.i59.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i: ; preds = %bb.p
  %i.eb = shl nuw nsw i64 %i.a, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ea, ptr noundef nonnull align 1 dereferenceable(1) %i.z, i64 %i.eb, i1 false)
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.a ; 3 uses
  %.not79 = icmp eq ptr %i.ec, %1
  br i1 %.not79, label %.lr.ph.i.i.i62.preheader, label %bb.q, !prof !585

bb.q:                                             ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.aj, %i.ed                    ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 4 %i.ec, i64 %i.ee, i1 false)
  %i.ef = getelementptr inbounds i8, ptr %i.z, i64 %i.ee
  br label %.lr.ph.i.i.i62.preheader

.lr.ph.i.i.i62.preheader:                         ; preds = %bb.q, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i
  %.048.i.i.i64.ph = phi ptr [ %i.z, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S7_E4typeERT_S7_mS8_.exit.i ], [ %i.ef, %bb.q ] ; 2 uses
  %xtraiter125 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod126.not = icmp eq i64 %xtraiter125, 0
  br i1 %lcmp.mod126.not, label %.lr.ph.i.i.i62.prol.loopexit, label %.lr.ph.i.i.i62.prol

.lr.ph.i.i.i62.prol:                              ; preds = %.lr.ph.i.i.i62.preheader, %.lr.ph.i.i.i62.prol
  %.09.i.i.i63.prol = phi i64 [ %i.eg, %.lr.ph.i.i.i62.prol ], [ %i.a, %.lr.ph.i.i.i62.preheader ]
  %.048.i.i.i64.prol = phi ptr [ %i.ek, %.lr.ph.i.i.i62.prol ], [ %.048.i.i.i64.ph, %.lr.ph.i.i.i62.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i65.prol = phi ptr [ %i.ej, %.lr.ph.i.i.i62.prol ], [ %2, %.lr.ph.i.i.i62.preheader ] ; 2 uses
  %prol.iter127 = phi i64 [ %prol.iter127.next, %.lr.ph.i.i.i62.prol ], [ 0, %.lr.ph.i.i.i62.preheader ]
  %i.eg = add nsw i64 %.09.i.i.i63.prol, -1       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i65.prol, i64 16
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !259
  store i32 %i.ei, ptr %.048.i.i.i64.prol, align 4, !tbaa !259
  %i.ej = load ptr, ptr %.sroa.0.07.i.i.i65.prol, align 8, !tbaa !677 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.048.i.i.i64.prol, i64 4 ; 2 uses
  %prol.iter127.next = add i64 %prol.iter127, 1   ; 2 uses
  %prol.iter127.cmp.not = icmp eq i64 %prol.iter127.next, %xtraiter125
  br i1 %prol.iter127.cmp.not, label %.lr.ph.i.i.i62.prol.loopexit, label %.lr.ph.i.i.i62.prol, !llvm.loop !6200

.lr.ph.i.i.i62.prol.loopexit:                     ; preds = %.lr.ph.i.i.i62.prol, %.lr.ph.i.i.i62.preheader
  %.09.i.i.i63.unr = phi i64 [ %i.a, %.lr.ph.i.i.i62.preheader ], [ %i.eg, %.lr.ph.i.i.i62.prol ]
  %.048.i.i.i64.unr = phi ptr [ %.048.i.i.i64.ph, %.lr.ph.i.i.i62.preheader ], [ %i.ek, %.lr.ph.i.i.i62.prol ]
  %.sroa.0.07.i.i.i65.unr = phi ptr [ %2, %.lr.ph.i.i.i62.preheader ], [ %i.ej, %.lr.ph.i.i.i62.prol ]
  %i.el = icmp ult i64 %.06.i.i, 3
  br i1 %i.el, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i.i62

.lr.ph.i.i.i62:                                   ; preds = %.lr.ph.i.i.i62.prol.loopexit, %.lr.ph.i.i.i62
  %.09.i.i.i63 = phi i64 [ %i.ey, %.lr.ph.i.i.i62 ], [ %.09.i.i.i63.unr, %.lr.ph.i.i.i62.prol.loopexit ]
  %.048.i.i.i64 = phi ptr [ %i.fc, %.lr.ph.i.i.i62 ], [ %.048.i.i.i64.unr, %.lr.ph.i.i.i62.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i65 = phi ptr [ %i.fb, %.lr.ph.i.i.i62 ], [ %.sroa.0.07.i.i.i65.unr, %.lr.ph.i.i.i62.prol.loopexit ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i65, i64 16
  %i.en = load i32, ptr %i.em, align 4, !tbaa !259
  store i32 %i.en, ptr %.048.i.i.i64, align 4, !tbaa !259
  %i.eo = load ptr, ptr %.sroa.0.07.i.i.i65, align 8, !tbaa !677 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.048.i.i.i64, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !259
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !259
  %i.es = load ptr, ptr %i.eo, align 8, !tbaa !677 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.048.i.i.i64, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !259
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !259
  %i.ew = load ptr, ptr %i.es, align 8, !tbaa !677 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.048.i.i.i64, i64 12
  %i.ey = add nsw i64 %.09.i.i.i63, -4            ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !259
  store i32 %i.fa, ptr %i.ex, align 4, !tbaa !259
  %i.fb = load ptr, ptr %i.ew, align 8, !tbaa !677
  %i.fc = getelementptr inbounds nuw i8, ptr %.048.i.i.i64, i64 16
  %.not.i.i37.i.3 = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i37.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i.i62, !llvm.loop !107

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66: ; preds = %bb.p
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull align 4 %i.z, i64 %i.al, i1 false)
  %i.fd = getelementptr inbounds i8, ptr %i.ea, i64 %i.al ; 2 uses
  %i.fe = sub nuw i64 %i.a, %i.am                 ; 3 uses
  %i.ff = sub nuw i64 %.06.i.i, %i.am
  %xtraiter119 = and i64 %i.fe, 3                 ; 2 uses
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %.lr.ph.i.i42.i.prol.loopexit, label %.lr.ph.i.i42.i.prol

.lr.ph.i.i42.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66, %.lr.ph.i.i42.i.prol
  %.018.i.i.i67.prol = phi i64 [ %i.fk, %.lr.ph.i.i42.i.prol ], [ %i.fe, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66 ]
  %.01417.i.i.i68.prol = phi ptr [ %i.fj, %.lr.ph.i.i42.i.prol ], [ %i.fd, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66 ] ; 3 uses
  %.sroa.0.016.i.i.i69.prol = phi ptr [ %i.fi, %.lr.ph.i.i42.i.prol ], [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66 ] ; 2 uses
  %prol.iter121 = phi i64 [ %prol.iter121.next, %.lr.ph.i.i42.i.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i69.prol, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i68.prol) ]
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !259
  store i32 %i.fh, ptr %.01417.i.i.i68.prol, align 4, !tbaa !259
  %i.fi = load ptr, ptr %.sroa.0.016.i.i.i69.prol, align 8, !tbaa !677 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.01417.i.i.i68.prol, i64 4 ; 2 uses
  %i.fk = add nsw i64 %.018.i.i.i67.prol, -1      ; 2 uses
  %prol.iter121.next = add i64 %prol.iter121, 1   ; 2 uses
  %prol.iter121.cmp.not = icmp eq i64 %prol.iter121.next, %xtraiter119
  br i1 %prol.iter121.cmp.not, label %.lr.ph.i.i42.i.prol.loopexit, label %.lr.ph.i.i42.i.prol, !llvm.loop !6201

.lr.ph.i.i42.i.prol.loopexit:                     ; preds = %.lr.ph.i.i42.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66
  %.lcssa.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66 ], [ %i.fi, %.lr.ph.i.i42.i.prol ]
  %.018.i.i.i67.unr = phi i64 [ %i.fe, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66 ], [ %i.fk, %.lr.ph.i.i42.i.prol ]
  %.01417.i.i.i68.unr = phi ptr [ %i.fd, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66 ], [ %i.fj, %.lr.ph.i.i42.i.prol ]
  %.sroa.0.016.i.i.i69.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i66 ], [ %i.fi, %.lr.ph.i.i42.i.prol ]
  %i.fl = icmp ult i64 %i.ff, 3
  br i1 %i.fl, label %.lr.ph.i.i47.i.preheader, label %.lr.ph.i.i42.i

.lr.ph.i.i42.i:                                   ; preds = %.lr.ph.i.i42.i.prol.loopexit, %.lr.ph.i.i42.i
  %.018.i.i.i67 = phi i64 [ %i.gc, %.lr.ph.i.i42.i ], [ %.018.i.i.i67.unr, %.lr.ph.i.i42.i.prol.loopexit ]
  %.01417.i.i.i68 = phi ptr [ %i.gb, %.lr.ph.i.i42.i ], [ %.01417.i.i.i68.unr, %.lr.ph.i.i42.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i69 = phi ptr [ %i.ga, %.lr.ph.i.i42.i ], [ %.sroa.0.016.i.i.i69.unr, %.lr.ph.i.i42.i.prol.loopexit ] ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i69, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i68) ]
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !259
  store i32 %i.fn, ptr %.01417.i.i.i68, align 4, !tbaa !259
  %i.fo = load ptr, ptr %.sroa.0.016.i.i.i69, align 8, !tbaa !677 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i68, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !259
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !259
  %i.fs = load ptr, ptr %i.fo, align 8, !tbaa !677 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.01417.i.i.i68, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !259
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !259
  %i.fw = load ptr, ptr %i.fs, align 8, !tbaa !677 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.01417.i.i.i68, i64 12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !259
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !259
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !677 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.01417.i.i.i68, i64 16
  %i.gc = add nsw i64 %.018.i.i.i67, -4           ; 2 uses
  %.not.i.i43.i.3 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i43.i.3, label %.lr.ph.i.i47.i.preheader, label %.lr.ph.i.i42.i, !llvm.loop !191

.lr.ph.i.i47.i.preheader:                         ; preds = %.lr.ph.i.i42.i, %.lr.ph.i.i42.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i42.i.prol.loopexit ], [ %i.ga, %.lr.ph.i.i42.i ] ; 2 uses
  %xtraiter122 = and i64 %i.am, 3                 ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %.lr.ph.i.i47.i.prol.loopexit, label %.lr.ph.i.i47.i.prol

.lr.ph.i.i47.i.prol:                              ; preds = %.lr.ph.i.i47.i.preheader, %.lr.ph.i.i47.i.prol
  %.09.i.i48.i.prol = phi i64 [ %i.gd, %.lr.ph.i.i47.i.prol ], [ %i.am, %.lr.ph.i.i47.i.preheader ]
  %.048.i.i49.i.prol = phi ptr [ %i.gh, %.lr.ph.i.i47.i.prol ], [ %i.z, %.lr.ph.i.i47.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i50.i.prol = phi ptr [ %i.gg, %.lr.ph.i.i47.i.prol ], [ %.lcssa, %.lr.ph.i.i47.i.preheader ] ; 2 uses
  %prol.iter124 = phi i64 [ %prol.iter124.next, %.lr.ph.i.i47.i.prol ], [ 0, %.lr.ph.i.i47.i.preheader ]
  %i.gd = add i64 %.09.i.i48.i.prol, -1           ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i.prol, i64 16
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !259
  store i32 %i.gf, ptr %.048.i.i49.i.prol, align 4, !tbaa !259
  %i.gg = load ptr, ptr %.sroa.0.07.i.i50.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.048.i.i49.i.prol, i64 4 ; 2 uses
  %prol.iter124.next = add i64 %prol.iter124, 1   ; 2 uses
  %prol.iter124.cmp.not = icmp eq i64 %prol.iter124.next, %xtraiter122
  br i1 %prol.iter124.cmp.not, label %.lr.ph.i.i47.i.prol.loopexit, label %.lr.ph.i.i47.i.prol, !llvm.loop !6202

.lr.ph.i.i47.i.prol.loopexit:                     ; preds = %.lr.ph.i.i47.i.prol, %.lr.ph.i.i47.i.preheader
  %.09.i.i48.i.unr = phi i64 [ %i.am, %.lr.ph.i.i47.i.preheader ], [ %i.gd, %.lr.ph.i.i47.i.prol ]
  %.048.i.i49.i.unr = phi ptr [ %i.z, %.lr.ph.i.i47.i.preheader ], [ %i.gh, %.lr.ph.i.i47.i.prol ]
  %.sroa.0.07.i.i50.i.unr = phi ptr [ %.lcssa, %.lr.ph.i.i47.i.preheader ], [ %i.gg, %.lr.ph.i.i47.i.prol ]
  %i.gi = icmp ult i64 %i.am, 4
  br i1 %i.gi, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i47.i

.lr.ph.i.i47.i:                                   ; preds = %.lr.ph.i.i47.i.prol.loopexit, %.lr.ph.i.i47.i
  %.09.i.i48.i = phi i64 [ %i.gv, %.lr.ph.i.i47.i ], [ %.09.i.i48.i.unr, %.lr.ph.i.i47.i.prol.loopexit ]
  %.048.i.i49.i = phi ptr [ %i.gz, %.lr.ph.i.i47.i ], [ %.048.i.i49.i.unr, %.lr.ph.i.i47.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i50.i = phi ptr [ %i.gy, %.lr.ph.i.i47.i ], [ %.sroa.0.07.i.i50.i.unr, %.lr.ph.i.i47.i.prol.loopexit ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i50.i, i64 16
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !259
  store i32 %i.gk, ptr %.048.i.i49.i, align 4, !tbaa !259
  %i.gl = load ptr, ptr %.sroa.0.07.i.i50.i, align 8, !tbaa !677 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !259
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !259
  %i.gp = load ptr, ptr %i.gl, align 8, !tbaa !677 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !259
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !259
  %i.gt = load ptr, ptr %i.gp, align 8, !tbaa !677 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 12
  %i.gv = add i64 %.09.i.i48.i, -4                ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !259
  store i32 %i.gx, ptr %i.gu, align 4, !tbaa !259
  %i.gy = load ptr, ptr %i.gt, align 8, !tbaa !677
  %i.gz = getelementptr inbounds nuw i8, ptr %.048.i.i49.i, i64 16
  %.not.i.i51.i.3 = icmp eq i64 %i.gv, 0
  br i1 %.not.i.i51.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, label %.lr.ph.i.i47.i, !llvm.loop !107

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit: ; preds = %.lr.ph.i.i47.i.prol.loopexit, %.lr.ph.i.i47.i, %.lr.ph.i.i.i62.prol.loopexit, %.lr.ph.i.i.i62
  %i.ha = load i64, ptr %i.x, align 8, !tbaa !727
  %i.hb = sub i64 %i.ha, %i.a
  store i64 %i.hb, ptr %i.x, align 8, !tbaa !718
  %i.hc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dz
  br label %bb.r

.thread:                                          ; preds = %bb.h, %bb.o, %bb.e, %bb.c
  %i.hd = tail call noundef ptr @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2)
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit56, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.n, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit ], [ %i.hd, %.thread ], [ %i.ai, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEPiEENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit56 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ], [ %i.hc, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SH_mSC_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEEPiPKimT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !782  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !726  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !727  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !728    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEEES6_EEvT_mSA_SA_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEEES6_EEvT_mSA_SA_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorIiLj2ELj0EEEPiNS0_3dtl18insert_range_proxyIS3_St14_List_iteratorIiEEEEEvT0_mSA_SA_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEEES6_EEvT_mSA_SA_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPiNS0_3dtl18insert_range_proxyINS0_9allocatorIiLj2ELj0EEESt14_List_iteratorIiEEES6_EEvT_mSA_SA_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !718
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !719
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !728
  br label %bb.s

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 2305843009213693951, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 2
  %i.af = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.ae, i64 noundef 4) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %bb.n, label %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge

._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge: ; preds = %bb.m
  %.pre = load i64, ptr %i.c, align 8, !tbaa !726
  %.pre56 = load i64, ptr %i.f, align 8, !tbaa !727
  %.pre57 = load ptr, ptr %0, align 8, !tbaa !728
  br label %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit: ; preds = %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit
  %i.ag = phi ptr [ %i.i, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre57, %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 3 uses
  %i.ah = phi i64 [ %i.g, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre56, %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 2 uses
  %i.ai = phi i64 [ %i.d, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre, %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 2 uses
  %.0.i.i52 = phi ptr [ null, %_ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %i.af, %._ZN5boost9container8devectorIiNS0_9allocatorIiLj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !783
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !783
  %i.am = sub i64 %i.ai, %i.ah
  %i.an = add i64 %2, %i.am                       ; 2 uses
  %i.ao = sub i64 %i.ac, %i.an
  %i.ap = lshr i64 %i.ao, 1                       ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai ; 2 uses
  %i.at = icmp ne ptr %i.ar, %1
  %i.au = icmp ne ptr %.0.i.i52, null
  %or.cond.i.i.i = and i1 %i.au, %i.at
  %i.av = icmp ne ptr %i.ag, null
  %spec.select.i.i.i = and i1 %i.av, %or.cond.i.i.i
  br i1 %spec.select.i.i.i, label %bb.o, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorIiLj2ELj0EEEPiS4_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_S8_E4typeERT_S7_S7_S8_.exit.i, !prof !262
end_hunk_11
begin_hunk_12_@_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE13reallocate_atEmm:bb.a
  %i.ab = add i64 %i.z, %2
  %i.ac = sub i64 %i.ab, %i.y
  store i64 %i.ac, ptr %i.k, align 8, !tbaa !732
  store i64 %2, ptr %i.h, align 8, !tbaa !731
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE14priv_push_backIS3_EEvOT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !786  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !739  ; 3 uses
  %.not.i = icmp eq i64 %i.b, %i.d
  %i.e = load ptr, ptr %0, align 8, !tbaa !741    ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !267

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %1, align 4, !tbaa !612
  store i32 %i.g, ptr %i.f, align 4, !tbaa !612
  store i32 0, ptr %1, align 4, !tbaa !612
  %i.h = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.j = add i64 %i.d, 1
  store i64 %i.j, ptr %i.c, align 8, !tbaa !739
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12emplace_backIJS3_EEERS3_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.b
  %i.l = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.k, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 23 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add i64 %.06.i.i, 1                      ; 18 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !741
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !740
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !741    ; 10 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !739  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 17 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !786
  %i.s = sub i64 %i.r, %i.n
  %.not49.not = icmp ugt i64 %i.s, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.u = load i32, ptr %i.t, align 4, !tbaa !259
  store i32 %i.u, ptr %.015.i, align 4, !tbaa !612
  %i.v = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.x = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !677 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.x, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !202

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i
  %i.z = add i64 %i.n, %i.a
  store i64 %i.z, ptr %i.m, align 8, !tbaa !732
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !740 ; 8 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab ; 15 uses
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = xor i64 %.06.i.i, -1
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.al, %.lr.ph.i51 ], [ %i.af, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !259
  store i32 %i.ah, ptr %.015.i52, align 4, !tbaa !612
  %i.ai = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ak = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !677 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.ak, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56, label %.lr.ph.i51, !llvm.loop !202

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56: ; preds = %.lr.ph.i51
  %i.am = sub nuw i64 %i.ab, %i.a                 ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !731
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.am
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.ap = ptrtoint ptr %i.ac to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %i.as = sub i64 %i.n, %i.ab
  %i.at = lshr i64 %i.as, 1
  %.not = icmp ult i64 %i.ar, %i.at
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !786
  %i.aw = sub i64 %i.av, %i.n
  %.not47.not = icmp ugt i64 %i.aw, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = sub i64 %i.ax, %i.ao
  %i.az = ashr exact i64 %i.ay, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.az, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ba = xor i64 %.06.i.i, -1
  %i.bb = getelementptr [4 x i8], ptr %i.o, i64 %i.ba ; 10 uses
  %i.bc = and i64 %.06.i.i, 1
  %lcmp.mod178.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod178.not.not, label %.lr.ph.i.i58.prol, label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol:                                ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !612
  store i32 %i.bd, ptr %i.o, align 4, !tbaa !612
  store i32 0, ptr %i.bb, align 4, !tbaa !612
  %i.be = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %.06.i.i, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bb, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.j ], [ %i.bh, %.lr.ph.i.i58.prol ]
  %i.bi = icmp eq i64 %.06.i.i, 0
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bo, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bs, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.bt, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bj = load i32, ptr %.0819.i.i, align 4, !tbaa !612
  store i32 %i.bj, ptr %.01618.i.i, align 4, !tbaa !612
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !612
  %i.bk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bo = add nsw i64 %.020.i.i, -2               ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !612
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !612
  store i32 0, ptr %i.bm, align 4, !tbaa !612
  %i.bq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i59.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i59.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58, !llvm.loop !195

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bb
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.bu = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.bu, %i.ao
  %i.bv = add i64 %reass.sub, -8
  %i.bw = add i64 %i.bv, %i.l
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add i64 %i.bx, %i.n
  %i.bz = and i64 %i.by, 4611686018427387903      ; 2 uses
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bz, 43
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.cb = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.k, i64 %i.cb
  %scevgep = getelementptr i8, ptr %i.cc, i64 -4
  %i.cd = add i64 %i.cb, %i.l
  %i.ce = mul i64 %.06.i.i, -4                    ; 2 uses
  %reass.sub164 = sub i64 %i.ce, %i.ao
  %i.cf = add i64 %reass.sub164, -8
  %i.cg = add i64 %i.cd, %i.cf                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = mul i64 %i.ch, -4
  %scevgep136 = getelementptr i8, ptr %scevgep, i64 %i.ci
  %scevgep137 = getelementptr i8, ptr %i.k, i64 %i.cb
  %i.cj = add i64 %i.ce, -8
  %i.ck = and i64 %i.cg, -4
  %i.cl = sub i64 %i.cj, %i.ck
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.cl
  %bound0 = icmp ult ptr %scevgep136, %i.bb
  %bound1 = icmp ult ptr %scevgep138, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ca, 9223372036854775800     ; 3 uses
  %i.cm = mul i64 %n.vec, -4                      ; 2 uses
  %i.cn = getelementptr i8, ptr %i.o, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bb, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.cp ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.bb, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep139, i64 -16 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep139, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cq, align 4, !tbaa !612, !alias.scope !6696
  %wide.load140 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !612, !alias.scope !6696
  %i.cs = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cs, align 4, !tbaa !612, !alias.scope !6697, !noalias !6696
  store <4 x i32> %wide.load140, ptr %i.ct, align 4, !tbaa !612, !alias.scope !6697, !noalias !6696
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !612, !alias.scope !6696
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !612, !alias.scope !6696
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !6685

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader170

.lr.ph.i40.i.preheader170:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.cn, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i40.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader170, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cw, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader170 ]
  %.079.i.i = phi ptr [ %i.cv, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader170 ]
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !612
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !612
  store i32 0, ptr %i.cv, align 4, !tbaa !612
  %.not.i41.i = icmp eq ptr %1, %i.cv
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !6686

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %xtraiter180 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.dc, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cy = add nsw i64 %.09.i.i.i.prol, -1         ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !259
  store i32 %i.da, ptr %.048.i.i.i.prol, align 4, !tbaa !612
  %i.db = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !6687

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.db, %.lr.ph.i.i.i.prol ]
  %i.dd = icmp ult i64 %.06.i.i, 3
  br i1 %i.dd, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.df = load i32, ptr %i.de, align 4, !tbaa !259
  store i32 %i.df, ptr %.048.i.i.i, align 4, !tbaa !612
  %i.dg = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !259
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !612
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !677 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !259
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !612
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !677 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.dq = add nsw i64 %.09.i.i.i, -4              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !259
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !612
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !677
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !133

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dz, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.ea, %.lr.ph.i48.i ], [ %i.dv, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.dw = load i32, ptr %.018.i.i, align 4, !tbaa !612
  store i32 %i.dw, ptr %.01517.i.i, align 4, !tbaa !612
  store i32 0, ptr %.018.i.i, align 4, !tbaa !612
  %i.dx = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dz = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dz, %i.o
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !196

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.eb, %.lr.ph.i.i52.i.prol ], [ %i.az, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ef, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ee, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.eb = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !259
  store i32 %i.ed, ptr %.048.i.i54.i.prol, align 4, !tbaa !612
  %i.ee = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !677 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !6688

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa172.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ee, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.az, %.lr.ph.i.i52.i.preheader ], [ %i.eb, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ef, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ee, %.lr.ph.i.i52.i.prol ]
  %i.eg = icmp ult i64 %i.az, 4
  br i1 %i.eg, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.et, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ex, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.ew, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !259
  store i32 %i.ei, ptr %.048.i.i54.i, align 4, !tbaa !612
  %i.ej = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !677 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = load i32, ptr %i.el, align 4, !tbaa !259
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !612
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !677 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !259
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !612
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !677 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.et = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !259
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !612
  %i.ew = load ptr, ptr %i.er, align 8, !tbaa !677 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !133

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa172 = phi ptr [ %.lcssa172.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.ew, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ey = sub i64 %i.a, %i.az                     ; 3 uses
  %xtraiter174 = and i64 %i.ey, 1
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.lcssa172, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !259
  store i32 %i.fa, ptr %i.o, align 4, !tbaa !612
  %i.fb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fd = load ptr, ptr %.lcssa172, align 8, !tbaa !677
  %i.fe = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ff = add nsw i64 %i.ey, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ey, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.ff, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fe, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa172, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %i.fg = icmp eq i64 %.06.i.i, %i.az
  br i1 %i.fg, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !259
  store i32 %i.fi, ptr %.01417.i.i.i, align 4, !tbaa !612
  %i.fj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fl = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !259
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !612
  %i.fp = add i32 %i.fj, 2
  store i32 %i.fp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !677
  %i.fr = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fs = add nsw i64 %.018.i.i.i, -2             ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i, !llvm.loop !203

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ft = add i64 %i.n, %i.a
  store i64 %i.ft, ptr %i.m, align 8, !tbaa !732
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.ar, %.06.i.i
  %i.fu = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fu ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fw = icmp eq i64 %.06.i.i, 0
  br i1 %i.fw, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader.new ], [ %i.gf, %.lr.ph.i.i62 ] ; 4 uses
  %.01618.i.i64 = phi ptr [ %i.fv, %.lr.ph.i.i62.preheader.new ], [ %i.gg, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fx = load i32, ptr %.0919.i.i, align 4, !tbaa !612
  store i32 %i.fx, ptr %.01618.i.i64, align 4, !tbaa !612
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !612
  %i.fy = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ga = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !612
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !612
  store i32 0, ptr %i.ga, align 4, !tbaa !612
  %i.gd = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gf = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !198

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.gh = and i64 %.06.i.i, 1
  %lcmp.mod190.not.not = icmp eq i64 %i.gh, 0
  br i1 %lcmp.mod190.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader ], [ %i.gf, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.fv, %.lr.ph.i.i62.preheader ], [ %i.gg, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.gi = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !612
  store i32 %i.gi, ptr %.01618.i.i64.epil.init, align 4, !tbaa !612
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !612
  %i.gj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gl = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa166 = phi ptr [ %i.gf, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.gl, %.lr.ph.i.i62.epil.preheader ] ; 6 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa166, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.gm = add i64 %i.ao, -8
  %i.gn = add i64 %.06.i.i, %i.ab
  %i.go = shl i64 %i.gn, 2
  %i.gp = add i64 %i.go, %i.l
  %i.gq = sub i64 %i.gm, %i.gp                    ; 2 uses
  %i.gr = lshr i64 %i.gq, 2
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.gq, 172
  br i1 %min.iters.check150, label %.lr.ph.i40.i67.preheader165, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.gt = shl nuw nsw i64 %i.ab, 2                ; 3 uses
  %i.gu = getelementptr i8, ptr %i.k, i64 %i.gt
  %scevgep143 = getelementptr i8, ptr %i.gu, i64 4
  %i.gv = add i64 %i.gt, %i.l
  %i.gw = add i64 %i.ao, -8
  %i.gx = shl i64 %.06.i.i, 2
  %i.gy = add i64 %i.gx, %i.gv
  %i.gz = sub i64 %i.gw, %i.gy
  %i.ha = and i64 %i.gz, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.ha
  %i.hb = shl i64 %indvar.lcssa, 2
  %i.hc = getelementptr i8, ptr %i.k, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.gt
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %scevgep145 = getelementptr i8, ptr %i.he, i64 %i.ha
  %bound0146 = icmp ult ptr %i.ac, %scevgep145
  %bound1147 = icmp ult ptr %.lcssa166, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.i40.i67.preheader165, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck142
  %n.vec152 = and i64 %i.gs, 9223372036854775800  ; 3 uses
  %i.hf = shl i64 %n.vec152, 2                    ; 2 uses
  %i.hg = getelementptr i8, ptr %i.ac, i64 %i.hf  ; 2 uses
  %i.hh = getelementptr i8, ptr %.lcssa166, i64 %i.hf
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.hi = shl i64 %index154, 2                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.ac, i64 %i.hi ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.lcssa166, i64 %i.hi ; 3 uses
  %i.hj = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !612, !alias.scope !6698
  %wide.load158 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !612, !alias.scope !6698
  %i.hk = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %wide.load157, ptr %next.gep155, align 4, !tbaa !612, !alias.scope !6699, !noalias !6698
  store <4 x i32> %wide.load158, ptr %i.hk, align 4, !tbaa !612, !alias.scope !6699, !noalias !6698
  store <4 x i32> zeroinitializer, ptr %next.gep156, align 4, !tbaa !612, !alias.scope !6698
  store <4 x i32> zeroinitializer, ptr %i.hj, align 4, !tbaa !612, !alias.scope !6698
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.hl, label %middle.block160, label %vector.body153, !llvm.loop !6692

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.gs, %n.vec152
  br i1 %cmp.n161, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader165

.lr.ph.i40.i67.preheader165:                      ; preds = %vector.memcheck142, %.lr.ph.i40.i67.preheader, %middle.block160
  %.010.i.i68.ph = phi ptr [ %i.ac, %vector.memcheck142 ], [ %i.ac, %.lr.ph.i40.i67.preheader ], [ %i.hg, %middle.block160 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa166, %vector.memcheck142 ], [ %.lcssa166, %.lr.ph.i40.i67.preheader ], [ %i.hh, %middle.block160 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader165, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.ho, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader165 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.hn, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader165 ] ; 3 uses
  %i.hm = load i32, ptr %.079.i.i69, align 4, !tbaa !612
  store i32 %i.hm, ptr %.010.i.i68, align 4, !tbaa !612
  store i32 0, ptr %.079.i.i69, align 4, !tbaa !612
  %i.hn = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.hn, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !6693

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block160, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ac, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.hg, %middle.block160 ], [ %i.ho, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter194 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.hp, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.ht, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.hs, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.hp = add nsw i64 %.09.i.i.i73.prol, -1       ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !259
  store i32 %i.hr, ptr %.048.i.i.i74.prol, align 4, !tbaa !612
  %i.hs = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !677 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !6694

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.hp, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.ht, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.hs, %.lr.ph.i.i.i72.prol ]
  %i.hu = icmp ult i64 %.06.i.i, 3
  br i1 %i.hu, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.ih, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.il, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.ik, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !259
  store i32 %i.hw, ptr %.048.i.i.i74, align 4, !tbaa !612
  %i.hx = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !677 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !259
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !612
  %i.ib = load ptr, ptr %i.hx, align 8, !tbaa !677 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !259
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !612
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !677 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.ih = add nsw i64 %.09.i.i.i73, -4            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !259
  store i32 %i.ij, ptr %i.ig, align 4, !tbaa !612
  %i.ik = load ptr, ptr %i.if, align 8, !tbaa !677
  %i.il = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72, !llvm.loop !133

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.ip, %.lr.ph.i48.i78 ], [ %i.ac, %bb.l ] ; 3 uses
  %.01517.i.i80 = phi ptr [ %i.iq, %.lr.ph.i48.i78 ], [ %i.fv, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.im = load i32, ptr %.018.i.i79, align 4, !tbaa !612
  store i32 %i.im, ptr %.01517.i.i80, align 4, !tbaa !612
  store i32 0, ptr %.018.i.i79, align 4, !tbaa !612
  %i.in = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ip = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.ip, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !196

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.ir = sub i64 %i.a, %i.ar                     ; 3 uses
  %xtraiter183 = and i64 %i.ir, 1
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !259
  store i32 %i.it, ptr %i.iq, align 4, !tbaa !612
  %i.iu = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.iw = load ptr, ptr %2, align 8, !tbaa !677   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.iy = add nsw i64 %i.ir, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.lcssa168.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iw, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.ir, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iy, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.iq, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ix, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iw, %.lr.ph.i.i51.i.prol ]
  %i.iz = icmp eq i64 %.06.i.i, %i.ar
  br i1 %i.iz, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.jl, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.jk, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.jj, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !259
  store i32 %i.jb, ptr %.01417.i.i.i83, align 4, !tbaa !612
  %i.jc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.jd = add i32 %i.jc, 1
  store i32 %i.jd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.je = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !677 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !259
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !612
  %i.ji = add i32 %i.jc, 2
  store i32 %i.ji, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !677 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.jl = add nsw i64 %.018.i.i.i82, -2           ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !203

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa168 = phi ptr [ %.lcssa168.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.jj, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter186 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.jm, %.lr.ph.i.i56.i.prol ], [ %i.ar, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.jq, %.lr.ph.i.i56.i.prol ], [ %i.ac, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.jp, %.lr.ph.i.i56.i.prol ], [ %.lcssa168, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.jm = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !259
  store i32 %i.jo, ptr %.048.i.i58.i.prol, align 4, !tbaa !612
  %i.jp = load ptr, ptr %.sroa.0.07.i.i59.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.048.i.i58.i.prol, i64 4 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol, !llvm.loop !6695

.lr.ph.i.i56.i.prol.loopexit:                     ; preds = %.lr.ph.i.i56.i.prol, %.lr.ph.i.i56.i.preheader
  %.09.i.i57.i.unr = phi i64 [ %i.ar, %.lr.ph.i.i56.i.preheader ], [ %i.jm, %.lr.ph.i.i56.i.prol ]
  %.048.i.i58.i.unr = phi ptr [ %i.ac, %.lr.ph.i.i56.i.preheader ], [ %i.jq, %.lr.ph.i.i56.i.prol ]
  %.sroa.0.07.i.i59.i.unr = phi ptr [ %.lcssa168, %.lr.ph.i.i56.i.preheader ], [ %i.jp, %.lr.ph.i.i56.i.prol ]
  %i.jr = icmp ult i64 %i.ar, 4
  br i1 %i.jr, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i
  %.09.i.i57.i = phi i64 [ %i.ke, %.lr.ph.i.i56.i ], [ %.09.i.i57.i.unr, %.lr.ph.i.i56.i.prol.loopexit ]
  %.048.i.i58.i = phi ptr [ %i.ki, %.lr.ph.i.i56.i ], [ %.048.i.i58.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i59.i = phi ptr [ %i.kh, %.lr.ph.i.i56.i ], [ %.sroa.0.07.i.i59.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i, i64 16
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !259
  store i32 %i.jt, ptr %.048.i.i58.i, align 4, !tbaa !612
  %i.ju = load ptr, ptr %.sroa.0.07.i.i59.i, align 8, !tbaa !677 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !259
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !612
  %i.jy = load ptr, ptr %i.ju, align 8, !tbaa !677 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !259
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !612
  %i.kc = load ptr, ptr %i.jy, align 8, !tbaa !677 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 12
  %i.ke = add i64 %.09.i.i57.i, -4                ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !259
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !612
  %i.kh = load ptr, ptr %i.kc, align 8, !tbaa !677
  %i.ki = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 16
  %.not.i.i60.i.3 = icmp eq i64 %i.ke, 0
  br i1 %.not.i.i60.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i56.i, !llvm.loop !133

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i, %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %i.kj = sub nuw i64 %i.ab, %i.a
  store i64 %i.kj, ptr %i.aa, align 8, !tbaa !731
  %i.kk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fu
  br label %bb.m

.thread:                                          ; preds = %bb.h, %bb.k, %bb.e, %bb.c
  %i.kl = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.kl, %.thread ], [ %i.an, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.kk, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !786  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !739  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !740  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !741    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test11movable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test11movable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test11movable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test11movable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !731
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !732
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !741
  br label %bb.q

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 2305843009213693951, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 2
  %i.af = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.ae, i64 noundef 4) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %bb.n, label %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge

._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge: ; preds = %bb.m
  %.pre = load i64, ptr %i.c, align 8, !tbaa !739
  %.pre58 = load i64, ptr %i.f, align 8, !tbaa !740
  %.pre59 = load ptr, ptr %0, align 8, !tbaa !741
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit: ; preds = %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit
  %i.ag = phi ptr [ %i.i, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre59, %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 4 uses
  %i.ah = phi i64 [ %i.g, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre58, %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 3 uses
  %i.ai = phi i64 [ %i.d, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre, %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 3 uses
  %.0.i.i52 = phi ptr [ null, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %i.af, %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !787
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !787
  %i.am = sub i64 %i.ai, %i.ah
  %i.an = add i64 %2, %i.am                       ; 2 uses
  %i.ao = sub i64 %i.ac, %i.an
  %i.ap = lshr i64 %i.ao, 1                       ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai ; 3 uses
  %.not16.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test11movable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.ar, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.aq, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
end_hunk_12
begin_hunk_13_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SD_:bb.a
  %i.gb = add i64 %.022.i.i.i, -4                 ; 2 uses
  %.not.i.i67.i.3 = icmp eq i64 %i.gb, 0
  br i1 %.not.i.i67.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i66.i, !llvm.loop !219

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i66.i.prol.loopexit, %.lr.ph.i.i66.i, %middle.block149
  %i.gc = add i64 %i.l, %i.a
  store i64 %i.gc, ptr %i.k, align 8, !tbaa !745
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %.not61 = icmp ult i64 %i.ao, %i.a
  br i1 %.not61, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i74 = icmp ult i64 %i.bt, %i.a
  %i.gd = sub i64 0, %i.a                         ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.gd ; 3 uses
  br i1 %.not.i74, label %.lr.ph.i48.i92, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %bb.n
  %.neg237 = add i64 %5, 1
  %xtraiter223 = and i64 %i.a, 1
  %i.gf = icmp eq i64 %3, %.neg237
  br i1 %i.gf, label %.lr.ph.i.i76.epil.preheader, label %.lr.ph.i.i76.preheader.new

.lr.ph.i.i76.preheader.new:                       ; preds = %.lr.ph.i.i76.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76, %.lr.ph.i.i76.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i76 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ap, %.lr.ph.i.i76.preheader.new ], [ %i.go, %.lr.ph.i.i76 ] ; 4 uses
  %.01618.i.i78 = phi ptr [ %i.ge, %.lr.ph.i.i76.preheader.new ], [ %i.gp, %.lr.ph.i.i76 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %niter.next.1, %.lr.ph.i.i76 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78) ]
  %i.gg = load i32, ptr %.0919.i.i, align 4, !tbaa !629
  store i32 %i.gg, ptr %.01618.i.i78, align 4, !tbaa !629
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !629
  %i.gh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gj = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 4
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !629
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !629
  store i32 0, ptr %i.gj, align 4, !tbaa !629
  %i.gm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.go = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i76, !llvm.loop !211

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i76
  %indvar.next = or disjoint i64 %indvar, 1
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br i1 %lcmp.mod224.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i76.epil.preheader

.lr.ph.i.i76.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ap, %.lr.ph.i.i76.preheader ], [ %i.go, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i78.epil.init = phi ptr [ %i.ge, %.lr.ph.i.i76.preheader ], [ %i.gp, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod227 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod227)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78.epil.init) ]
  %i.gq = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !629
  store i32 %i.gq, ptr %.01618.i.i78.epil.init, align 4, !tbaa !629
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !629
  %i.gr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gt = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i76.epil.preheader ]
  %.lcssa218 = phi ptr [ %i.go, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.gt, %.lr.ph.i.i76.epil.preheader ] ; 6 uses
  %.not8.i.i80 = icmp eq ptr %.lcssa218, %1
  br i1 %.not8.i.i80, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader

.lr.ph.i40.i81.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.gu = shl i64 %5, 2
  %i.gv = add i64 %i.ao, %3
  %i.gw = shl i64 %i.gv, 2
  %i.gx = add i64 %i.gu, %i.bq
  %i.gy = add i64 %i.gx, -4
  %i.gz = add i64 %i.gw, %i.c
  %i.ha = sub i64 %i.gy, %i.gz                    ; 2 uses
  %i.hb = lshr i64 %i.ha, 2
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.ha, 172
  br i1 %min.iters.check173, label %.lr.ph.i40.i81.preheader216, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i40.i81.preheader
  %i.hd = shl nuw nsw i64 %i.ao, 2
  %i.he = shl i64 %5, 2
  %i.hf = add i64 %i.he, %i.bq
  %i.hg = add i64 %i.hf, -4
  %i.hh = add i64 %i.ao, %3
  %i.hi = shl i64 %i.hh, 2
  %i.hj = add i64 %i.hi, %i.c
  %i.hk = sub i64 %i.hg, %i.hj
  %i.hl = and i64 %i.hk, -4
  %i.hm = add i64 %i.hd, %i.hl                    ; 2 uses
  %i.hn = getelementptr i8, ptr %i.b, i64 %i.hm
  %scevgep = getelementptr i8, ptr %i.hn, i64 4
  %i.ho = shl i64 %indvar.lcssa, 2
  %i.hp = getelementptr i8, ptr %i.b, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.hm
  %scevgep168 = getelementptr i8, ptr %i.hq, i64 8
  %bound0169 = icmp ult ptr %i.ap, %scevgep168
  %bound1170 = icmp ult ptr %.lcssa218, %scevgep
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph.i40.i81.preheader216, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck167
  %n.vec175 = and i64 %i.hc, 9223372036854775800  ; 3 uses
  %i.hr = shl i64 %n.vec175, 2                    ; 2 uses
  %i.hs = getelementptr i8, ptr %i.ap, i64 %i.hr  ; 2 uses
  %i.ht = getelementptr i8, ptr %.lcssa218, i64 %i.hr
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.hu = shl i64 %index177, 2                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %i.ap, i64 %i.hu ; 2 uses
  %next.gep179 = getelementptr i8, ptr %.lcssa218, i64 %i.hu ; 3 uses
  %i.hv = getelementptr i8, ptr %next.gep179, i64 16 ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %next.gep179, align 4, !tbaa !629, !alias.scope !7351
  %wide.load181 = load <4 x i32>, ptr %i.hv, align 4, !tbaa !629, !alias.scope !7351
  %i.hw = getelementptr i8, ptr %next.gep178, i64 16
  store <4 x i32> %wide.load180, ptr %next.gep178, align 4, !tbaa !629, !alias.scope !7352, !noalias !7351
  store <4 x i32> %wide.load181, ptr %i.hw, align 4, !tbaa !629, !alias.scope !7352, !noalias !7351
  store <4 x i32> zeroinitializer, ptr %next.gep179, align 4, !tbaa !629, !alias.scope !7351
  store <4 x i32> zeroinitializer, ptr %i.hv, align 4, !tbaa !629, !alias.scope !7351
  %index.next182 = add nuw i64 %index177, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.hx, label %middle.block183, label %vector.body176, !llvm.loop !7342

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.hc, %n.vec175
  br i1 %cmp.n184, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader216

.lr.ph.i40.i81.preheader216:                      ; preds = %vector.memcheck167, %.lr.ph.i40.i81.preheader, %middle.block183
  %.010.i.i82.ph = phi ptr [ %i.ap, %vector.memcheck167 ], [ %i.ap, %.lr.ph.i40.i81.preheader ], [ %i.hs, %middle.block183 ]
  %.079.i.i83.ph = phi ptr [ %.lcssa218, %vector.memcheck167 ], [ %.lcssa218, %.lr.ph.i40.i81.preheader ], [ %i.ht, %middle.block183 ]
  br label %.lr.ph.i40.i81

.lr.ph.i40.i81:                                   ; preds = %.lr.ph.i40.i81.preheader216, %.lr.ph.i40.i81
  %.010.i.i82 = phi ptr [ %i.ia, %.lr.ph.i40.i81 ], [ %.010.i.i82.ph, %.lr.ph.i40.i81.preheader216 ] ; 2 uses
  %.079.i.i83 = phi ptr [ %i.hz, %.lr.ph.i40.i81 ], [ %.079.i.i83.ph, %.lr.ph.i40.i81.preheader216 ] ; 3 uses
  %i.hy = load i32, ptr %.079.i.i83, align 4, !tbaa !629
  store i32 %i.hy, ptr %.010.i.i82, align 4, !tbaa !629
  store i32 0, ptr %.079.i.i83, align 4, !tbaa !629
  %i.hz = getelementptr inbounds nuw i8, ptr %.079.i.i83, i64 4 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.010.i.i82, i64 4 ; 2 uses
  %.not.i41.i84 = icmp eq ptr %i.hz, %1
  br i1 %.not.i41.i84, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81, !llvm.loop !7343

.lr.ph.preheader.i.i.i85:                         ; preds = %.lr.ph.i40.i81, %middle.block183, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.ap, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.hs, %middle.block183 ], [ %i.ia, %.lr.ph.i40.i81 ] ; 3 uses
  %.pre.i.i.i86 = load i32, ptr %2, align 4, !tbaa !629 ; 2 uses
  %min.iters.check188 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check188, label %.lr.ph.i.i.i87.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph.preheader.i.i.i85
  %n.vec190 = and i64 %i.a, -8                    ; 3 uses
  %i.ib = and i64 %i.a, 7
  %i.ic = shl i64 %n.vec190, 2
  %i.id = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ic
  %broadcast.splatinsert191 = insertelement <4 x i32> poison, i32 %.pre.i.i.i86, i64 0
  %broadcast.splat192 = shufflevector <4 x i32> %broadcast.splatinsert191, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph189
  %index194 = phi i64 [ 0, %vector.ph189 ], [ %index.next196, %vector.body193 ] ; 2 uses
  %i.ie = shl i64 %index194, 2
  %next.gep195 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ie ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep195, i64 16
  store <4 x i32> %broadcast.splat192, ptr %next.gep195, align 4, !tbaa !629
  store <4 x i32> %broadcast.splat192, ptr %i.if, align 4, !tbaa !629
  %index.next196 = add nuw i64 %index194, 8       ; 2 uses
  %i.ig = icmp eq i64 %index.next196, %n.vec190
  br i1 %i.ig, label %middle.block197, label %vector.body193, !llvm.loop !7344

middle.block197:                                  ; preds = %vector.body193
  %cmp.n198 = icmp eq i64 %i.a, %n.vec190
  br i1 %cmp.n198, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87.preheader

.lr.ph.i.i.i87.preheader:                         ; preds = %.lr.ph.preheader.i.i.i85, %middle.block197
  %.012.i.i.i88.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i85 ], [ %i.ib, %middle.block197 ]
  %.0511.i.i.i89.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph.preheader.i.i.i85 ], [ %i.id, %middle.block197 ]
  br label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %.lr.ph.i.i.i87.preheader, %.lr.ph.i.i.i87
  %.012.i.i.i88 = phi i64 [ %i.ih, %.lr.ph.i.i.i87 ], [ %.012.i.i.i88.ph, %.lr.ph.i.i.i87.preheader ]
  %.0511.i.i.i89 = phi ptr [ %i.ii, %.lr.ph.i.i.i87 ], [ %.0511.i.i.i89.ph, %.lr.ph.i.i.i87.preheader ] ; 2 uses
  %i.ih = add nsw i64 %.012.i.i.i88, -1           ; 2 uses
  store i32 %.pre.i.i.i86, ptr %.0511.i.i.i89, align 4, !tbaa !629
  %i.ii = getelementptr inbounds nuw i8, ptr %.0511.i.i.i89, i64 4
  %.not.i.i.i90 = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i.i90, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87, !llvm.loop !7345

.lr.ph.i48.i92:                                   ; preds = %bb.n, %.lr.ph.i48.i92
  %.018.i.i93 = phi ptr [ %i.im, %.lr.ph.i48.i92 ], [ %i.ap, %bb.n ] ; 3 uses
  %.01517.i.i94 = phi ptr [ %i.in, %.lr.ph.i48.i92 ], [ %i.ge, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i94) ]
  %i.ij = load i32, ptr %.018.i.i93, align 4, !tbaa !629
  store i32 %i.ij, ptr %.01517.i.i94, align 4, !tbaa !629
  store i32 0, ptr %.018.i.i93, align 4, !tbaa !629
  %i.ik = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.il = add i32 %i.ik, 1
  store i32 %i.il, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.im = getelementptr inbounds nuw i8, ptr %.018.i.i93, i64 4 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.01517.i.i94, i64 4 ; 3 uses
  %.not.i49.i95 = icmp eq ptr %i.im, %1
  br i1 %.not.i49.i95, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i92, !llvm.loop !209

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i92
  %i.io = sub i64 %i.a, %i.bt                     ; 3 uses
  %xtraiter228 = and i64 %i.io, 3                 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol

.lr.ph.i.i53.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, %.lr.ph.i.i53.i.prol
  %.022.i.i.i96.prol = phi i64 [ %i.it, %.lr.ph.i.i53.i.prol ], [ %i.io, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %.01821.i.i.i97.prol = phi ptr [ %i.is, %.lr.ph.i.i53.i.prol ], [ %i.in, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ] ; 2 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %.lr.ph.i.i53.i.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %i.ip = load i32, ptr %2, align 4, !tbaa !629
  store i32 %i.ip, ptr %.01821.i.i.i97.prol, align 4, !tbaa !629
  %i.iq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.is = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97.prol, i64 4 ; 2 uses
  %i.it = add i64 %.022.i.i.i96.prol, -1          ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol, !llvm.loop !7346

.lr.ph.i.i53.i.prol.loopexit:                     ; preds = %.lr.ph.i.i53.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.022.i.i.i96.unr = phi i64 [ %i.io, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.it, %.lr.ph.i.i53.i.prol ]
  %.01821.i.i.i97.unr = phi ptr [ %i.in, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.is, %.lr.ph.i.i53.i.prol ]
  %i.iu = sub i64 %i.bt, %3
  %i.iv = add i64 %i.iu, %5
  %i.iw = icmp ugt i64 %i.iv, -4
  br i1 %i.iw, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i
  %.022.i.i.i96 = phi i64 [ %i.jk, %.lr.ph.i.i53.i ], [ %.022.i.i.i96.unr, %.lr.ph.i.i53.i.prol.loopexit ]
  %.01821.i.i.i97 = phi ptr [ %i.jj, %.lr.ph.i.i53.i ], [ %.01821.i.i.i97.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 5 uses
  %i.ix = load i32, ptr %2, align 4, !tbaa !629
  store i32 %i.ix, ptr %.01821.i.i.i97, align 4, !tbaa !629
  %i.iy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.iz = add i32 %i.iy, 1
  store i32 %i.iz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ja = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 4
  %i.jb = load i32, ptr %2, align 4, !tbaa !629
  store i32 %i.jb, ptr %i.ja, align 4, !tbaa !629
  %i.jc = add i32 %i.iy, 2
  store i32 %i.jc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.jd = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 8
  %i.je = load i32, ptr %2, align 4, !tbaa !629
  store i32 %i.je, ptr %i.jd, align 4, !tbaa !629
  %i.jf = add i32 %i.iy, 3
  store i32 %i.jf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.jg = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 12
  %i.jh = load i32, ptr %2, align 4, !tbaa !629
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !629
  %i.ji = add i32 %i.iy, 4
  store i32 %i.ji, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.jj = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 16
  %i.jk = add i64 %.022.i.i.i96, -4               ; 2 uses
  %.not.i.i54.i.3 = icmp eq i64 %i.jk, 0
  br i1 %.not.i.i54.i.3, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i, !llvm.loop !219

.lr.ph.preheader.i.i61.i:                         ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.prol.loopexit
  %.pre.i.i62.i = load i32, ptr %2, align 4, !tbaa !629 ; 2 uses
  %min.iters.check202 = icmp ult i64 %i.bt, 8
  br i1 %min.iters.check202, label %.lr.ph.i.i63.i.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph.preheader.i.i61.i
  %n.vec204 = and i64 %i.bt, -8                   ; 3 uses
  %i.jl = and i64 %i.bt, 7
  %i.jm = shl nsw i64 %n.vec204, 2
  %i.jn = getelementptr i8, ptr %i.ap, i64 %i.jm
  %broadcast.splatinsert205 = insertelement <4 x i32> poison, i32 %.pre.i.i62.i, i64 0
  %broadcast.splat206 = shufflevector <4 x i32> %broadcast.splatinsert205, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph203
  %index208 = phi i64 [ 0, %vector.ph203 ], [ %index.next210, %vector.body207 ] ; 2 uses
  %i.jo = shl i64 %index208, 2
  %next.gep209 = getelementptr i8, ptr %i.ap, i64 %i.jo ; 2 uses
  %i.jp = getelementptr i8, ptr %next.gep209, i64 16
  store <4 x i32> %broadcast.splat206, ptr %next.gep209, align 4, !tbaa !629
  store <4 x i32> %broadcast.splat206, ptr %i.jp, align 4, !tbaa !629
  %index.next210 = add nuw i64 %index208, 8       ; 2 uses
  %i.jq = icmp eq i64 %index.next210, %n.vec204
  br i1 %i.jq, label %middle.block211, label %vector.body207, !llvm.loop !7347

middle.block211:                                  ; preds = %vector.body207
  %cmp.n212 = icmp eq i64 %i.bt, %n.vec204
  br i1 %cmp.n212, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i63.i.preheader

.lr.ph.i.i63.i.preheader:                         ; preds = %.lr.ph.preheader.i.i61.i, %middle.block211
  %.012.i.i64.i.ph = phi i64 [ %i.bt, %.lr.ph.preheader.i.i61.i ], [ %i.jl, %middle.block211 ]
  %.0511.i.i65.i.ph = phi ptr [ %i.ap, %.lr.ph.preheader.i.i61.i ], [ %i.jn, %middle.block211 ]
  br label %.lr.ph.i.i63.i

.lr.ph.i.i63.i:                                   ; preds = %.lr.ph.i.i63.i.preheader, %.lr.ph.i.i63.i
  %.012.i.i64.i = phi i64 [ %i.jr, %.lr.ph.i.i63.i ], [ %.012.i.i64.i.ph, %.lr.ph.i.i63.i.preheader ]
  %.0511.i.i65.i = phi ptr [ %i.js, %.lr.ph.i.i63.i ], [ %.0511.i.i65.i.ph, %.lr.ph.i.i63.i.preheader ] ; 2 uses
  %i.jr = add i64 %.012.i.i64.i, -1               ; 2 uses
  store i32 %.pre.i.i62.i, ptr %.0511.i.i65.i, align 4, !tbaa !629
  %i.js = getelementptr inbounds nuw i8, ptr %.0511.i.i65.i, i64 4
  %.not.i.i66.i = icmp eq i64 %i.jr, 0
  br i1 %.not.i.i66.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i63.i, !llvm.loop !7348

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i87, %.lr.ph.i.i63.i, %middle.block197, %middle.block211
  %i.jt = sub nuw i64 %i.ao, %i.a
  store i64 %i.jt, ptr %i.an, align 8, !tbaa !744
  %i.ju = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gd
  br label %bb.o

.thread:                                          ; preds = %bb.j, %bb.m, %bb.g, %bb.d
  %i.jv = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2, i64 %3)
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.m, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.jv, %.thread ], [ %i.bp, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.ju, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.434", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !790  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !752  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !753  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !754    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not52 = icmp ult i64 %i.k, %i.l
  br i1 %.not52, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %.sroa.258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %.sroa.258.0..sroa_idx, align 8
  %i.r = icmp samesign ult i64 %i.p, %i.g
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.434") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.434") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.p, ptr %i.f, align 8, !tbaa !744
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !745
  %.pre64 = load ptr, ptr %0, align 8, !tbaa !754
  br label %bb.q

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 2305843009213693951, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
end_hunk_13
begin_hunk_14_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE23allocate_and_copy_rangeIPKS3_EEvT_SA_:bb.a

.lr.ph.i17.preheader:                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader, %.lr.ph.i17
  %.06.i = phi ptr [ %i.y, %.lr.ph.i17 ], [ %i.v, %.lr.ph.i17.preheader ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !629
  %i.w = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i18 = icmp eq ptr %i.y, %i.u
  br i1 %.not.i18, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i17, !llvm.loop !183

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit: ; preds = %.lr.ph.i17, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %.not.i19 = icmp eq ptr %i.p, null
  br i1 %.not.i19, label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.p)
          to label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable

_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEED2Ev.exit: ; preds = %bb.e, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.ab, align 8, !tbaa !746
  store ptr %i.o, ptr %0, align 8, !tbaa !754
  store i64 0, ptr %i.q, align 8, !tbaa !753
  store i64 %i.d, ptr %i.s, align 8, !tbaa !745
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 23 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add i64 %.06.i.i, 1                      ; 18 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !754
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !753
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !754    ; 10 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !752  ; 8 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 17 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !790
  %i.s = sub i64 %i.r, %i.n
  %.not49.not = icmp ugt i64 %i.s, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.o, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.x, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.u = load i32, ptr %i.t, align 4, !tbaa !259
  store i32 %i.u, ptr %.015.i, align 4, !tbaa !629
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.x = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !677 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.x, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !220

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i
  %i.z = add i64 %i.n, %i.a
  store i64 %i.z, ptr %i.m, align 8, !tbaa !745
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !753 ; 8 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab ; 15 uses
  %i.ad = icmp eq ptr %1, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ae = xor i64 %.06.i.i, -1
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ae
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.al, %.lr.ph.i51 ], [ %i.af, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !259
  store i32 %i.ah, ptr %.015.i52, align 4, !tbaa !629
  %i.ai = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ak = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !677 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.ak, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56, label %.lr.ph.i51, !llvm.loop !220

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56: ; preds = %.lr.ph.i51
  %i.am = sub nuw i64 %i.ab, %i.a                 ; 2 uses
  store i64 %i.am, ptr %i.aa, align 8, !tbaa !744
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.am
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.ap = ptrtoint ptr %i.ac to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %i.as = sub i64 %i.n, %i.ab
  %i.at = lshr i64 %i.as, 1
  %.not = icmp ult i64 %i.ar, %i.at
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load i64, ptr %i.au, align 8, !tbaa !790
  %i.aw = sub i64 %i.av, %i.n
  %.not47.not = icmp ugt i64 %i.aw, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ax = ptrtoint ptr %i.o to i64
  %i.ay = sub i64 %i.ax, %i.ao
  %i.az = ashr exact i64 %i.ay, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.az, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.ba = xor i64 %.06.i.i, -1
  %i.bb = getelementptr [4 x i8], ptr %i.o, i64 %i.ba ; 10 uses
  %i.bc = and i64 %.06.i.i, 1
  %lcmp.mod178.not.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod178.not.not, label %.lr.ph.i.i58.prol, label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol:                                ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !629
  store i32 %i.bd, ptr %i.o, align 4, !tbaa !629
  store i32 0, ptr %i.bb, align 4, !tbaa !629
  %i.be = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.lr.ph.i.i58.prol.loopexit

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %.06.i.i, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.bb, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.o, %bb.j ], [ %i.bh, %.lr.ph.i.i58.prol ]
  %i.bi = icmp eq i64 %.06.i.i, 0
  br i1 %i.bi, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bo, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.bs, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  %.01618.i.i = phi ptr [ %i.bt, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bj = load i32, ptr %.0819.i.i, align 4, !tbaa !629
  store i32 %i.bj, ptr %.01618.i.i, align 4, !tbaa !629
  store i32 0, ptr %.0819.i.i, align 4, !tbaa !629
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bo = add nsw i64 %.020.i.i, -2               ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !629
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !629
  store i32 0, ptr %i.bm, align 4, !tbaa !629
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bs = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %.not.i.i59.1 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i59.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58, !llvm.loop !208

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.bb
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.bu = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.bu, %i.ao
  %i.bv = add i64 %reass.sub, -8
  %i.bw = add i64 %i.bv, %i.l
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add i64 %i.bx, %i.n
  %i.bz = and i64 %i.by, 4611686018427387903      ; 2 uses
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bz, 43
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader170, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.cb = shl nuw nsw i64 %i.n, 2                 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.k, i64 %i.cb
  %scevgep = getelementptr i8, ptr %i.cc, i64 -4
  %i.cd = add i64 %i.cb, %i.l
  %i.ce = mul i64 %.06.i.i, -4                    ; 2 uses
  %reass.sub164 = sub i64 %i.ce, %i.ao
  %i.cf = add i64 %reass.sub164, -8
  %i.cg = add i64 %i.cd, %i.cf                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = mul i64 %i.ch, -4
  %scevgep136 = getelementptr i8, ptr %scevgep, i64 %i.ci
  %scevgep137 = getelementptr i8, ptr %i.k, i64 %i.cb
  %i.cj = add i64 %i.ce, -8
  %i.ck = and i64 %i.cg, -4
  %i.cl = sub i64 %i.cj, %i.ck
  %scevgep138 = getelementptr i8, ptr %scevgep137, i64 %i.cl
  %bound0 = icmp ult ptr %scevgep136, %i.bb
  %bound1 = icmp ult ptr %scevgep138, %i.o
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ca, 9223372036854775800     ; 3 uses
  %i.cm = mul i64 %n.vec, -4                      ; 2 uses
  %i.cn = getelementptr i8, ptr %i.o, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.bb, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.cp ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.bb, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep139, i64 -16 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %next.gep139, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cq, align 4, !tbaa !629, !alias.scope !7592
  %wide.load140 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !629, !alias.scope !7592
  %i.cs = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cs, align 4, !tbaa !629, !alias.scope !7593, !noalias !7592
  store <4 x i32> %wide.load140, ptr %i.ct, align 4, !tbaa !629, !alias.scope !7593, !noalias !7592
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !629, !alias.scope !7592
  store <4 x i32> zeroinitializer, ptr %i.cr, align 4, !tbaa !629, !alias.scope !7592
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !7581

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader170

.lr.ph.i40.i.preheader170:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i40.i.preheader ], [ %i.cn, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i40.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader170, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cw, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader170 ]
  %.079.i.i = phi ptr [ %i.cv, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader170 ]
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !629
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !629
  store i32 0, ptr %i.cv, align 4, !tbaa !629
  %.not.i41.i = icmp eq ptr %1, %i.cv
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !7582

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %xtraiter180 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.dc, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cy = add nsw i64 %.09.i.i.i.prol, -1         ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !259
  store i32 %i.da, ptr %.048.i.i.i.prol, align 4, !tbaa !629
  %i.db = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !7583

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.db, %.lr.ph.i.i.i.prol ]
  %i.dd = icmp ult i64 %.06.i.i, 3
  br i1 %i.dd, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.df = load i32, ptr %i.de, align 4, !tbaa !259
  store i32 %i.df, ptr %.048.i.i.i, align 4, !tbaa !629
  %i.dg = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !259
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !629
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !677 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !259
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !629
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !677 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.dq = add nsw i64 %.09.i.i.i, -4              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !259
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !629
  %i.dt = load ptr, ptr %i.do, align 8, !tbaa !677
  %i.du = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !156

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dz, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.ea, %.lr.ph.i48.i ], [ %i.dv, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.dw = load i32, ptr %.018.i.i, align 4, !tbaa !629
  store i32 %i.dw, ptr %.01517.i.i, align 4, !tbaa !629
  store i32 0, ptr %.018.i.i, align 4, !tbaa !629
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dz = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dz, %i.o
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !209

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.eb, %.lr.ph.i.i52.i.prol ], [ %i.az, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ef, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ee, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.eb = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !259
  store i32 %i.ed, ptr %.048.i.i54.i.prol, align 4, !tbaa !629
  %i.ee = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !677 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !7584

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa172.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ee, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.az, %.lr.ph.i.i52.i.preheader ], [ %i.eb, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ef, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ee, %.lr.ph.i.i52.i.prol ]
  %i.eg = icmp ult i64 %i.az, 4
  br i1 %i.eg, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.et, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ex, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.ew, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !259
  store i32 %i.ei, ptr %.048.i.i54.i, align 4, !tbaa !629
  %i.ej = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !677 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.em = load i32, ptr %i.el, align 4, !tbaa !259
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !629
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !677 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !259
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !629
  %i.er = load ptr, ptr %i.en, align 8, !tbaa !677 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.et = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !259
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !629
  %i.ew = load ptr, ptr %i.er, align 8, !tbaa !677 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.et, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !156

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa172 = phi ptr [ %.lcssa172.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.ew, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ey = sub i64 %i.a, %i.az                     ; 3 uses
  %xtraiter174 = and i64 %i.ey, 1
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.lcssa172, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !259
  store i32 %i.fa, ptr %i.o, align 4, !tbaa !629
  %i.fb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fc = add i32 %i.fb, 1
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fd = load ptr, ptr %.lcssa172, align 8, !tbaa !677
  %i.fe = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.ff = add nsw i64 %i.ey, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ey, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.ff, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fe, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa172, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %i.fg = icmp eq i64 %.06.i.i, %i.az
  br i1 %i.fg, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fs, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !259
  store i32 %i.fi, ptr %.01417.i.i.i, align 4, !tbaa !629
  %i.fj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.fk = add i32 %i.fj, 1
  store i32 %i.fk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fl = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !259
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !629
  %i.fp = add i32 %i.fj, 2
  store i32 %i.fp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fq = load ptr, ptr %i.fl, align 8, !tbaa !677
  %i.fr = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fs = add nsw i64 %.018.i.i.i, -2             ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fs, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i, !llvm.loop !221

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ft = add i64 %i.n, %i.a
  store i64 %i.ft, ptr %i.m, align 8, !tbaa !745
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.ab, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.ar, %.06.i.i
  %i.fu = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.fu ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fw = icmp eq i64 %.06.i.i, 0
  br i1 %i.fw, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader.new ], [ %i.gf, %.lr.ph.i.i62 ] ; 4 uses
  %.01618.i.i64 = phi ptr [ %i.fv, %.lr.ph.i.i62.preheader.new ], [ %i.gg, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fx = load i32, ptr %.0919.i.i, align 4, !tbaa !629
  store i32 %i.fx, ptr %.01618.i.i64, align 4, !tbaa !629
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !629
  %i.fy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fz = add i32 %i.fy, 1
  store i32 %i.fz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ga = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !629
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !629
  store i32 0, ptr %i.ga, align 4, !tbaa !629
  %i.gd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gf = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !211

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.gh = and i64 %.06.i.i, 1
  %lcmp.mod190.not.not = icmp eq i64 %i.gh, 0
  br i1 %lcmp.mod190.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ac, %.lr.ph.i.i62.preheader ], [ %i.gf, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.fv, %.lr.ph.i.i62.preheader ], [ %i.gg, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod193)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.gi = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !629
  store i32 %i.gi, ptr %.01618.i.i64.epil.init, align 4, !tbaa !629
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !629
  %i.gj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gl = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa166 = phi ptr [ %i.gf, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.gl, %.lr.ph.i.i62.epil.preheader ] ; 6 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa166, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.gm = add i64 %i.ao, -8
  %i.gn = add i64 %.06.i.i, %i.ab
  %i.go = shl i64 %i.gn, 2
  %i.gp = add i64 %i.go, %i.l
  %i.gq = sub i64 %i.gm, %i.gp                    ; 2 uses
  %i.gr = lshr i64 %i.gq, 2
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %min.iters.check150 = icmp ult i64 %i.gq, 172
  br i1 %min.iters.check150, label %.lr.ph.i40.i67.preheader165, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.gt = shl nuw nsw i64 %i.ab, 2                ; 3 uses
  %i.gu = getelementptr i8, ptr %i.k, i64 %i.gt
  %scevgep143 = getelementptr i8, ptr %i.gu, i64 4
  %i.gv = add i64 %i.gt, %i.l
  %i.gw = add i64 %i.ao, -8
  %i.gx = shl i64 %.06.i.i, 2
  %i.gy = add i64 %i.gx, %i.gv
  %i.gz = sub i64 %i.gw, %i.gy
  %i.ha = and i64 %i.gz, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep143, i64 %i.ha
  %i.hb = shl i64 %indvar.lcssa, 2
  %i.hc = getelementptr i8, ptr %i.k, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.gt
  %i.he = getelementptr i8, ptr %i.hd, i64 8
  %scevgep145 = getelementptr i8, ptr %i.he, i64 %i.ha
  %bound0146 = icmp ult ptr %i.ac, %scevgep145
  %bound1147 = icmp ult ptr %.lcssa166, %scevgep144
  %found.conflict148 = and i1 %bound0146, %bound1147
  br i1 %found.conflict148, label %.lr.ph.i40.i67.preheader165, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck142
  %n.vec152 = and i64 %i.gs, 9223372036854775800  ; 3 uses
  %i.hf = shl i64 %n.vec152, 2                    ; 2 uses
  %i.hg = getelementptr i8, ptr %i.ac, i64 %i.hf  ; 2 uses
  %i.hh = getelementptr i8, ptr %.lcssa166, i64 %i.hf
  br label %vector.body153

vector.body153:                                   ; preds = %vector.body153, %vector.ph151
  %index154 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body153 ] ; 2 uses
  %i.hi = shl i64 %index154, 2                    ; 2 uses
  %next.gep155 = getelementptr i8, ptr %i.ac, i64 %i.hi ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.lcssa166, i64 %i.hi ; 3 uses
  %i.hj = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load157 = load <4 x i32>, ptr %next.gep156, align 4, !tbaa !629, !alias.scope !7594
  %wide.load158 = load <4 x i32>, ptr %i.hj, align 4, !tbaa !629, !alias.scope !7594
  %i.hk = getelementptr i8, ptr %next.gep155, i64 16
  store <4 x i32> %wide.load157, ptr %next.gep155, align 4, !tbaa !629, !alias.scope !7595, !noalias !7594
  store <4 x i32> %wide.load158, ptr %i.hk, align 4, !tbaa !629, !alias.scope !7595, !noalias !7594
  store <4 x i32> zeroinitializer, ptr %next.gep156, align 4, !tbaa !629, !alias.scope !7594
  store <4 x i32> zeroinitializer, ptr %i.hj, align 4, !tbaa !629, !alias.scope !7594
  %index.next159 = add nuw i64 %index154, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.hl, label %middle.block160, label %vector.body153, !llvm.loop !7588

middle.block160:                                  ; preds = %vector.body153
  %cmp.n161 = icmp eq i64 %i.gs, %n.vec152
  br i1 %cmp.n161, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader165

.lr.ph.i40.i67.preheader165:                      ; preds = %vector.memcheck142, %.lr.ph.i40.i67.preheader, %middle.block160
  %.010.i.i68.ph = phi ptr [ %i.ac, %vector.memcheck142 ], [ %i.ac, %.lr.ph.i40.i67.preheader ], [ %i.hg, %middle.block160 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa166, %vector.memcheck142 ], [ %.lcssa166, %.lr.ph.i40.i67.preheader ], [ %i.hh, %middle.block160 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader165, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.ho, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader165 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.hn, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader165 ] ; 3 uses
  %i.hm = load i32, ptr %.079.i.i69, align 4, !tbaa !629
  store i32 %i.hm, ptr %.010.i.i68, align 4, !tbaa !629
  store i32 0, ptr %.079.i.i69, align 4, !tbaa !629
  %i.hn = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.hn, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !7589

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block160, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ac, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.hg, %middle.block160 ], [ %i.ho, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter194 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.hp, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.ht, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.hs, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter196 = phi i64 [ %prol.iter196.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.hp = add nsw i64 %.09.i.i.i73.prol, -1       ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !259
  store i32 %i.hr, ptr %.048.i.i.i74.prol, align 4, !tbaa !629
  %i.hs = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !677 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter196.next = add i64 %prol.iter196, 1   ; 2 uses
  %prol.iter196.cmp.not = icmp eq i64 %prol.iter196.next, %xtraiter194
  br i1 %prol.iter196.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !7590

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.hp, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.ht, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.hs, %.lr.ph.i.i.i72.prol ]
  %i.hu = icmp ult i64 %.06.i.i, 3
  br i1 %i.hu, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.ih, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.il, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.ik, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !259
  store i32 %i.hw, ptr %.048.i.i.i74, align 4, !tbaa !629
  %i.hx = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !677 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !259
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !629
  %i.ib = load ptr, ptr %i.hx, align 8, !tbaa !677 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !259
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !629
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !677 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.ih = add nsw i64 %.09.i.i.i73, -4            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !259
  store i32 %i.ij, ptr %i.ig, align 4, !tbaa !629
  %i.ik = load ptr, ptr %i.if, align 8, !tbaa !677
  %i.il = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72, !llvm.loop !156

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.ip, %.lr.ph.i48.i78 ], [ %i.ac, %bb.l ] ; 3 uses
  %.01517.i.i80 = phi ptr [ %i.iq, %.lr.ph.i48.i78 ], [ %i.fv, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.im = load i32, ptr %.018.i.i79, align 4, !tbaa !629
  store i32 %i.im, ptr %.01517.i.i80, align 4, !tbaa !629
  store i32 0, ptr %.018.i.i79, align 4, !tbaa !629
  %i.in = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.io = add i32 %i.in, 1
  store i32 %i.io, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ip = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.ip, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !209

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.ir = sub i64 %i.a, %i.ar                     ; 3 uses
  %xtraiter183 = and i64 %i.ir, 1
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.it = load i32, ptr %i.is, align 4, !tbaa !259
  store i32 %i.it, ptr %i.iq, align 4, !tbaa !629
  %i.iu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.iw = load ptr, ptr %2, align 8, !tbaa !677   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.iy = add nsw i64 %i.ir, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.lcssa168.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iw, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.ir, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iy, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.iq, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ix, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iw, %.lr.ph.i.i51.i.prol ]
  %i.iz = icmp eq i64 %.06.i.i, %i.ar
  br i1 %i.iz, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.jl, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.jk, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.jj, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !259
  store i32 %i.jb, ptr %.01417.i.i.i83, align 4, !tbaa !629
  %i.jc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.jd = add i32 %i.jc, 1
  store i32 %i.jd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.je = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !677 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !259
  store i32 %i.jh, ptr %i.jf, align 4, !tbaa !629
  %i.ji = add i32 %i.jc, 2
  store i32 %i.ji, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.jj = load ptr, ptr %i.je, align 8, !tbaa !677 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.jl = add nsw i64 %.018.i.i.i82, -2           ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.jl, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !221

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa168 = phi ptr [ %.lcssa168.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.jj, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter186 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.jm, %.lr.ph.i.i56.i.prol ], [ %i.ar, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.jq, %.lr.ph.i.i56.i.prol ], [ %i.ac, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.jp, %.lr.ph.i.i56.i.prol ], [ %.lcssa168, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter188 = phi i64 [ %prol.iter188.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.jm = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !259
  store i32 %i.jo, ptr %.048.i.i58.i.prol, align 4, !tbaa !629
  %i.jp = load ptr, ptr %.sroa.0.07.i.i59.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.048.i.i58.i.prol, i64 4 ; 2 uses
  %prol.iter188.next = add i64 %prol.iter188, 1   ; 2 uses
  %prol.iter188.cmp.not = icmp eq i64 %prol.iter188.next, %xtraiter186
  br i1 %prol.iter188.cmp.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol, !llvm.loop !7591

.lr.ph.i.i56.i.prol.loopexit:                     ; preds = %.lr.ph.i.i56.i.prol, %.lr.ph.i.i56.i.preheader
  %.09.i.i57.i.unr = phi i64 [ %i.ar, %.lr.ph.i.i56.i.preheader ], [ %i.jm, %.lr.ph.i.i56.i.prol ]
  %.048.i.i58.i.unr = phi ptr [ %i.ac, %.lr.ph.i.i56.i.preheader ], [ %i.jq, %.lr.ph.i.i56.i.prol ]
  %.sroa.0.07.i.i59.i.unr = phi ptr [ %.lcssa168, %.lr.ph.i.i56.i.preheader ], [ %i.jp, %.lr.ph.i.i56.i.prol ]
  %i.jr = icmp ult i64 %i.ar, 4
  br i1 %i.jr, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i
  %.09.i.i57.i = phi i64 [ %i.ke, %.lr.ph.i.i56.i ], [ %.09.i.i57.i.unr, %.lr.ph.i.i56.i.prol.loopexit ]
  %.048.i.i58.i = phi ptr [ %i.ki, %.lr.ph.i.i56.i ], [ %.048.i.i58.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i59.i = phi ptr [ %i.kh, %.lr.ph.i.i56.i ], [ %.sroa.0.07.i.i59.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i, i64 16
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !259
  store i32 %i.jt, ptr %.048.i.i58.i, align 4, !tbaa !629
  %i.ju = load ptr, ptr %.sroa.0.07.i.i59.i, align 8, !tbaa !677 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !259
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !629
  %i.jy = load ptr, ptr %i.ju, align 8, !tbaa !677 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !259
  store i32 %i.kb, ptr %i.jz, align 4, !tbaa !629
  %i.kc = load ptr, ptr %i.jy, align 8, !tbaa !677 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 12
  %i.ke = add i64 %.09.i.i57.i, -4                ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !259
  store i32 %i.kg, ptr %i.kd, align 4, !tbaa !629
  %i.kh = load ptr, ptr %i.kc, align 8, !tbaa !677
  %i.ki = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 16
  %.not.i.i60.i.3 = icmp eq i64 %i.ke, 0
  br i1 %.not.i.i60.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i56.i, !llvm.loop !156

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i, %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %i.kj = sub nuw i64 %i.ab, %i.a
  store i64 %i.kj, ptr %i.aa, align 8, !tbaa !744
  %i.kk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fu
  br label %bb.m

.thread:                                          ; preds = %bb.h, %bb.k, %bb.e, %bb.c
  %i.kl = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.o, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.kl, %.thread ], [ %i.an, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.kk, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !790  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !752  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !753  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !754    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !744
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !745
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !754
  br label %bb.q

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 2305843009213693951, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 2
  %i.af = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.ae, i64 noundef 4) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %bb.n, label %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge

._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge: ; preds = %bb.m
  %.pre = load i64, ptr %i.c, align 8, !tbaa !752
  %.pre58 = load i64, ptr %i.f, align 8, !tbaa !753
  %.pre59 = load ptr, ptr %0, align 8, !tbaa !754
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit: ; preds = %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit
  %i.ag = phi ptr [ %i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre59, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 4 uses
  %i.ah = phi i64 [ %i.g, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre58, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 3 uses
  %i.ai = phi i64 [ %i.d, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 3 uses
  %.0.i.i52 = phi ptr [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %i.af, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !791
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !791
  %i.am = sub i64 %i.ai, %i.ah
  %i.an = add i64 %2, %i.am                       ; 2 uses
  %i.ao = sub i64 %i.ac, %i.an
  %i.ap = lshr i64 %i.ao, 1                       ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai ; 3 uses
  %.not16.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test24movable_and_copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.ar, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit ] ; 3 uses
  %.01517.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.aq, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
end_hunk_14
begin_hunk_15_@_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SD_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i) ]
  %i.fh = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.fh, ptr %.01821.i.i.i, align 4, !tbaa !646
  %i.fi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fk = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 4
  %i.fl = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !646
  %i.fm = add i32 %i.fi, 2
  store i32 %i.fm, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fn = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 8
  %i.fo = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !646
  %i.fp = add i32 %i.fi, 3
  store i32 %i.fp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fq = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 12
  %i.fr = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !646
  %i.fs = add i32 %i.fi, 4
  store i32 %i.fs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ft = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 16
  %i.fu = add i64 %.022.i.i.i, -4                 ; 2 uses
  %.not.i.i67.i.3 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i67.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i66.i, !llvm.loop !237

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i66.i.prol.loopexit, %.lr.ph.i.i66.i, %middle.block149
  %i.fv = add i64 %i.k, %i.a
  store i64 %i.fv, ptr %i.j, align 8, !tbaa !758
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %.not61 = icmp ult i64 %i.an, %i.a
  br i1 %.not61, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i74 = icmp ult i64 %i.bs, %i.a
  %i.fw = sub i64 0, %i.a                         ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.fw ; 3 uses
  br i1 %.not.i74, label %.lr.ph.i48.i92, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %bb.n
  %.neg = add i64 %5, 1
  %xtraiter221 = and i64 %i.a, 1
  %i.fy = icmp eq i64 %3, %.neg
  br i1 %i.fy, label %.lr.ph.i.i76.epil.preheader, label %.lr.ph.i.i76.preheader.new

.lr.ph.i.i76.preheader.new:                       ; preds = %.lr.ph.i.i76.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76, %.lr.ph.i.i76.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i76 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ao, %.lr.ph.i.i76.preheader.new ], [ %i.gg, %.lr.ph.i.i76 ] ; 3 uses
  %.01618.i.i78 = phi ptr [ %i.fx, %.lr.ph.i.i76.preheader.new ], [ %i.gh, %.lr.ph.i.i76 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %niter.next.1, %.lr.ph.i.i76 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78) ]
  %i.fz = load i32, ptr %.0919.i.i, align 4, !tbaa !646
  store i32 %i.fz, ptr %.01618.i.i78, align 4, !tbaa !646
  %i.ga = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gc = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 4
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !646
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !646
  %i.gf = add i32 %i.ga, 2
  store i32 %i.gf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gg = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i76, !llvm.loop !229

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i76
  %indvar.next = or disjoint i64 %indvar, 1
  %lcmp.mod222.not = icmp eq i64 %xtraiter221, 0
  br i1 %lcmp.mod222.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i76.epil.preheader

.lr.ph.i.i76.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ao, %.lr.ph.i.i76.preheader ], [ %i.gg, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %.01618.i.i78.epil.init = phi ptr [ %i.fx, %.lr.ph.i.i76.preheader ], [ %i.gh, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod225 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod225)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78.epil.init) ]
  %i.gi = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !646
  store i32 %i.gi, ptr %.01618.i.i78.epil.init, align 4, !tbaa !646
  %i.gj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gl = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i76.epil.preheader ]
  %.lcssa215 = phi ptr [ %i.gg, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.gl, %.lr.ph.i.i76.epil.preheader ] ; 5 uses
  %.not8.i.i80 = icmp eq ptr %.lcssa215, %1
  br i1 %.not8.i.i80, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader

.lr.ph.i40.i81.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.gm = shl i64 %5, 2
  %i.gn = ptrtoaddr ptr %i.b to i64
  %i.go = add i64 %i.an, %3
  %i.gp = shl i64 %i.go, 2
  %i.gq = add i64 %i.gm, %i.bp
  %i.gr = add i64 %i.gq, -4
  %i.gs = add i64 %i.gp, %i.gn
  %i.gt = sub i64 %i.gr, %i.gs                    ; 2 uses
  %i.gu = lshr i64 %i.gt, 2
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %min.iters.check170 = icmp ult i64 %i.gt, 76
  br i1 %min.iters.check170, label %.lr.ph.i40.i81.preheader213, label %vector.memcheck167

vector.memcheck167:                               ; preds = %.lr.ph.i40.i81.preheader
  %i.gw = shl i64 %indvar.lcssa, 2
  %i.gx = add i64 %i.gw, 35
  %diff.check168 = icmp ult i64 %i.gx, 31
  br i1 %diff.check168, label %.lr.ph.i40.i81.preheader213, label %vector.ph171

vector.ph171:                                     ; preds = %vector.memcheck167
  %n.vec172 = and i64 %i.gv, 9223372036854775800  ; 3 uses
  %i.gy = shl i64 %n.vec172, 2                    ; 2 uses
  %i.gz = getelementptr i8, ptr %i.ao, i64 %i.gy  ; 2 uses
  %i.ha = getelementptr i8, ptr %.lcssa215, i64 %i.gy
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next179, %vector.body173 ] ; 2 uses
  %i.hb = shl i64 %index174, 2                    ; 2 uses
  %next.gep175 = getelementptr i8, ptr %i.ao, i64 %i.hb ; 2 uses
  %next.gep176 = getelementptr i8, ptr %.lcssa215, i64 %i.hb ; 2 uses
  %i.hc = getelementptr i8, ptr %next.gep176, i64 16
  %wide.load177 = load <4 x i32>, ptr %next.gep176, align 4, !tbaa !646
  %wide.load178 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !646
  %i.hd = getelementptr i8, ptr %next.gep175, i64 16
  store <4 x i32> %wide.load177, ptr %next.gep175, align 4, !tbaa !646
  store <4 x i32> %wide.load178, ptr %i.hd, align 4, !tbaa !646
  %index.next179 = add nuw i64 %index174, 8       ; 2 uses
  %i.he = icmp eq i64 %index.next179, %n.vec172
  br i1 %i.he, label %middle.block180, label %vector.body173, !llvm.loop !8024

middle.block180:                                  ; preds = %vector.body173
  %cmp.n181 = icmp eq i64 %i.gv, %n.vec172
  br i1 %cmp.n181, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader213

.lr.ph.i40.i81.preheader213:                      ; preds = %vector.memcheck167, %.lr.ph.i40.i81.preheader, %middle.block180
  %.010.i.i82.ph = phi ptr [ %i.ao, %vector.memcheck167 ], [ %i.ao, %.lr.ph.i40.i81.preheader ], [ %i.gz, %middle.block180 ]
  %.079.i.i83.ph = phi ptr [ %.lcssa215, %vector.memcheck167 ], [ %.lcssa215, %.lr.ph.i40.i81.preheader ], [ %i.ha, %middle.block180 ]
  br label %.lr.ph.i40.i81

.lr.ph.i40.i81:                                   ; preds = %.lr.ph.i40.i81.preheader213, %.lr.ph.i40.i81
  %.010.i.i82 = phi ptr [ %i.hh, %.lr.ph.i40.i81 ], [ %.010.i.i82.ph, %.lr.ph.i40.i81.preheader213 ] ; 2 uses
  %.079.i.i83 = phi ptr [ %i.hg, %.lr.ph.i40.i81 ], [ %.079.i.i83.ph, %.lr.ph.i40.i81.preheader213 ] ; 2 uses
  %i.hf = load i32, ptr %.079.i.i83, align 4, !tbaa !646
  store i32 %i.hf, ptr %.010.i.i82, align 4, !tbaa !646
  %i.hg = getelementptr inbounds nuw i8, ptr %.079.i.i83, i64 4 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.010.i.i82, i64 4 ; 2 uses
  %.not.i41.i84 = icmp eq ptr %i.hg, %1
  br i1 %.not.i41.i84, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81, !llvm.loop !8025

.lr.ph.preheader.i.i.i85:                         ; preds = %.lr.ph.i40.i81, %middle.block180, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.ao, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.gz, %middle.block180 ], [ %i.hh, %.lr.ph.i40.i81 ] ; 3 uses
  %.pre.i.i.i86 = load i32, ptr %2, align 4, !tbaa !646 ; 2 uses
  %min.iters.check185 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check185, label %.lr.ph.i.i.i87.preheader, label %vector.ph186

vector.ph186:                                     ; preds = %.lr.ph.preheader.i.i.i85
  %n.vec187 = and i64 %i.a, -8                    ; 3 uses
  %i.hi = and i64 %i.a, 7
  %i.hj = shl i64 %n.vec187, 2
  %i.hk = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.hj
  %broadcast.splatinsert188 = insertelement <4 x i32> poison, i32 %.pre.i.i.i86, i64 0
  %broadcast.splat189 = shufflevector <4 x i32> %broadcast.splatinsert188, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph186
  %index191 = phi i64 [ 0, %vector.ph186 ], [ %index.next193, %vector.body190 ] ; 2 uses
  %i.hl = shl i64 %index191, 2
  %next.gep192 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.hl ; 2 uses
  %i.hm = getelementptr i8, ptr %next.gep192, i64 16
  store <4 x i32> %broadcast.splat189, ptr %next.gep192, align 4, !tbaa !646
  store <4 x i32> %broadcast.splat189, ptr %i.hm, align 4, !tbaa !646
  %index.next193 = add nuw i64 %index191, 8       ; 2 uses
  %i.hn = icmp eq i64 %index.next193, %n.vec187
  br i1 %i.hn, label %middle.block194, label %vector.body190, !llvm.loop !8026

middle.block194:                                  ; preds = %vector.body190
  %cmp.n195 = icmp eq i64 %i.a, %n.vec187
  br i1 %cmp.n195, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87.preheader

.lr.ph.i.i.i87.preheader:                         ; preds = %.lr.ph.preheader.i.i.i85, %middle.block194
  %.012.i.i.i88.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i85 ], [ %i.hi, %middle.block194 ]
  %.0511.i.i.i89.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph.preheader.i.i.i85 ], [ %i.hk, %middle.block194 ]
  br label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %.lr.ph.i.i.i87.preheader, %.lr.ph.i.i.i87
  %.012.i.i.i88 = phi i64 [ %i.ho, %.lr.ph.i.i.i87 ], [ %.012.i.i.i88.ph, %.lr.ph.i.i.i87.preheader ]
  %.0511.i.i.i89 = phi ptr [ %i.hp, %.lr.ph.i.i.i87 ], [ %.0511.i.i.i89.ph, %.lr.ph.i.i.i87.preheader ] ; 2 uses
  %i.ho = add nsw i64 %.012.i.i.i88, -1           ; 2 uses
  store i32 %.pre.i.i.i86, ptr %.0511.i.i.i89, align 4, !tbaa !646
  %i.hp = getelementptr inbounds nuw i8, ptr %.0511.i.i.i89, i64 4
  %.not.i.i.i90 = icmp eq i64 %i.ho, 0
  br i1 %.not.i.i.i90, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87, !llvm.loop !8027

.lr.ph.i48.i92:                                   ; preds = %bb.n, %.lr.ph.i48.i92
  %.018.i.i93 = phi ptr [ %i.ht, %.lr.ph.i48.i92 ], [ %i.ao, %bb.n ] ; 2 uses
  %.01517.i.i94 = phi ptr [ %i.hu, %.lr.ph.i48.i92 ], [ %i.fx, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i94) ]
  %i.hq = load i32, ptr %.018.i.i93, align 4, !tbaa !646
  store i32 %i.hq, ptr %.01517.i.i94, align 4, !tbaa !646
  %i.hr = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hs = add i32 %i.hr, 1
  store i32 %i.hs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ht = getelementptr inbounds nuw i8, ptr %.018.i.i93, i64 4 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.01517.i.i94, i64 4 ; 3 uses
  %.not.i49.i95 = icmp eq ptr %i.ht, %1
  br i1 %.not.i49.i95, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i92, !llvm.loop !227

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i92
  %i.hv = sub i64 %i.a, %i.bs                     ; 3 uses
  %xtraiter226 = and i64 %i.hv, 3                 ; 2 uses
  %lcmp.mod227.not = icmp eq i64 %xtraiter226, 0
  br i1 %lcmp.mod227.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol

.lr.ph.i.i53.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, %.lr.ph.i.i53.i.prol
  %.022.i.i.i96.prol = phi i64 [ %i.ia, %.lr.ph.i.i53.i.prol ], [ %i.hv, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %.01821.i.i.i97.prol = phi ptr [ %i.hz, %.lr.ph.i.i53.i.prol ], [ %i.hu, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ] ; 2 uses
  %prol.iter228 = phi i64 [ %prol.iter228.next, %.lr.ph.i.i53.i.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %i.hw = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.hw, ptr %.01821.i.i.i97.prol, align 4, !tbaa !646
  %i.hx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hz = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97.prol, i64 4 ; 2 uses
  %i.ia = add i64 %.022.i.i.i96.prol, -1          ; 2 uses
  %prol.iter228.next = add i64 %prol.iter228, 1   ; 2 uses
  %prol.iter228.cmp.not = icmp eq i64 %prol.iter228.next, %xtraiter226
  br i1 %prol.iter228.cmp.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol, !llvm.loop !8028

.lr.ph.i.i53.i.prol.loopexit:                     ; preds = %.lr.ph.i.i53.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.022.i.i.i96.unr = phi i64 [ %i.hv, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ia, %.lr.ph.i.i53.i.prol ]
  %.01821.i.i.i97.unr = phi ptr [ %i.hu, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.hz, %.lr.ph.i.i53.i.prol ]
  %i.ib = sub i64 %i.bs, %3
  %i.ic = add i64 %i.ib, %5
  %i.id = icmp ugt i64 %i.ic, -4
  br i1 %i.id, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i
  %.022.i.i.i96 = phi i64 [ %i.ir, %.lr.ph.i.i53.i ], [ %.022.i.i.i96.unr, %.lr.ph.i.i53.i.prol.loopexit ]
  %.01821.i.i.i97 = phi ptr [ %i.iq, %.lr.ph.i.i53.i ], [ %.01821.i.i.i97.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 5 uses
  %i.ie = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.ie, ptr %.01821.i.i.i97, align 4, !tbaa !646
  %i.if = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ih = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 4
  %i.ii = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.ii, ptr %i.ih, align 4, !tbaa !646
  %i.ij = add i32 %i.if, 2
  store i32 %i.ij, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ik = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 8
  %i.il = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.il, ptr %i.ik, align 4, !tbaa !646
  %i.im = add i32 %i.if, 3
  store i32 %i.im, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.in = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 12
  %i.io = load i32, ptr %2, align 4, !tbaa !646
  store i32 %i.io, ptr %i.in, align 4, !tbaa !646
  %i.ip = add i32 %i.if, 4
  store i32 %i.ip, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.iq = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 16
  %i.ir = add i64 %.022.i.i.i96, -4               ; 2 uses
  %.not.i.i54.i.3 = icmp eq i64 %i.ir, 0
  br i1 %.not.i.i54.i.3, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i, !llvm.loop !237

.lr.ph.preheader.i.i61.i:                         ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.prol.loopexit
  %.pre.i.i62.i = load i32, ptr %2, align 4, !tbaa !646 ; 2 uses
  %min.iters.check199 = icmp ult i64 %i.bs, 8
  br i1 %min.iters.check199, label %.lr.ph.i.i63.i.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.preheader.i.i61.i
  %n.vec201 = and i64 %i.bs, -8                   ; 3 uses
  %i.is = and i64 %i.bs, 7
  %i.it = shl nsw i64 %n.vec201, 2
  %i.iu = getelementptr i8, ptr %i.ao, i64 %i.it
  %broadcast.splatinsert202 = insertelement <4 x i32> poison, i32 %.pre.i.i62.i, i64 0
  %broadcast.splat203 = shufflevector <4 x i32> %broadcast.splatinsert202, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph200
  %index205 = phi i64 [ 0, %vector.ph200 ], [ %index.next207, %vector.body204 ] ; 2 uses
  %i.iv = shl i64 %index205, 2
  %next.gep206 = getelementptr i8, ptr %i.ao, i64 %i.iv ; 2 uses
  %i.iw = getelementptr i8, ptr %next.gep206, i64 16
  store <4 x i32> %broadcast.splat203, ptr %next.gep206, align 4, !tbaa !646
  store <4 x i32> %broadcast.splat203, ptr %i.iw, align 4, !tbaa !646
  %index.next207 = add nuw i64 %index205, 8       ; 2 uses
  %i.ix = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.ix, label %middle.block208, label %vector.body204, !llvm.loop !8029

middle.block208:                                  ; preds = %vector.body204
  %cmp.n209 = icmp eq i64 %i.bs, %n.vec201
  br i1 %cmp.n209, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i63.i.preheader

.lr.ph.i.i63.i.preheader:                         ; preds = %.lr.ph.preheader.i.i61.i, %middle.block208
  %.012.i.i64.i.ph = phi i64 [ %i.bs, %.lr.ph.preheader.i.i61.i ], [ %i.is, %middle.block208 ]
  %.0511.i.i65.i.ph = phi ptr [ %i.ao, %.lr.ph.preheader.i.i61.i ], [ %i.iu, %middle.block208 ]
  br label %.lr.ph.i.i63.i

.lr.ph.i.i63.i:                                   ; preds = %.lr.ph.i.i63.i.preheader, %.lr.ph.i.i63.i
  %.012.i.i64.i = phi i64 [ %i.iy, %.lr.ph.i.i63.i ], [ %.012.i.i64.i.ph, %.lr.ph.i.i63.i.preheader ]
  %.0511.i.i65.i = phi ptr [ %i.iz, %.lr.ph.i.i63.i ], [ %.0511.i.i65.i.ph, %.lr.ph.i.i63.i.preheader ] ; 2 uses
  %i.iy = add i64 %.012.i.i64.i, -1               ; 2 uses
  store i32 %.pre.i.i62.i, ptr %.0511.i.i65.i, align 4, !tbaa !646
  %i.iz = getelementptr inbounds nuw i8, ptr %.0511.i.i65.i, i64 4
  %.not.i.i66.i = icmp eq i64 %i.iy, 0
  br i1 %.not.i.i66.i, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i63.i, !llvm.loop !8030

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i87, %.lr.ph.i.i63.i, %middle.block194, %middle.block208
  %i.ja = sub nuw i64 %i.an, %i.a
  store i64 %i.ja, ptr %i.am, align 8, !tbaa !757
  %i.jb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fw
  br label %bb.o

.thread:                                          ; preds = %bb.j, %bb.m, %bb.g, %bb.d
  %i.jc = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2, i64 %3)
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.i, %bb.b ], [ %i.l, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.jc, %.thread ], [ %i.bo, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEENS0_17constant_iteratorIS4_EEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit71 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.jb, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS3_EEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.457", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !794  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !765  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !766  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !767    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not52 = icmp ult i64 %i.k, %i.l
  br i1 %.not52, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %.sroa.258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %.sroa.258.0..sroa_idx, align 8
  %i.r = icmp samesign ult i64 %i.p, %i.g
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.457") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr noundef nonnull byval(%"struct.boost::container::dtl::insert_range_proxy.457") align 8 %5, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEENS0_17constant_iteratorIS3_EEEES8_EEvT_mSC_SC_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store i64 %i.p, ptr %i.f, align 8, !tbaa !757
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !758
  %.pre64 = load ptr, ptr %0, align 8, !tbaa !767
  br label %bb.q

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 2305843009213693951, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j
end_hunk_15
begin_hunk_16_@_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE23allocate_and_copy_rangeIPKS3_EEvT_SA_:bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !795
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8, !tbaa !795
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ] ; 2 uses
  %.01517.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = load i32, ptr %.018.i, align 4, !tbaa !646
  store i32 %i.j, ptr %.01517.i, align 4, !tbaa !646
  %i.k = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.m = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.m, %2
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !225

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.o = phi ptr [ null, %bb.a ], [ %i.f, %.lr.ph.i ]
  %i.p = load ptr, ptr %0, align 8, !tbaa !767    ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !766  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !765  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t
  %.not5.i = icmp samesign eq i64 %i.r, %i.t
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.r
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader, %.lr.ph.i17
  %.06.i = phi ptr [ %i.y, %.lr.ph.i17 ], [ %i.v, %.lr.ph.i17.preheader ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !646
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.x = add i32 %i.w, -1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i18 = icmp eq ptr %i.y, %i.u
  br i1 %.not.i18, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit, label %.lr.ph.i17, !llvm.loop !185

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit: ; preds = %.lr.ph.i17, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPKS4_PS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit
  %.not.i19 = icmp eq ptr %i.p, null
  br i1 %.not.i19, label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.p)
          to label %_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #31
  unreachable

_ZN5boost9container6detail16allocation_guardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEED2Ev.exit: ; preds = %bb.e, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.d, ptr %i.ab, align 8, !tbaa !759
  store ptr %i.o, ptr %0, align 8, !tbaa !767
  store i64 0, ptr %i.q, align 8, !tbaa !766
  store i64 %i.d, ptr %i.s, align 8, !tbaa !758
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE12insert_rangeISt14_List_iteratorIiEEEPS3_PKS3_T_SD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i.i = icmp eq ptr %2, %3
  br i1 %.not4.i.i, label %bb.b, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi i64 [ %i.a, %.lr.ph.i.i ], [ 0, %bb.a ] ; 20 uses
  %.sroa.02.05.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %2, %bb.a ]
  %i.a = add nuw i64 %.06.i.i, 1                  ; 20 uses
  %i.b = load ptr, ptr %.sroa.02.05.i.i, align 8, !tbaa !677 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %3
  br i1 %.not.i.i, label %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit, label %.lr.ph.i.i, !llvm.loop !98

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !767
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !766
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.e ; 2 uses
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  br label %bb.m

_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit: ; preds = %.lr.ph.i.i
  %i.k = load ptr, ptr %0, align 8, !tbaa !767    ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !765  ; 7 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m ; 15 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !794
  %i.r = sub i64 %i.q, %i.m
  %.not49.not = icmp ugt i64 %i.r, %.06.i.i
  br i1 %.not49.not, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.015.i = phi ptr [ %i.x, %.lr.ph.i ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.010.014.i = phi ptr [ %i.w, %.lr.ph.i ], [ %2, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !259
  store i32 %i.t, ptr %.015.i, align 4, !tbaa !646
  %i.u = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.w = load ptr, ptr %.sroa.010.014.i, align 8, !tbaa !677 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %.not.i = icmp eq ptr %i.w, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, label %.lr.ph.i, !llvm.loop !238

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit: ; preds = %.lr.ph.i
  %i.y = add i64 %i.m, %i.a
  store i64 %i.y, ptr %i.l, align 8, !tbaa !758
  br label %bb.m

bb.d:                                             ; preds = %_ZN5boost9intrusive18iterator_udistanceISt14_List_iteratorIiEEENS_7movelib9iter_sizeIT_E4typeES6_S6_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !766 ; 7 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.aa ; 14 uses
  %i.ac = icmp eq ptr %1, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not48.not = icmp ugt i64 %i.aa, %.06.i.i
  br i1 %.not48.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.ad = xor i64 %.06.i.i, -1
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.f, %.lr.ph.i51
  %.015.i52 = phi ptr [ %i.ak, %.lr.ph.i51 ], [ %i.ae, %bb.f ] ; 3 uses
  %.sroa.010.014.i53 = phi ptr [ %i.aj, %.lr.ph.i51 ], [ %2, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i53, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.015.i52) ]
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !259
  store i32 %i.ag, ptr %.015.i52, align 4, !tbaa !646
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.aj = load ptr, ptr %.sroa.010.014.i53, align 8, !tbaa !677 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i52, i64 4
  %.not.i54 = icmp eq ptr %i.aj, %3
  br i1 %.not.i54, label %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56, label %.lr.ph.i51, !llvm.loop !238

_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56: ; preds = %.lr.ph.i51
  %i.al = sub nuw i64 %i.aa, %i.a                 ; 2 uses
  store i64 %i.al, ptr %i.z, align 8, !tbaa !757
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.al
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.an = ptrtoint ptr %1 to i64                  ; 4 uses
  %i.ao = ptrtoint ptr %i.ab to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 8 uses
  %i.ar = sub i64 %i.m, %i.aa
  %i.as = lshr i64 %i.ar, 1
  %.not = icmp ult i64 %i.aq, %i.as
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !794
  %i.av = sub i64 %i.au, %i.m
  %.not47.not = icmp ugt i64 %i.av, %.06.i.i
  br i1 %.not47.not, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aw = ptrtoint ptr %i.n to i64
  %i.ax = sub i64 %i.aw, %i.an
  %i.ay = ashr exact i64 %i.ax, 2                 ; 7 uses
  %.not.i57.not = icmp ugt i64 %i.ay, %.06.i.i
  br i1 %.not.i57.not, label %bb.j, label %.lr.ph.i48.preheader.i

bb.j:                                             ; preds = %bb.i
  %i.az = xor i64 %.06.i.i, -1
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.az ; 7 uses
  %xtraiter168 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol

.lr.ph.i.i58.prol:                                ; preds = %bb.j, %.lr.ph.i.i58.prol
  %.020.i.i.prol = phi i64 [ %i.bb, %.lr.ph.i.i58.prol ], [ %i.a, %bb.j ]
  %.0819.i.i.prol = phi ptr [ %i.bf, %.lr.ph.i.i58.prol ], [ %i.ba, %bb.j ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i58.prol ], [ %i.n, %bb.j ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %.lr.ph.i.i58.prol ], [ 0, %bb.j ]
  %i.bb = add nsw i64 %.020.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.bc = load i32, ptr %.0819.i.i.prol, align 4, !tbaa !646
  store i32 %i.bc, ptr %.01618.i.i.prol, align 4, !tbaa !646
  %i.bd = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i.i.prol, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %.lr.ph.i.i58.prol.loopexit, label %.lr.ph.i.i58.prol, !llvm.loop !8133

.lr.ph.i.i58.prol.loopexit:                       ; preds = %.lr.ph.i.i58.prol, %bb.j
  %.020.i.i.unr = phi i64 [ %i.a, %bb.j ], [ %i.bb, %.lr.ph.i.i58.prol ]
  %.0819.i.i.unr = phi ptr [ %i.ba, %bb.j ], [ %i.bf, %.lr.ph.i.i58.prol ]
  %.01618.i.i.unr = phi ptr [ %i.n, %bb.j ], [ %i.bg, %.lr.ph.i.i58.prol ]
  %i.bh = icmp ult i64 %.06.i.i, 3
  br i1 %i.bh, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58

.lr.ph.i.i58:                                     ; preds = %.lr.ph.i.i58.prol.loopexit, %.lr.ph.i.i58
  %.020.i.i = phi i64 [ %i.bv, %.lr.ph.i.i58 ], [ %.020.i.i.unr, %.lr.ph.i.i58.prol.loopexit ]
  %.0819.i.i = phi ptr [ %i.by, %.lr.ph.i.i58 ], [ %.0819.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.bz, %.lr.ph.i.i58 ], [ %.01618.i.i.unr, %.lr.ph.i.i58.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.bi = load i32, ptr %.0819.i.i, align 4, !tbaa !646
  store i32 %i.bi, ptr %.01618.i.i, align 4, !tbaa !646
  %i.bj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 4 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bl = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !646
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !646
  %i.bo = add i32 %i.bj, 2
  store i32 %i.bo, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bp = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !646
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !646
  %i.bs = add i32 %i.bj, 3
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bt = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 12
  %i.bu = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.bv = add nsw i64 %.020.i.i, -4               ; 2 uses
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !646
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !646
  %i.bx = add i32 %i.bj, 4
  store i32 %i.bx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.by = getelementptr inbounds nuw i8, ptr %.0819.i.i, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %.not.i.i59.3 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i59.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i58, !llvm.loop !226

_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i: ; preds = %.lr.ph.i.i58, %.lr.ph.i.i58.prol.loopexit
  %.not8.i.i = icmp eq ptr %1, %i.ba
  br i1 %.not8.i.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader

.lr.ph.i40.i.preheader:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %i.ca = mul i64 %.06.i.i, -4
  %reass.sub = sub i64 %i.ca, %i.an
  %i.cb = add i64 %reass.sub, -8
  %i.cc = ptrtoaddr ptr %i.k to i64
  %i.cd = add i64 %i.cb, %i.cc
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add i64 %i.ce, %i.m
  %i.cg = and i64 %i.cf, 4611686018427387903      ; 2 uses
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.cg, 19
  br i1 %min.iters.check, label %.lr.ph.i40.i.preheader161, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.preheader
  %i.ci = shl i64 %.06.i.i, 2
  %i.cj = add i64 %i.ci, 35
  %diff.check = icmp ult i64 %i.cj, 31
  br i1 %diff.check, label %.lr.ph.i40.i.preheader161, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ch, 9223372036854775800     ; 3 uses
  %i.ck = mul i64 %n.vec, -4                      ; 2 uses
  %i.cl = getelementptr i8, ptr %i.n, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.ba, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.cn ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.ba, i64 %i.cn ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep136, i64 -16
  %i.cp = getelementptr inbounds i8, ptr %next.gep136, i64 -32
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !646
  %wide.load137 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !646
  %i.cq = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cq, align 4, !tbaa !646
  store <4 x i32> %wide.load137, ptr %i.cr, align 4, !tbaa !646
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !8134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i.preheader161

.lr.ph.i40.i.preheader161:                        ; preds = %vector.memcheck, %.lr.ph.i40.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i40.i.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.ba, %vector.memcheck ], [ %i.ba, %.lr.ph.i40.i.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i40.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph.i40.i.preheader161, %.lr.ph.i40.i
  %.010.i.i = phi ptr [ %i.cu, %.lr.ph.i40.i ], [ %.010.i.i.ph, %.lr.ph.i40.i.preheader161 ]
  %.079.i.i = phi ptr [ %i.ct, %.lr.ph.i40.i ], [ %.079.i.i.ph, %.lr.ph.i40.i.preheader161 ]
  %i.ct = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.cu = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !646
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !646
  %.not.i41.i = icmp eq ptr %1, %i.ct
  br i1 %.not.i41.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i40.i, !llvm.loop !8135

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i
  %xtraiter171 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi i64 [ %i.cw, %.lr.ph.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.da, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i.prol ], [ %2, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter173 = phi i64 [ %prol.iter173.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cw = add nsw i64 %.09.i.i.i.prol, -1         ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.prol, i64 16
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !259
  store i32 %i.cy, ptr %.048.i.i.i.prol, align 4, !tbaa !646
  %i.cz = load ptr, ptr %.sroa.0.07.i.i.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter173.next = add i64 %prol.iter173, 1   ; 2 uses
  %prol.iter173.cmp.not = icmp eq i64 %prol.iter173.next, %xtraiter171
  br i1 %prol.iter173.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !8136

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.prol ]
  %.sroa.0.07.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.preheader ], [ %i.cz, %.lr.ph.i.i.i.prol ]
  %i.db = icmp ult i64 %.06.i.i, 3
  br i1 %i.db, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i ], [ %.048.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !259
  store i32 %i.dd, ptr %.048.i.i.i, align 4, !tbaa !646
  %i.de = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !259
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !646
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !677 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !259
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !646
  %i.dm = load ptr, ptr %i.di, align 8, !tbaa !677 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 12
  %i.do = add nsw i64 %.09.i.i.i, -4              ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !259
  store i32 %i.dq, ptr %i.dn, align 4, !tbaa !646
  %i.dr = load ptr, ptr %i.dm, align 8, !tbaa !677
  %i.ds = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %.not.i.i.i.3 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !177

.lr.ph.i48.preheader.i:                           ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.a
  br label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %.lr.ph.i48.i, %.lr.ph.i48.preheader.i
  %.018.i.i = phi ptr [ %i.dx, %.lr.ph.i48.i ], [ %1, %.lr.ph.i48.preheader.i ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.dy, %.lr.ph.i48.i ], [ %i.dt, %.lr.ph.i48.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
  %i.du = load i32, ptr %.018.i.i, align 4, !tbaa !646
  store i32 %i.du, ptr %.01517.i.i, align 4, !tbaa !646
  %i.dv = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01517.i.i, i64 4
  %.not.i49.i = icmp eq ptr %i.dx, %i.n
  br i1 %.not.i49.i, label %.lr.ph.i.i52.i.preheader, label %.lr.ph.i48.i, !llvm.loop !227

.lr.ph.i.i52.i.preheader:                         ; preds = %.lr.ph.i48.i
  %xtraiter = and i64 %i.ay, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol

.lr.ph.i.i52.i.prol:                              ; preds = %.lr.ph.i.i52.i.preheader, %.lr.ph.i.i52.i.prol
  %.09.i.i53.i.prol = phi i64 [ %i.dz, %.lr.ph.i.i52.i.prol ], [ %i.ay, %.lr.ph.i.i52.i.preheader ]
  %.048.i.i54.i.prol = phi ptr [ %i.ed, %.lr.ph.i.i52.i.prol ], [ %1, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i55.i.prol = phi ptr [ %i.ec, %.lr.ph.i.i52.i.prol ], [ %2, %.lr.ph.i.i52.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i52.i.prol ], [ 0, %.lr.ph.i.i52.i.preheader ]
  %i.dz = add i64 %.09.i.i53.i.prol, -1           ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i.prol, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !259
  store i32 %i.eb, ptr %.048.i.i54.i.prol, align 4, !tbaa !646
  %i.ec = load ptr, ptr %.sroa.0.07.i.i55.i.prol, align 8, !tbaa !677 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.048.i.i54.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i52.i.prol.loopexit, label %.lr.ph.i.i52.i.prol, !llvm.loop !8137

.lr.ph.i.i52.i.prol.loopexit:                     ; preds = %.lr.ph.i.i52.i.prol, %.lr.ph.i.i52.i.preheader
  %.lcssa163.unr = phi ptr [ poison, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %.09.i.i53.i.unr = phi i64 [ %i.ay, %.lr.ph.i.i52.i.preheader ], [ %i.dz, %.lr.ph.i.i52.i.prol ]
  %.048.i.i54.i.unr = phi ptr [ %1, %.lr.ph.i.i52.i.preheader ], [ %i.ed, %.lr.ph.i.i52.i.prol ]
  %.sroa.0.07.i.i55.i.unr = phi ptr [ %2, %.lr.ph.i.i52.i.preheader ], [ %i.ec, %.lr.ph.i.i52.i.prol ]
  %i.ee = icmp ult i64 %i.ay, 4
  br i1 %i.ee, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i

.lr.ph.i.i52.i:                                   ; preds = %.lr.ph.i.i52.i.prol.loopexit, %.lr.ph.i.i52.i
  %.09.i.i53.i = phi i64 [ %i.er, %.lr.ph.i.i52.i ], [ %.09.i.i53.i.unr, %.lr.ph.i.i52.i.prol.loopexit ]
  %.048.i.i54.i = phi ptr [ %i.ev, %.lr.ph.i.i52.i ], [ %.048.i.i54.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i55.i = phi ptr [ %i.eu, %.lr.ph.i.i52.i ], [ %.sroa.0.07.i.i55.i.unr, %.lr.ph.i.i52.i.prol.loopexit ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i55.i, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !259
  store i32 %i.eg, ptr %.048.i.i54.i, align 4, !tbaa !646
  %i.eh = load ptr, ptr %.sroa.0.07.i.i55.i, align 8, !tbaa !677 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !259
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !646
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !677 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !259
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !646
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !677 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 12
  %i.er = add i64 %.09.i.i53.i, -4                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i32, ptr %i.es, align 4, !tbaa !259
  store i32 %i.et, ptr %i.eq, align 4, !tbaa !646
  %i.eu = load ptr, ptr %i.ep, align 8, !tbaa !677 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.048.i.i54.i, i64 16
  %.not.i.i56.i.3 = icmp eq i64 %i.er, 0
  br i1 %.not.i.i56.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i, label %.lr.ph.i.i52.i, !llvm.loop !177

_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i: ; preds = %.lr.ph.i.i52.i, %.lr.ph.i.i52.i.prol.loopexit
  %.lcssa163 = phi ptr [ %.lcssa163.unr, %.lr.ph.i.i52.i.prol.loopexit ], [ %i.eu, %.lr.ph.i.i52.i ] ; 3 uses
  %i.ew = sub i64 %i.a, %i.ay                     ; 3 uses
  %xtraiter165 = and i64 %i.ew, 1
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph.i.i60.i.prol.loopexit, label %.lr.ph.i.i60.i.prol

.lr.ph.i.i60.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.lcssa163, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !259
  store i32 %i.ey, ptr %i.n, align 4, !tbaa !646
  %i.ez = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fb = load ptr, ptr %.lcssa163, align 8, !tbaa !677
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.fd = add nsw i64 %i.ew, -1
  br label %.lr.ph.i.i60.i.prol.loopexit

.lr.ph.i.i60.i.prol.loopexit:                     ; preds = %.lr.ph.i.i60.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i
  %.018.i.i.i.unr = phi i64 [ %i.ew, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fd, %.lr.ph.i.i60.i.prol ]
  %.01417.i.i.i.unr = phi ptr [ %i.n, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fc, %.lr.ph.i.i60.i.prol ]
  %.sroa.0.016.i.i.i.unr = phi ptr [ %.lcssa163, %_ZN5boost9container3dtl18insert_range_proxyINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit58.i ], [ %i.fb, %.lr.ph.i.i60.i.prol ]
  %i.fe = icmp eq i64 %.06.i.i, %i.ay
  br i1 %i.fe, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i

.lr.ph.i.i60.i:                                   ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i
  %.018.i.i.i = phi i64 [ %i.fq, %.lr.ph.i.i60.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ]
  %.01417.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i60.i ], [ %.01417.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i = phi ptr [ %i.fo, %.lr.ph.i.i60.i ], [ %.sroa.0.016.i.i.i.unr, %.lr.ph.i.i60.i.prol.loopexit ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i) ]
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !259
  store i32 %i.fg, ptr %.01417.i.i.i, align 4, !tbaa !646
  %i.fh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.fi = add i32 %i.fh, 1
  store i32 %i.fi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fj = load ptr, ptr %.sroa.0.016.i.i.i, align 8, !tbaa !677 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !259
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !646
  %i.fn = add i32 %i.fh, 2
  store i32 %i.fn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !677
  %i.fp = getelementptr inbounds nuw i8, ptr %.01417.i.i.i, i64 8
  %i.fq = add nsw i64 %.018.i.i.i, -2             ; 2 uses
  %.not.i.i61.i.1 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i61.i.1, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i60.i, !llvm.loop !239

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i60.i.prol.loopexit, %.lr.ph.i.i60.i, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.fr = add i64 %i.m, %i.a
  store i64 %i.fr, ptr %i.l, align 8, !tbaa !758
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %.not46.not = icmp ugt i64 %i.aa, %.06.i.i
  br i1 %.not46.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not.i60.not = icmp ugt i64 %i.aq, %.06.i.i
  %i.fs = xor i64 %.06.i.i, -1                    ; 2 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.fs ; 3 uses
  br i1 %.not.i60.not, label %.lr.ph.i.i62.preheader, label %.lr.ph.i48.i78

.lr.ph.i.i62.preheader:                           ; preds = %bb.l
  %i.fu = icmp eq i64 %.06.i.i, 0
  br i1 %i.fu, label %.lr.ph.i.i62.epil.preheader, label %.lr.ph.i.i62.preheader.new

.lr.ph.i.i62.preheader.new:                       ; preds = %.lr.ph.i.i62.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i62

.lr.ph.i.i62:                                     ; preds = %.lr.ph.i.i62, %.lr.ph.i.i62.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i62 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.ab, %.lr.ph.i.i62.preheader.new ], [ %i.gc, %.lr.ph.i.i62 ] ; 3 uses
  %.01618.i.i64 = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader.new ], [ %i.gd, %.lr.ph.i.i62 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i62.preheader.new ], [ %niter.next.1, %.lr.ph.i.i62 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64) ]
  %i.fv = load i32, ptr %.0919.i.i, align 4, !tbaa !646
  store i32 %i.fv, ptr %.01618.i.i64, align 4, !tbaa !646
  %i.fw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.fx = add i32 %i.fw, 1
  store i32 %i.fx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fy = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 4
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !646
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !646
  %i.gb = add i32 %i.fw, 2
  store i32 %i.gb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gc = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.01618.i.i64, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i62, !llvm.loop !229

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i62
  %indvar.next = or disjoint i64 %indvar, 1
  %i.ge = and i64 %.06.i.i, 1
  %lcmp.mod181.not.not = icmp eq i64 %i.ge, 0
  br i1 %lcmp.mod181.not.not, label %.lr.ph.i.i62.epil.preheader, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

.lr.ph.i.i62.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i62.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.ab, %.lr.ph.i.i62.preheader ], [ %i.gc, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %.01618.i.i64.epil.init = phi ptr [ %i.ft, %.lr.ph.i.i62.preheader ], [ %i.gd, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod184 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i64.epil.init) ]
  %i.gf = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !646
  store i32 %i.gf, ptr %.01618.i.i64.epil.init, align 4, !tbaa !646
  %i.gg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gh = add i32 %i.gg, 1
  store i32 %i.gh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gi = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i62.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i62.epil.preheader ]
  %.lcssa157 = phi ptr [ %i.gc, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.gi, %.lr.ph.i.i62.epil.preheader ] ; 5 uses
  %.not8.i.i66 = icmp eq ptr %.lcssa157, %1
  br i1 %.not8.i.i66, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader

.lr.ph.i40.i67.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.gj = add i64 %i.an, -8
  %i.gk = ptrtoaddr ptr %i.k to i64
  %i.gl = add i64 %.06.i.i, %i.aa
  %i.gm = shl i64 %i.gl, 2
  %i.gn = add i64 %i.gm, %i.gk
  %i.go = sub i64 %i.gj, %i.gn                    ; 2 uses
  %i.gp = lshr i64 %i.go, 2
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %min.iters.check142 = icmp ult i64 %i.go, 76
  br i1 %min.iters.check142, label %.lr.ph.i40.i67.preheader156, label %vector.memcheck139

vector.memcheck139:                               ; preds = %.lr.ph.i40.i67.preheader
  %i.gr = shl i64 %indvar.lcssa, 2
  %i.gs = add i64 %i.gr, 35
  %diff.check140 = icmp ult i64 %i.gs, 31
  br i1 %diff.check140, label %.lr.ph.i40.i67.preheader156, label %vector.ph143

vector.ph143:                                     ; preds = %vector.memcheck139
  %n.vec144 = and i64 %i.gq, 9223372036854775800  ; 3 uses
  %i.gt = shl i64 %n.vec144, 2                    ; 2 uses
  %i.gu = getelementptr i8, ptr %i.ab, i64 %i.gt  ; 2 uses
  %i.gv = getelementptr i8, ptr %.lcssa157, i64 %i.gt
  br label %vector.body145

vector.body145:                                   ; preds = %vector.body145, %vector.ph143
  %index146 = phi i64 [ 0, %vector.ph143 ], [ %index.next151, %vector.body145 ] ; 2 uses
  %i.gw = shl i64 %index146, 2                    ; 2 uses
  %next.gep147 = getelementptr i8, ptr %i.ab, i64 %i.gw ; 2 uses
  %next.gep148 = getelementptr i8, ptr %.lcssa157, i64 %i.gw ; 2 uses
  %i.gx = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load149 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !646
  %wide.load150 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !646
  %i.gy = getelementptr i8, ptr %next.gep147, i64 16
  store <4 x i32> %wide.load149, ptr %next.gep147, align 4, !tbaa !646
  store <4 x i32> %wide.load150, ptr %i.gy, align 4, !tbaa !646
  %index.next151 = add nuw i64 %index146, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next151, %n.vec144
  br i1 %i.gz, label %middle.block152, label %vector.body145, !llvm.loop !8138

middle.block152:                                  ; preds = %vector.body145
  %cmp.n153 = icmp eq i64 %i.gq, %n.vec144
  br i1 %cmp.n153, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67.preheader156

.lr.ph.i40.i67.preheader156:                      ; preds = %vector.memcheck139, %.lr.ph.i40.i67.preheader, %middle.block152
  %.010.i.i68.ph = phi ptr [ %i.ab, %vector.memcheck139 ], [ %i.ab, %.lr.ph.i40.i67.preheader ], [ %i.gu, %middle.block152 ]
  %.079.i.i69.ph = phi ptr [ %.lcssa157, %vector.memcheck139 ], [ %.lcssa157, %.lr.ph.i40.i67.preheader ], [ %i.gv, %middle.block152 ]
  br label %.lr.ph.i40.i67

.lr.ph.i40.i67:                                   ; preds = %.lr.ph.i40.i67.preheader156, %.lr.ph.i40.i67
  %.010.i.i68 = phi ptr [ %i.hc, %.lr.ph.i40.i67 ], [ %.010.i.i68.ph, %.lr.ph.i40.i67.preheader156 ] ; 2 uses
  %.079.i.i69 = phi ptr [ %i.hb, %.lr.ph.i40.i67 ], [ %.079.i.i69.ph, %.lr.ph.i40.i67.preheader156 ] ; 2 uses
  %i.ha = load i32, ptr %.079.i.i69, align 4, !tbaa !646
  store i32 %i.ha, ptr %.010.i.i68, align 4, !tbaa !646
  %i.hb = getelementptr inbounds nuw i8, ptr %.079.i.i69, i64 4 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.010.i.i68, i64 4 ; 2 uses
  %.not.i41.i70 = icmp eq ptr %i.hb, %1
  br i1 %.not.i41.i70, label %.lr.ph.i.i.i72.preheader, label %.lr.ph.i40.i67, !llvm.loop !8139

.lr.ph.i.i.i72.preheader:                         ; preds = %.lr.ph.i40.i67, %middle.block152, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.048.i.i.i74.ph = phi ptr [ %i.ab, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.gu, %middle.block152 ], [ %i.hc, %.lr.ph.i40.i67 ] ; 2 uses
  %xtraiter185 = and i64 %i.a, 3                  ; 2 uses
  %lcmp.mod186.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol

.lr.ph.i.i.i72.prol:                              ; preds = %.lr.ph.i.i.i72.preheader, %.lr.ph.i.i.i72.prol
  %.09.i.i.i73.prol = phi i64 [ %i.hd, %.lr.ph.i.i.i72.prol ], [ %i.a, %.lr.ph.i.i.i72.preheader ]
  %.048.i.i.i74.prol = phi ptr [ %i.hh, %.lr.ph.i.i.i72.prol ], [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i75.prol = phi ptr [ %i.hg, %.lr.ph.i.i.i72.prol ], [ %2, %.lr.ph.i.i.i72.preheader ] ; 2 uses
  %prol.iter187 = phi i64 [ %prol.iter187.next, %.lr.ph.i.i.i72.prol ], [ 0, %.lr.ph.i.i.i72.preheader ]
  %i.hd = add nsw i64 %.09.i.i.i73.prol, -1       ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75.prol, i64 16
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !259
  store i32 %i.hf, ptr %.048.i.i.i74.prol, align 4, !tbaa !646
  %i.hg = load ptr, ptr %.sroa.0.07.i.i.i75.prol, align 8, !tbaa !677 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.048.i.i.i74.prol, i64 4 ; 2 uses
  %prol.iter187.next = add i64 %prol.iter187, 1   ; 2 uses
  %prol.iter187.cmp.not = icmp eq i64 %prol.iter187.next, %xtraiter185
  br i1 %prol.iter187.cmp.not, label %.lr.ph.i.i.i72.prol.loopexit, label %.lr.ph.i.i.i72.prol, !llvm.loop !8140

.lr.ph.i.i.i72.prol.loopexit:                     ; preds = %.lr.ph.i.i.i72.prol, %.lr.ph.i.i.i72.preheader
  %.09.i.i.i73.unr = phi i64 [ %i.a, %.lr.ph.i.i.i72.preheader ], [ %i.hd, %.lr.ph.i.i.i72.prol ]
  %.048.i.i.i74.unr = phi ptr [ %.048.i.i.i74.ph, %.lr.ph.i.i.i72.preheader ], [ %i.hh, %.lr.ph.i.i.i72.prol ]
  %.sroa.0.07.i.i.i75.unr = phi ptr [ %2, %.lr.ph.i.i.i72.preheader ], [ %i.hg, %.lr.ph.i.i.i72.prol ]
  %i.hi = icmp ult i64 %.06.i.i, 3
  br i1 %i.hi, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %.09.i.i.i73 = phi i64 [ %i.hv, %.lr.ph.i.i.i72 ], [ %.09.i.i.i73.unr, %.lr.ph.i.i.i72.prol.loopexit ]
  %.048.i.i.i74 = phi ptr [ %i.hz, %.lr.ph.i.i.i72 ], [ %.048.i.i.i74.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i75 = phi ptr [ %i.hy, %.lr.ph.i.i.i72 ], [ %.sroa.0.07.i.i.i75.unr, %.lr.ph.i.i.i72.prol.loopexit ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i75, i64 16
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !259
  store i32 %i.hk, ptr %.048.i.i.i74, align 4, !tbaa !646
  %i.hl = load ptr, ptr %.sroa.0.07.i.i.i75, align 8, !tbaa !677 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !259
  store i32 %i.ho, ptr %i.hm, align 4, !tbaa !646
  %i.hp = load ptr, ptr %i.hl, align 8, !tbaa !677 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !259
  store i32 %i.hs, ptr %i.hq, align 4, !tbaa !646
  %i.ht = load ptr, ptr %i.hp, align 8, !tbaa !677 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 12
  %i.hv = add nsw i64 %.09.i.i.i73, -4            ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !259
  store i32 %i.hx, ptr %i.hu, align 4, !tbaa !646
  %i.hy = load ptr, ptr %i.ht, align 8, !tbaa !677
  %i.hz = getelementptr inbounds nuw i8, ptr %.048.i.i.i74, i64 16
  %.not.i.i.i76.3 = icmp eq i64 %i.hv, 0
  br i1 %.not.i.i.i76.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i72, !llvm.loop !177

.lr.ph.i48.i78:                                   ; preds = %bb.l, %.lr.ph.i48.i78
  %.018.i.i79 = phi ptr [ %i.id, %.lr.ph.i48.i78 ], [ %i.ab, %bb.l ] ; 2 uses
  %.01517.i.i80 = phi ptr [ %i.ie, %.lr.ph.i48.i78 ], [ %i.ft, %bb.l ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i80) ]
  %i.ia = load i32, ptr %.018.i.i79, align 4, !tbaa !646
  store i32 %i.ia, ptr %.01517.i.i80, align 4, !tbaa !646
  %i.ib = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ic = add i32 %i.ib, 1
  store i32 %i.ic, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.id = getelementptr inbounds nuw i8, ptr %.018.i.i79, i64 4 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 4 ; 3 uses
  %.not.i49.i81 = icmp eq ptr %i.id, %1
  br i1 %.not.i49.i81, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i78, !llvm.loop !227

_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i78
  %i.if = sub i64 %i.a, %i.aq                     ; 3 uses
  %xtraiter174 = and i64 %i.if, 1
  %lcmp.mod175.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.lr.ph.i.i51.i.prol.loopexit, label %.lr.ph.i.i51.i.prol

.lr.ph.i.i51.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !259
  store i32 %i.ih, ptr %i.ie, align 4, !tbaa !646
  %i.ii = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ij = add i32 %i.ii, 1
  store i32 %i.ij, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ik = load ptr, ptr %2, align 8, !tbaa !677   ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.01517.i.i80, i64 8
  %i.im = add nsw i64 %i.if, -1
  br label %.lr.ph.i.i51.i.prol.loopexit

.lr.ph.i.i51.i.prol.loopexit:                     ; preds = %.lr.ph.i.i51.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.lcssa159.unr = phi ptr [ poison, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ik, %.lr.ph.i.i51.i.prol ]
  %.018.i.i.i82.unr = phi i64 [ %i.if, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.im, %.lr.ph.i.i51.i.prol ]
  %.01417.i.i.i83.unr = phi ptr [ %i.ie, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.il, %.lr.ph.i.i51.i.prol ]
  %.sroa.0.016.i.i.i84.unr = phi ptr [ %2, %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.ik, %.lr.ph.i.i51.i.prol ]
  %i.in = icmp eq i64 %.06.i.i, %i.aq
  br i1 %i.in, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i

.lr.ph.i.i51.i:                                   ; preds = %.lr.ph.i.i51.i.prol.loopexit, %.lr.ph.i.i51.i
  %.018.i.i.i82 = phi i64 [ %i.iz, %.lr.ph.i.i51.i ], [ %.018.i.i.i82.unr, %.lr.ph.i.i51.i.prol.loopexit ]
  %.01417.i.i.i83 = phi ptr [ %i.iy, %.lr.ph.i.i51.i ], [ %.01417.i.i.i83.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 3 uses
  %.sroa.0.016.i.i.i84 = phi ptr [ %i.ix, %.lr.ph.i.i51.i ], [ %.sroa.0.016.i.i.i84.unr, %.lr.ph.i.i51.i.prol.loopexit ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i84, i64 16
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !259
  store i32 %i.ip, ptr %.01417.i.i.i83, align 4, !tbaa !646
  %i.iq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259 ; 2 uses
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.is = load ptr, ptr %.sroa.0.016.i.i.i84, align 8, !tbaa !677 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !259
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !646
  %i.iw = add i32 %i.iq, 2
  store i32 %i.iw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ix = load ptr, ptr %i.is, align 8, !tbaa !677 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.01417.i.i.i83, i64 8
  %i.iz = add nsw i64 %.018.i.i.i82, -2           ; 2 uses
  %.not.i.i52.i.1 = icmp eq i64 %i.iz, 0
  br i1 %.not.i.i52.i.1, label %.lr.ph.i.i56.i.preheader, label %.lr.ph.i.i51.i, !llvm.loop !239

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.i.i51.i, %.lr.ph.i.i51.i.prol.loopexit
  %.lcssa159 = phi ptr [ %.lcssa159.unr, %.lr.ph.i.i51.i.prol.loopexit ], [ %i.ix, %.lr.ph.i.i51.i ] ; 2 uses
  %xtraiter177 = and i64 %i.aq, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol

.lr.ph.i.i56.i.prol:                              ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i.prol
  %.09.i.i57.i.prol = phi i64 [ %i.ja, %.lr.ph.i.i56.i.prol ], [ %i.aq, %.lr.ph.i.i56.i.preheader ]
  %.048.i.i58.i.prol = phi ptr [ %i.je, %.lr.ph.i.i56.i.prol ], [ %i.ab, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i59.i.prol = phi ptr [ %i.jd, %.lr.ph.i.i56.i.prol ], [ %.lcssa159, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %prol.iter179 = phi i64 [ %prol.iter179.next, %.lr.ph.i.i56.i.prol ], [ 0, %.lr.ph.i.i56.i.preheader ]
  %i.ja = add i64 %.09.i.i57.i.prol, -1           ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i.prol, i64 16
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !259
  store i32 %i.jc, ptr %.048.i.i58.i.prol, align 4, !tbaa !646
  %i.jd = load ptr, ptr %.sroa.0.07.i.i59.i.prol, align 8, !tbaa !677 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.048.i.i58.i.prol, i64 4 ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %.lr.ph.i.i56.i.prol.loopexit, label %.lr.ph.i.i56.i.prol, !llvm.loop !8141

.lr.ph.i.i56.i.prol.loopexit:                     ; preds = %.lr.ph.i.i56.i.prol, %.lr.ph.i.i56.i.preheader
  %.09.i.i57.i.unr = phi i64 [ %i.aq, %.lr.ph.i.i56.i.preheader ], [ %i.ja, %.lr.ph.i.i56.i.prol ]
  %.048.i.i58.i.unr = phi ptr [ %i.ab, %.lr.ph.i.i56.i.preheader ], [ %i.je, %.lr.ph.i.i56.i.prol ]
  %.sroa.0.07.i.i59.i.unr = phi ptr [ %.lcssa159, %.lr.ph.i.i56.i.preheader ], [ %i.jd, %.lr.ph.i.i56.i.prol ]
  %i.jf = icmp ult i64 %i.aq, 4
  br i1 %i.jf, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i
  %.09.i.i57.i = phi i64 [ %i.js, %.lr.ph.i.i56.i ], [ %.09.i.i57.i.unr, %.lr.ph.i.i56.i.prol.loopexit ]
  %.048.i.i58.i = phi ptr [ %i.jw, %.lr.ph.i.i56.i ], [ %.048.i.i58.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i59.i = phi ptr [ %i.jv, %.lr.ph.i.i56.i ], [ %.sroa.0.07.i.i59.i.unr, %.lr.ph.i.i56.i.prol.loopexit ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i59.i, i64 16
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !259
  store i32 %i.jh, ptr %.048.i.i58.i, align 4, !tbaa !646
  %i.ji = load ptr, ptr %.sroa.0.07.i.i59.i, align 8, !tbaa !677 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !259
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !646
  %i.jm = load ptr, ptr %i.ji, align 8, !tbaa !677 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !259
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !646
  %i.jq = load ptr, ptr %i.jm, align 8, !tbaa !677 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 12
  %i.js = add i64 %.09.i.i57.i, -4                ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !259
  store i32 %i.ju, ptr %i.jr, align 4, !tbaa !646
  %i.jv = load ptr, ptr %i.jq, align 8, !tbaa !677
  %i.jw = getelementptr inbounds nuw i8, ptr %.048.i.i58.i, i64 16
  %.not.i.i60.i.3 = icmp eq i64 %i.js, 0
  br i1 %.not.i.i60.i.3, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i56.i, !llvm.loop !177

_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i56.i.prol.loopexit, %.lr.ph.i.i56.i, %.lr.ph.i.i.i72.prol.loopexit, %.lr.ph.i.i.i72
  %i.jx = sub nuw i64 %i.aa, %i.a
  store i64 %i.jx, ptr %i.z, align 8, !tbaa !757
  %i.jy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fs
  br label %bb.m

.thread:                                          ; preds = %bb.h, %bb.k, %bb.e, %bb.c
  %i.jz = tail call noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %i.a, ptr %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, %.thread, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit, %bb.b
  %.1 = phi ptr [ %i.j, %bb.b ], [ %i.n, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit ], [ %i.jz, %.thread ], [ %i.am, %_ZN5boost9container24uninitialized_copy_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEESt14_List_iteratorIiEPS4_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SC_E4typeERT_SB_SB_SC_.exit56 ], [ %1, %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ], [ %i.jy, %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEPS3_PKS3_mT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i64 noundef %2, ptr %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !794  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !765  ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !766  ; 5 uses
  %i.h = add i64 %i.g, %i.e                       ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !767    ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g ; 3 uses
  %.not = icmp ult i64 %i.h, %2
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw i64 %i.h, %2
  %i.l = udiv i64 %i.b, 10
  %.not51 = icmp ult i64 %i.k, %i.l
  br i1 %.not51, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub i64 %i.d, %i.g                       ; 3 uses
  %i.n = add i64 %i.m, %2                         ; 2 uses
  %i.o = sub i64 %i.b, %i.n
  %i.p = lshr i64 %i.o, 1                         ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.r = icmp samesign ult i64 %i.p, %i.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef nonnull %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_NS0_3dtl18insert_range_proxyIS5_St14_List_iteratorIiEEEEEvT0_mSC_SC_mT1_RT_(ptr noundef %i.j, i64 noundef %i.m, ptr noundef %i.q, ptr noundef %1, i64 noundef %2, ptr %3, ptr noundef nonnull align 1 dereferenceable(1) %0)
  br label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_.exit

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test12copyable_intENS0_3dtl18insert_range_proxyINS0_9allocatorIS3_Lj2ELj0EEESt14_List_iteratorIiEEES8_EEvT_mSC_SC_mT0_RT1_.exit: ; preds = %bb.d, %bb.e
  store i64 %i.p, ptr %i.f, align 8, !tbaa !757
  %i.s = add i64 %i.p, %i.n
  store i64 %i.s, ptr %i.c, align 8, !tbaa !758
  %.pre60 = load ptr, ptr %0, align 8, !tbaa !767
  br label %bb.q

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.t = add i64 %i.b, %2                         ; 2 uses
  %i.u = sub i64 2305843009213693951, %i.b
  %i.v = icmp ult i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.24) #28
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = shl nuw i64 %i.b, 3
  %i.y = udiv i64 %i.x, 5
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit

bb.j:                                             ; preds = %bb.h
  %i.z = icmp ugt i64 %i.b, -6917529027641081857
  %i.aa = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.z, i64 -1, i64 %i.aa
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit: ; preds = %bb.i, %bb.j
  %.0.i.i = phi i64 [ %i.y, %bb.i ], [ %spec.select.i.i, %bb.j ]
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 2305843009213693951)
  %i.ac = tail call noundef i64 @llvm.umax.i64(i64 %i.t, i64 %i.ab) ; 4 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit
  %i.ad = icmp ugt i64 %i.t, 2305843009213693951
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ae = shl nuw nsw i64 %i.ac, 2
  %i.af = tail call noundef ptr @_ZN5boost9container17dlmalloc_memalignEmm(i64 noundef %i.ae, i64 noundef 4) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %bb.n, label %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge

._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge: ; preds = %bb.m
  %.pre = load i64, ptr %i.c, align 8, !tbaa !765
  %.pre58 = load i64, ptr %i.f, align 8, !tbaa !766
  %.pre59 = load ptr, ptr %0, align 8, !tbaa !767
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN5boost9container15throw_bad_allocEv() #28
  unreachable

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit: ; preds = %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit
  %i.ag = phi ptr [ %i.i, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre59, %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 4 uses
  %i.ah = phi i64 [ %i.g, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre58, %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 3 uses
  %i.ai = phi i64 [ %i.d, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %.pre, %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 3 uses
  %.0.i.i52 = phi ptr [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE22calculate_new_capacityEm.exit ], [ %i.af, %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit_crit_edge ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !795
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !795
  %i.am = sub i64 %i.ai, %i.ah
  %i.an = add i64 %2, %i.am                       ; 2 uses
  %i.ao = sub i64 %i.ac, %i.an
  %i.ap = lshr i64 %i.ao, 1                       ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i52, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai ; 3 uses
  %.not16.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not16.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_9allocatorINS0_4test12copyable_intELj2ELj0EEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit, %.lr.ph.i.i
  %.018.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %i.ar, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit ] ; 2 uses
  %.01517.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %i.aq, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE8allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i) ]
end_hunk_16
