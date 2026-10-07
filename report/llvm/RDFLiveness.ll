Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RDFLiveness?download=true
inline.NumInlined: 5812
inline.NumDeleted: 2664
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_T0_T1_":bb.a
bb.j:                                             ; preds = %.lr.ph40
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !241
  %i.cq = tail call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE17properlyDominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %.val28.val.i.i, ptr noundef %i.cp, ptr noundef %i.co) #20
  br i1 %i.cq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = load ptr, ptr %.fr24, align 8, !tbaa !241
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !241
  store ptr %i.cs, ptr %.fr24, align 8, !tbaa !241
  store ptr %i.cr, ptr %i.cj, align 8, !tbaa !241
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %.val27.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !252
  %i.ct = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.cu = load ptr, ptr %i.ck, align 8, !tbaa !241
  %i.cv = tail call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE17properlyDominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %.val27.val.i.i, ptr noundef %i.ct, ptr noundef %i.cu) #20
  %i.cw = load ptr, ptr %.fr24, align 8, !tbaa !241 ; 2 uses
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = load ptr, ptr %i.ck, align 8, !tbaa !241
  store ptr %i.cx, ptr %.fr24, align 8, !tbaa !241
  store ptr %i.cw, ptr %i.ck, align 8, !tbaa !241
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.cy = load ptr, ptr %i.f, align 8, !tbaa !241
  store ptr %i.cy, ptr %.fr24, align 8, !tbaa !241
  store ptr %i.cw, ptr %i.f, align 8, !tbaa !241
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph40
  %i.cz = load ptr, ptr %i.f, align 8, !tbaa !241
  %i.da = tail call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE17properlyDominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %.val28.val.i.i, ptr noundef %i.cz, ptr noundef %i.co) #20
  br i1 %i.da, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.db = load <2 x ptr>, ptr %.fr24, align 8, !tbaa !241
  %i.dc = shufflevector <2 x ptr> %i.db, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.dc, ptr %.fr24, align 8, !tbaa !241
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %.val.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !252
  %i.dd = load ptr, ptr %i.cj, align 8, !tbaa !241
  %i.de = load ptr, ptr %i.ck, align 8, !tbaa !241
  %i.df = tail call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE17properlyDominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %.val.val.i.i, ptr noundef %i.dd, ptr noundef %i.de) #20
  %i.dg = load ptr, ptr %.fr24, align 8, !tbaa !241 ; 2 uses
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.ck, align 8, !tbaa !241
  store ptr %i.dh, ptr %.fr24, align 8, !tbaa !241
  store ptr %i.dg, ptr %i.ck, align 8, !tbaa !241
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.di = load ptr, ptr %i.cj, align 8, !tbaa !241
  store ptr %i.di, ptr %.fr24, align 8, !tbaa !241
  store ptr %i.dg, ptr %i.cj, align 8, !tbaa !241
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i.preheader", %bb.v
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.v ], [ %storemerge2139, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i.preheader" ]
  %.sroa.012.0.i.i = phi ptr [ %i.dm, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i.preheader" ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i" ], [ %i.dm, %bb.t ] ; 9 uses
  %.val8.val.i.i = load ptr, ptr %i.g, align 8, !tbaa !252
  %i.dj = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !241
  %i.dk = load ptr, ptr %.fr24, align 8, !tbaa !241
  %i.dl = tail call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE17properlyDominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %.val8.val.i.i, ptr noundef %i.dj, ptr noundef %i.dk) #20
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.dl, label %bb.t, label %.preheader.i.i, !llvm.loop !1273

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.t ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 6 uses
  %.val.val.i12.i = load ptr, ptr %i.g, align 8, !tbaa !252
  %i.dn = load ptr, ptr %.fr24, align 8, !tbaa !241
  %i.do = load ptr, ptr %.sroa.09.1.i.i, align 8, !tbaa !241
  %i.dp = tail call noundef zeroext i1 @_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb0EE17properlyDominatesEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable(204) %.val.val.i12.i, ptr noundef %i.dn, ptr noundef %i.do) #20
  br i1 %i.dp, label %.preheader.i.i, label %bb.u, !llvm.loop !1274

