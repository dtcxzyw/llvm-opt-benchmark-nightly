inline.NumInlined: 6437
inline.NumDeleted: 2988
begin_hunk_0_@_ZNSt3mapIN6duckdb13LogicalTypeIdEbSt4lessIS1_ESaISt4pairIKS1_bEEEC2ESt16initializer_listIS6_ERKS3_RKS7_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i8, ptr %i.h, align 1, !tbaa !1017
  %i.j = load i8, ptr %.08.i, align 1, !tbaa !1017
  %i.k = icmp ult i8 %i.i, %i.j
  br i1 %i.k, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !297 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.l = load i8, ptr %.08.i, align 1, !tbaa !1017 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.n = load i8, ptr %i.m, align 1, !tbaa !1017  ; 2 uses
  %i.o = icmp ult i8 %i.l, %i.n                   ; 2 uses
  %.in.v.i.i = select i1 %i.o, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !297 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %bb.d, !llvm.loop !1020

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.o, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !283
  %i.q = icmp eq ptr %.019.lcssa29.i.i, %i.p
  br i1 %i.q, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.r = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #34
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.pre81.i = load i8, ptr %.phi.trans.insert80.i, align 1, !tbaa !1017
  %.pre82.i = load i8, ptr %.08.i, align 1, !tbaa !1017
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.s = phi i8 [ %.pre82.i, %bb.e ], [ %i.l, %._crit_edge.i.i ]
  %i.t = phi i8 [ %.pre81.i, %bb.e ], [ %i.n, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.u = icmp ult i8 %i.t, %i.s
  br i1 %i.u, label %select.unfold, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.g, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ] ; 3 uses
  %i.v = icmp eq ptr %.sroa.12.2.i.ph, %i.a
  br i1 %i.v, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i.ph, i64 32
  %i.x = load i8, ptr %.08.i, align 1, !tbaa !1017
  %i.y = load i8, ptr %i.w, align 1, !tbaa !1017
  %i.z = icmp ult i8 %i.x, %i.y
  br label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i: ; preds = %bb.g, %select.unfold
  %i.aa = phi i1 [ %i.z, %bb.g ], [ true, %select.unfold ]
  %i.ab = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31
          to label %.noexc6 unwind label %bb.h    ; 2 uses

.noexc6:                                          ; preds = %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i16, ptr %.08.i, align 1
  store i16 %i.ad, ptr %i.ac, align 1
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #29
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !285
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.af, ptr %i.e, align 8, !tbaa !285
  br label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EOT_RT0_.exit.i

