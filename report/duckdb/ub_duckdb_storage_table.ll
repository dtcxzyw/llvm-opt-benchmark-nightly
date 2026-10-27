Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_table?download=true
inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 651
loop-unroll.NumUnrolled: 661
begin_hunk_0_@_ZN6duckdb14ScanFilterInfo10InitializeERNS_13ClientContextERNS_14TableFilterSetERKNS_6vectorINS_12StorageIndexELb1ESaIS6_EEE:bb.a

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #39
  br label %_ZNKSt14default_deleteIN6duckdb14AdaptiveFilterEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14AdaptiveFilterEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #39
  br label %_ZNSt10unique_ptrIN6duckdb14AdaptiveFilterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14AdaptiveFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb14AdaptiveFilterEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_14AdaptiveFilterEJRNS_14TableFilterSetEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !1773 ; 4 uses
  %i.m = icmp ugt i64 %i.l, 67818912035696880
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14AdaptiveFilterESt14default_deleteIS1_EED2Ev.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #40
  unreachable

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb14AdaptiveFilterESt14default_deleteIS1_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1810
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !1470
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 136
  %i.u = icmp ult i64 %i.t, %i.l
  br i1 %i.u, label %_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1473
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.r
  %i.z = mul nuw nsw i64 %i.l, 136
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #38 ; 4 uses
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !1470 ; 3 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !1473 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i ], [ %i.aa, %_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @_ZSt19__relocate_object_aIN6duckdb10ScanFilterES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i.i.i, ptr noundef %.0911.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j) #37
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 136 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 136
  %.not.i.i.i.i.i13 = icmp eq ptr %i.ad, %i.ac
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !151

_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pr.i = load ptr, ptr %i.j, align 8, !tbaa !1470
  br label %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i

_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i, %_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EE11_M_allocateEm.exit.i
  %i.af = phi ptr [ %.pr.i, %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exitthread-pre-split.i ], [ %i.ab, %_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.af) #39
  br label %_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.aa, ptr %i.j, align 8, !tbaa !1470
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store ptr %i.ag, ptr %i.v, align 8, !tbaa !1473
  %i.ah = getelementptr inbounds nuw [136 x i8], ptr %i.aa, i64 %i.l
  store ptr %i.ah, ptr %i.n, align 8, !tbaa !1810
  br label %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE7reserveEm.exit: ; preds = %bb.g, %_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1771 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not25 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE7reserveEm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE12emplace_backIJRNS0_13ClientContextERKmRKNS0_6vectorINS0_12StorageIndexELb1ESaISA_EEERNS0_11TableFilterEEEEvDpOT_.exit, %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE7reserveEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !772 ; 2 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !771   ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 104               ; 3 uses
  %i.au = icmp ugt i64 %i.at, 9223372036854775744
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.205) #40
  unreachable

bb.j:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !766
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !685
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = shl nsw i64 %i.ba, 3
  %i.bc = icmp ult i64 %i.bb, %i.at
  br i1 %i.bc, label %bb.k, label %_ZNSt6vectorIbSaIbEE7reserveEm.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNSt6vectorIbSaIbEE13_M_reallocateEm(ptr noundef nonnull align 8 dereferenceable(40) %i.am, i64 noundef %i.at)
  %.pre = load ptr, ptr %i.an, align 8, !tbaa !772
  %.pre31 = load ptr, ptr %3, align 8, !tbaa !771
  br label %_ZNSt6vectorIbSaIbEE7reserveEm.exit

_ZNSt6vectorIbSaIbEE7reserveEm.exit:              ; preds = %bb.j, %bb.k
  %i.bd = phi ptr [ %i.ap, %bb.j ], [ %.pre31, %bb.k ]
  %i.be = phi ptr [ %i.ao, %bb.j ], [ %.pre, %bb.k ]
  %.not30 = icmp eq ptr %i.be, %i.bd
  br i1 %.not30, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %_ZNSt6vectorIbSaIbEE7reserveEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  br label %bb.o

bb.l:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE12emplace_backIJRNS0_13ClientContextERKmRKNS0_6vectorINS0_12StorageIndexELb1ESaISA_EEERNS0_11TableFilterEEEEvDpOT_.exit
  %.sroa.019.026 = phi ptr [ %i.aj, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE12emplace_backIJRNS0_13ClientContextERKmRKNS0_6vectorINS0_12StorageIndexELb1ESaISA_EEERNS0_11TableFilterEEEEvDpOT_.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.019.026, i64 40
  %i.bi = tail call noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bh) ; 2 uses
  %i.bj = load ptr, ptr %i.al, align 8, !tbaa !1473 ; 3 uses
  %i.bk = load ptr, ptr %i.n, align 8, !tbaa !1810
  %.not.i14 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = load i64, ptr %i.bg, align 8, !tbaa !218
  tail call void @_ZN6duckdb10ScanFilterC1ERNS_13ClientContextEmRKNS_6vectorINS_12StorageIndexELb1ESaIS4_EEERNS_11TableFilterE(ptr noundef nonnull align 8 dereferenceable(136) %i.bj, ptr noundef nonnull align 8 dereferenceable(512) %1, i64 noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(9) %i.bi)
  %i.bm = load ptr, ptr %i.al, align 8, !tbaa !1473
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  store ptr %i.bn, ptr %i.al, align 8, !tbaa !1473
  br label %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE12emplace_backIJRNS0_13ClientContextERKmRKNS0_6vectorINS0_12StorageIndexELb1ESaISA_EEERNS0_11TableFilterEEEEvDpOT_.exit

bb.n:                                             ; preds = %bb.l
  tail call void @_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE17_M_realloc_insertIJRNS0_13ClientContextERKmRKNS0_6vectorINS0_12StorageIndexELb1ESaISA_EEERNS0_11TableFilterEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr %i.bj, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(9) %i.bi)
  br label %_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE12emplace_backIJRNS0_13ClientContextERKmRKNS0_6vectorINS0_12StorageIndexELb1ESaISA_EEERNS0_11TableFilterEEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EE12emplace_backIJRNS0_13ClientContextERKmRKNS0_6vectorINS0_12StorageIndexELb1ESaISA_EEERNS0_11TableFilterEEEEvDpOT_.exit: ; preds = %bb.m, %bb.n
  %i.bo = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.019.026) #42 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.l

._crit_edge29:                                    ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %_ZNSt6vectorIbSaIbEE7reserveEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bq = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, ptr noundef nonnull align 8 dereferenceable(40) %i.am) ; 0 uses
  ret void

