Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 252
loop-unroll.NumUnrolled: 523
begin_hunk_0_@_ZN5boost9container4test15map_test_searchINS0_8flat_mapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEEESt3mapIiiS5_SaIS7_IKiiEEENS0_13flat_multimapIiiS5_S9_EESt8multimapIiiS5_SE_EEEiRT_RT0_RT1_RT2_:bb.a

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE13insert_uniqueEOS4_.exit: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE26priv_insert_unique_prepareIiEEbRKT_RNSB_18insert_commit_dataE.exit.i, %_ZN5boost9container13stable_vectorISt4pairIiiEvE5beginEv.exit.i192
  %i.hf = load i64, ptr %i.h, align 8, !tbaa !464, !noalias !10948
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.hf, 0      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE13insert_uniqueEOS4_.exit
  %i.hg = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !10948
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !466, !noalias !10948
  br label %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i.i.i

_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i.i.i: ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE13insert_uniqueEOS4_.exit, %bb.ar
  %storemerge.i.i.i.i.i.i = phi ptr [ %i.hh, %bb.ar ], [ %i.j, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE13insert_uniqueEOS4_.exit ] ; 3 uses
  %i.hi = load ptr, ptr %i.j, align 8, !tbaa !468, !noalias !10949 ; 4 uses
  %i.hj = load ptr, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !468, !noalias !10949 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.hi, %i.hj
  br i1 %.not12.i.i.i.i.i, label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_22stable_vector_iteratorIPS6_Lb0EEEE4typeEOSF_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i.i.i
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = sub i64 %i.hl, %i.hk
  %i.hn = ashr exact i64 %i.hm, 3
  br label %bb.as

bb.as:                                            ; preds = %bb.av, %.lr.ph.i.i.i.i.i
  %i.ho = phi ptr [ %storemerge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ia, %bb.av ] ; 3 uses
  %.013.i.i.i.i.i = phi i64 [ %i.hn, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.av ] ; 2 uses
  %i.hp = lshr i64 %.013.i.i.i.i.i, 1             ; 4 uses
  %.not.i.i.i.i.i.i118 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i.i.i.i118, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !468, !noalias !10949
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !466, !noalias !10949
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i.i.i

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.ho, %bb.as ], [ %i.hs, %bb.at ] ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !338, !noalias !10949
  %i.hv = icmp slt i32 %.0296, %i.hu
  br i1 %i.hv, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i.i.i
  %i.hw = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !468, !noalias !10949
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !466, !noalias !10949
  %.neg.i.i.i.i.i = xor i64 %i.hp, -1
  %i.hz = add i64 %.013.i.i.i.i.i, %.neg.i.i.i.i.i
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i.i.i
  %i.ia = phi ptr [ %i.hy, %bb.au ], [ %i.ho, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i.i = phi i64 [ %i.hz, %bb.au ], [ %i.hp, %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb0EEpLEl.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i119 = icmp eq i64 %.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i119, label %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_22stable_vector_iteratorIPS6_Lb0EEEE4typeEOSF_.exit, label %bb.as, !llvm.loop !133

_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_22stable_vector_iteratorIPS6_Lb0EEEE4typeEOSF_.exit: ; preds = %bb.av, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i.i.i
  %i.ib = phi ptr [ %storemerge.i.i.i.i.i.i, %_ZN5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE5beginEv.exit.i.i.i.i ], [ %i.ia, %bb.av ] ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_22stable_vector_iteratorIPS6_Lb0EEEE4typeEOSF_.exit
  %i.ic = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !10950
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !466, !noalias !10950
  %.pre325 = load ptr, ptr %i.id, align 8, !tbaa !468, !noalias !10951 ; 2 uses
  %i.ie = load ptr, ptr %i.ib, align 8, !tbaa !468, !noalias !10951 ; 2 uses
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %.pre325 to i64
  %i.ih = sub i64 %i.if, %i.ig
  br label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_m.exit

bb.ax:                                            ; preds = %_ZN5boost9container13flat_multimapIiiSt4lessIiENS0_13stable_vectorISt4pairIiiEvEEE6insertINS0_3dtl4pairIiiEEEENS_11move_detail11enable_if_cIXsr3dtl14is_convertibleIT_SC_EE5valueENS0_22stable_vector_iteratorIPS6_Lb0EEEE4typeEOSF_.exit
  %i.ii = load ptr, ptr %i.ib, align 8, !tbaa !468, !noalias !10951 ; 2 uses
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = ptrtoint ptr %i.hi to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = load i64, ptr %i.fb, align 8, !tbaa !485, !noalias !10952
  %i.in = icmp ult i64 %i.im, 4
  br i1 %i.in, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i.i, label %.thread.i

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i.i: ; preds = %bb.ax
  %i.io = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28, !noalias !10952 ; 4 uses
  %i.ip = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !10952 ; 4 uses
  %i.iq = load i64, ptr %i.h, align 8, !tbaa !464, !noalias !10952 ; 3 uses
  %i.ir = icmp ne i64 %i.iq, 0
  %i.is = icmp ne ptr %i.ip, null
  %spec.select.i.i.i.i.i.i.i = and i1 %i.is, %i.ir
  br i1 %spec.select.i.i.i.i.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.thread.i.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i.i, !prof !367

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.thread.i.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i.i
  %.idx.i.i.i = shl nuw nsw i64 %i.iq, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.io, ptr nonnull align 8 %i.ip, i64 %.idx.i.i.i, i1 false), !noalias !10952
  br label %bb.ay

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i.i: ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit.i.i.i
  %.not.i.i.i.i202 = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i202, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.thread.i.i.i
  %i.it = load i64, ptr %i.fb, align 8, !tbaa !485, !noalias !10952
  %i.iu = shl i64 %i.it, 3
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.iu) #23, !noalias !10952
  %.pre.pre.i = load i64, ptr %i.h, align 8, !tbaa !464, !noalias !10952
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit.i: ; preds = %bb.ay, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i.i
  %.pre.i203 = phi i64 [ %.pre.pre.i, %bb.ay ], [ %i.iq, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_NS0_3dtl18insert_range_proxyIS8_NS_13move_iteratorIS9_EEEEEEvRT_T0_SH_SH_T1_mT2_.exit.i.i.i.i ] ; 3 uses
  store ptr %i.io, ptr %i.i, align 8, !tbaa !465, !noalias !10952
  store i64 4, ptr %i.fb, align 8, !tbaa !368, !noalias !10952
  %i.iv = sub nuw nsw i64 3, %.pre.i203
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.pre.i203
  %or.cond = icmp ugt i64 %.pre.i203, 2
  br i1 %or.cond, label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6resizeEm.exit.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i.i, !prof !10953