bb.u:                                             ; preds = %.preheader.i.i
  %i.dq = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.dq, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEET_SO_SO_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.dr = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !241
  %i.ds = load ptr, ptr %.sroa.09.1.i.i, align 8, !tbaa !241
  store ptr %i.ds, ptr %.sroa.012.1.i.i, align 8, !tbaa !241
  store ptr %i.dr, ptr %.sroa.09.1.i.i, align 8, !tbaa !241
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_SO_T0_.exit.i", !llvm.loop !1275

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEET_SO_SO_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2139, i64 noundef %i.ch, ptr nonnull %3)
  %i.dt = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.du = sub i64 %i.dt, %i.a                     ; 2 uses
  %i.dv = ashr exact i64 %i.du, 3                 ; 2 uses
  %i.dw = icmp sgt i64 %i.dv, 16
  br i1 %i.dw, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_T0_.exit", !llvm.loop !1268

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEET_SO_SO_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_SO_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPN4llvm17MachineBasicBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_3rdf8Liveness18getAllReachingDefsENSC_11RegisterRefENSC_8NodeAddrIPNSC_7RefNodeEEEbbRKNSC_12RegisterAggrEE3$_3EEEvT_SO_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #22 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !251
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !241
  store ptr %i.e, ptr %i.b, align 8, !tbaa !249
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %i.h, align 8, !tbaa !184
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 32, ptr %i.i, align 4, !tbaa !185
  %i.j = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 4 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.n
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !241
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !241
  %i.r = icmp ult ptr %i.o, %i.q
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %i.s = phi i1 [ %i.r, %bb.c ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !212
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !212
  br label %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !50   ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.g
  br i1 %i.x, label %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.w) #20
  br label %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i

