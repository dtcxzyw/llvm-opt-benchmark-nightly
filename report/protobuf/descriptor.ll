Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/descriptor?download=true
inline.NumInlined: 22185
inline.NumDeleted: 7876
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11erase_rangeENS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EESQ_:bb.a
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.071.086, i64 256 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.i46
  %indvars.iv.i48 = phi i64 [ 0, %.lr.ph.i46 ], [ %indvars.iv.next.i49, %bb.j ] ; 2 uses
  %i.dd = add nuw nsw i64 %i.cz, %indvars.iv.i48
  %i.de = and i64 %i.dd, 255
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !684
  call void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE16clear_and_deleteEPSK_PSI_(ptr noundef %i.dg, ptr noundef nonnull %i.bn)
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %exitcond.not.i50 = icmp eq i64 %indvars.iv.next.i49, %wide.trip.count.i47
  br i1 %exitcond.not.i50, label %._crit_edge.i51, label %bb.j, !llvm.loop !2354

bb.k:                                             ; preds = %bb.k, %.lr.ph37.i54
  %.035.i55 = phi i8 [ %.033.i52, %.lr.ph37.i54 ], [ %.0.i56, %bb.k ] ; 3 uses
  %i.dh = sub i8 %.035.i55, %i.bx                 ; 2 uses
  %i.di = zext i8 %.035.i55 to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !684 ; 2 uses
  %i.dl = zext i8 %i.dh to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dl
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !684
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i8 %i.dh, ptr %i.dn, align 1, !tbaa !22
  %.0.i56 = add i8 %.035.i55, 1                   ; 2 uses
  %.not.i57 = icmp ugt i8 %.0.i56, %i.bt
  br i1 %.not.i57, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit58, label %bb.k, !llvm.loop !2355

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit58: ; preds = %bb.k, %bb.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE10transfer_nEmmmPSK_PSI_.exit.i42, %._crit_edge.i51
  %i.do = sub i8 %i.bt, %i.bx
  store i8 %i.do, ptr %i.bs, align 1, !tbaa !22
  %i.dp = and i64 %.sroa.speculated, 255
  %i.dq = load i64, ptr %i.d, align 8, !tbaa !80
  %i.dr = sub i64 %i.dq, %i.dp
  store i64 %i.dr, ptr %i.d, align 8, !tbaa !80
  %i.ds = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.071.086, i32 %.sroa.13.087)
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.dt = call { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.071.086, i32 %.sroa.13.087)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit58
  %.pn = phi { ptr, i32 } [ %i.ds, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit58 ], [ %i.dt, %bb.l ] ; 2 uses
  %.sroa.13.1 = extractvalue { ptr, i32 } %.pn, 1 ; 2 uses
  %.sroa.071.1 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %i.du = load i64, ptr %i.d, align 8, !tbaa !80  ; 2 uses
  %i.dv = icmp ugt i64 %i.du, %i.bm
  br i1 %i.dv, label %bb.h, label %._crit_edge, !llvm.loop !2357

._crit_edge:                                      ; preds = %bb.m, %bb.g, %bb.a, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5clearEv.exit
  %.sink = phi i64 [ 0, %bb.a ], [ %i.b, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit ], [ %i.b, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5clearEv.exit ], [ %i.b, %bb.g ], [ %i.b, %bb.m ]
  %.sroa.071.0.lcssa.sink = phi ptr [ %2, %bb.a ], [ %.fca.0.extract17, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit ], [ @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5clearEv.exit ], [ %2, %bb.g ], [ %.sroa.071.1, %bb.m ]
  %.sroa.13.0.lcssa.sink = phi i32 [ %3, %bb.a ], [ %.fca.1.extract18, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE13remove_valuesEhhPSI_.exit ], [ 0, %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE5clearEv.exit ], [ %3, %bb.g ], [ %.sroa.13.1, %bb.m ]
  store i64 %.sink, ptr %0, align 8, !tbaa !2358
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.071.0.lcssa.sink, ptr %i.dw, align 8
  %.sroa.13.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.13.0.lcssa.sink, ptr %.sroa.13.0..sroa_idx76, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11equal_rangeISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EESR_ERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1058") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !noalias !2360 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !noalias !2360 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.0.0.in.i.i.i = phi ptr [ %1, %bb.a ], [ %i.y, %bb.e ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !tbaa !684, !noalias !2360 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !22, !noalias !2360 ; 2 uses
  %.not23.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not23.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.thread17.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.025.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %.thread17.i.i.i.i.i.i ] ; 3 uses
  %.01024.i.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %.thread17.i.i.i.i.i.i ] ; 3 uses
  %i.h = add i64 %.01024.i.i.i.i.i.i, %.025.i.i.i.i.i.i
  %i.i = lshr i64 %i.h, 1                         ; 5 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !685, !noalias !2360 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.a
  br i1 %i.l, label %.thread.i.i.i.i.i.i, label %bb.d

