inline.NumInlined: 723
inline.NumDeleted: 184
begin_hunk_0_@_ZN5folly12TimeoutQueue11runInternalElb:bb.a
  %4 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %5 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %6 = alloca %"struct.boost::multi_index::detail::ordered_index_node_compressed_base<boost::multi_index::detail::null_augment_policy, std::allocator<char>>::parent_ref", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %7 = alloca %"class.std::vector", align 8       ; 12 uses
  %8 = alloca %"struct.folly::TimeoutQueue::Event", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN5folly12TimeoutQueue5EventESaIS2_EED2Ev.exit, %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !40   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39
  %i.o = and i64 %i.n, -2                         ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.loopexit77, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = inttoptr i64 %i.o to ptr
  br label %.outer

.outer:                                           ; preds = %bb.d, %.lr.ph.i.i.i
  %.pn.i.ph = phi ptr [ %i.v, %bb.d ], [ %i.q, %.lr.ph.i.i.i ]
  %.0912.i.i.i.ph = phi ptr [ %.013.i.i.i, %bb.d ], [ %i.l, %.lr.ph.i.i.i ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.e
  %.pn.i = phi ptr [ %i.y, %bb.e ], [ %.pn.i.ph, %.outer ] ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %.pn.i, i64 -48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39
  %i.t = icmp slt i64 %1, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.013.i.i.i = getelementptr inbounds i8, ptr %.pn.i, i64 -56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.loopexit77, label %.outer, !llvm.loop !76

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41   ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.loopexit77, label %bb.c, !llvm.loop !76

.loopexit77:                                      ; preds = %bb.e, %bb.d, %bb.b
  %.09.lcssa.i.i.i = phi ptr [ %i.l, %bb.b ], [ %.0912.i.i.i.ph, %bb.e ], [ %.013.i.i.i, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -56
  %i.ae = select i1 %i.ac, ptr null, ptr %i.ad
  %i.af = invoke ptr @_ZNSt11__copy_moveILb1ELb0ESt26bidirectional_iterator_tagE8__copy_mIN5boost11multi_index6detail19bidir_node_iteratorINS5_18ordered_index_nodeINS5_19null_augment_policyENS5_15index_node_baseIN5folly12TimeoutQueue5EventESaISC_EEEEEEESt20back_insert_iteratorISt6vectorISC_SD_EEEET0_T_SM_SL_(ptr %i.ae, ptr %.09.lcssa.i.i.i, ptr nonnull %7)
          to label %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit unwind label %.loopexit.split-lp73 ; 0 uses

_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit: ; preds = %.loopexit77
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -56
  %i.al = select i1 %i.aj, ptr null, ptr %i.ak    ; 2 uses
  %.not4.i = icmp eq ptr %i.al, %.09.lcssa.i.i.i
  br i1 %.not4.i, label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit, %.noexc
  %.sroa.03.05.i = phi ptr [ %i.bs, %.noexc ], [ %i.al, %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit ] ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.preheader19.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 56 ; 3 uses
  %.0.in.in20.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !39
  %.0.in21.i.i.i.i.i = and i64 %.0.in.in20.i.i.i.i.i, -2
  %.022.i.i.i.i.i = inttoptr i64 %.0.in21.i.i.i.i.i to ptr ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.022.i.i.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.preheader19.i.i.i.i.i:                           ; preds = %.lr.ph.i, %.preheader19.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi ptr [ %i.at, %.preheader19.i.i.i.i.i ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !41 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not17.i.i.i.i.i, label %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i, label %.preheader19.i.i.i.i.i, !llvm.loop !60

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.023.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.022.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 4 uses
  %.0.in.in.i.i.i.i.i = load i64, ptr %.023.i.i.i.i.i, align 8, !tbaa !39
  %.0.in.i.i.i.i.i = and i64 %.0.in.in.i.i.i.i.i, -2
  %.0.i.i.i.i.i = inttoptr i64 %.0.in.i.i.i.i.i to ptr ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !41
  %i.aw = icmp eq ptr %.023.i.i.i.i.i, %i.av
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !61

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i.i.i.i, i64 16
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !41
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.0.i.i.i.i = phi ptr [ %.023.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.ao, %.preheader.i.i.i.i.i ]
  %i.ax = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ null, %.preheader.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.022.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.not16.i.i.i.i.i = icmp eq ptr %i.ax, %.0.lcssa.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %.not16.i.i.i.i.i, ptr %.0.i.i.i.i, ptr %.0.lcssa.i.i.i.i.i
  br label %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i

_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i: ; preds = %.preheader19.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %storemerge.i.i.i.i.i, %.preheader19.i.i.i.i.i ]
  %i.ay = load i64, ptr %i.d, align 8, !tbaa !38
  %i.az = add i64 %i.ay, -1
  store i64 %i.az, ptr %i.d, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 80
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !40  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store ptr %i.bc, ptr %6, align 8, !tbaa !46, !alias.scope !77
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bf = invoke noundef ptr @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_(ptr noundef nonnull %i.ba, ptr noundef nonnull dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %.noexc43 unwind label %.loopexit72 ; 0 uses

.noexc43:                                         ; preds = %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 56
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !40  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store ptr %i.bi, ptr %5, align 8, !tbaa !46, !alias.scope !82
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bl = invoke noundef ptr @_ZN5boost11multi_index6detail23ordered_index_node_implINS1_19null_augment_policyESaIcEE21rebalance_for_extractEPS5_NS1_34ordered_index_node_compressed_baseIS3_S4_E10parent_refERS6_SA_(ptr noundef nonnull %i.bg, ptr noundef nonnull dead_on_return %5, ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
          to label %.noexc44 unwind label %.loopexit72 ; 0 uses

.noexc44:                                         ; preds = %.noexc43
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.noexc, label %bb.f

bb.f:                                             ; preds = %.noexc44
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 24 ; 2 uses
  %i.bp = invoke noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i32 noundef 3)
          to label %.noexc unwind label %bb.g     ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #14
  unreachable

.noexc:                                           ; preds = %bb.f, %.noexc44
  %i.bs = getelementptr inbounds i8, ptr %.1.i.i.i.i, i64 -56 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03.05.i, i64 noundef 104) #16
  %.not.i = icmp eq ptr %i.bs, %.09.lcssa.i.i.i
  br i1 %.not.i, label %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit, label %.lr.ph.i, !llvm.loop !87

_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit: ; preds = %.noexc, %_ZSt4moveIN5boost11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEESt20back_insert_iteratorISt6vectorIS9_SA_EEET0_T_SJ_SI_.exit
  %i.bt = load ptr, ptr %7, align 8, !tbaa !88    ; 2 uses
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !88  ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %._crit_edge92, label %.lr.ph

._crit_edge:                                      ; preds = %bb.al
  %.pre99 = load ptr, ptr %7, align 8, !tbaa !88  ; 2 uses
  %.pre100 = load ptr, ptr %i.e, align 8, !tbaa !88 ; 2 uses
  %i.bw = icmp eq ptr %.pre99, %.pre100
  br i1 %i.bw, label %._crit_edge92, label %.lr.ph91

.loopexit72:                                      ; preds = %_ZN5boost14operators_implppERNS_11multi_index6detail19bidir_node_iteratorINS2_18ordered_index_nodeINS2_19null_augment_policyENS2_15index_node_baseIN5folly12TimeoutQueue5EventESaIS9_EEEEEEEi.exit.i, %.noexc43
  %lpad.loopexit74 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp73:                             ; preds = %.loopexit77
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.lr.ph:                                           ; preds = %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit, %bb.al
  %.sroa.060.087 = phi ptr [ %i.gz, %bb.al ], [ %i.bt, %_ZN5boost11multi_index6detail18ordered_index_implINS0_6memberIN5folly12TimeoutQueue5EventElXadL_ZNS6_10expirationEEEEESt4lessIlENS1_9nth_layerILi2ES6_NS0_10indexed_byINS0_14ordered_uniqueINS3_IS6_lXadL_ZNS6_2idEEEEEN4mpl_2naESF_EENS0_18ordered_non_uniqueIS7_SF_SF_EESF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_SF_EESaIS6_EEENS_3mpl7vector0ISF_EENS1_22ordered_non_unique_tagENS1_19null_augment_policyEE5eraseENS1_19bidir_node_iteratorINS1_18ordered_index_nodeISQ_NS1_15index_node_baseIS6_SK_EEEEEESX_.exit ] ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !32
  %i.bz = icmp sgt i64 %i.by, -1
  br i1 %i.bz, label %bb.h, label %bb.al

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.ca = load i64, ptr %.sroa.060.087, align 8, !tbaa !27 ; 2 uses
  store i64 %i.ca, ptr %8, align 8, !tbaa !27
  %9 = load i64, ptr %i.bx, align 8, !tbaa !32    ; 2 uses
  %i.cb = add nsw i64 %9, %1
  store i64 %i.cb, ptr %i.f, align 8, !tbaa !31
  store i64 %9, ptr %i.g, align 8, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvllEEC2ERKS1_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 24
  %i.cf = invoke noundef zeroext i1 %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i32 noundef 2)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !33 ; 2 uses
  store ptr %i.ch, ptr %i.j, align 8, !tbaa !33
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !34 ; 2 uses
  store ptr %i.ci, ptr %i.i, align 8, !tbaa !34
  %.pre = load i64, ptr %8, align 8, !tbaa !39
  br label %_ZNSt8functionIFvllEEC2ERKS1_.exit

bb.k:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !34  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = invoke noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3)
          to label %.body unwind label %bb.m      ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #14
  unreachable