_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EOT_RT0_.exit.i: ; preds = %bb.f, %.noexc6
  %.pr = phi i64 [ %.pr20, %bb.f ], [ %i.af, %.noexc6 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i, i64 2 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.f
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_insert_range_uniqueIPKS4_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESF_SF_.exit, label %.lr.ph.i, !llvm.loop !1021

_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_insert_range_uniqueIPKS4_EENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESF_SF_.exit: ; preds = %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE17_M_insert_unique_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EOT_RT0_.exit.i, %bb.a
  ret void

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE10_M_insert_IRKS4_NSA_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS4_EPSt18_Rb_tree_node_baseSI_OT_RT0_.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_bESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #29
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_9CSVOptionINS0_14StrpTimeFormatEEESt4lessIS1_ESaISt4pairIKS1_S4_EEEC2ESt16initializer_listIS9_ERKS6_RKSA_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<duckdb::LogicalTypeId, std::pair<const duckdb::LogicalTypeId, duckdb::CSVOption<duckdb::StrpTimeFormat>>, std::_Select1st<std::pair<const duckdb::LogicalTypeId, duckdb::CSVOption<duckdb::StrpTimeFormat>>>, std::less<duckdb::LogicalTypeId>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.a, align 8, !tbaa !282
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !260
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !283
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !284
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !285
  %.idx = mul nuw nsw i64 %2, 136
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %0, ptr %5, align 8, !tbaa !815
  %.not6.i = icmp eq i64 %2, 0
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i
  %.07.i = phi ptr [ %i.x, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 5 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !285
  %.not.i7 = icmp eq i64 %i.g, 0
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !297  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1017
  %i.k = load i8, ptr %.07.i, align 1, !tbaa !1017
  %i.l = icmp ult i8 %i.j, %i.k
  br i1 %i.l, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !297 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = load i8, ptr %.07.i, align 1, !tbaa !1017 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.d ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.o = load i8, ptr %i.n, align 1, !tbaa !1017  ; 2 uses
  %i.p = icmp ult i8 %i.m, %i.o                   ; 2 uses
  %.in.v.i.i = select i1 %i.p, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !297 ; 2 uses
  %.not.i.i8 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i8, label %._crit_edge.i.i, label %bb.d, !llvm.loop !1022

._crit_edge.i.i:                                  ; preds = %bb.d
  br i1 %i.p, label %._crit_edge.thread.i.i, label %bb.f

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %.019.lcssa29.i.i = phi ptr [ %.02024.i.i, %._crit_edge.i.i ], [ %i.a, %bb.c ] ; 4 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !283
  %i.r = icmp eq ptr %.019.lcssa29.i.i, %i.q
  br i1 %i.r, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %._crit_edge.thread.i.i
  %i.s = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i) #34
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81.i = load i8, ptr %.phi.trans.insert80.i, align 1, !tbaa !1017
  %.pre82.i = load i8, ptr %.07.i, align 1, !tbaa !1017
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.t = phi i8 [ %.pre82.i, %bb.e ], [ %i.m, %._crit_edge.i.i ]
  %i.u = phi i8 [ %.pre81.i, %bb.e ], [ %i.o, %._crit_edge.i.i ]
  %.019.lcssa28.i.i = phi ptr [ %.019.lcssa29.i.i, %bb.e ], [ %.02024.i.i, %._crit_edge.i.i ]
  %i.v = icmp ult i8 %i.u, %i.t
  br i1 %i.v, label %select.unfold, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i

select.unfold:                                    ; preds = %bb.f, %._crit_edge.thread.i.i, %bb.b
  %.sroa.12.2.i.ph = phi ptr [ %.019.lcssa29.i.i, %._crit_edge.thread.i.i ], [ %i.h, %bb.b ], [ %.019.lcssa28.i.i, %bb.f ]
  %i.w = invoke ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef null, ptr noundef nonnull %.sroa.12.2.i.ph, ptr noundef nonnull align 8 dereferenceable(136) %.07.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i unwind label %bb.g ; 0 uses

_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i: ; preds = %bb.f, %select.unfold
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 136 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !1023

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE17_M_insert_unique_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EOT_RT0_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret void

bb.g:                                             ; preds = %select.unfold
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #29
  resume { ptr, i32 } %i.y
}

declare void @_ZN6duckdb14StrpTimeFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE10_M_insert_IRKS7_NSD_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS7_EPSt18_Rb_tree_node_baseSL_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq ptr %2, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %i.b
  br i1 %or.cond, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i8, ptr %3, align 8, !tbaa !823
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i8, ptr %3, align 8, !tbaa !1017    ; 2 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !1017
  %i.f = icmp ult i8 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %5 = phi i8 [ %i.d, %bb.b ], [ %.pre, %._crit_edge ]
  %i.g = phi i1 [ %i.f, %bb.b ], [ true, %._crit_edge ]
  %i.h = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #31 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i8 %5, ptr %i.i, align 8, !tbaa !823
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !836, !range !46, !noundef !47
  store i8 %i.l, ptr %i.j, align 8, !tbaa !836
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_ZN6duckdb13StrTimeFormatC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull align 8 dereferenceable(120) %i.n)
          to label %_ZNKSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE11_Alloc_nodeclIRKS7_EEPSt13_Rb_tree_nodeIS7_EOT_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #29 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #32
  invoke void @__cxa_rethrow() #30
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.r