.thread.i:                                        ; preds = %bb.ax
  %i.ix = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !10952
  br label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i.i

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i.i: ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit.i, %.thread.i
  %i.iy = phi ptr [ %i.iw, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit.i ], [ %i.ix, %.thread.i ]
  %i.iz = phi i64 [ %i.iv, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit.i ], [ 3, %.thread.i ] ; 2 uses
  %i.ja = shl nuw nsw i64 %i.iz, 3
  call void @llvm.memset.p0.i64(ptr align 1 %i.iy, i8 0, i64 %i.ja, i1 false), !noalias !10954
  %.pre.i.i.i.i.i = load i64, ptr %i.h, align 8, !tbaa !475, !noalias !10954
  %i.jb = add i64 %.pre.i.i.i.i.i, %i.iz
  %.pre326.pre = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !10952
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6resizeEm.exit.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6resizeEm.exit.i: ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i.i, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit.i
  %i.jc = phi ptr [ %i.io, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit.i ], [ %.pre326.pre, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i.i ] ; 2 uses
  %storemerge = phi i64 [ 3, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE7reserveEm.exit.i ], [ %i.jb, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEE31uninitialized_copy_n_and_updateIPS8_EEvRS9_T_m.exit.sink.split.i.i.i.i.i.i ]
  store i64 %storemerge, ptr %i.h, align 8, !tbaa !475, !noalias !10952
  store ptr %i.j, ptr %i.jc, align 8, !tbaa !466, !noalias !10952
  store ptr %i.jc, ptr %i.j, align 8, !tbaa !468, !noalias !10952
  br label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_m.exit

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_m.exit: ; preds = %bb.aw, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6resizeEm.exit.i
  %i.jd = phi i64 [ %i.ih, %bb.aw ], [ %i.il, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6resizeEm.exit.i ] ; 8 uses
  %i.je = phi ptr [ %i.ie, %bb.aw ], [ %i.ii, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6resizeEm.exit.i ]
  %i.jf = phi ptr [ %.pre325, %bb.aw ], [ %i.hi, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6resizeEm.exit.i ]
  %i.jg = ashr exact i64 %i.jd, 3
  %i.jh = load i64, ptr %2, align 8, !tbaa !474, !noalias !10952
  %i.ji = icmp eq i64 %i.jh, 0
  br i1 %i.ji, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_m.exit
  call void @_ZN5boost9container13stable_vectorISt4pairIiiEvE18priv_increase_poolEm(ptr noundef nonnull align 8 dereferenceable(40) %2, i64 noundef 1), !noalias !10952
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE19initialize_end_nodeERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEERS9_m.exit
  %i.jj = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !10952 ; 4 uses
  %i.jk = getelementptr i8, ptr %i.jj, i64 %i.jd  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !10952
  store ptr null, ptr %i.a, align 8, !tbaa !466, !noalias !10952
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !10952
  %i.jl = load i64, ptr %i.fb, align 8, !tbaa !485, !noalias !10955
  %i.jm = load i64, ptr %i.h, align 8, !tbaa !464, !noalias !10955 ; 3 uses
  %.not.i.i.i195 = icmp eq i64 %i.jl, %i.jm
  br i1 %.not.i.i.i195, label %bb.bi, label %bb.bb, !prof !344