_ZNSt8functionIFvllEEC2ERKS1_.exit:               ; preds = %bb.j, %bb.h
  %i.co = phi ptr [ %i.ci, %bb.j ], [ null, %bb.h ] ; 5 uses
  %i.cp = phi ptr [ %i.ch, %bb.j ], [ null, %bb.h ]
  %i.cq = phi i64 [ %.pre, %bb.j ], [ %i.ca, %bb.h ] ; 3 uses
  %i.cr = load ptr, ptr %i.c, align 8, !tbaa !40  ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !39
  %i.cu = and i64 %i.ct, -2                       ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %select.unfold._crit_edge.thread.i.i, label %select.unfold.preheader.i.i

select.unfold.preheader.i.i:                      ; preds = %_ZNSt8functionIFvllEEC2ERKS1_.exit
  %i.cw = inttoptr i64 %i.cu to ptr
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.i.i, %select.unfold.preheader.i.i
  %.pn.i.i = phi ptr [ %i.cz, %select.unfold.i.i ], [ %i.cw, %select.unfold.preheader.i.i ]
  %.01727.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -80 ; 4 uses
  %i.cx = load i64, ptr %.01727.i.i, align 8, !tbaa !39 ; 2 uses
  %i.cy = icmp slt i64 %i.cq, %i.cx               ; 2 uses
  %.in.v.i.i = select i1 %i.cy, i64 88, i64 96
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.01727.i.i, i64 %.in.v.i.i
  %i.cz = load ptr, ptr %.in.i.i, align 8, !tbaa !41 ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %select.unfold._crit_edge.i.i, label %select.unfold.i.i