bb.o:                                             ; preds = %.lr.ph28, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  %storemerge27 = phi i64 [ 0, %.lr.ph28 ], [ %i.cr, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 3 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_14TableFilterSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.br = load ptr, ptr %0, align 8, !tbaa !1479  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1770 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.bt, %bb.o ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.bu, %bb.o ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !218
  %i.bx = icmp ult i64 %i.bw, %storemerge27       ; 2 uses
  %.19.i.i.i = select i1 %i.bx, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.bx, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !1774 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !4059

_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.by = icmp eq ptr %.19.i.i.i, %i.bu
  br i1 %i.by, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !218
  %i.cb = icmp ult i64 %storemerge27, %i.ca
  %spec.select.i.i = select i1 %i.cb, ptr %i.bu, ptr %.19.i.i.i
  br label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit

_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit: ; preds = %bb.o, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.p
  %.sroa.0.0.i.i = phi ptr [ %i.bu, %bb.o ], [ %i.bu, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %spec.select.i.i, %bb.p ]
  tail call void @_ZNK6duckdb12optional_ptrINS_14TableFilterSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.cc = load ptr, ptr %0, align 8, !tbaa !1479
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = icmp ne ptr %.sroa.0.0.i.i, %i.cd       ; 2 uses
  %i.cf = load ptr, ptr %i.bf, align 8, !tbaa !685 ; 7 uses
  %i.cg = load ptr, ptr %i.av, align 8, !tbaa !766
  %.not.i15 = icmp eq ptr %i.cf, %i.cg
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i15, label %bb.u, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit
  %i.ch = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.ch, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !686
  %i.ci = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.ci, label %bb.r, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !686
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cj, ptr %i.bf, align 8, !tbaa !685
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.r, %bb.q
  %i.ck = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.cl = shl nuw i64 1, %i.ck                    ; 2 uses
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.cm = load i64, ptr %i.cf, align 8, !tbaa !218
  %i.cn = or i64 %i.cm, %i.cl
  store i64 %i.cn, ptr %i.cf, align 8, !tbaa !218
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.t:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.co = xor i64 %i.cl, -1
  %i.cp = load i64, ptr %i.cf, align 8, !tbaa !218
  %i.cq = and i64 %i.cp, %i.co
  store i64 %i.cq, ptr %i.cf, align 8, !tbaa !218
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.u:                                             ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr %i.cf, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %i.ce)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.s, %bb.t, %bb.u
  %i.cr = add nuw i64 %storemerge27, 1            ; 2 uses
  %i.cs = load ptr, ptr %i.an, align 8, !tbaa !772
  %i.ct = load ptr, ptr %3, align 8, !tbaa !771
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = sdiv exact i64 %i.cw, 104
  %i.cy = icmp ult i64 %i.cr, %i.cx
  br i1 %i.cy, label %bb.o, label %._crit_edge29, !llvm.loop !4060
}

declare noundef double @_ZNK6duckdb5Value8GetValueIdEET_v(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6duckdb12RandomEngine7SetSeedEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb14TableScanState12GetColumnIdsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(528) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14ScanFilterInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !685  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !766  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #39
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !685  ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.l, null
  br i1 %.not.i.i1, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !766  ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.s
  tail call void @_ZdlPv(ptr noundef %i.t) #39
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2

_ZNSt13_Bvector_baseISaIbEED2Ev.exit2:            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #37
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1480 ; 5 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb14AdaptiveFilterESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  tail call void @_ZN6duckdb12RandomEngineD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.x) #37
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !985  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.e, %bb.d
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !985 ; 2 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14AdaptiveFilterEEclEPS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #39
  br label %_ZNKSt14default_deleteIN6duckdb14AdaptiveFilterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb14AdaptiveFilterEEclEPS1_.exit.i: ; preds = %bb.f, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #39
  br label %_ZNSt10unique_ptrIN6duckdb14AdaptiveFilterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb14AdaptiveFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit2, %_ZNKSt14default_deleteIN6duckdb14AdaptiveFilterEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10ScanFilterESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1470   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1473 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10ScanFilterES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10ScanFilterEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6duckdb10ScanFilterEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1208 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !213
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #37, !inline_history !4063
  br label %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16TableFilterStateEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !771
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !772
  invoke void @_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_(ptr noundef %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i unwind label %bb.b, !inline_history !773

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #41, !inline_history !773
  unreachable

_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb16TableFilterStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !771  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #39, !inline_history !774
  br label %_ZNSt12_Vector_baseIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i

_ZNSt12_Vector_baseIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.c, %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #37, !inline_history !774
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !227  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyIN6duckdb10ScanFilterEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.r) #39, !inline_history !774
  br label %_ZSt8_DestroyIN6duckdb10ScanFilterEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10ScanFilterEEvPT_.exit.i.i: ; preds = %_ZNSt12_Vector_baseIN6duckdb12StorageIndexESaIS1_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10ScanFilterES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4064

_ZSt8_DestroyIPN6duckdb10ScanFilterES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10ScanFilterEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !1470
  br label %_ZSt8_DestroyIPN6duckdb10ScanFilterES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10ScanFilterES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10ScanFilterES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10ScanFilterES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10ScanFilterES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #39
  br label %_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10ScanFilterESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10ScanFilterES1_EvT_S3_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb14TableScanState13GetFilterInfoEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(528) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb14TableScanState15GetSamplingInfoEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(528) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10ScanFilterC2ERNS_13ClientContextEmRKNS_6vectorINS_12StorageIndexELb1ESaIS4_EEERNS_11TableFilterE(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::unique_ptr.1143", align 8 ; 7 uses
  store i64 %2, ptr %0, align 8, !tbaa !1472
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_12StorageIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %2)
end_hunk_0
begin_hunk_1_@_ZN6duckdb10VacuumTaskD0Ev:bb.a

bb.e:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !213
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #37, !inline_history !197
  br label %_ZN6duckdb4TaskD2Ev.exit

_ZN6duckdb4TaskD2Ev.exit:                         ; preds = %bb.a, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %0) #39
  ret void
}