bb.bb:                                            ; preds = %bb.ba
  %.idx.i = shl i64 %i.jm, 3                      ; 4 uses
  %i.jn = getelementptr i8, ptr %i.jj, i64 %.idx.i ; 6 uses
  %i.jo = icmp eq i64 %i.jm, %i.jg
  br i1 %i.jo, label %.lr.ph.i.i.i.i.i.i.preheader.i, label %bb.bc

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %bb.bb
  store i64 0, ptr %i.jn, align 8
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i

bb.bc:                                            ; preds = %bb.bb
  %gepdiff.i = sub i64 %.idx.i, %i.jd             ; 2 uses
  %.not.i.i.i.i.i.i196 = icmp eq i64 %.idx.i, %i.jd
  %.not14.i.i.i.i.i = icmp eq ptr %i.jj, null     ; 2 uses
  br i1 %.not.i.i.i.i.i.i196, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not14.i.i.i.i.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i.i, label %bb.be, !prof !433

bb.be:                                            ; preds = %bb.bd
  %i.jp = getelementptr inbounds i8, ptr %i.jn, i64 -8
  %i.jq = load i64, ptr %i.jp, align 1, !noalias !10955
  store i64 %i.jq, ptr %i.jn, align 1, !noalias !10955
  br label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i.i

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i.i: ; preds = %bb.be, %bb.bd
  %i.jr = add nsw i64 %.idx.i, -8
  %.not.i.i10.i.i.i.i.i = icmp eq i64 %i.jr, %i.jd
  br i1 %.not.i.i10.i.i.i.i.i, label %.lr.ph.i.i11.i.i.i.i.i, label %bb.bf, !prof !344

bb.bf:                                            ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i.i
  %gepdiff21.i = add i64 %gepdiff.i, -8           ; 2 uses
  %i.js = ashr exact i64 %gepdiff21.i, 3
  %i.jt = sub nsw i64 0, %i.js
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.jt
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ju, ptr align 8 %i.jk, i64 %gepdiff21.i, i1 false), !noalias !10955
  br label %.lr.ph.i.i11.i.i.i.i.i

.lr.ph.i.i11.i.i.i.i.i:                           ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorIPNS0_20stable_vector_detail9node_baseIPvEEEEPS7_S9_EENS0_3dtl40enable_if_memtransfer_copy_constructibleIT0_T1_SD_E4typeERT_SC_mSD_.exit.i.i.i.i.i.i, %bb.bf
  store ptr null, ptr %i.jk, align 8, !tbaa !466, !noalias !10955
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i

bb.bg:                                            ; preds = %bb.bc
  br i1 %.not14.i.i.i.i.i, label %.lr.ph.i39.i.i.i.i.i.i, label %bb.bh, !prof !344

bb.bh:                                            ; preds = %bb.bg
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.jv, ptr nonnull align 8 %i.jk, i64 %gepdiff.i, i1 false), !noalias !10955
  br label %.lr.ph.i39.i.i.i.i.i.i