select.unfold._crit_edge.i.i:                     ; preds = %select.unfold.i.i
  br i1 %i.cy, label %select.unfold._crit_edge.thread.i.i, label %.thread

select.unfold._crit_edge.thread.i.i:              ; preds = %select.unfold._crit_edge.i.i, %_ZNSt8functionIFvllEEC2ERKS1_.exit
  %.018.lcssa33.i.i = phi ptr [ %.01727.i.i, %select.unfold._crit_edge.i.i ], [ %i.cr, %_ZNSt8functionIFvllEEC2ERKS1_.exit ] ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 88
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !41 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -80
  %i.df = select i1 %i.dd, ptr null, ptr %i.de
  %i.dg = icmp eq ptr %.018.lcssa33.i.i, %i.df
  br i1 %i.dg, label %.sink.split.i.i, label %bb.n

bb.n:                                             ; preds = %select.unfold._crit_edge.thread.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i.i, i64 80 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !39 ; 3 uses
  %i.dj = and i64 %i.di, 1
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %bb.o, label %.critedge.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.dl = inttoptr i64 %i.di to ptr
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !39
  %i.dn = and i64 %i.dm, -2
  %i.do = inttoptr i64 %i.dn to ptr
  %i.dp = icmp eq ptr %i.dh, %i.do
  br i1 %i.dp, label %bb.p, label %.critedge.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.dq = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i.i, i64 96
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !41
  br label %.loopexit141