declare noundef zeroext i8 @_ZN6duckdb16BaseExecutorTask7ExecuteENS_17TaskExecutionModeE(ptr noundef nonnull align 8 dereferenceable(40), i8 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb4Task10DescheduleEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 41, ptr %i.a, align 8, !tbaa !218
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %1, align 8, !tbaa !227
  %i.e = load i64, ptr %i.a, align 8, !tbaa !218  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.d, ptr noundef nonnull align 1 dereferenceable(41) @.str.210, i64 41, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !288
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb4Task10RescheduleEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 41, ptr %i.a, align 8, !tbaa !218
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %1, align 8, !tbaa !227
  %i.e = load i64, ptr %i.a, align 8, !tbaa !218  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.d, ptr noundef nonnull align 1 dereferenceable(41) @.str.211, i64 41, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !288
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !227    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.j) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.c, label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn8 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #37
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %.pn7 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn8, %bb.c ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.a
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb4Task19TaskBlockedOnResultEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb10VacuumTask8TaskTypeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !287
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.212, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !288
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !273
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10VacuumTask11ExecuteTaskEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 14 uses
  %2 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 14 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::vector.2458", align 8  ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.p = alloca i64, align 8                      ; 4 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.r = alloca i64, align 8                      ; 4 uses
  %i.s = alloca i64, align 8                      ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.t = alloca i64, align 8                      ; 5 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"struct.duckdb::BlockIdDropper", align 8 ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.y = alloca i64, align 8                      ; 4 uses
  %i.z = alloca i64, align 8                      ; 4 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.aa = alloca i64, align 8                     ; 4 uses
  %i.ab = alloca i64, align 8                     ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ac = alloca i64, align 8                     ; 4 uses
  %i.ad = alloca i64, align 8                     ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"struct.duckdb::TransactionData", align 8 ; 4 uses
  %21 = alloca %"struct.duckdb::ScanOptions", align 8 ; 7 uses
  %22 = alloca %"class.duckdb::vector.2878", align 8 ; 19 uses
  %23 = alloca %"class.duckdb::vector.88", align 8 ; 14 uses
  %24 = alloca %"class.duckdb::unique_ptr.1654", align 8 ; 11 uses
  %25 = alloca %"class.duckdb::DataChunk", align 8 ; 14 uses
  %26 = alloca %"class.duckdb::vector.645", align 8 ; 15 uses
  %i.ae = alloca i64, align 8                     ; 7 uses
  %27 = alloca %"struct.duckdb::TableAppendState", align 8 ; 10 uses
  %28 = alloca %"class.duckdb::TableScanState", align 8 ; 13 uses
  %29 = alloca %"class.duckdb::QueryContext", align 8 ; 5 uses
  %30 = alloca %"class.duckdb::optional_idx", align 8 ; 7 uses
  %31 = alloca %"class.duckdb::optional_ptr.897", align 8 ; 10 uses
  %32 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %i.af = alloca i64, align 8                     ; 7 uses
  %33 = alloca %"class.duckdb::shared_ptr.1532", align 8 ; 4 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %36 = alloca %"class.duckdb::unique_ptr.2032", align 8 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1916, !nonnull !248, !align !295
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !5341, !nonnull !248, !align !295 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1410 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !1756
  %.not569 = icmp eq i64 %i.ao, 0
  br i1 %.not569, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !1757
  %i.aq = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb8RowGroupESt14default_deleteIS1_EED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %25)
          to label %bb.o unwind label %bb.r

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb8RowGroupESt14default_deleteIS1_EED2Ev.exit
  %.092546 = phi i64 [ 0, %.lr.ph ], [ %i.df, %_ZNSt10unique_ptrIN6duckdb8RowGroupESt14default_deleteIS1_EED2Ev.exit ]
  %.093545 = phi i64 [ %i.ap, %.lr.ph ], [ %i.dd, %_ZNSt10unique_ptrIN6duckdb8RowGroupESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.au = call noundef i64 @llvm.umin.i64(i64 %.093545, i64 %i.ak) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  call void @llvm.experimental.noalias.scope.decl(metadata !5342)
  %i.av = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #38
          to label %.noexc unwind label %bb.n     ; 3 uses

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN6duckdb8RowGroupC1ERNS_18RowGroupCollectionEm(ptr noundef nonnull align 8 dereferenceable(218) %i.av, ptr noundef nonnull align 8 dereferenceable(217) %i.ai, i64 noundef %i.au)
          to label %bb.d unwind label %bb.c, !noalias !5342

bb.c:                                             ; preds = %.noexc
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.av) #39, !noalias !5342
  br label %.body

bb.d:                                             ; preds = %.noexc
  store ptr %i.av, ptr %24, align 8, !tbaa !321, !alias.scope !5342
  %i.ax = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8RowGroupESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.e unwind label %.loopexit.split-lp480.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb8RowGroup15InitializeEmptyERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEENS_14ColumnDataTypeE(ptr noundef nonnull align 8 dereferenceable(218) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i32 noundef 0)
          to label %bb.f unwind label %.loopexit.split-lp480.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr %i.aq, align 8, !tbaa !1919 ; 6 uses
  %i.az = load ptr, ptr %i.ar, align 8, !tbaa !5343
  %.not.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = load i64, ptr %24, align 8, !tbaa !321
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !321
  store ptr null, ptr %24, align 8, !tbaa !321
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.aq, align 8, !tbaa !1919
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.h:                                             ; preds = %bb.f
  %i.bc = load ptr, ptr %22, align 8, !tbaa !1920 ; 10 uses
  %i.bd = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 3 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.k, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.164) #40
          to label %.cont unwind label %.loopexit.split-lp480.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #38
          to label %.noexc124 unwind label %.loopexit.split-lp480.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bf
  %i.bp = load i64, ptr %24, align 8, !tbaa !321
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !321
  store ptr null, ptr %24, align 8, !tbaa !321
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ay
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc124
  %i.bq = add i64 %i.bd, -8
  %i.br = sub i64 %i.bq, %i.be                    ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.br, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader834, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bn, i64 8
  %i.bu = add i64 %i.bd, -8
  %i.bv = sub i64 %i.bu, %i.be
  %i.bw = and i64 %i.bv, -8                       ; 2 uses
  %scevgep797 = getelementptr i8, ptr %scevgep, i64 %i.bw
  %scevgep798 = getelementptr i8, ptr %i.bc, i64 8
  %scevgep799 = getelementptr i8, ptr %scevgep798, i64 %i.bw
  %bound0 = icmp ult ptr %i.bn, %scevgep799
  %bound1 = icmp ult ptr %i.bc, %scevgep797
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader834, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bt, 4611686018427387900     ; 3 uses
  %i.bx = shl i64 %n.vec, 3                       ; 2 uses
  %i.by = getelementptr i8, ptr %i.bn, i64 %i.bx  ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bc, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bn, i64 %i.ca ; 2 uses
  %next.gep800 = getelementptr i8, ptr %i.bc, i64 %i.ca ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5344)
  call void @llvm.experimental.noalias.scope.decl(metadata !5345)
  %i.cb = getelementptr i8, ptr %next.gep800, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep800, align 8, !tbaa !321, !alias.scope !5346
  %wide.load801 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !321, !alias.scope !5346
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !321, !alias.scope !5347, !noalias !5348
  store <2 x i64> %wide.load801, ptr %i.cc, align 8, !tbaa !321, !alias.scope !5347, !noalias !5348
  %i.cd = getelementptr i8, ptr %next.gep800, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep800, align 8, !tbaa !321, !alias.scope !5346
  store <2 x ptr> splat (ptr null), ptr %i.cd, align 8, !tbaa !321, !alias.scope !5346
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !5318

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_8RowGroupESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader834

.lr.ph.i.i.i.i.i.i.i.preheader834:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.by, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bc, %vector.memcheck ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bz, %middle.block ]
end_hunk_1
begin_hunk_2_@_ZN6duckdb10VacuumTask11ExecuteTaskEv:bb.a
  br i1 %i.ni, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i411: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.i
  call void @_ZdlPv(ptr noundef %.pre10.i) #39, !noalias !5351
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit.i

_ZN6duckdb20ExceptionFormatValueD2Ev.exit.i:      ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread.i, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i411
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !5351
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37, !noalias !5352
  invoke void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueImEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.noexc425 unwind label %bb.cu

.noexc425:                                        ; preds = %_ZN6duckdb20ExceptionFormatValueD2Ev.exit.i
  %i.nj = load ptr, ptr %i.mp, align 8, !tbaa !804, !noalias !5352 ; 7 uses
  %i.nk = load ptr, ptr %i.mr, align 8, !tbaa !1177, !noalias !5352
  %.not.i.i.i416 = icmp eq ptr %i.nj, %i.nk
  br i1 %.not.i.i.i416, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %.noexc425
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.nj, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 32, i1 false), !noalias !5352
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 32 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 48 ; 3 uses
  store ptr %i.nn, ptr %i.nl, align 8, !tbaa !287, !noalias !5352
  %i.no = load ptr, ptr %i.nm, align 8, !tbaa !227, !noalias !5352 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.nq = icmp eq ptr %i.no, %i.np
  br i1 %i.nq, label %bb.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i417