.lr.ph.i39.i.i.i.i.i.i:                           ; preds = %bb.bh, %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jn) ], !noalias !10951
  store ptr null, ptr %i.jn, align 8, !tbaa !466, !noalias !10955
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i: ; preds = %.lr.ph.i.i11.i.i.i.i.i, %.lr.ph.i39.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.i
  %i.jw = load i64, ptr %i.h, align 8, !tbaa !475, !noalias !10955
  %i.jx = add i64 %i.jw, 1
  store i64 %i.jx, ptr %i.h, align 8, !tbaa !475, !noalias !10955
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit.i

bb.bi:                                            ; preds = %bb.ba
  call void @_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS8_EEEENS0_12vec_iteratorIPS6_Lb0EEESF_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.160") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef %i.jk, i64 noundef 1, ptr nonnull align 8 dereferenceable(8) %i.a), !noalias !10952
  br label %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit.i

_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit.i: ; preds = %bb.bi, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS8_EEEEvPS6_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !10952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !10952
  %i.jy = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !10952 ; 7 uses
  %.not.i198 = icmp eq ptr %i.jy, %i.jj
  br i1 %.not.i198, label %_ZN5boost9container13stable_vectorISt4pairIiiEvE33priv_insert_forward_non_templatedEmm.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit.i
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 %i.jd
  %.not2.i.i = icmp eq ptr %i.je, %i.jf
  br i1 %.not2.i.i, label %_ZN5boost9container13stable_vectorISt4pairIiiEvE33priv_insert_forward_non_templatedEmm.exit, label %.lr.ph.i.i199.preheader

.lr.ph.i.i199.preheader:                          ; preds = %bb.bj
  %i.ka = add i64 %i.jd, -8                       ; 2 uses
  %i.kb = lshr i64 %i.ka, 3
  %i.kc = add nuw nsw i64 %i.kb, 1
  %xtraiter = and i64 %i.kc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i199.prol.loopexit, label %.lr.ph.i.i199.prol

.lr.ph.i.i199.prol:                               ; preds = %.lr.ph.i.i199.preheader, %.lr.ph.i.i199.prol
  %i.kd = phi ptr [ %i.kf, %.lr.ph.i.i199.prol ], [ %i.jy, %.lr.ph.i.i199.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i199.prol ], [ 0, %.lr.ph.i.i199.preheader ]
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !466, !noalias !10952
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !468, !noalias !10952
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i199.prol.loopexit, label %.lr.ph.i.i199.prol, !llvm.loop !10885

.lr.ph.i.i199.prol.loopexit:                      ; preds = %.lr.ph.i.i199.prol, %.lr.ph.i.i199.preheader
  %.unr = phi ptr [ %i.jy, %.lr.ph.i.i199.preheader ], [ %i.kf, %.lr.ph.i.i199.prol ]
  %i.kg = icmp ult i64 %i.ka, 56
  br i1 %i.kg, label %_ZN5boost9container13stable_vectorISt4pairIiiEvE33priv_insert_forward_non_templatedEmm.exit.loopexit, label %.lr.ph.i.i199

.lr.ph.i.i199:                                    ; preds = %.lr.ph.i.i199.prol.loopexit, %.lr.ph.i.i199
  %i.kh = phi ptr [ %i.kx, %.lr.ph.i.i199 ], [ %.unr, %.lr.ph.i.i199.prol.loopexit ] ; 10 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !466, !noalias !10952
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !468, !noalias !10952
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !466, !noalias !10952
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !468, !noalias !10952
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 16 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !466, !noalias !10952
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !468, !noalias !10952
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 24 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !466, !noalias !10952
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !468, !noalias !10952
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kh, i64 32 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !466, !noalias !10952
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !468, !noalias !10952
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 40 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !466, !noalias !10952
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !468, !noalias !10952
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kh, i64 48 ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !466, !noalias !10952
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !468, !noalias !10952
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kh, i64 56 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !466, !noalias !10952
  store ptr %i.kv, ptr %i.kw, align 8, !tbaa !468, !noalias !10952
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kh, i64 64 ; 2 uses
  %.not.i.i200.7 = icmp eq ptr %i.kx, %i.jz
  br i1 %.not.i.i200.7, label %_ZN5boost9container13stable_vectorISt4pairIiiEvE33priv_insert_forward_non_templatedEmm.exit.loopexit, label %.lr.ph.i.i199, !llvm.loop !128

_ZN5boost9container13stable_vectorISt4pairIiiEvE33priv_insert_forward_non_templatedEmm.exit.loopexit: ; preds = %.lr.ph.i.i199, %.lr.ph.i.i199.prol.loopexit
  %.pre327 = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !10956
  br label %_ZN5boost9container13stable_vectorISt4pairIiiEvE33priv_insert_forward_non_templatedEmm.exit