.critedge.i.i.i.i:                                ; preds = %bb.o, %bb.n
  %i.ds = getelementptr inbounds nuw i8, ptr %.018.lcssa33.i.i, i64 88
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !41 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i, label %.preheader.i.i.i.i, label %.preheader25.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.critedge.i.i.i.i
  %.0.in26.i.i.i.i = and i64 %i.di, -2
  %.027.i.i.i.i = inttoptr i64 %.0.in26.i.i.i.i to ptr ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.027.i.i.i.i, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !41
  %i.dw = icmp eq ptr %i.dh, %i.dv
  br i1 %i.dw, label %.lr.ph.i.i.i.i, label %.loopexit141

.preheader25.i.i.i.i:                             ; preds = %.critedge.i.i.i.i, %.preheader25.i.i.i.i
  %.019.i.i.i.i = phi ptr [ %i.dy, %.preheader25.i.i.i.i ], [ %i.dt, %.critedge.i.i.i.i ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.019.i.i.i.i, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !41 ; 2 uses
  %.not20.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not20.i.i.i.i, label %.loopexit141, label %.preheader25.i.i.i.i, !llvm.loop !43

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %.lr.ph.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.0.i.i.i.i45, %.lr.ph.i.i.i.i ], [ %.027.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.dz = load i64, ptr %.028.i.i.i.i, align 8, !tbaa !39
  %.0.in.i.i.i.i = and i64 %i.dz, -2
  %.0.i.i.i.i45 = inttoptr i64 %.0.in.i.i.i.i to ptr ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i45, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !41
  %i.ec = icmp eq ptr %.028.i.i.i.i, %i.eb
  br i1 %i.ec, label %.lr.ph.i.i.i.i, label %.loopexit141, !llvm.loop !45

.loopexit141:                                     ; preds = %.preheader25.i.i.i.i, %.lr.ph.i.i.i.i, %bb.p, %.preheader.i.i.i.i
  %.019.lcssa.sink.i.i.i.i = phi ptr [ %i.dr, %bb.p ], [ %.0.i.i.i.i45, %.lr.ph.i.i.i.i ], [ %.027.i.i.i.i, %.preheader.i.i.i.i ], [ %.019.i.i.i.i, %.preheader25.i.i.i.i ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %.019.lcssa.sink.i.i.i.i, i64 -80
  %.pre.i = load i64, ptr %i.ed, align 8, !tbaa !39
  %i.ee = icmp slt i64 %.pre.i, %i.cq
  br i1 %i.ee, label %.sink.split.i.i, label %.noexc33

.thread:                                          ; preds = %select.unfold._crit_edge.i.i
  %i.ef = icmp slt i64 %i.cx, %i.cq
  br i1 %i.ef, label %.sink.split.i.i, label %.noexc33.thread139

.sink.split.i.i:                                  ; preds = %.thread, %.loopexit141, %select.unfold._crit_edge.thread.i.i
  %i.eg = phi i1 [ true, %select.unfold._crit_edge.thread.i.i ], [ true, %.loopexit141 ], [ false, %.thread ]
  %.023.sink.i.ph.i = phi ptr [ %.018.lcssa33.i.i, %select.unfold._crit_edge.thread.i.i ], [ %.018.lcssa33.i.i, %.loopexit141 ], [ %.01727.i.i, %.thread ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.023.sink.i.ph.i, i64 80 ; 3 uses
  %i.ei = load i64, ptr %i.f, align 8, !tbaa !39
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cr, i64 56 ; 4 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !39
  %i.el = and i64 %i.ek, -2                       ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %select.unfold._crit_edge.loopexit.i.i, label %select.unfold.preheader.i.i48

select.unfold.preheader.i.i48:                    ; preds = %.sink.split.i.i
  %i.en = inttoptr i64 %i.el to ptr
  br label %select.unfold.i.i49

select.unfold.i.i49:                              ; preds = %select.unfold.i.i49, %select.unfold.preheader.i.i48
  %.pn.i.i50 = phi ptr [ %i.eq, %select.unfold.i.i49 ], [ %i.en, %select.unfold.preheader.i.i48 ] ; 2 uses
  %.01014.i.i = getelementptr inbounds i8, ptr %.pn.i.i50, i64 -56 ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %.pn.i.i50, i64 -48
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !39
  %.not.i51 = icmp slt i64 %i.ei, %i.ep           ; 2 uses
  %.in.v.i.i52 = select i1 %.not.i51, i64 64, i64 72
  %.in.i.i53 = getelementptr inbounds nuw i8, ptr %.01014.i.i, i64 %.in.v.i.i52
  %i.eq = load ptr, ptr %.in.i.i53, align 8, !tbaa !41 ; 2 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %select.unfold._crit_edge.loopexit.i.i, label %select.unfold.i.i49

select.unfold._crit_edge.loopexit.i.i:            ; preds = %select.unfold.i.i49, %.sink.split.i.i
  %.011.lcssa.i.i = phi ptr [ %i.cr, %.sink.split.i.i ], [ %.01014.i.i, %select.unfold.i.i49 ] ; 4 uses
  %.0.lcssa.i.i = phi i1 [ true, %.sink.split.i.i ], [ %.not.i51, %select.unfold.i.i49 ]
  %i.es = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i, i64 56 ; 3 uses
  %i.et = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #15
          to label %.noexc54 unwind label %bb.ai  ; 8 uses

.noexc54:                                         ; preds = %select.unfold._crit_edge.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.et, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 24, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, i8 0, i64 24, i1 false)
  store ptr %i.cp, ptr %i.ev, align 8, !tbaa !33
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i, label %bb.q

bb.q:                                             ; preds = %.noexc54
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 16, i1 false), !tbaa.struct !35
  store ptr %i.co, ptr %i.ew, align 8, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i

_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i: ; preds = %bb.q, %.noexc54
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 56 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %.0.lcssa.i.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZN5boost11multi_index6detail10index_baseIN5folly12TimeoutQueue5EventENS0_10indexed_byINS0_14ordered_uniqueINS0_6memberIS5_lXadL_ZNS5_2idEEEEEN4mpl_2naESB_EENS0_18ordered_non_uniqueINS8_IS5_lXadL_ZNS5_10expirationEEEEESB_SB_EESB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_SB_EESaIS5_EE7insert_ERKS5_RPNS1_18ordered_index_nodeINS1_19null_augment_policyENSL_ISM_NS1_15index_node_baseIS5_SH_EEEEEENS1_10rvalue_tagE.exit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i, i64 64
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !41
  %i.ez = icmp eq ptr %.011.lcssa.i.i, %i.cr
  br i1 %i.ez, label %bb.s, label %bb.t

end_hunk_0