_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i: ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 184) #23
  br label %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.k, %_ZNSt8_Rb_treeIPN4llvm17MachineBasicBlockESt4pairIKS2_NS0_11SmallVectorIjLj32EEEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE15_M_range_insertISt16reverse_iteratorIPjEEEvN9__gnu_cxx17__normal_iteratorIS4_S1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !283    ; 6 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !283    ; 2 uses
  %.not67 = icmp eq ptr %i.a, %i.b
  br i1 %.not67, label %_ZSt4copyISt16reverse_iteratorIPjEN9__gnu_cxx17__normal_iteratorIS1_St6vectorIjSaIjEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 6 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !291
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1296 ; 15 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %.not = icmp ult i64 %i.m, %i.e
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = sub i64 %i.l, %i.n                       ; 6 uses
  %i.p = ashr exact i64 %i.o, 2                   ; 3 uses
  %i.q = icmp ugt i64 %i.p, %i.f
  br i1 %i.q, label %bb.d, label %_ZSt9__advanceISt16reverse_iteratorIPjElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.r = sub nsw i64 0, %i.f
  %i.s = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.r ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = icmp sgt i64 %i.e, 4
  br i1 %i.u, label %bb.e, label %bb.f, !prof !205

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.j, ptr nonnull align 4 %i.s, i64 %i.e, i1 false)
  %.pre71 = load ptr, ptr %i.i, align 8, !tbaa !1296
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %i.e, 4
  br i1 %i.v, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.s, align 4, !tbaa !68
  store i32 %i.w, ptr %i.j, align 4, !tbaa !68
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.x = phi ptr [ %.pre71, %bb.e ], [ %i.j, %bb.f ], [ %i.j, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.e
  store ptr %i.y, ptr %i.i, align 8, !tbaa !1296
  %i.z = sub i64 %i.t, %i.n                       ; 3 uses
  %i.aa = ashr exact i64 %i.z, 2                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !205

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.ac = sub nsw i64 0, %i.aa
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ac
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr align 4 %1, i64 %i.z, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.ae = icmp eq i64 %i.z, 4
  br i1 %i.ae, label %bb.j, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.ag = load i32, ptr %1, align 4, !tbaa !68
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !68
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ah = load ptr, ptr %2, align 8, !tbaa !283   ; 7 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !283
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = ashr exact i64 %i.al, 2                 ; 8 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyISt16reverse_iteratorIPjEN9__gnu_cxx17__normal_iteratorIS1_St6vectorIjSaIjEEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit
  %min.iters.check130 = icmp ult i64 %i.am, 16
  br i1 %min.iters.check130, label %.lr.ph.i.i.i.i.i.preheader179, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = mul nsw i64 %i.am, -4
  %i.aq = getelementptr i8, ptr %i.ah, i64 %i.ap
  %bound0132 = icmp ult ptr %1, %i.ah
  %bound1133 = icmp ult ptr %i.aq, %i.ao
  %found.conflict134 = and i1 %bound0132, %bound1133
  br i1 %found.conflict134, label %.lr.ph.i.i.i.i.i.preheader179, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck131
  %n.vec136 = and i64 %i.am, 9223372036854775800  ; 4 uses
  %i.ar = mul i64 %n.vec136, -4
  %i.as = getelementptr i8, ptr %i.ah, i64 %i.ar
  %i.at = and i64 %i.am, 7
  %i.au = shl i64 %n.vec136, 2
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next145, %vector.body137 ] ; 3 uses
  %i.aw = mul i64 %index138, -4
  %next.gep139 = getelementptr i8, ptr %i.ah, i64 %i.aw ; 2 uses
  %i.ax = shl i64 %index138, 2
  %next.gep140 = getelementptr i8, ptr %1, i64 %i.ax ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %next.gep139, i64 -16
  %i.az = getelementptr inbounds i8, ptr %next.gep139, i64 -32
  %wide.load141 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !68, !alias.scope !1297
  %wide.load142 = load <4 x i32>, ptr %i.az, align 4, !tbaa !68, !alias.scope !1297
  %reverse143 = shufflevector <4 x i32> %wide.load141, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse144 = shufflevector <4 x i32> %wide.load142, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ba = getelementptr i8, ptr %next.gep140, i64 16
  store <4 x i32> %reverse143, ptr %next.gep140, align 4, !tbaa !68, !alias.scope !1298, !noalias !1297
  store <4 x i32> %reverse144, ptr %i.ba, align 4, !tbaa !68, !alias.scope !1298, !noalias !1297
  %index.next145 = add nuw i64 %index138, 8       ; 2 uses
  %i.bb = icmp eq i64 %index.next145, %n.vec136
  br i1 %i.bb, label %middle.block146, label %vector.body137, !llvm.loop !1279

middle.block146:                                  ; preds = %vector.body137
  %cmp.n147 = icmp eq i64 %i.am, %n.vec136
  br i1 %cmp.n147, label %_ZSt4copyISt16reverse_iteratorIPjEN9__gnu_cxx17__normal_iteratorIS1_St6vectorIjSaIjEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i.preheader179

.lr.ph.i.i.i.i.i.preheader179:                    ; preds = %vector.memcheck131, %.lr.ph.i.i.i.i.i.preheader, %middle.block146
  %.ph180 = phi ptr [ %i.ah, %vector.memcheck131 ], [ %i.ah, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block146 ]
  %.06.i.i.i.i.i.ph = phi i64 [ %i.am, %vector.memcheck131 ], [ %i.am, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %middle.block146 ]
  %.045.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck131 ], [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.av, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader179, %.lr.ph.i.i.i.i.i
  %i.bc = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.ph180, %.lr.ph.i.i.i.i.i.preheader179 ]
  %.06.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader179 ] ; 2 uses
  %.045.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.045.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader179 ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !68
  store i32 %i.be, ptr %.045.i.i.i.i.i, align 4, !tbaa !68
  %i.bf = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i, i64 4
  %i.bg = add nsw i64 %.06.i.i.i.i.i, -1
  %i.bh = icmp samesign ugt i64 %.06.i.i.i.i.i, 1
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt16reverse_iteratorIPjEN9__gnu_cxx17__normal_iteratorIS1_St6vectorIjSaIjEEEEET0_T_SA_S9_.exit, !llvm.loop !1280