_ZN5boost9container13stable_vectorISt4pairIiiEvE33priv_insert_forward_non_templatedEmm.exit: ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvE33priv_insert_forward_non_templatedEmm.exit.loopexit, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit.i, %bb.bj
  %i.ky = phi ptr [ %.pre327, %_ZN5boost9container13stable_vectorISt4pairIiiEvE33priv_insert_forward_non_templatedEmm.exit.loopexit ], [ %i.jy, %_ZN5boost9container6vectorIPNS0_20stable_vector_detail9node_baseIPvEENS0_13new_allocatorIS6_EEvE6insertENS0_12vec_iteratorIPS6_Lb1EEEmRKS6_.exit.i ], [ %i.jy, %bb.bj ] ; 2 uses
  %i.kz = getelementptr inbounds i8, ptr %i.jy, i64 %i.jd ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %i.lb = load i64, ptr %i.h, align 8, !tbaa !464, !noalias !10956
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 -16 ; 3 uses
  %i.le = getelementptr i8, ptr %i.lc, i64 -8     ; 2 uses
  %i.lf = load i64, ptr %2, align 8, !tbaa !474, !noalias !10951 ; 2 uses
  %.not.i.i.i.i.i151 = icmp ne i64 %i.lf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i151)
  %i.lg = load ptr, ptr %i.le, align 8, !tbaa !466, !noalias !10951 ; 2 uses
  %i.lh = load ptr, ptr %i.ld, align 8, !tbaa !466, !noalias !10951 ; 5 uses
  store ptr null, ptr %i.lg, align 8, !tbaa !471, !noalias !10951
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !471, !noalias !10951 ; 2 uses
  %i.lj = add i64 %i.lf, -1                       ; 2 uses
  store i64 %i.lj, ptr %2, align 8, !tbaa !474, !noalias !10951
  %.not.i.i152 = icmp eq i64 %i.lj, 0
  br i1 %.not.i.i152, label %bb.bk, label %.thread.i.i

bb.bk:                                            ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvE33priv_insert_forward_non_templatedEmm.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i8 0, i64 16, i1 false), !noalias !10951
  %.pre26.i.pre = load ptr, ptr %i.i, align 8, !tbaa !465, !noalias !10951
  br label %_ZN5boost9container13stable_vectorISt4pairIiiEvE15insert_rollbackD2Ev.exit.i

.thread.i.i:                                      ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvE33priv_insert_forward_non_templatedEmm.exit
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.li, null
  %..i.i = select i1 %.not.i.i.i.i.i.i.i.i, ptr null, ptr %i.lg
  store ptr %i.li, ptr %i.ld, align 8, !tbaa !466, !noalias !10951
  store ptr %..i.i, ptr %i.le, align 8, !tbaa !466, !noalias !10951
  br label %_ZN5boost9container13stable_vectorISt4pairIiiEvE15insert_rollbackD2Ev.exit.i

_ZN5boost9container13stable_vectorISt4pairIiiEvE15insert_rollbackD2Ev.exit.i: ; preds = %bb.bk, %.thread.i.i
  %i.lk = phi ptr [ %i.ky, %.thread.i.i ], [ %.pre26.i.pre, %bb.bk ] ; 2 uses
  store ptr %i.lh, ptr %i.kz, align 8, !tbaa !466, !noalias !10951
  store ptr %i.kz, ptr %i.lh, align 8, !tbaa !468, !noalias !10951
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i32 %.0296, ptr %i.ll, align 8, !tbaa !338, !noalias !10951
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  store i32 %.0296, ptr %i.lm, align 4, !tbaa !338, !noalias !10951
  %.pre27.i = load i64, ptr %i.h, align 8, !tbaa !464, !noalias !10951
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %.pre27.i
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 -16 ; 2 uses
  %.not2.i.i.i = icmp eq ptr %i.la, %i.lo
  br i1 %.not2.i.i.i, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit.i, label %.lr.ph.i.i.i156

.lr.ph.i.i.i156:                                  ; preds = %_ZN5boost9container13stable_vectorISt4pairIiiEvE15insert_rollbackD2Ev.exit.i, %.lr.ph.i.i.i156
  %i.lp = phi ptr [ %i.lr, %.lr.ph.i.i.i156 ], [ %i.la, %_ZN5boost9container13stable_vectorISt4pairIiiEvE15insert_rollbackD2Ev.exit.i ] ; 3 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !466, !noalias !10951
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !468, !noalias !10951
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 2 uses
  %.not.i.i.i157 = icmp eq ptr %i.lr, %i.lo
  br i1 %.not.i.i.i157, label %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit.i, label %.lr.ph.i.i.i156, !llvm.loop !128