bb.cp:                                            ; preds = %bb.co
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !288, !noalias !5352 ; 3 uses
  %i.nt = icmp ult i64 %i.ns, 16
  call void @llvm.assume(i1 %i.nt)
  %i.nu = add nuw nsw i64 %i.ns, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.nn, ptr noundef nonnull align 8 dereferenceable(1) %i.np, i64 %i.nu, i1 false), !noalias !5352
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i417: ; preds = %bb.co
  store ptr %i.no, ptr %i.nl, align 8, !tbaa !227, !noalias !5352
  %i.nv = load i64, ptr %i.np, align 8, !tbaa !273, !noalias !5352
  store i64 %i.nv, ptr %i.nn, align 8, !tbaa !273, !noalias !5352
  %.phi.trans.insert.i418 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre.i419 = load i64, ptr %.phi.trans.insert.i418, align 8, !tbaa !288, !noalias !5352
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread.i420

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread.i420: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i417, %bb.cp
  %i.nw = phi i64 [ %.pre.i419, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i417 ], [ %i.ns, %bb.cp ]
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nj, i64 40
  store i64 %i.nw, ptr %i.nx, align 8, !tbaa !288, !noalias !5352
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nj, i64 64
  store ptr %i.ny, ptr %i.mp, align 8, !tbaa !804, !noalias !5352
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit.i422

bb.cq:                                            ; preds = %.noexc425
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.nj, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.i423 unwind label %bb.cr, !noalias !5352

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.i423: ; preds = %bb.cq
  %.phi.trans.insert8.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.pre9.i = load ptr, ptr %.phi.trans.insert8.i, align 8, !tbaa !227, !noalias !5352 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.oa = icmp eq ptr %.pre9.i, %i.nz
  br i1 %i.oa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit.i422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i424

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i424: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.i423
  call void @_ZdlPv(ptr noundef %.pre9.i) #39, !noalias !5352
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit.i422

_ZN6duckdb20ExceptionFormatValueD2Ev.exit.i422:   ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread.i420, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.i423, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i424
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37, !noalias !5352
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_.exit unwind label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.ob = landingpad { ptr, i32 }
          cleanup
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !227, !noalias !5352 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.of = icmp eq ptr %i.od, %i.oe
  br i1 %i.of, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i: ; preds = %bb.cr
  call void @_ZdlPv(ptr noundef %i.od) #39, !noalias !5352
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7.i

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7.i:     ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37, !noalias !5352
  br label %.body414

bb.cs:                                            ; preds = %bb.cn
  %i.og = landingpad { ptr, i32 }
          cleanup
  %i.oh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !227, !noalias !5351 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i: ; preds = %bb.cs
  call void @_ZdlPv(ptr noundef %i.oi) #39, !noalias !5351
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8.i

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8.i:     ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !5351
  br label %.body414

_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_.exit: ; preds = %_ZN6duckdb20ExceptionFormatValueD2Ev.exit.i422
  %i.ol = load ptr, ptr %3, align 8, !tbaa !803, !noalias !5350 ; 3 uses
  %i.om = load ptr, ptr %i.mp, align 8, !tbaa !804, !noalias !5350 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ol, %i.om
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_.exit, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.or, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.ol, %_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_.exit ] ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !227 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.oo) #39
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i378 = icmp eq ptr %i.or, %i.om
  br i1 %.not.i.i.i.i.i378, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !37

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %3, align 8, !tbaa !803, !noalias !5350
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_.exit
  %i.os = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ol, %_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_.exit ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i1.i.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit.i, label %bb.ct

bb.ct:                                            ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.os) #39
  br label %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit.i

bb.cu:                                            ; preds = %_ZN6duckdb20ExceptionFormatValueD2Ev.exit.i422, %_ZN6duckdb20ExceptionFormatValueD2Ev.exit.i, %.noexc383
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %.body414

.body414:                                         ; preds = %bb.cu, %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7.i, %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8.i
  %eh.lpad-body415 = phi { ptr, i32 } [ %i.og, %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8.i ], [ %i.ot, %bb.cu ], [ %i.ob, %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7.i ]
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !5350
  br label %.body379

_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit.i: ; preds = %bb.ct, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37, !noalias !5350
  invoke void @_ZN6duckdb17InternalExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.cv unwind label %bb.cw