.thread.i.i.i.i.i.i:                              ; preds = %bb.c
  %i.m = add nuw i64 %i.i, 1
  br label %.thread17.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ult ptr %i.a, %i.k
  br i1 %i.n, label %.thread17.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i

_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !686, !noalias !2360
  %i.q = icmp slt i32 %i.p, %i.c
  %cond.fr.i.i.i.i.i.i = freeze i1 %i.q           ; 2 uses
  %i.r = add nuw i64 %i.i, 1
  %spec.select.i.i.i.i.i.i = select i1 %cond.fr.i.i.i.i.i.i, i64 %.01024.i.i.i.i.i.i, i64 %i.i
  %spec.select22.i.i.i.i.i.i = select i1 %cond.fr.i.i.i.i.i.i, i64 %i.r, i64 %.025.i.i.i.i.i.i
  br label %.thread17.i.i.i.i.i.i

.thread17.i.i.i.i.i.i:                            ; preds = %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i, %bb.d, %.thread.i.i.i.i.i.i
  %i.s = phi i64 [ %i.i, %bb.d ], [ %spec.select.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i ], [ %.01024.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ] ; 3 uses
  %i.t = phi i64 [ %.025.i.i.i.i.i.i, %bb.d ], [ %spec.select22.i.i.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal19key_compare_adapterISt4lessISt4pairIPKN6google8protobuf10DescriptorEiEESA_E15checked_compareclISA_SA_TnNSt9enable_ifIXsr3std7is_sameIbNS0_20type_traits_internal9result_ofIFKSB_RKT_RKT0_EE4typeEEE5valueEiE4typeELi0EEEbSL_SO_.exit.i.i.i.i.i.i ], [ %i.m, %.thread.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.t, %i.s
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i, label %bb.c, !llvm.loop !687

_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i: ; preds = %.thread17.i.i.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.s, %.thread17.i.i.i.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !22, !noalias !2360
  %.not.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i

bb.e:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.x = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.x
  br label %bb.b

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i: ; preds = %_ZNK4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE11lower_boundISA_EENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISF_SA_E15checked_compareE.exit.i.i.i
  %i.z = trunc i64 %.0.lcssa.i.i.i.i.i.i to i32   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !22, !noalias !2360
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = icmp eq i32 %i.z, %i.ac                 ; 2 uses
  br i1 %i.ad, label %.lr.ph, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i

bb.f:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i73, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !22, !noalias !2360 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aj, i64 10
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22, !noalias !2360 ; 2 uses
  %i.ai = icmp eq i8 %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge, !llvm.loop !688

.lr.ph:                                           ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i, %bb.f
  %.sroa.0.0.i8.i.i73 = phi ptr [ %i.aj, %bb.f ], [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i ] ; 2 uses
  %i.aj = load ptr, ptr %.sroa.0.0.i8.i.i73, align 8, !tbaa !684, !noalias !2360 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22, !noalias !2360
  %.not.i11.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i11.i.i, label %bb.f, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i, !llvm.loop !688

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i: ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !684, !noalias !2360 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 10
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !22, !noalias !2360
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  br label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread

._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge: ; preds = %bb.f
  %i.ar = zext i8 %i.ah to i32
  %i.as = zext i8 %i.af to i32
  br label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i: ; preds = %._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i
  %.sroa.7.0.i.i.i.lcssa = phi i32 [ %i.as, %._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge ], [ %i.z, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i ] ; 14 uses
  %.sroa.0.0.i8.i.i.lcssa = phi ptr [ %i.aj, %._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge ], [ %.sroa.0.0.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i ] ; 16 uses
  %.lcssa = phi i32 [ %i.ar, %._ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i_crit_edge ], [ %i.ac, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE15internal_locateISA_EENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EELb0EEERKT_.exit.i.i ] ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !684, !noalias !2360 ; 2 uses
  %.phi.trans.insert26.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 10
  %.pre27.i = load i8, ptr %.phi.trans.insert26.i, align 1, !tbaa !22, !noalias !2360
  %.pre28.i = zext i8 %.pre27.i to i32
  %i.at = icmp ne ptr %.sroa.0.0.i8.i.i.lcssa, %.pre.i
  %i.au = icmp ne i32 %.sroa.7.0.i.i.i.lcssa, %.pre28.i
  %i.av = select i1 %i.at, i1 true, i1 %i.au
  br i1 %i.av, label %bb.g, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i
  %i.aw = sext i32 %.sroa.7.0.i.i.i.lcssa to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.lcssa, i64 16
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.aw ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !685, !noalias !2360 ; 2 uses
  %i.ba = icmp ult ptr %i.a, %i.az
  br i1 %i.ba, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = icmp ult ptr %i.az, %i.a
  br i1 %i.bb, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread31, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit: ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !686, !noalias !2360
  %.not = icmp slt i32 %i.c, %i.bd
  br i1 %.not, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread31

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread31: ; preds = %bb.h, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit
  br i1 %i.ad, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread31
  %i.be = add nsw i32 %.sroa.7.0.i.i.i.lcssa, 1   ; 2 uses
  %i.bf = icmp eq i32 %i.be, %.lcssa
  br i1 %i.bf, label %.lr.ph.i.i.i.i, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %.01521.i.i.i.i = phi ptr [ %i.bg, %bb.j ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.i ] ; 2 uses
  %i.bg = load ptr, ptr %.01521.i.i.i.i, align 8, !tbaa !684 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 11
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !22
  %.not17.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not17.i.i.i.i, label %bb.j, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.01521.i.i.i.i, i64 8
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !22  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !22
  %i.bn = icmp eq i8 %i.bk, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i.i.i, label %.critedge.loopexit23.i.i.i.i, !llvm.loop !2363

.thread.i.i.i:                                    ; preds = %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread31
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.lcssa, i64 256
  %i.bp = add i32 %.sroa.7.0.i.i.i.lcssa, 1
  %i.bq = and i32 %i.bp, 255
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.br
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.thread.i.i.i
  %.116.in.i.i.i.i = phi ptr [ %i.bs, %.thread.i.i.i ], [ %i.bv, %bb.k ]
  %.116.i.i.i.i = load ptr, ptr %.116.in.i.i.i.i, align 8, !tbaa !684 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 11
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !22
  %.not.i.i.i.i.i = icmp eq i8 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %.116.i.i.i.i, i64 256
  br i1 %.not.i.i.i.i.i, label %bb.k, label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread, !llvm.loop !2364

.critedge.loopexit23.i.i.i.i:                     ; preds = %bb.j
  %i.bw = zext i8 %i.bk to i32
  br label %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread

_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %bb.k, %bb.i, %.critedge.loopexit23.i.i.i.i, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i, %bb.g, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i
  %.sroa.0.0.i8.i.i.lcssa.sink = phi ptr [ %.sroa.0.0.i8.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i ], [ %.sroa.0.0.i8.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit ], [ %i.an, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.g ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.k ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.i ], [ %.sroa.0.0.i8.i.i.lcssa, %.critedge.loopexit23.i.i.i.i ], [ %.sroa.0.0.i8.i.i.lcssa, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i.i.lcssa.sink = phi i32 [ %.sroa.7.0.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i ], [ %.sroa.7.0.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit ], [ %i.aq, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i ], [ %.sroa.7.0.i.i.i.lcssa, %bb.g ], [ %.sroa.7.0.i.i.i.lcssa, %bb.k ], [ %.sroa.7.0.i.i.i.lcssa, %bb.i ], [ %.sroa.7.0.i.i.i.lcssa, %.critedge.loopexit23.i.i.i.i ], [ %.sroa.7.0.i.i.i.lcssa, %.lr.ph.i.i.i.i ]
  %.sroa.024.1.sink = phi ptr [ %.sroa.0.0.i8.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i ], [ %.sroa.0.0.i8.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit ], [ %i.an, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.g ], [ %.116.i.i.i.i, %bb.k ], [ %.sroa.0.0.i8.i.i.lcssa, %bb.i ], [ %i.bg, %.critedge.loopexit23.i.i.i.i ], [ %.sroa.0.0.i8.i.i.lcssa, %.lr.ph.i.i.i.i ]
  %.sroa.625.0.sink = phi i32 [ %.sroa.7.0.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.i ], [ %.sroa.7.0.i.i.i.lcssa, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE17lower_bound_equalISA_EES4_INS1_14btree_iteratorINS1_10btree_nodeISJ_EERSH_PSH_EEbERKT_.exit ], [ %i.aq, %_ZNK4absl12lts_2025051218container_internal5btreeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS6_15FieldDescriptorESt4lessISA_ESaIS4_IKSA_SD_EELi256ELb0EEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeISJ_EERKSH_PSP_EE.exit.thread.i ], [ %.sroa.7.0.i.i.i.lcssa, %bb.g ], [ 0, %bb.k ], [ %i.be, %bb.i ], [ %i.bw, %.critedge.loopexit23.i.i.i.i ], [ %.lcssa, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.0.0.i8.i.i.lcssa.sink, ptr %0, align 8
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.0.i.i.i.lcssa.sink, ptr %.sroa.7.0..sroa_idx13, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.024.1.sink, ptr %i.bx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.625.0.sink, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERSI_PSI_EmiENS2_IKSL_RKSI_PSQ_EE(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !512    ; 5 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i.pre = load i32, ptr %.sroa.2.0..sroa_idx.i.phi.trans.insert, align 8
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.d = load i8, ptr %i.c, align 1, !tbaa !22
  %.not = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !513  ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub nsw i32 %i.f, %2
  %i.h = sext i32 %i.g to i64
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %i.f, %2
  br i1 %i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.2.0.copyload.i = phi i32 [ %.sroa.2.0.copyload.i.pre, %._crit_edge ], [ %i.f, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !22
  %.not68.i = icmp eq i8 %i.k, 0
  %i.l = sub nsw i32 0, %2
  %i.m = sext i32 %i.l to i64
  br i1 %.not68.i, label %bb.f, label %._crit_edge.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.o = add i32 %2, 1
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !684  ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.s, i64 11
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !22
  %i.t = icmp eq i8 %.pre.i, 0
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.14884.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.s, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %.14884.i, i64 256
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !684  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22
  %.not.i62.i = icmp eq i8 %i.x, 0
  br i1 %.not.i62.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2365

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f, %bb.e
  %.044108.i = phi i64 [ 1, %bb.f ], [ %i.m, %bb.e ], [ 1, %.lr.ph.i ]
  %.148.lcssa.i = phi ptr [ %i.s, %bb.f ], [ %1, %bb.e ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.148.lcssa.i, i64 8
  %i.z = load i8, ptr %i.y, align 1, !tbaa !22
  %i.aa = zext i8 %i.z to i64
  %i.ab = load ptr, ptr %.148.lcssa.i, align 8, !tbaa !684
  %i.ac = sext i32 %.sroa.2.0.copyload.i to i64   ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %._crit_edge.i
  %.246.i = phi i64 [ %.044108.i, %._crit_edge.i ], [ %i.ax, %.backedge ] ; 2 uses
  %.142.i = phi i64 [ %i.aa, %._crit_edge.i ], [ %.142.i.be, %.backedge ] ; 2 uses
  %.1.i = phi ptr [ %i.ab, %._crit_edge.i ], [ %.1.i.be, %.backedge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.1.i, i64 256
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.142.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !684 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  %.not.i63.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i63.i, label %.lr.ph87.i, label %bb.h

.lr.ph87.i:                                       ; preds = %bb.g, %.lr.ph87.i
  %.24986.i = phi ptr [ %i.aj, %.lr.ph87.i ], [ %i.af, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.24986.i, i64 256
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !684 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 11
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22
  %.not.i64.i = icmp eq i8 %i.al, 0
  br i1 %.not.i64.i, label %.lr.ph87.i, label %._crit_edge88.i, !llvm.loop !2366

._crit_edge88.i:                                  ; preds = %.lr.ph87.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22
  %i.ao = zext i8 %i.an to i64
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !684
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge88.i, %bb.g
  %.350.i = phi ptr [ %i.aj, %._crit_edge88.i ], [ %i.af, %bb.g ] ; 2 uses
  %.243.i = phi i64 [ %i.ao, %._crit_edge88.i ], [ %.142.i, %bb.g ] ; 3 uses
  %.2.i = phi ptr [ %i.ap, %._crit_edge88.i ], [ %.1.i, %bb.g ] ; 4 uses
  %i.aq = icmp eq ptr %.350.i, %i.a
  br i1 %i.aq, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERSI_PSI_E13distance_slowENS2_IKSL_RKSI_PSQ_EE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp eq ptr %.2.i, %i.a
  %i.as = icmp eq i64 %.243.i, %i.ac
  %or.cond.i = select i1 %i.ar, i1 %i.as, i1 false
  %i.at = getelementptr inbounds nuw i8, ptr %.350.i, i64 10
  %i.au = load i8, ptr %i.at, align 1, !tbaa !22
  %i.av = zext i8 %i.au to i64                    ; 3 uses
  br i1 %or.cond.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERSI_PSI_E13distance_slowENS2_IKSL_RKSI_PSQ_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = add i64 %.246.i, 1
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %.2.i, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !22
  %i.ba = zext i8 %i.az to i64
  %.not.not.i = icmp samesign ult i64 %.243.i, %i.ba
  br i1 %.not.not.i, label %.backedge, label %.preheader69.i

.backedge:                                        ; preds = %bb.k, %bb.j
  %.142.i.be.in = phi i64 [ %.243.i, %bb.j ], [ %i.bd, %bb.k ]
  %.1.i.be = phi ptr [ %.2.i, %bb.j ], [ %i.be, %bb.k ]
  %.142.i.be = add nuw nsw i64 %.142.i.be.in, 1
  br label %bb.g, !llvm.loop !2367

.preheader69.i:                                   ; preds = %bb.j, %bb.k
  %.3.i = phi ptr [ %i.be, %bb.k ], [ %.2.i, %bb.j ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !22  ; 2 uses
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %i.be = load ptr, ptr %.3.i, align 8, !tbaa !684 ; 4 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  %i.bg = icmp eq i64 %i.bd, %i.ac
  %or.cond61.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond61.i, label %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsISt4pairIPKN6google8protobuf10DescriptorEiEPKNS7_15FieldDescriptorESt4lessISB_ESaIS5_IKSB_SE_EELi256ELb0EEEEERSI_PSI_E13distance_slowENS2_IKSL_RKSI_PSQ_EE.exit, label %bb.k

bb.k:                                             ; preds = %.preheader69.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 10
end_hunk_0