_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit.i: ; preds = %.lr.ph.i.i.i156, %_ZN5boost9container13stable_vectorISt4pairIiiEvE15insert_rollbackD2Ev.exit.i
  %i.ls = load i64, ptr %i.c, align 8, !tbaa !464, !noalias !10957 ; 3 uses
  %.not.i.i.i.i.i.i120 = icmp eq i64 %i.ls, 0
  br i1 %.not.i.i.i.i.i.i120, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE6cbeginEv.exit.i.i.i121, label %bb.bl

bb.bl:                                            ; preds = %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit.i
  %i.lt = load ptr, ptr %i.g, align 8, !tbaa !465, !noalias !10957
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !466, !noalias !10957
  br label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE6cbeginEv.exit.i.i.i121

_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE6cbeginEv.exit.i.i.i121: ; preds = %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit.i, %bb.bl
  %storemerge.i.i.i.i.i122 = phi ptr [ %i.lu, %bb.bl ], [ %i.d, %_ZN5boost9container20stable_vector_detail12index_traitsIPvNS0_13new_allocatorIvEEE20fix_up_pointers_fromERNS0_6vectorIPNS1_9node_baseIS3_EENS4_ISA_EEvEENS0_12vec_iteratorIPSA_Lb0EEE.exit.i ] ; 3 uses
  %i.lv = load ptr, ptr %i.d, align 8, !tbaa !468, !noalias !10958 ; 2 uses
  %i.lw = load ptr, ptr %storemerge.i.i.i.i.i122, align 8, !tbaa !468, !noalias !10958 ; 2 uses
  %.not12.i.i.i.i123 = icmp eq ptr %i.lv, %i.lw
  br i1 %.not12.i.i.i.i123, label %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE11lower_boundERKi.exit.i.i131, label %.lr.ph.i.i.i.i124

.lr.ph.i.i.i.i124:                                ; preds = %_ZNK5boost9container3dtl9flat_treeISt4pairIiiENS1_9select1stIiEESt4lessIiENS0_13stable_vectorIS4_vEEE6cbeginEv.exit.i.i.i121
  %i.lx = ptrtoint ptr %i.lw to i64
  %i.ly = ptrtoint ptr %i.lv to i64
  %i.lz = sub i64 %i.ly, %i.lx
  %i.ma = ashr exact i64 %i.lz, 3
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.i124
  %i.mb = phi ptr [ %storemerge.i.i.i.i.i122, %.lr.ph.i.i.i.i124 ], [ %i.mn, %bb.bp ] ; 3 uses
  %.013.i.i.i.i125 = phi i64 [ %i.ma, %.lr.ph.i.i.i.i124 ], [ %.1.i.i.i.i129, %bb.bp ] ; 2 uses
  %i.mc = lshr i64 %.013.i.i.i.i125, 1            ; 4 uses
  %.not.i.i.i.i.i126 = icmp eq i64 %i.mc, 0
  br i1 %.not.i.i.i.i.i126, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb1EEpLEl.exit.i.i.i.i127, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.md = load ptr, ptr %i.mb, align 8, !tbaa !468, !noalias !10958
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mc
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !466, !noalias !10958
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb1EEpLEl.exit.i.i.i.i127

_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb1EEpLEl.exit.i.i.i.i127: ; preds = %bb.bn, %bb.bm
  %.sroa.0.0.i.i.i.i128 = phi ptr [ %i.mb, %bb.bm ], [ %i.mf, %bb.bn ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i128, i64 8
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !338, !noalias !10958
  %i.mi = icmp slt i32 %i.mh, %.0296
  br i1 %i.mi, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairIiiELb1EEpLEl.exit.i.i.i.i127
  %i.mj = load ptr, ptr %.sroa.0.0.i.i.i.i128, align 8, !tbaa !468, !noalias !10958
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !466, !noalias !10958
  %.neg.i.i.i.i134 = xor i64 %i.mc, -1
  %i.mm = add i64 %.013.i.i.i.i125, %.neg.i.i.i.i134
  br label %bb.bp

end_hunk_0