bb.cv:                                            ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit.i
  %i.ou = load ptr, ptr %4, align 8, !tbaa !227   ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ow = icmp eq ptr %i.ou, %i.ov
  br i1 %i.ow, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cv
  call void @_ZdlPv(ptr noundef %i.ou) #39
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.cw:                                            ; preds = %_ZN6duckdb9Exception16ConstructMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_.exit.i
  %i.ox = landingpad { ptr, i32 }
          cleanup
  %i.oy = load ptr, ptr %4, align 8, !tbaa !227   ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pa = icmp eq ptr %i.oy, %i.oz
  br i1 %i.pa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i: ; preds = %bb.cw
  call void @_ZdlPv(ptr noundef %i.oy) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i: ; preds = %bb.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %.body379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  invoke void @__cxa_throw(ptr nonnull %i.mj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.cx unwind label %.body379.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i290: ; preds = %.noexc.i382
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i295.thread

.body379:                                         ; preds = %.body414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i
  %eh.lpad-body380 = phi { ptr, i32 } [ %i.ox, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i ], [ %eh.lpad-body415, %.body414 ] ; 2 uses
  %i.pc = load ptr, ptr %11, align 8, !tbaa !227  ; 2 uses
  %i.pd = icmp eq ptr %i.pc, %i.mk
  br i1 %i.pd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i295.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i294.a

.body379.thread:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.pe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pf = load ptr, ptr %11, align 8, !tbaa !227  ; 2 uses
  %i.pg = icmp eq ptr %i.pf, %i.mk
  br i1 %i.pg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i294.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i294.thread: ; preds = %.body379.thread
  call void @_ZdlPv(ptr noundef %i.pf) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %.body160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i294.a: ; preds = %.body379
  call void @_ZdlPv(ptr noundef %i.pc) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i295.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i295: ; preds = %.body379.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  br label %.body160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i295.thread: ; preds = %.body379, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i294.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i290
  %.pn8.i.i.i291 = phi { ptr, i32 } [ %i.pb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i290 ], [ %eh.lpad-body380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i294.a ], [ %eh.lpad-body380, %.body379 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #37
  call void @__cxa_free_exception(ptr %i.mj) #37
  br label %.body160

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  unreachable

.noexc179:                                        ; preds = %_ZNK6duckdb8RowGroup9GetColumnEm.exit.i
  %i.ph = getelementptr inbounds nuw [48 x i8], ptr %i.mc, i64 %.014.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.pi = getelementptr inbounds nuw [104 x i8], ptr %i.me, i64 %.014.i
  invoke void @_ZN6duckdb10ColumnData6AppendERNS_17ColumnAppendStateERNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(296) %i.lz, ptr noundef nonnull align 8 dereferenceable(48) %i.ph, ptr noundef nonnull align 8 dereferenceable(104) %i.pi, i64 noundef %i.jm)
          to label %.noexc180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc180:                                        ; preds = %.noexc179
  %i.pj = load atomic i64, ptr %i.ma seq_cst, align 8
  %i.pk = sub i64 %i.pj, %i.mb
  %i.pl = atomicrmw add ptr %i.ku, i64 %i.pk seq_cst, align 8 ; 0 uses
  %i.pm = add nuw i64 %.014.i, 1                  ; 2 uses
  %i.pn = load ptr, ptr %i.kq, align 8, !tbaa !1350
  %i.po = load ptr, ptr %i.kp, align 8, !tbaa !1351
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %i.ps = ashr exact i64 %i.pr, 4
  %i.pt = icmp ult i64 %i.pm, %i.ps
  br i1 %i.pt, label %bb.ca, label %.loopexit469.loopexit, !llvm.loop !101

.loopexit469.loopexit:                            ; preds = %.noexc180
  %.pre618 = load ptr, ptr %i.gd, align 8, !tbaa !984
  %.pre619 = load ptr, ptr %23, align 8, !tbaa !985 ; 2 uses
  %.pre620 = ptrtoint ptr %.pre618 to i64
  %.pre621 = ptrtoint ptr %.pre619 to i64
  %.pre623 = sub i64 %.pre620, %.pre621
  %.pre625 = ashr exact i64 %.pre623, 3
  br label %.loopexit469

.loopexit469:                                     ; preds = %.loopexit469.loopexit, %_ZNK6duckdb10unique_ptrINS_8RowGroupESt14default_deleteIS1_ELb1EEptEv.exit
  %.pre-phi626 = phi i64 [ %.pre625, %.loopexit469.loopexit ], [ %i.iy, %_ZNK6duckdb10unique_ptrINS_8RowGroupESt14default_deleteIS1_ELb1EEptEv.exit ] ; 2 uses
  %i.pu = phi ptr [ %.pre619, %.loopexit469.loopexit ], [ %i.iu, %_ZNK6duckdb10unique_ptrINS_8RowGroupESt14default_deleteIS1_ELb1EEptEv.exit ]
  %i.pv = load i64, ptr %i.gi, align 8, !tbaa !1505
  %i.pw = add i64 %i.pv, %i.jm
  store i64 %i.pw, ptr %i.gi, align 8, !tbaa !1505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %.2552, ptr %i.y, align 8, !tbaa !218
  store i64 %.pre-phi626, ptr %i.z, align 8, !tbaa !218
  %.not.i.i.i181 = icmp ult i64 %.2552, %.pre-phi626
  br i1 %.not.i.i.i181, label %bb.dc, label %.noexc.i317, !prof !421

.noexc.i317:                                      ; preds = %.loopexit469
  %i.px = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.py = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.py, ptr %16, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #37
  store i64 55, ptr %i.o, align 8, !tbaa !218
  %i.pz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc318 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i182 ; 3 uses

.noexc318:                                        ; preds = %.noexc.i317
  store ptr %i.pz, ptr %16, align 8, !tbaa !227
  %i.qa = load i64, ptr %i.o, align 8, !tbaa !218 ; 3 uses
  store i64 %i.qa, ptr %i.py, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.pz, ptr noundef nonnull align 1 dereferenceable(55) @.str.183, i64 55, i1 false)
  %i.qb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.qa, ptr %i.qb, align 8, !tbaa !288
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 %i.qa
  store i8 0, ptr %i.qc, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #37
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.px, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %bb.cy unwind label %bb.cz

bb.cy:                                            ; preds = %.noexc318
  invoke void @__cxa_throw(ptr nonnull %i.px, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.db unwind label %bb.cz

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i182: ; preds = %.noexc.i317
  %i.qd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %bb.da

bb.cz:                                            ; preds = %bb.cy, %.noexc318
  %.0.i.i.i185 = phi i1 [ false, %bb.cy ], [ true, %.noexc318 ] ; 2 uses
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.qf = load ptr, ptr %16, align 8, !tbaa !227  ; 2 uses
  %i.qg = icmp eq ptr %i.qf, %i.py
  br i1 %i.qg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186: ; preds = %bb.cz
  call void @_ZdlPv(ptr noundef %i.qf) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br i1 %.0.i.i.i185, label %bb.da, label %.body160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187: ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br i1 %.0.i.i.i185, label %bb.da, label %.body160

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i182
  %.pn8.i.i.i183 = phi { ptr, i32 } [ %i.qd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i182 ], [ %i.qe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187 ], [ %i.qe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186 ]
  call void @__cxa_free_exception(ptr %i.px) #37
  br label %.body160

bb.db:                                            ; preds = %bb.cy
  unreachable

bb.dc:                                            ; preds = %.loopexit469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.pu, i64 %.2552 ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !218
  %i.qj = add i64 %i.qi, %i.jm                    ; 2 uses
  store i64 %i.qj, ptr %i.qh, align 8, !tbaa !218
  %i.qk = sub nuw i64 %.061553, %i.jm             ; 3 uses
  %i.ql = add nuw i64 %.2552, 1                   ; 6 uses
  %i.qm = load ptr, ptr %i.ge, align 8, !tbaa !1919
  %i.qn = load ptr, ptr %22, align 8, !tbaa !1920 ; 2 uses
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = ashr exact i64 %i.qq, 3                 ; 3 uses
  %.not102 = icmp eq i64 %i.qk, 0                 ; 2 uses
  br i1 %.not102, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.qs = icmp uge i64 %i.ql, %i.qr
  %i.qt = icmp ne i64 %i.qj, %i.ak
  %or.cond = select i1 %i.qt, i1 true, i1 %i.qs
  br i1 %or.cond, label %.loopexit470, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %i.ql, ptr %i.w, align 8, !tbaa !218
  store i64 %i.qr, ptr %i.x, align 8, !tbaa !218
  %.not.i.i.i201 = icmp ult i64 %i.ql, %i.qr
  br i1 %.not.i.i.i201, label %bb.dj, label %.noexc.i325, !prof !421

.noexc.i325:                                      ; preds = %bb.de
  %i.qu = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #37
  %i.qv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.qv, ptr %15, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #37
  store i64 55, ptr %i.n, align 8, !tbaa !218
  %i.qw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc326 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202 ; 3 uses

.noexc326:                                        ; preds = %.noexc.i325
  store ptr %i.qw, ptr %15, align 8, !tbaa !227
  %i.qx = load i64, ptr %i.n, align 8, !tbaa !218 ; 3 uses
  store i64 %i.qx, ptr %i.qv, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.qw, ptr noundef nonnull align 1 dereferenceable(55) @.str.183, i64 55, i1 false)
  %i.qy = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.qx, ptr %i.qy, align 8, !tbaa !288
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qx
  store i8 0, ptr %i.qz, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #37
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.qu, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.df unwind label %bb.dg