_ZSt9__advanceISt16reverse_iteratorIPjElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bi = icmp eq i64 %i.o, 4
  %i.bj = sub nsw i64 0, %i.p
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bj ; 6 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = sub i64 %i.bl, %i.d                     ; 2 uses
  %i.bn = ashr exact i64 %i.bm, 2                 ; 8 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPjES1_jET0_T_S4_S3_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceISt16reverse_iteratorIPjElEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.bn, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader184, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.bp = getelementptr i8, ptr %i.j, i64 %i.bm
  %i.bq = mul nsw i64 %i.bn, -4
  %i.br = sub i64 %i.bq, %i.o
  %i.bs = getelementptr i8, ptr %i.a, i64 %i.br
  %bound0 = icmp ult ptr %i.j, %i.bk
  %bound1 = icmp ult ptr %i.bs, %i.bp
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.i.preheader184, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 9223372036854775800     ; 4 uses
  %i.bt = mul i64 %n.vec, -4
  %i.bu = getelementptr i8, ptr %i.bk, i64 %i.bt
  %i.bv = and i64 %i.bn, 7
  %i.bw = shl i64 %n.vec, 2
  %i.bx = getelementptr i8, ptr %i.j, i64 %i.bw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.by = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %i.bk, i64 %i.by ; 2 uses
  %i.bz = shl i64 %index, 2
  %next.gep92 = getelementptr i8, ptr %i.j, i64 %i.bz ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cb = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %wide.load = load <4 x i32>, ptr %i.ca, align 4, !tbaa !68, !alias.scope !1299
  %wide.load93 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !68, !alias.scope !1299
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse94 = shufflevector <4 x i32> %wide.load93, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cc = getelementptr i8, ptr %next.gep92, i64 16
  store <4 x i32> %reverse, ptr %next.gep92, align 4, !tbaa !68, !alias.scope !1300, !noalias !1299
  store <4 x i32> %reverse94, ptr %i.cc, align 4, !tbaa !68, !alias.scope !1300, !noalias !1299
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !1284

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPjES1_jET0_T_S4_S3_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader184

.lr.ph.i.i.i.i.i.i.i.i.preheader184:              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph185 = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.06.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bv, %middle.block ]
  %.045.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader184, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ce = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.ph185, %.lr.ph.i.i.i.i.i.i.i.i.preheader184 ]
  %.06.i.i.i.i.i.i.i.i = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader184 ] ; 2 uses
  %.045.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.045.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader184 ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !68
  store i32 %i.cg, ptr %.045.i.i.i.i.i.i.i.i, align 4, !tbaa !68
  %i.ch = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i.i.i.i, i64 4
  %i.ci = add nsw i64 %.06.i.i.i.i.i.i.i.i, -1
  %i.cj = icmp samesign ugt i64 %.06.i.i.i.i.i.i.i.i, 1
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPjES1_jET0_T_S4_S3_RSaIT1_E.exit, !llvm.loop !1285

_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPjES1_jET0_T_S4_S3_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZSt9__advanceISt16reverse_iteratorIPjElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ck = sub nuw nsw i64 %i.f, %i.p
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ck ; 5 uses
  store ptr %i.cl, ptr %i.i, align 8, !tbaa !1296
  %i.cm = icmp sgt i64 %i.o, 4
  br i1 %i.cm, label %bb.k, label %bb.l, !prof !205

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPjES1_jET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cl, ptr align 4 %1, i64 %i.o, i1 false)
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !1296
  %.pre70 = load ptr, ptr %2, align 8, !tbaa !283 ; 2 uses
  %.pre72 = ptrtoint ptr %.pre70 to i64
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit33

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aISt16reverse_iteratorIPjES1_jET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.bi, label %bb.m, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit33