bb.g:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #33
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNKSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_9CSVOptionINS0_14StrpTimeFormatEEEESt10_Select1stIS7_ESt4lessIS1_ESaIS7_EE11_Alloc_nodeclIRKS7_EEPSt13_Rb_tree_nodeIS7_EOT_.exit: ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14StrpTimeFormatE, i64 16), ptr %i.m, align 8, !tbaa !53
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.g, ptr noundef nonnull %i.h, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #29
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !285
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !285
  ret ptr %i.h
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #25

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_5ValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_M_insert_IRKS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSJ_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp ne ptr %1, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq ptr %2, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %i.b
  br i1 %or.cond, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i8, ptr %3, align 8, !tbaa !887
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i8, ptr %3, align 8, !tbaa !1017    ; 2 uses
  %i.e = load i8, ptr %i.c, align 1, !tbaa !1017
  %i.f = icmp ult i8 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %5 = phi i8 [ %i.d, %bb.b ], [ %.pre, %._crit_edge ]
  %i.g = phi i1 [ %i.f, %bb.b ], [ true, %._crit_edge ]
  %i.h = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #31 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i8 %5, ptr %i.i, align 8, !tbaa !887
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %_ZNKSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_5ValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE11_Alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #29 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #32
  invoke void @__cxa_rethrow() #30
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #33
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNKSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_5ValueEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE11_Alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_.exit: ; preds = %bb.c
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.g, ptr noundef nonnull %i.h, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !285
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !285
  ret ptr %i.h
}

declare void @_ZN6duckdb16CSVWriterOptionsC1ERNS_16CSVReaderOptionsE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(1033)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<duckdb::LoggingTargetTable, std::pair<const duckdb::LoggingTargetTable, duckdb::unique_ptr<duckdb::DataChunk>>, std::_Select1st<std::pair<const duckdb::LoggingTargetTable, duckdb::unique_ptr<duckdb::DataChunk>>>, std::less<duckdb::LoggingTargetTable>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  store ptr %0, ptr %5, align 8, !tbaa !1024
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !83
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i8, ptr %i.e, align 1, !tbaa !295
  store i8 %i.f, ptr %i.c, align 8, !tbaa !1026
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !1035
  store ptr %i.b, ptr %i.a, align 8, !tbaa !1036
  %i.h = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %i.j = extractvalue { ptr, ptr } %i.h, 1        ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.l
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = load i8, ptr %i.c, align 8, !tbaa !295
  %i.o = load i8, ptr %i.m, align 1, !tbaa !295
  %i.p = icmp ult i8 %i.n, %i.o
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %i.q = phi i1 [ %i.p, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.q, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #29
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !285
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !285
  br label %_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !316  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i, label %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  tail call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.v) #29
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #32
  br label %_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i

_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb9DataChunkEEclEPS1_.exit.i.i.i.i.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #32
  br label %_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.i, %_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !285
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !297  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 1, !tbaa !295
  %i.i = load i8, ptr %2, align 1, !tbaa !295
  %i.j = icmp ult i8 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE24_M_get_insert_unique_posERS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !297 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i8, ptr %2, align 1, !tbaa !295     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i8, ptr %i.m, align 1, !tbaa !295   ; 2 uses
  %i.o = icmp ult i8 %i.l, %i.n                   ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !297 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !1039

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !283
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE24_M_get_insert_unique_posERS3_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #34 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i8, ptr %.phi.trans.insert80, align 1, !tbaa !295
  %.pre82 = load i8, ptr %2, align 1, !tbaa !295
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i8 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i8 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i8 %i.u, %i.t                   ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIN6duckdb18LoggingTargetTableESt4pairIKS1_NS0_10unique_ptrINS0_9DataChunkESt14default_deleteIS5_ELb1EEEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE24_M_get_insert_unique_posERS3_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i8, ptr %2, align 1, !tbaa !295     ; 8 uses
  %i.y = load i8, ptr %i.w, align 1, !tbaa !295   ; 2 uses
  %i.z = icmp ult i8 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !297 ; 4 uses
end_hunk_0