bb.df:                                            ; preds = %.noexc326
  invoke void @__cxa_throw(ptr nonnull %i.qu, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.di unwind label %bb.dg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202: ; preds = %.noexc.i325
  %i.ra = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br label %bb.dh

bb.dg:                                            ; preds = %bb.df, %.noexc326
  %.0.i.i.i205 = phi i1 [ false, %bb.df ], [ true, %.noexc326 ] ; 2 uses
  %i.rb = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.rc = load ptr, ptr %15, align 8, !tbaa !227  ; 2 uses
  %i.rd = icmp eq ptr %i.rc, %i.qv
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206: ; preds = %bb.dg
  call void @_ZdlPv(ptr noundef %i.rc) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br i1 %.0.i.i.i205, label %bb.dh, label %.body160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207: ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #37
  br i1 %.0.i.i.i205, label %bb.dh, label %.body160

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202
  %.pn8.i.i.i203 = phi { ptr, i32 } [ %i.ra, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i202 ], [ %i.rb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207 ], [ %i.rb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206 ]
  call void @__cxa_free_exception(ptr %i.qu) #37
  br label %.body160

bb.di:                                            ; preds = %bb.df
  unreachable

bb.dj:                                            ; preds = %bb.de
end_hunk_2
begin_hunk_3_@_ZN6duckdb10VacuumTask11ExecuteTaskEv:bb.a
  %i.vg = getelementptr inbounds nuw i8, ptr %i.hu, i64 208
  br label %bb.ed

bb.ed:                                            ; preds = %.noexc236, %.lr.ph.i231
  %.03.i = phi i64 [ 0, %.lr.ph.i231 ], [ %i.wr, %.noexc236 ] ; 6 uses
  invoke void @_ZNK6duckdb8RowGroup10LoadColumnEm(ptr noundef nonnull align 8 dereferenceable(218) %i.hu, i64 noundef %.03.i)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232:                                        ; preds = %bb.ed
  %i.vh = icmp eq i64 %.03.i, %i.gf
  br i1 %i.vh, label %bb.ee, label %bb.ej

bb.ee:                                            ; preds = %.noexc232
  %i.vi = load ptr, ptr %i.vg, align 8, !tbaa !323 ; 2 uses
  %.not.i364 = icmp eq ptr %i.vi, null
  br i1 %.not.i364, label %.noexc.i406, label %_ZN6duckdb8RowGroup16CommitDropColumnEm.exit.i, !prof !274

.noexc.i406:                                      ; preds = %bb.ee
  %i.vj = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.vk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.vk, ptr %5, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i64 49, ptr %i.a, align 8, !tbaa !218
  %i.vl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc407 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i365 ; 3 uses

.noexc407:                                        ; preds = %.noexc.i406
  store ptr %i.vl, ptr %5, align 8, !tbaa !227
  %i.vm = load i64, ptr %i.a, align 8, !tbaa !218 ; 3 uses
  store i64 %i.vm, ptr %i.vk, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.vl, ptr noundef nonnull align 1 dereferenceable(49) @.str.157, i64 49, i1 false)
  %i.vn = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.vm, ptr %i.vn, align 8, !tbaa !288
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.vm
  store i8 0, ptr %i.vo, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.vj, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ef unwind label %bb.eg

bb.ef:                                            ; preds = %.noexc407
  invoke void @__cxa_throw(ptr nonnull %i.vj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.ei unwind label %bb.eg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i365: ; preds = %.noexc.i406
  %i.vp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ef, %.noexc407
  %.0.i.i368 = phi i1 [ false, %bb.ef ], [ true, %.noexc407 ] ; 2 uses
  %i.vq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.vr = load ptr, ptr %5, align 8, !tbaa !227   ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.vk
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i370, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i369: ; preds = %bb.eg
  call void @_ZdlPv(ptr noundef %i.vr) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %.0.i.i368, label %bb.eh, label %.body160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i370: ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br i1 %.0.i.i368, label %bb.eh, label %.body160

bb.eh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i370, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i369, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i365
  %.pn9.i.i366 = phi { ptr, i32 } [ %i.vp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i365 ], [ %i.vq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i370 ], [ %i.vq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i369 ]
  call void @__cxa_free_exception(ptr %i.vj) #37
  br label %.body160

bb.ei:                                            ; preds = %bb.ef
  unreachable

bb.ej:                                            ; preds = %.noexc232
  %i.vt = load ptr, ptr %i.vd, align 8, !tbaa !1350
  %i.vu = load ptr, ptr %i.vc, align 8, !tbaa !1351 ; 2 uses
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = sub i64 %i.vv, %i.vw
  %i.vy = ashr exact i64 %i.vx, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.03.i, ptr %i.i, align 8, !tbaa !218
  store i64 %i.vy, ptr %i.j, align 8, !tbaa !218
  %.not.i.i.i354 = icmp ult i64 %.03.i, %i.vy
  br i1 %.not.i.i.i354, label %.noexc234, label %.noexc.i402, !prof !421

.noexc.i402:                                      ; preds = %bb.ej
  %i.vz = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.wa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.wa, ptr %6, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 55, ptr %i.b, align 8, !tbaa !218
  %i.wb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc403 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i355 ; 3 uses

.noexc403:                                        ; preds = %.noexc.i402
  store ptr %i.wb, ptr %6, align 8, !tbaa !227
  %i.wc = load i64, ptr %i.b, align 8, !tbaa !218 ; 3 uses
  store i64 %i.wc, ptr %i.wa, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.wb, ptr noundef nonnull align 1 dereferenceable(55) @.str.183, i64 55, i1 false)
  %i.wd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.wc, ptr %i.wd, align 8, !tbaa !288
  %i.we = getelementptr inbounds nuw i8, ptr %i.wb, i64 %i.wc
  store i8 0, ptr %i.we, align 1, !tbaa !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.vz, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.ek unwind label %bb.el