bb.m:                                             ; preds = %bb.l
  %i.cn = load i32, ptr %1, align 4, !tbaa !68
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !68
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit33

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit33: ; preds = %bb.k, %bb.l, %bb.m
  %.pre-phi = phi i64 [ %.pre72, %bb.k ], [ %i.c, %bb.l ], [ %i.c, %bb.m ]
  %i.co = phi ptr [ %.pre70, %bb.k ], [ %i.a, %bb.l ], [ %i.a, %bb.m ] ; 6 uses
  %i.cp = phi ptr [ %.pre, %bb.k ], [ %i.cl, %bb.l ], [ %i.cl, %bb.m ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.o
  store ptr %i.cq, ptr %i.i, align 8, !tbaa !1296
  %i.cr = sub i64 %.pre-phi, %i.bl                ; 2 uses
  %i.cs = ashr exact i64 %i.cr, 2                 ; 8 uses
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i35.preheader, label %_ZSt4copyISt16reverse_iteratorIPjEN9__gnu_cxx17__normal_iteratorIS1_St6vectorIjSaIjEEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i35.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit33
  %min.iters.check103 = icmp ult i64 %i.cs, 16
  br i1 %min.iters.check103, label %.lr.ph.i.i.i.i.i35.preheader181, label %vector.memcheck104

vector.memcheck104:                               ; preds = %.lr.ph.i.i.i.i.i35.preheader
  %i.cu = getelementptr i8, ptr %1, i64 %i.cr
  %i.cv = mul nsw i64 %i.cs, -4
  %i.cw = getelementptr i8, ptr %i.co, i64 %i.cv
  %bound0105 = icmp ult ptr %1, %i.co
  %bound1106 = icmp ult ptr %i.cw, %i.cu
  %found.conflict107 = and i1 %bound0105, %bound1106
  br i1 %found.conflict107, label %.lr.ph.i.i.i.i.i35.preheader181, label %vector.ph108

vector.ph108:                                     ; preds = %vector.memcheck104
  %n.vec109 = and i64 %i.cs, 9223372036854775800  ; 4 uses
  %i.cx = mul i64 %n.vec109, -4
  %i.cy = getelementptr i8, ptr %i.co, i64 %i.cx
  %i.cz = and i64 %i.cs, 7
  %i.da = shl i64 %n.vec109, 2
  %i.db = getelementptr i8, ptr %1, i64 %i.da
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph108
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next118, %vector.body110 ] ; 3 uses
  %i.dc = mul i64 %index111, -4
  %next.gep112 = getelementptr i8, ptr %i.co, i64 %i.dc ; 2 uses
  %i.dd = shl i64 %index111, 2
  %next.gep113 = getelementptr i8, ptr %1, i64 %i.dd ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %next.gep112, i64 -16
  %i.df = getelementptr inbounds i8, ptr %next.gep112, i64 -32
  %wide.load114 = load <4 x i32>, ptr %i.de, align 4, !tbaa !68, !alias.scope !1301
  %wide.load115 = load <4 x i32>, ptr %i.df, align 4, !tbaa !68, !alias.scope !1301
  %reverse116 = shufflevector <4 x i32> %wide.load114, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse117 = shufflevector <4 x i32> %wide.load115, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dg = getelementptr i8, ptr %next.gep113, i64 16
  store <4 x i32> %reverse116, ptr %next.gep113, align 4, !tbaa !68, !alias.scope !1302, !noalias !1301
  store <4 x i32> %reverse117, ptr %i.dg, align 4, !tbaa !68, !alias.scope !1302, !noalias !1301
  %index.next118 = add nuw i64 %index111, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next118, %n.vec109
  br i1 %i.dh, label %middle.block119, label %vector.body110, !llvm.loop !1289

middle.block119:                                  ; preds = %vector.body110
  %cmp.n120 = icmp eq i64 %i.cs, %n.vec109
  br i1 %cmp.n120, label %_ZSt4copyISt16reverse_iteratorIPjEN9__gnu_cxx17__normal_iteratorIS1_St6vectorIjSaIjEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i35.preheader181