bb.ek:                                            ; preds = %.noexc403
  invoke void @__cxa_throw(ptr nonnull %i.vz, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.en unwind label %bb.el

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i355: ; preds = %.noexc.i402
  %i.wf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br label %bb.em

bb.el:                                            ; preds = %bb.ek, %.noexc403
  %.0.i.i.i358 = phi i1 [ false, %bb.ek ], [ true, %.noexc403 ] ; 2 uses
  %i.wg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.wh = load ptr, ptr %6, align 8, !tbaa !227   ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.wa
  br i1 %i.wi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i359: ; preds = %bb.el
  call void @_ZdlPv(ptr noundef %i.wh) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %.0.i.i.i358, label %bb.em, label %.body160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i360: ; preds = %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  br i1 %.0.i.i.i358, label %bb.em, label %.body160

bb.em:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i360, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i359, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i355
  %.pn8.i.i.i356 = phi { ptr, i32 } [ %i.wf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i355 ], [ %i.wg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i360 ], [ %i.wg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i359 ]
  call void @__cxa_free_exception(ptr %i.vz) #37
  br label %.body160

bb.en:                                            ; preds = %bb.ek
  unreachable

.noexc234:                                        ; preds = %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.wj = getelementptr inbounds nuw [16 x i8], ptr %i.vu, i64 %.03.i
  %i.wk = invoke noundef nonnull align 8 dereferenceable(296) ptr @_ZNK6duckdb10shared_ptrINS_10ColumnDataELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wj)
          to label %_ZN6duckdb8RowGroup16CommitDropColumnEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6duckdb8RowGroup16CommitDropColumnEm.exit.i:   ; preds = %.noexc234, %bb.ee
  %i.wl = phi ptr [ %i.vi, %bb.ee ], [ %i.wk, %.noexc234 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  %i.wm = load ptr, ptr %i.hx, align 8, !tbaa !1244
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !1408, !nonnull !248, !align !295
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14BlockIdDropperE, i64 16), ptr %13, align 8, !tbaa !213
  store ptr %i.wn, ptr %i.gk, align 8, !tbaa !809
  %i.wo = load ptr, ptr %i.wl, align 8, !tbaa !213
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 208
  %i.wq = load ptr, ptr %i.wp, align 8
  invoke void %i.wq(ptr noundef nonnull align 8 dereferenceable(296) %i.wl, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1738

.noexc236:                                        ; preds = %_ZN6duckdb8RowGroup16CommitDropColumnEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #37
  %i.wr = add nuw i64 %.03.i, 1                   ; 2 uses
  %i.ws = load ptr, ptr %i.vd, align 8, !tbaa !1350
  %i.wt = load ptr, ptr %i.vc, align 8, !tbaa !1351
  %i.wu = ptrtoint ptr %i.ws to i64
  %i.wv = ptrtoint ptr %i.wt to i64
  %i.ww = sub i64 %i.wu, %i.wv
  %i.wx = ashr exact i64 %i.ww, 4
  %i.wy = icmp ult i64 %i.wr, %i.wx
  br i1 %i.wy, label %bb.ed, label %_ZN6duckdb8RowGroup10CommitDropEv.exit, !llvm.loop !95

_ZN6duckdb8RowGroup10CommitDropEv.exit:           ; preds = %.noexc236, %bb.ec
  %i.wz = load ptr, ptr %i.ag, align 8, !tbaa !1916, !nonnull !248, !align !295
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 112
  %i.xb = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb10unique_ptrIA_bSt14default_deleteIS1_ELb1EEixEm(ptr noundef nonnull align 8 dereferenceable(8) %i.xa, i64 noundef %.062558)
          to label %bb.eo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eo:                                            ; preds = %_ZN6duckdb8RowGroup10CommitDropEv.exit
  store i8 1, ptr %i.xb, align 1, !tbaa !1213
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br label %bb.ep

bb.ep:                                            ; preds = %bb.aq, %bb.eo
  %.4 = phi i64 [ %.065556, %bb.aq ], [ %.166, %bb.eo ]
  %.164 = phi i64 [ %.063557, %bb.aq ], [ %i.gy, %bb.eo ] ; 2 uses
  %i.xc = add nuw i64 %.062558, 1                 ; 2 uses
  %i.xd = load i64, ptr %i.ft, align 8, !tbaa !1755
  %i.xe = icmp ult i64 %.164, %i.xd
  %i.xf = icmp ult i64 %i.xc, %i.fq
  %i.xg = select i1 %i.xe, i1 %i.xf, i1 false
  br i1 %i.xg, label %bb.ap, label %._crit_edge561, !llvm.loop !5333

.body160:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i359, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i360, %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i369, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i370, %bb.eh, %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i216, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i295, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i294.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i295.thread, %bb.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i312, %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i338, %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i304, %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i277, %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207, %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187, %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i168, %bb.bt, %bb.az
  %.pn106.pn = phi { ptr, i32 } [ %i.hr, %bb.az ], [ %i.jg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.jg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.bo ], [ %i.ka, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i167 ], [ %i.ka, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i168 ], [ %.pn8.i.i.i164, %bb.bt ], [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.km, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.by ], [ %i.qe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186 ], [ %i.qe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i187 ], [ %.pn8.i.i.i183, %bb.da ], [ %i.rb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i206 ], [ %i.rb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i207 ], [ %.pn8.i.i.i203, %bb.dh ], [ %i.rn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i216 ], [ %i.rn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i217 ], [ %.pn9.i.i213, %bb.dm ], [ %i.ii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i276 ], [ %i.ii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i277 ], [ %.pn9.i.i273, %bb.bh ], [ %i.pe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i294.thread ], [ %i.pe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i295 ], [ %.pn8.i.i.i291, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i295.thread ], [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i303 ], [ %i.lu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i304 ], [ %.pn8.i.i.i300, %bb.cj ], [ %i.le, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i312 ], [ %i.le, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i313 ], [ %.pn9.i.i309, %bb.ce ], [ %i.uj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i337 ], [ %i.uj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i338 ], [ %.pn8.i.i.i334, %bb.dz ], [ %i.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i347 ], [ %i.tt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i348 ], [ %.pn9.i.i344, %bb.du ], [ %i.vq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i369 ], [ %i.wg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i359 ], [ %i.vq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i370 ], [ %.pn9.i.i366, %bb.eh ], [ %i.wg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i360 ], [ %.pn8.i.i.i356, %bb.em ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #37
  br label %bb.fu

._crit_edge565:                                   ; preds = %bb.fb
  %i.xh = load i64, ptr %i.am, align 8, !tbaa !1757
  %.not94 = icmp eq i64 %i.yl, %i.xh
  br i1 %.not94, label %.preheader, label %bb.fe

._crit_edge565.thread:                            ; preds = %._crit_edge561
  %i.xi = load i64, ptr %i.am, align 8, !tbaa !1757
  %.not94725 = icmp eq i64 %i.xi, 0
  br i1 %.not94725, label %._crit_edge568, label %bb.fe

.preheader:                                       ; preds = %._crit_edge565
  %i.xj = icmp eq i64 %i.yn, 0
  br i1 %i.xj, label %._crit_edge568, label %.lr.ph567

bb.eq:                                            ; preds = %.lr.ph564, %bb.fb
  %i.xk = phi i64 [ 0, %.lr.ph564 ], [ %i.yl, %bb.fb ]
  %.060562 = phi i64 [ 0, %.lr.ph564 ], [ %i.ym, %bb.fb ] ; 4 uses
  %i.xl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_8RowGroupESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %.060562)
          to label %bb.er unwind label %bb.fc     ; 2 uses

bb.er:                                            ; preds = %bb.eq
  %i.xm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_8RowGroupESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.xl)
          to label %bb.es unwind label %bb.fc     ; 0 uses

bb.es:                                            ; preds = %bb.er
  %i.xn = load ptr, ptr %i.ag, align 8, !tbaa !1916, !nonnull !248, !align !295
  %i.xo = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.et unwind label %bb.fc

bb.et:                                            ; preds = %bb.es
  %i.xp = load i64, ptr %i.fr, align 8, !tbaa !1754
  invoke void @_ZNSt12__shared_ptrIN6duckdb8RowGroupELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.xl)
          to label %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EEC2IS1_St14default_deleteIS1_ELb1ETnNSt9enable_ifIXaasr17compatible_with_tIT_S1_EE5valuesr3std14is_convertibleINS_10unique_ptrIS7_T0_Lb1EE7pointerEPS1_EE5valueEiE4typeELi0EEEONS8_IS7_S9_XT1_EEE.exit unwind label %bb.fc

_ZN6duckdb10shared_ptrINS_8RowGroupELb1EEC2IS1_St14default_deleteIS1_ELb1ETnNSt9enable_ifIXaasr17compatible_with_tIT_S1_EE5valuesr3std14is_convertibleINS_10unique_ptrIS7_T0_Lb1EE7pointerEPS1_EE5valueEiE4typeELi0EEEONS8_IS7_S9_XT1_EEE.exit: ; preds = %bb.et
  %i.xq = add i64 %i.xp, %.060562
  %i.xr = add i64 %i.xk, %i.xo
  invoke void @_ZN6duckdb25CollectionCheckpointState10SetSegmentEmmNS_10shared_ptrINS_8RowGroupELb1EEE(ptr noundef nonnull align 8 dereferenceable(120) %i.xn, i64 noundef %i.xr, i64 noundef %i.xq, ptr noundef nonnull %33)
          to label %bb.eu unwind label %bb.fd