.lr.ph.i.i.i.i.i35.preheader181:                  ; preds = %vector.memcheck104, %.lr.ph.i.i.i.i.i35.preheader, %middle.block119
  %.ph182 = phi ptr [ %i.co, %vector.memcheck104 ], [ %i.co, %.lr.ph.i.i.i.i.i35.preheader ], [ %i.cy, %middle.block119 ]
  %.06.i.i.i.i.i36.ph = phi i64 [ %i.cs, %vector.memcheck104 ], [ %i.cs, %.lr.ph.i.i.i.i.i35.preheader ], [ %i.cz, %middle.block119 ]
  %.045.i.i.i.i.i37.ph = phi ptr [ %1, %vector.memcheck104 ], [ %1, %.lr.ph.i.i.i.i.i35.preheader ], [ %i.db, %middle.block119 ]
  br label %.lr.ph.i.i.i.i.i35

.lr.ph.i.i.i.i.i35:                               ; preds = %.lr.ph.i.i.i.i.i35.preheader181, %.lr.ph.i.i.i.i.i35
  %i.di = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i35 ], [ %.ph182, %.lr.ph.i.i.i.i.i35.preheader181 ]
  %.06.i.i.i.i.i36 = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i35 ], [ %.06.i.i.i.i.i36.ph, %.lr.ph.i.i.i.i.i35.preheader181 ] ; 2 uses
  %.045.i.i.i.i.i37 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i35 ], [ %.045.i.i.i.i.i37.ph, %.lr.ph.i.i.i.i.i35.preheader181 ] ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -4 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !68
  store i32 %i.dk, ptr %.045.i.i.i.i.i37, align 4, !tbaa !68
  %i.dl = getelementptr inbounds nuw i8, ptr %.045.i.i.i.i.i37, i64 4
  %i.dm = add nsw i64 %.06.i.i.i.i.i36, -1
  %i.dn = icmp samesign ugt i64 %.06.i.i.i.i.i36, 1
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i35, label %_ZSt4copyISt16reverse_iteratorIPjEN9__gnu_cxx17__normal_iteratorIS1_St6vectorIjSaIjEEEEET0_T_SA_S9_.exit, !llvm.loop !1290

bb.n:                                             ; preds = %bb.b
  %i.do = load ptr, ptr %0, align 8, !tbaa !290   ; 5 uses
  %i.dp = ptrtoint ptr %i.do to i64               ; 4 uses
  %i.dq = sub i64 %i.l, %i.dp
  %i.dr = ashr exact i64 %i.dq, 2                 ; 4 uses
  %i.ds = sub nsw i64 2305843009213693951, %i.dr
  %i.dt = icmp ult i64 %i.ds, %i.f
  br i1 %i.dt, label %bb.o, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #21
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dr, i64 %i.f)
  %i.du = add nsw i64 %.sroa.speculated.i, %i.dr  ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.dr
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.du, i64 2305843009213693951)
  %i.dx = select i1 %i.dv, i64 2305843009213693951, i64 %i.dw ; 3 uses
  %.not.i = icmp eq i64 %i.dx, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.dy = shl nuw nsw i64 %i.dx, 2
  %i.dz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dy) #22
  br label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit, %bb.p
  %i.ea = phi ptr [ %i.dz, %bb.p ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.eb = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.ec = sub i64 %i.eb, %i.dp                    ; 4 uses
  %i.ed = icmp sgt i64 %i.ec, 4
  br i1 %i.ed, label %bb.q, label %bb.r, !prof !205

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ea, ptr align 4 %i.do, i64 %i.ec, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit
  %i.ee = icmp eq i64 %i.ec, 4
  br i1 %i.ee, label %bb.s, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %bb.r
  %i.ef = load i32, ptr %i.do, align 4, !tbaa !68
  store i32 %i.ef, ptr %i.ea, align 4, !tbaa !68
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.q, %bb.r, %bb.s
end_hunk_0