bb.eu:                                            ; preds = %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EEC2IS1_St14default_deleteIS1_ELb1ETnNSt9enable_ifIXaasr17compatible_with_tIT_S1_EE5valuesr3std14is_convertibleINS_10unique_ptrIS7_T0_Lb1EE7pointerEPS1_EE5valueEiE4typeELi0EEEONS8_IS7_S9_XT1_EEE.exit
  %i.xs = load ptr, ptr %i.gm, align 8, !tbaa !269 ; 8 uses
  %.not.i.i.i239 = icmp eq ptr %i.xs, null
  br i1 %.not.i.i.i239, label %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EED2Ev.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8 ; 4 uses
  %i.xu = load atomic i64, ptr %i.xt acquire, align 8 ; 2 uses
  %i.xv = icmp eq i64 %i.xu, 4294967297
  %i.xw = trunc i64 %i.xu to i32                  ; 2 uses
  br i1 %i.xv, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  store i32 0, ptr %i.xt, align 8, !tbaa !271
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xs, i64 12
  store i32 0, ptr %i.xx, align 4, !tbaa !272
  %i.xy = load ptr, ptr %i.xs, align 8, !tbaa !213
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %i.ya = load ptr, ptr %i.xz, align 8
  call void %i.ya(ptr noundef nonnull align 8 dereferenceable(16) %i.xs) #37, !inline_history !104
  %i.yb = load ptr, ptr %i.xs, align 8, !tbaa !213
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 24
  %i.yd = load ptr, ptr %i.yc, align 8
  call void %i.yd(ptr noundef nonnull align 8 dereferenceable(16) %i.xs) #37, !inline_history !104
  br label %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EED2Ev.exit

bb.ex:                                            ; preds = %bb.ev
  %i.ye = load i8, ptr @__libc_single_threaded, align 1, !tbaa !273
  %.not.i.i.i.i240 = icmp eq i8 %i.ye, 0
  br i1 %.not.i.i.i.i240, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.yf = add nsw i32 %i.xw, -1
  store i32 %i.yf, ptr %i.xt, align 8, !tbaa !206
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ez:                                            ; preds = %bb.ex
  %i.yg = atomicrmw volatile add ptr %i.xt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ez, %bb.ey
  %.0.i.i.i.i.i = phi i32 [ %i.xw, %bb.ey ], [ %i.yg, %bb.ez ]
  %i.yh = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.yh, label %bb.fa, label %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EED2Ev.exit, !prof !274

bb.fa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xs) #37
  br label %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_8RowGroupELb1EED2Ev.exit: ; preds = %bb.eu, %bb.ew, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.fa
  %i.yi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 noundef %.060562)
          to label %bb.fb unwind label %bb.fc

bb.fb:                                            ; preds = %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EED2Ev.exit
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !218
  %i.yk = load i64, ptr %i.af, align 8, !tbaa !218
  %i.yl = add i64 %i.yk, %i.yj                    ; 3 uses
  store i64 %i.yl, ptr %i.af, align 8, !tbaa !218
  %i.ym = add nuw i64 %.060562, 1                 ; 2 uses
  %i.yn = load i64, ptr %i.an, align 8, !tbaa !1756 ; 2 uses
  %i.yo = icmp ult i64 %i.ym, %i.yn
  br i1 %i.yo, label %bb.eq, label %._crit_edge565, !llvm.loop !5334

bb.fc:                                            ; preds = %bb.et, %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EED2Ev.exit, %bb.es, %bb.er, %bb.eq
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fd:                                            ; preds = %_ZN6duckdb10shared_ptrINS_8RowGroupELb1EEC2IS1_St14default_deleteIS1_ELb1ETnNSt9enable_ifIXaasr17compatible_with_tIT_S1_EE5valuesr3std14is_convertibleINS_10unique_ptrIS7_T0_Lb1EE7pointerEPS1_EE5valueEiE4typeELi0EEEONS8_IS7_S9_XT1_EEE.exit
  %i.yq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_8RowGroupELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #37
  br label %bb.ft

bb.fe:                                            ; preds = %._crit_edge565.thread, %._crit_edge565
  %i.yr = call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull @.str.213, ptr noundef nonnull align 1 dereferenceable(1) %35)
          to label %bb.ff unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.ff:                                            ; preds = %bb.fe
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.yr, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.fg unwind label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  invoke void @__cxa_throw(ptr nonnull %i.yr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.gg unwind label %bb.fh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.fe
  %i.ys = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #37
  br label %bb.fi

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.059 = phi i1 [ false, %bb.fg ], [ true, %bb.ff ] ; 2 uses
  %i.yt = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.yu = load ptr, ptr %34, align 8, !tbaa !227  ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.yw = icmp eq ptr %i.yu, %i.yv
  br i1 %i.yw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.fh
  call void @_ZdlPv(ptr noundef %i.yu) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #37
  br i1 %.059, label %bb.fi, label %bb.ft

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #37
  br i1 %.059, label %bb.fi, label %bb.ft

bb.fi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn96465 = phi { ptr, i32 } [ %i.ys, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.yt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.yt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.yr) #37
  br label %bb.ft

._crit_edge568:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb14CheckpointTaskESt14default_deleteIS1_EED2Ev.exit, %._crit_edge565.thread, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  call void @_ZN6duckdb14TableScanStateD1Ev(ptr noundef nonnull align 8 dead_on_return(528) dereferenceable(528) %28) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  call void @_ZN6duckdb16TableAppendStateD1Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(296) %27) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  %i.yx = load ptr, ptr %26, align 8, !tbaa !771
  %i.yy = load ptr, ptr %i.ei, align 8, !tbaa !772
  invoke void @_ZSt8_DestroyIPN6duckdb12StorageIndexEEvT_S3_(ptr noundef %i.yx, ptr noundef %i.yy)
          to label %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i241 unwind label %bb.fk, !inline_history !1417

_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i241: ; preds = %._crit_edge568
  %i.yz = load ptr, ptr %26, align 8, !tbaa !771  ; 2 uses
  %.not.i.i.i242 = icmp eq ptr %i.yz, null
  br i1 %.not.i.i.i242, label %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit243, label %bb.fj

bb.fj:                                            ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i241
  call void @_ZdlPv(ptr noundef nonnull %i.yz) #39, !inline_history !1417
  br label %_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit243

bb.fk:                                            ; preds = %._crit_edge568
  %i.za = landingpad { ptr, i32 }
          catch ptr null
  %i.zb = extractvalue { ptr, i32 } %i.za, 0
  call void @__clang_call_terminate(ptr %i.zb) #41, !inline_history !1417
  unreachable

_ZNSt6vectorIN6duckdb12StorageIndexESaIS1_EED2Ev.exit243: ; preds = %_ZSt8_DestroyIPN6duckdb12StorageIndexES1_EvT_S3_RSaIT0_E.exit.i241, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %25) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  %i.zc = load ptr, ptr %23, align 8, !tbaa !985  ; 2 uses
  %.not.i.i.i244 = icmp eq ptr %i.zc, null
  br i1 %.not.i.i.i244, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.fl

end_hunk_3
