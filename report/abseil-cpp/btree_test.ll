Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 695
loop-unroll.NumUnrolled: 833
begin_hunk_0_@_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIiERKi:bb.a
._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !862
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #40 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !802
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi.exit

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE24_M_get_insert_unique_posERKi.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<int, int, std::_Identity<int>, std::less<int>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !885  ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !905
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !885  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !906
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !902
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !886
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !899  ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !906
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !861
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !862
  store ptr %i.j, ptr %i.d, align 8, !tbaa !863
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !864
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !861  ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !899  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !30

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.k, align 8, !tbaa !885
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !900  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i, label %bb.f, label %bb.e, !llvm.loop !31

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i, ptr %i.d, align 8, !tbaa !885
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !864
  store i64 %i.u, ptr %i.l, align 8, !tbaa !864
  store ptr %i.o, ptr %i.a, align 8, !tbaa !885
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !907
  %.pre7 = load ptr, ptr %2, align 8, !tbaa !905
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeC2ERS5_.exit ]
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #39
  unreachable

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !907, !nonnull !844, !align !908
  %i.c = load ptr, ptr %0, align 8, !tbaa !905
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !906  ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !886  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !906
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !900
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !900
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !899  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_RT0_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.k, %.preheader.i.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !900  ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not11.i.i.i, label %bb.e, label %.preheader.i.i.i, !llvm.loop !3257

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !899  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.m, null
  %spec.store.select.i.i.i = select i1 %.not12.i.i.i, ptr %storemerge.i.i.i, ptr %i.m
  store ptr %spec.store.select.i.i.i, ptr %i.a, align 8, !tbaa !906
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_RT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !899
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_RT0_.exit

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !905
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_RT0_.exit

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
  br label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_RT0_.exit

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %.sink.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ] ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 32
  %i.r = load i32, ptr %i.p, align 4, !tbaa !802
  store i32 %i.r, ptr %i.q, align 4, !tbaa !802
  %i.s = load i32, ptr %1, align 8, !tbaa !903
  store i32 %i.s, ptr %.sink.i.i, align 8, !tbaa !903
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !886
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !900  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_RT0_.exit
  %i.x = invoke noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.w, ptr noundef nonnull %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !900
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.k:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE13_M_clone_nodeILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_RT0_.exit
  %.030.in46 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03047 = load ptr, ptr %.030.in46, align 8, !tbaa !899 ; 2 uses
  %.not3248 = icmp eq ptr %.03047, null
  br i1 %.not3248, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.x
  %.03050 = phi ptr [ %.030, %bb.x ], [ %.03047, %bb.k ] ; 4 uses
  %.03149 = phi ptr [ %.sink.i.i36, %bb.x ], [ %.sink.i.i, %bb.k ] ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !906 ; 7 uses
  %.not.i.i.i34 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i34, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !886 ; 5 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !906
  %.not9.i.i.i35 = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i.i35, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !900
  %i.af = icmp eq ptr %i.ae, %i.aa
  br i1 %i.af, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.ad, align 8, !tbaa !900
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !899 ; 2 uses
  %.not10.i.i.i37 = icmp eq ptr %i.ah, null
  br i1 %.not10.i.i.i37, label %bb.r, label %.preheader.i.i.i38

.preheader.i.i.i38:                               ; preds = %bb.n, %.preheader.i.i.i38
  %storemerge.i.i.i39 = phi ptr [ %i.aj, %.preheader.i.i.i38 ], [ %i.ah, %bb.n ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !900 ; 2 uses
  %.not11.i.i.i40 = icmp eq ptr %i.aj, null
  br i1 %.not11.i.i.i40, label %bb.o, label %.preheader.i.i.i38, !llvm.loop !3257

bb.o:                                             ; preds = %.preheader.i.i.i38
  %i.ak = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !899 ; 2 uses
  %.not12.i.i.i41 = icmp eq ptr %i.al, null
  %spec.store.select.i.i.i42 = select i1 %.not12.i.i.i41, ptr %storemerge.i.i.i39, ptr %i.al
  store ptr %spec.store.select.i.i.i42, ptr %i.a, align 8, !tbaa !906
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr null, ptr %i.am, align 8, !tbaa !899
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store ptr null, ptr %3, align 8, !tbaa !905
  br label %bb.r

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43: ; preds = %.lr.ph
  %i.an = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43
  %.sink.i.i36 = phi ptr [ %i.aa, %bb.q ], [ %i.aa, %bb.n ], [ %i.aa, %bb.o ], [ %i.aa, %bb.p ], [ %i.an, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43 ] ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03050, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 32
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !802
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !802
  %i.ar = load i32, ptr %.03050, align 8, !tbaa !903
  store i32 %i.ar, ptr %.sink.i.i36, align 8, !tbaa !903
  %i.as = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.03149, i64 16
  store ptr %.sink.i.i36, ptr %i.at, align 8, !tbaa !899
  %i.au = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 8
  store ptr %.03149, ptr %i.au, align 8, !tbaa !886
  %i.av = getelementptr inbounds nuw i8, ptr %.03050, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !900 ; 2 uses
  %.not33 = icmp eq ptr %i.aw, null
  br i1 %.not33, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = invoke noundef ptr @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE7_M_copyILb0ENS5_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIiESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %.sink.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 24
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !900
  br label %bb.x

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, %bb.s
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  %.pn = phi { ptr, i32 } [ %i.az, %bb.u ], [ %i.z, %bb.j ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %.0) #37 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink.i.i)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_rethrow() #38
          to label %bb.ab unwind label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r
  %.030.in = getelementptr inbounds nuw i8, ptr %.03050, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !899 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !3258

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  resume { ptr, i32 } %i.bb

._crit_edge:                                      ; preds = %bb.x, %bb.k
  ret ptr %.sink.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #39
  unreachable

bb.ab:                                            ; preds = %bb.w
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJEEEEEE5eraseIiEEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.208", align 8    ; 4 uses
  %i.a = load i32, ptr %1, align 4, !noalias !3265 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %0, %bb.a ], [ %i.n, %bb.d ]
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !tbaa !876, !noalias !3265 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 10
  %i.c = load i8, ptr %i.b, align 1, !tbaa !813, !noalias !3265 ; 3 uses
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %bb.c
  %.07.i.i.i.i.i.i.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.07.i.i.i.i.i.i.i.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !802, !noalias !3265
  %i.h = icmp slt i32 %i.g, %i.a
  br i1 %i.h, label %bb.c, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.i = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, %i.d
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !2

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.07.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813, !noalias !3265
  %.not.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERKiPSB_EELb0EEERKT_.exit.i.i.i.i

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 256
  %i.m = and i64 %.0.lcssa.i.i.i.i.i.i.i.i, 255
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  br label %bb.b

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERKiPSB_EELb0EEERKT_.exit.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15set_params_implIiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i
  %i.o = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.p = zext i8 %i.c to i32                      ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p                   ; 2 uses
  br i1 %i.q, label %.lr.ph.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i9.i, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !813, !noalias !3265 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.u = load i8, ptr %i.t, align 1, !tbaa !813, !noalias !3265 ; 2 uses
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.i.i.loopexit.i, !llvm.loop !3

.lr.ph.i:                                         ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERKiPSB_EELb0EEERKT_.exit.i.i.i.i, %bb.e
  %.sroa.0.0.i8.i.i.i9.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.0.0.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERKiPSB_EELb0EEERKT_.exit.i.i.i.i ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.0.0.i8.i.i.i9.i, align 8, !tbaa !876, !noalias !3265 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.y = load i8, ptr %i.x, align 1, !tbaa !813, !noalias !3265
  %.not.i11.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i11.i.i.i.i, label %bb.e, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.thread.i.i.i, !llvm.loop !3

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.thread.i.i.i: ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !876, !noalias !3265 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !813, !noalias !3265
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJEEEEEE11equal_rangeIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS5_EERKiPSD_EESG_ERSD_.exit

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.i.i.loopexit.i: ; preds = %bb.e
  %i.ae = zext i8 %i.u to i32
  %i.af = zext i8 %i.s to i32
  br label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.i.i.i

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.i.i.loopexit.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERKiPSB_EELb0EEERKT_.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i.lcssa.i = phi i32 [ %i.o, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERKiPSB_EELb0EEERKT_.exit.i.i.i.i ], [ %i.af, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.i.i.loopexit.i ] ; 12 uses
  %.sroa.0.0.i8.i.i.i.lcssa.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERKiPSB_EELb0EEERKT_.exit.i.i.i.i ], [ %i.w, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.i.i.loopexit.i ] ; 14 uses
  %.lcssa.i = phi i32 [ %i.p, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERKiPSB_EELb0EEERKT_.exit.i.i.i.i ], [ %i.ae, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.i.i.loopexit.i ] ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !876, !noalias !3265 ; 2 uses
  %.phi.trans.insert26.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 10
  %.pre27.i.i.i = load i8, ptr %.phi.trans.insert26.i.i.i, align 1, !tbaa !813, !noalias !3265
  %.pre28.i.i.i = zext i8 %.pre27.i.i.i to i32
  %i.ag = icmp ne ptr %.sroa.0.0.i8.i.i.i.lcssa.i, %.pre.i.i.i
  %i.ah = icmp ne i32 %.sroa.7.0.i.i.i.i.lcssa.i, %.pre28.i.i.i
  %i.ai = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE17lower_bound_equalIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERKiPSB_EEbERKT_.exit.i.i, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJEEEEEE11equal_rangeIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS5_EERKiPSD_EESG_ERSD_.exit

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE17lower_bound_equalIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERKiPSB_EEbERKT_.exit.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKiPSA_EE.exit.i.i.i
  %i.aj = sext i32 %.sroa.7.0.i.i.i.i.lcssa.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i.lcssa.i, i64 12
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !802, !noalias !3265
  %.not.i.i = icmp slt i32 %i.a, %i.am
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJEEEEEE11equal_rangeIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS5_EERKiPSD_EESG_ERSD_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15set_params_implIiJEEEE17lower_bound_equalIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERKiPSB_EEbERKT_.exit.i.i
  br i1 %i.q, label %.thread.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i
  %i.an = add nsw i32 %.sroa.7.0.i.i.i.i.lcssa.i, 1 ; 2 uses
  %i.ao = icmp eq i32 %i.an, %.lcssa.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implIiJEEEEEE11equal_rangeIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS5_EERKiPSD_EESG_ERSD_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %bb.g
  %.01521.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.g ], [ %.sroa.0.0.i8.i.i.i.lcssa.i, %bb.f ] ; 2 uses
  %i.ap = load ptr, ptr %.01521.i.i.i.i.i.i, align 8, !tbaa !876, !noalias !3266 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 11
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !813, !noalias !3266
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EEaSERKSB_:bb.a

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeC2ERSB_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeC2ERSB_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeC2ERSB_.exit ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #39
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !947, !nonnull !844, !align !908
  %i.c = load ptr, ptr %0, align 8, !tbaa !945
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 8 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !903
  store i32 %i.c, ptr %i.b, align 8, !tbaa !903
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !886
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !900  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !900
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03036 = load ptr, ptr %.030.in35, align 8, !tbaa !899 ; 2 uses
  %.not3237 = icmp eq ptr %.03036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03039 = phi ptr [ %.030, %bb.l ], [ %.03036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.l, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03039, i64 32
  %i.l = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.f unwind label %bb.i       ; 7 uses

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %.03039, align 8, !tbaa !903
  store i32 %i.m, ptr %i.l, align 8, !tbaa !903
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.l, ptr %i.o, align 8, !tbaa !899
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.03138, ptr %i.p, align 8, !tbaa !886
  %i.q = getelementptr inbounds nuw i8, ptr %.03039, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !900  ; 2 uses
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !900
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.j, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %.0) #37 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #38
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !899 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !3769

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.w

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #39
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !946  ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !886  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !946
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !900
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !900
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !899  ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %storemerge.i = phi ptr [ %i.k, %.preheader.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !900  ; 2 uses
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %bb.e, label %.preheader.i, !llvm.loop !3770

bb.e:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !899  ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  %spec.store.select.i = select i1 %.not12.i, ptr %storemerge.i, ptr %i.m
  store ptr %spec.store.select.i, ptr %i.a, align 8, !tbaa !946
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !899
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !945
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !810  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !813
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #36
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !947, !nonnull !844, !align !908
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit: ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !947, !nonnull !844, !align !908
  %i.y = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35 ; 2 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.0 = phi ptr [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %i.y, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS9_ESaIS9_EEESt3setIS9_SB_SC_EE11erase_checkERKS9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.254", align 8    ; 7 uses
  %3 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.231", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.234", align 8 ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.234", align 8 ; 5 uses
  %20 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.231", align 8 ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %24 = alloca %"struct.std::pair.254", align 8   ; 6 uses
  %25 = alloca %"struct.std::pair.236", align 8   ; 6 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !3787 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !noalias !3787
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.02.0.in.i.i.i.i.i = phi ptr [ %0, %bb.a ], [ %i.x, %bb.g ]
  %.sroa.02.0.i.i.i.i.i = load ptr, ptr %.sroa.02.0.in.i.i.i.i.i, align 8, !tbaa !926, !noalias !3787 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !813, !noalias !3787 ; 2 uses
  %.not30.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not30.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %.01932.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %.02031.i.i.i.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.222.i.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.h = add i64 %.02031.i.i.i.i.i.i.i.i, %.01932.i.i.i.i.i.i.i.i
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !811, !noalias !3787 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.l) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !810, !noalias !3787
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.c, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #37, !noalias !3787 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.q = sub i64 %i.l, %i.b
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i
  %i.s = add nuw i64 %i.i, 1
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i
  %.not29.i.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not29.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEEE8containsISA_EEbRKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.222.i.i.i.i.i.i.i.i = phi i64 [ %.02031.i.i.i.i.i.i.i.i, %bb.d ], [ %i.i, %bb.e ] ; 3 uses
  %.2.i.i.i.i.i.i.i.i = phi i64 [ %i.s, %bb.d ], [ %.01932.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i.i, %.222.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.i.i, label %bb.c

.loopexit.i.loopexit.i.i.i.i:                     ; preds = %bb.f
  %i.t = and i64 %.222.i.i.i.i.i.i.i.i, 255
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.i.loopexit.i.i.i.i, %bb.b
  %.sroa.018.2.i.i.i.ph.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.t, %.loopexit.i.loopexit.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !813, !noalias !3787
  %.not.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.g:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 240
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.018.2.i.i.i.ph.i.i.i.i.i
  br label %bb.b

_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEEE8containsISA_EEbRKT_.exit: ; preds = %bb.e
  %i.y = trunc i64 %i.i to i32
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !926 ; 2 uses
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 10
  %.pre14.i = load i8, ptr %.phi.trans.insert13.i, align 1, !tbaa !813
  %.pre15.i = zext i8 %.pre14.i to i32
  %i.z = icmp ne ptr %.sroa.02.0.i.i.i.i.i, %.pre.i
  %i.aa = icmp ne i32 %i.y, %.pre15.i
  %i.ab = select i1 %i.z, i1 true, i1 %i.aa       ; 2 uses
  %i.ac = zext i1 %i.ab to i8
  store i8 %i.ac, ptr %3, align 8, !tbaa !842
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !877
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.ae, align 8, !tbaa !879
  br i1 %i.ab, label %bb.h, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.h:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEEEEE8containsISA_EEbRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.338, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.266)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %7, align 8, !tbaa !810
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !811
  store i64 %i.ah, ptr %6, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.af, ptr %i.ai, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, i64 66, ptr nonnull @.str.2, i32 noundef 151, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %6)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #37
  %i.aj = load ptr, ptr %7, align 8, !tbaa !810   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EEaSERKS8_:bb.a

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit ]
  invoke void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #39
  unreachable

_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !994, !nonnull !844, !align !908
  %i.c = load ptr, ptr %0, align 8, !tbaa !992
  invoke void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.a) ; 8 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !903
  store i32 %i.c, ptr %i.b, align 8, !tbaa !903
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !886
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !900  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !900
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03036 = load ptr, ptr %.030.in35, align 8, !tbaa !899 ; 2 uses
  %.not3237 = icmp eq ptr %.03036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03039 = phi ptr [ %.030, %bb.l ], [ %.03036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.l, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03039, i64 32
  %i.l = invoke noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.f unwind label %bb.i       ; 7 uses

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %.03039, align 8, !tbaa !903
  store i32 %i.m, ptr %i.l, align 8, !tbaa !903
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.l, ptr %i.o, align 8, !tbaa !899
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.03138, ptr %i.p, align 8, !tbaa !886
  %i.q = getelementptr inbounds nuw i8, ptr %.03039, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !900  ; 2 uses
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !900
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.j, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %.0) #37 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #38
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !899 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !4244

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.w

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #39
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeclIRKS2_EEPSt13_Rb_tree_nodeIS2_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !993  ; 6 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !886  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !993
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !900
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !900
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !899  ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %storemerge.i = phi ptr [ %i.k, %.preheader.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !900  ; 2 uses
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %bb.e, label %.preheader.i, !llvm.loop !4245

bb.e:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !899  ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  %spec.store.select.i = select i1 %.not12.i, ptr %storemerge.i, ptr %i.m
  store ptr %spec.store.select.i, ptr %i.a, align 8, !tbaa !993
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !899
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !992
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !813
  %i.r = trunc i8 %i.q to i1
  br i1 %i.r, label %bb.i, label %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #39
  unreachable

_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E.exit: ; preds = %bb.h, %bb.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !994, !nonnull !844, !align !908
  tail call void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.k

_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit: ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !994, !nonnull !844, !align !908
  %i.x = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #35 ; 2 uses
  tail call void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE17_M_construct_nodeIJRKS2_EEEvPSt13_Rb_tree_nodeIS2_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E.exit
  %.0 = phi ptr [ %i.b, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS2_E.exit ], [ %i.x, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_setINS0_4CordESt4lessIS4_ESaIS4_EEESt3setIS4_S6_S7_EE11erase_checkERKS4_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.328", align 8    ; 7 uses
  %3 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.305", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.308", align 8 ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.308", align 8 ; 5 uses
  %20 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.305", align 8 ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %24 = alloca %"struct.std::pair.328", align 8   ; 6 uses
  %25 = alloca %"struct.std::pair.310", align 8   ; 6 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.02.0.in.i.i.i.i.i = phi ptr [ %0, %bb.a ], [ %i.ah, %bb.j ]
  %.sroa.02.0.i.i.i.i.i = load ptr, ptr %.sroa.02.0.in.i.i.i.i.i, align 8, !tbaa !968, !noalias !4262 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813, !noalias !4262 ; 2 uses
  %.not25.i.i.i.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not25.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.01627.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i ] ; 4 uses
  %.01726.i.i.i.i.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.219.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.g = add i64 %.01726.i.i.i.i.i.i.i.i, %.01627.i.i.i.i.i.i.i.i
  %i.h = lshr i64 %i.g, 1                         ; 6 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !813, !noalias !4262 ; 2 uses
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %1, align 8, !tbaa !813, !noalias !4262 ; 2 uses
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.0.copyload5.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 1, !noalias !4262 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 1, !noalias !4262 ; 2 uses
  %i.o = icmp eq i64 %.0.copyload5.i.i.i.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 1, !noalias !4262 ; 2 uses
  %.0.copyload1.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !4262 ; 2 uses
  %i.q = icmp eq i64 %.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i, %.0.copyload1.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = sext i8 %i.j to i64
  %i.s = lshr exact i64 %i.r, 1                   ; 2 uses
  %i.t = sext i8 %i.l to i64
  %i.u = lshr exact i64 %i.t, 1                   ; 2 uses
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_4CordEJEEEEEE8containsIS5_EEbRKT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp samesign ult i64 %i.s, %i.u
  br i1 %i.w, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.f, %bb.e
  %.019.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.0.copyload5.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.0.copyload1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e ]
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %.019.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.aa = tail call noundef i32 @_ZNK4absl12lts_202605264Cord11CompareImplERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1), !noalias !4262 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i.i.i.i.i, %bb.i, %bb.h
  %i.ac = add nuw i64 %i.h, 1
  br label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i.i.i.i.i
  %.not24.i.i.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not24.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_4CordEJEEEEEE8containsIS5_EEbRKT_.exit, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i, %bb.i, %bb.h
  %.219.i.i.i.i.i.i.i.i = phi i64 [ %.01726.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i ], [ %i.h, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i ], [ %i.h, %bb.h ], [ %i.h, %bb.i ] ; 3 uses
  %.2.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i ], [ %.01627.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i ], [ %.01627.i.i.i.i.i.i.i.i, %bb.h ], [ %.01627.i.i.i.i.i.i.i.i, %bb.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i.i, %.219.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.i.i, label %bb.c

.loopexit.i.loopexit.i.i.i.i:                     ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i
  %i.ad = and i64 %.219.i.i.i.i.i.i.i.i, 255
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.i.loopexit.i.i.i.i, %bb.b
  %.sroa.015.2.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %.loopexit.i.loopexit.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 11
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !813, !noalias !4262
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.j:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 256
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.015.2.i.i.i.i.i.i.i.i
  br label %bb.b

_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_4CordEJEEEEEE8containsIS5_EEbRKT_.exit: ; preds = %bb.g, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i
  %i.ai = trunc i64 %i.h to i32
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !968 ; 2 uses
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 10
  %.pre14.i = load i8, ptr %.phi.trans.insert13.i, align 1, !tbaa !813
  %.pre15.i = zext i8 %.pre14.i to i32
  %i.aj = icmp ne ptr %.sroa.02.0.i.i.i.i.i, %.pre.i
  %i.ak = icmp ne i32 %i.ai, %.pre15.i
  %i.al = select i1 %i.aj, i1 true, i1 %i.ak      ; 2 uses
  %i.am = zext i1 %i.al to i8
  store i8 %i.am, ptr %3, align 8, !tbaa !842
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !877
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.ao, align 8, !tbaa !879
  br i1 %i.al, label %bb.k, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.k:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS0_4CordEJEEEEEE8containsIS5_EEbRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.l unwind label %bb.p

end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_:bb.a
._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !862
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #40 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !802
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<int, std::pair<const int, int>, std::_Select1st<std::pair<const int, int>>, std::less<int>>::_Reuse_or_alloc_node", align 8 ; 9 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !885  ; 4 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !1037
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !885  ; 2 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !1038
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !1033
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !886
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !899  ; 2 uses
  %.not5.i = icmp eq ptr %i.i, null
  br i1 %.not5.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi ptr [ %i.i, %bb.c ], [ null, %bb.b ]
  store ptr %.sink.i, ptr %i.c, align 8, !tbaa !1038
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit: ; preds = %bb.c, %.sink.split.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !861
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !862
  store ptr %i.j, ptr %i.d, align 8, !tbaa !863
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !864
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !861  ; 2 uses
  %.not6 = icmp eq ptr %i.n, null
  br i1 %.not6, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit
  %i.o = invoke noundef ptr @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.n, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d, %.noexc
  %.0.i.i.i = phi ptr [ %i.q, %.noexc ], [ %i.o, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !899  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc, !llvm.loop !30

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc
  store ptr %.0.i.i.i, ptr %i.k, align 8, !tbaa !885
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !900  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i8.i, label %bb.f, label %bb.e, !llvm.loop !31

bb.f:                                             ; preds = %bb.e
  store ptr %.0.i.i7.i, ptr %i.d, align 8, !tbaa !885
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !864
  store i64 %i.u, ptr %i.l, align 8, !tbaa !864
  store ptr %i.o, ptr %i.a, align 8, !tbaa !885
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !1039
  %.pre7 = load ptr, ptr %2, align 8, !tbaa !1037
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeC2ERS8_.exit ]
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #39
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1039, !nonnull !844, !align !908
  %i.c = load ptr, ptr %0, align 8, !tbaa !1037
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1038 ; 7 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !886  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !1038
  %.not9.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not9.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !900
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !900
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !899  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.k, %.preheader.i.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !900  ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not11.i.i.i, label %bb.e, label %.preheader.i.i.i, !llvm.loop !4689

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !899  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.m, null
  %spec.store.select.i.i.i = select i1 %.not12.i.i.i, ptr %storemerge.i.i.i, ptr %i.m
  store ptr %spec.store.select.i.i.i, ptr %i.a, align 8, !tbaa !1038
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !899
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_.exit

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %3, align 8, !tbaa !1037
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i: ; preds = %bb.a
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
  br label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_.exit

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i
  %.sink.i.i = phi ptr [ %i.o, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ %i.b, %bb.g ] ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 32
  %i.r = load i64, ptr %i.p, align 4
  store i64 %i.r, ptr %i.q, align 4
  %i.s = load i32, ptr %1, align 8, !tbaa !903
  store i32 %i.s, ptr %.sink.i.i, align 8, !tbaa !903
  %i.t = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !886
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !900  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_.exit
  %i.x = invoke noundef ptr @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.w, ptr noundef nonnull %.sink.i.i, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 24
  store ptr %i.x, ptr %i.y, align 8, !tbaa !900
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.k:                                             ; preds = %bb.i, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE13_M_clone_nodeILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_RT0_.exit
  %.030.in46 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03047 = load ptr, ptr %.030.in46, align 8, !tbaa !899 ; 2 uses
  %.not3248 = icmp eq ptr %.03047, null
  br i1 %.not3248, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.x
  %.03050 = phi ptr [ %.030, %bb.x ], [ %.03047, %bb.k ] ; 4 uses
  %.03149 = phi ptr [ %.sink.i.i36, %bb.x ], [ %.sink.i.i, %bb.k ] ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1038 ; 7 uses
  %.not.i.i.i34 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i34, label %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !886 ; 5 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !1038
  %.not9.i.i.i35 = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i.i35, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !900
  %i.af = icmp eq ptr %i.ae, %i.aa
  br i1 %i.af, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %i.ad, align 8, !tbaa !900
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !899 ; 2 uses
  %.not10.i.i.i37 = icmp eq ptr %i.ah, null
  br i1 %.not10.i.i.i37, label %bb.r, label %.preheader.i.i.i38

.preheader.i.i.i38:                               ; preds = %bb.n, %.preheader.i.i.i38
  %storemerge.i.i.i39 = phi ptr [ %i.aj, %.preheader.i.i.i38 ], [ %i.ah, %bb.n ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !900 ; 2 uses
  %.not11.i.i.i40 = icmp eq ptr %i.aj, null
  br i1 %.not11.i.i.i40, label %bb.o, label %.preheader.i.i.i38, !llvm.loop !4689

bb.o:                                             ; preds = %.preheader.i.i.i38
  %i.ak = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i39, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !899 ; 2 uses
  %.not12.i.i.i41 = icmp eq ptr %i.al, null
  %spec.store.select.i.i.i42 = select i1 %.not12.i.i.i41, ptr %storemerge.i.i.i39, ptr %i.al
  store ptr %spec.store.select.i.i.i42, ptr %i.a, align 8, !tbaa !1038
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr null, ptr %i.am, align 8, !tbaa !899
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  store ptr null, ptr %3, align 8, !tbaa !1037
  br label %bb.r

_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43: ; preds = %.lr.ph
  %i.an = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #35
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43
  %.sink.i.i36 = phi ptr [ %i.aa, %bb.q ], [ %i.aa, %bb.n ], [ %i.aa, %bb.o ], [ %i.aa, %bb.p ], [ %i.an, %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43 ] ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.03050, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 32
  %i.aq = load i64, ptr %i.ao, align 4
  store i64 %i.aq, ptr %i.ap, align 4
  %i.ar = load i32, ptr %.03050, align 8, !tbaa !903
  store i32 %i.ar, ptr %.sink.i.i36, align 8, !tbaa !903
  %i.as = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.03149, i64 16
  store ptr %.sink.i.i36, ptr %i.at, align 8, !tbaa !899
  %i.au = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 8
  store ptr %.03149, ptr %i.au, align 8, !tbaa !886
  %i.av = getelementptr inbounds nuw i8, ptr %.03050, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !900 ; 2 uses
  %.not33 = icmp eq ptr %i.aw, null
  br i1 %.not33, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ax = invoke noundef ptr @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.aw, ptr noundef nonnull %.sink.i.i36, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink.i.i36, i64 24
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !900
  br label %bb.x

bb.u:                                             ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE20_Reuse_or_alloc_node10_M_extractEv.exit.i.i43, %bb.s
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.j
  %.pn = phi { ptr, i32 } [ %i.az, %bb.u ], [ %i.z, %bb.j ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.ba = tail call ptr @__cxa_begin_catch(ptr %.0) #37 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.sink.i.i)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_rethrow() #38
          to label %bb.ab unwind label %bb.y

bb.x:                                             ; preds = %bb.t, %bb.r
  %.030.in = getelementptr inbounds nuw i8, ptr %.03050, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !899 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !4690

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  resume { ptr, i32 } %i.bb

._crit_edge:                                      ; preds = %bb.x, %bb.k
  ret ptr %.sink.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #39
  unreachable

bb.ab:                                            ; preds = %bb.w
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implIiiJEEEEEE5eraseIiEEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.418", align 8    ; 4 uses
  %i.a = load i32, ptr %1, align 4, !noalias !4697 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.0.in.i.i.i.i.i = phi ptr [ %0, %bb.a ], [ %i.n, %bb.d ]
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !tbaa !1015, !noalias !4697 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 10
  %i.c = load i8, ptr %i.b, align 1, !tbaa !813, !noalias !4697 ; 3 uses
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %bb.c
  %.07.i.i.i.i.i.i.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.07.i.i.i.i.i.i.i.i
  %i.g = load i32, ptr %i.f, align 4, !tbaa !802, !noalias !4697
  %i.h = icmp slt i32 %i.g, %i.a
  br i1 %i.h, label %bb.c, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.i = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.i, %i.d
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !81

_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.07.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 11
  %i.k = load i8, ptr %i.j, align 1, !tbaa !813, !noalias !4697
  %.not.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSD_EELb0EEERKT_.exit.i.i.i.i

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 256
  %i.m = and i64 %.0.lcssa.i.i.i.i.i.i.i.i, 255
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  br label %bb.b

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSD_EELb0EEERKT_.exit.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal10btree_nodeINS1_15map_params_implIiiJEEEE11lower_boundIiEENS1_12SearchResultImLb0EEERKT_RKNS1_19key_compare_adapterISt4lessIiEiE15checked_compareE.exit.i.i.i.i.i
  %i.o = trunc i64 %.0.lcssa.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.p = zext i8 %i.c to i32                      ; 2 uses
  %i.q = icmp eq i32 %i.o, %i.p                   ; 2 uses
  br i1 %i.q, label %.lr.ph.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i9.i, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !813, !noalias !4697 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.u = load i8, ptr %i.t, align 1, !tbaa !813, !noalias !4697 ; 2 uses
  %i.v = icmp eq i8 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.i, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.i.i.loopexit.i, !llvm.loop !82

.lr.ph.i:                                         ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSD_EELb0EEERKT_.exit.i.i.i.i, %bb.e
  %.sroa.0.0.i8.i.i.i9.i = phi ptr [ %i.w, %bb.e ], [ %.sroa.0.0.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSD_EELb0EEERKT_.exit.i.i.i.i ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.0.0.i8.i.i.i9.i, align 8, !tbaa !1015, !noalias !4697 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.y = load i8, ptr %i.x, align 1, !tbaa !813, !noalias !4697
  %.not.i11.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i11.i.i.i.i, label %bb.e, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.thread.i.i.i, !llvm.loop !82

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.thread.i.i.i: ; preds = %.lr.ph.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1015, !noalias !4697 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !813, !noalias !4697
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implIiiJEEEEEE11equal_rangeIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS5_EERS9_IKiiEPSE_EESH_ERSD_.exit

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.i.i.loopexit.i: ; preds = %bb.e
  %i.ae = zext i8 %i.u to i32
  %i.af = zext i8 %i.s to i32
  br label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.i.i.i

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.i.i.loopexit.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSD_EELb0EEERKT_.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i.lcssa.i = phi i32 [ %i.o, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSD_EELb0EEERKT_.exit.i.i.i.i ], [ %i.af, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.i.i.loopexit.i ] ; 12 uses
  %.sroa.0.0.i8.i.i.i.lcssa.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSD_EELb0EEERKT_.exit.i.i.i.i ], [ %i.w, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.i.i.loopexit.i ] ; 14 uses
  %.lcssa.i = phi i32 [ %i.p, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE15internal_locateIiEENS1_12SearchResultINS1_14btree_iteratorINS1_10btree_nodeIS4_EERSt4pairIKiiEPSD_EELb0EEERKT_.exit.i.i.i.i ], [ %i.ae, %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.i.i.loopexit.i ] ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !1015, !noalias !4697 ; 2 uses
  %.phi.trans.insert26.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 10
  %.pre27.i.i.i = load i8, ptr %.phi.trans.insert26.i.i.i, align 1, !tbaa !813, !noalias !4697
  %.pre28.i.i.i = zext i8 %.pre27.i.i.i to i32
  %i.ag = icmp ne ptr %.sroa.0.0.i8.i.i.i.lcssa.i, %.pre.i.i.i
  %i.ah = icmp ne i32 %.sroa.7.0.i.i.i.i.lcssa.i, %.pre28.i.i.i
  %i.ai = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %i.ai, label %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE17lower_bound_equalIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERS7_IKiiEPSC_EEbERKT_.exit.i.i, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implIiiJEEEEEE11equal_rangeIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS5_EERS9_IKiiEPSE_EESH_ERSD_.exit

_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE17lower_bound_equalIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERS7_IKiiEPSC_EEbERKT_.exit.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE12internal_endENS1_14btree_iteratorIKNS1_10btree_nodeIS4_EERKSt4pairIKiiEPSD_EE.exit.i.i.i
  %i.aj = sext i32 %.sroa.7.0.i.i.i.i.lcssa.i to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i.i.lcssa.i, i64 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !802, !noalias !4697
  %.not.i.i = icmp slt i32 %i.a, %i.am
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implIiiJEEEEEE11equal_rangeIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS5_EERS9_IKiiEPSE_EESH_ERSD_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJEEEE17lower_bound_equalIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS4_EERS7_IKiiEPSC_EEbERKT_.exit.i.i
  br i1 %i.q, label %.thread.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i
  %i.an = add nsw i32 %.sroa.7.0.i.i.i.i.lcssa.i, 1 ; 2 uses
  %i.ao = icmp eq i32 %i.an, %.lcssa.i
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implIiiJEEEEEE11equal_rangeIiEESt4pairINS1_14btree_iteratorINS1_10btree_nodeIS5_EERS9_IKiiEPSE_EESH_ERSD_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %bb.g
  %.01521.i.i.i.i.i.i = phi ptr [ %i.ap, %bb.g ], [ %.sroa.0.0.i8.i.i.i.lcssa.i, %bb.f ] ; 2 uses
  %i.ap = load ptr, ptr %.01521.i.i.i.i.i.i, align 8, !tbaa !1015, !noalias !4698 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 11
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !813, !noalias !4698
end_hunk_3
begin_hunk_4_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EEaSERKSE_:bb.a

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeC2ERSE_.exit ]
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #39
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1082, !nonnull !844, !align !908
  %i.c = load ptr, ptr %0, align 8, !tbaa !1080
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.a) ; 8 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !903
  store i32 %i.c, ptr %i.b, align 8, !tbaa !903
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !886
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !900  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !900
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03036 = load ptr, ptr %.030.in35, align 8, !tbaa !899 ; 2 uses
  %.not3237 = icmp eq ptr %.03036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03039 = phi ptr [ %.030, %bb.l ], [ %.03036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.l, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03039, i64 32
  %i.l = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(64) %i.k)
          to label %bb.f unwind label %bb.i       ; 7 uses

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %.03039, align 8, !tbaa !903
  store i32 %i.m, ptr %i.l, align 8, !tbaa !903
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.l, ptr %i.o, align 8, !tbaa !899
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.03138, ptr %i.p, align 8, !tbaa !886
  %i.q = getelementptr inbounds nuw i8, ptr %.03039, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !900  ; 2 uses
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE7_M_copyILb0ENSE_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS8_ESJ_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !900
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.j, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %.0) #37 ; 0 uses
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #38
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !899 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !5244

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.w

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #39
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_nodeclIRKS8_EEPSt13_Rb_tree_nodeIS8_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1081 ; 9 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !886  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !1081
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !900
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !900
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !899  ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %storemerge.i = phi ptr [ %i.k, %.preheader.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !900  ; 2 uses
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %bb.e, label %.preheader.i, !llvm.loop !5245

bb.e:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !899  ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  %spec.store.select.i = select i1 %.not12.i, ptr %storemerge.i, ptr %i.m
  store ptr %spec.store.select.i, ptr %i.a, align 8, !tbaa !1081
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !899
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !1080
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !810  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !813
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !810  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !813
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #36
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_.exit unwind label %bb.i

bb.i:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  %i.ac = tail call ptr @__cxa_begin_catch(ptr %i.ab) #37 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #36
  invoke void @__cxa_rethrow() #38
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.k

common.resume:                                    ; preds = %bb.n, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.al, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #39
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit: ; preds = %bb.a
  %i.ag = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #35 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(64) %i.ah, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %i.aj) #37 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 96) #36
  invoke void @__cxa_rethrow() #38
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #39
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKS8_EEEvPSt13_Rb_tree_nodeIS8_EDpOT_.exit: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.0 = phi ptr [ %i.b, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %i.ag, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE20_Reuse_or_alloc_node10_M_extractEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEEESt3mapIS9_S9_SB_SF_EE11erase_checkERSD_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.481", align 8    ; 7 uses
  %3 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.458", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.461", align 8 ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.461", align 8 ; 5 uses
  %20 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.458", align 8 ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %24 = alloca %"struct.std::pair.481", align 8   ; 6 uses
  %25 = alloca %"struct.std::pair.463", align 8   ; 6 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !5262 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !noalias !5262
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.sroa.02.0.in.i.i.i.i.i = phi ptr [ %0, %bb.a ], [ %i.x, %bb.g ]
  %.sroa.02.0.i.i.i.i.i = load ptr, ptr %.sroa.02.0.in.i.i.i.i.i, align 8, !tbaa !1065, !noalias !5262 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 10
  %i.e = load i8, ptr %i.d, align 1, !tbaa !813, !noalias !5262 ; 2 uses
  %.not30.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not30.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i
  %.01932.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %.02031.i.i.i.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.222.i.i.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.h = add i64 %.02031.i.i.i.i.i.i.i.i, %.01932.i.i.i.i.i.i.i.i
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !811, !noalias !5262 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.l) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !810, !noalias !5262
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.c, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #37, !noalias !5262 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.q = sub i64 %i.l, %i.b
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.r = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i
  %i.s = add nuw i64 %i.i, 1
  br label %bb.f

bb.e:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclESt17basic_string_viewIcSt11char_traitsIcEES6_.exit.i.i.i.i.i.i.i.i
  %.not29.i.i.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not29.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_JEEEEEE8containsISA_EEbRKT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.222.i.i.i.i.i.i.i.i = phi i64 [ %.02031.i.i.i.i.i.i.i.i, %bb.d ], [ %i.i, %bb.e ] ; 3 uses
  %.2.i.i.i.i.i.i.i.i = phi i64 [ %i.s, %bb.d ], [ %.01932.i.i.i.i.i.i.i.i, %bb.e ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i.i, %.222.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.i.i, label %bb.c

.loopexit.i.loopexit.i.i.i.i:                     ; preds = %bb.f
  %i.t = and i64 %.222.i.i.i.i.i.i.i.i, 255
end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EEaSERKSB_:bb.a

bb.g:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_nodeC2ERSB_.exit
  %i.w = phi ptr [ %.pre7, %bb.f ], [ %i.b, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_nodeC2ERSB_.exit ]
  %i.x = phi ptr [ %.pre, %bb.f ], [ %0, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_nodeC2ERSB_.exit ]
  invoke void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.w)
          to label %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #39
  unreachable

_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1125, !nonnull !844, !align !908
  %i.c = load ptr, ptr %0, align 8, !tbaa !1123
  invoke void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 8 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !903
  store i32 %i.c, ptr %i.b, align 8, !tbaa !903
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !886
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !900  ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.h, ptr %i.i, align 8, !tbaa !900
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in35 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03036 = load ptr, ptr %.030.in35, align 8, !tbaa !899 ; 2 uses
  %.not3237 = icmp eq ptr %.03036, null
  br i1 %.not3237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03039 = phi ptr [ %.030, %bb.l ], [ %.03036, %bb.e ] ; 4 uses
  %.03138 = phi ptr [ %i.l, %bb.l ], [ %i.b, %bb.e ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03039, i64 32
  %i.l = invoke noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.f unwind label %bb.i       ; 7 uses

bb.f:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %.03039, align 8, !tbaa !903
  store i32 %i.m, ptr %i.l, align 8, !tbaa !903
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.03138, i64 16
  store ptr %i.l, ptr %i.o, align 8, !tbaa !899
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.03138, ptr %i.p, align 8, !tbaa !886
  %i.q = getelementptr inbounds nuw i8, ptr %.03039, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !900  ; 2 uses
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = invoke noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE7_M_copyILb0ENSB_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS5_ESG_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.r, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.s, ptr %i.t, align 8, !tbaa !900
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.j, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %.0) #37 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #38
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03039, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !899 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !5763

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.w

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.b

bb.o:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #39
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_nodeclIRKS5_EEPSt13_Rb_tree_nodeIS5_EOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1124 ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !886  ; 5 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !1124
  %.not9.i = icmp eq ptr %i.d, null
  br i1 %.not9.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !900
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !900
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !899  ; 2 uses
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %storemerge.i = phi ptr [ %i.k, %.preheader.i ], [ %i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !900  ; 2 uses
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %bb.e, label %.preheader.i, !llvm.loop !5764

bb.e:                                             ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !899  ; 2 uses
  %.not12.i = icmp eq ptr %i.m, null
  %spec.store.select.i = select i1 %.not12.i, ptr %storemerge.i, ptr %i.m
  store ptr %spec.store.select.i, ptr %i.a, align 8, !tbaa !1124
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.n, align 8, !tbaa !899
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !1123
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !813
  %i.s = trunc i8 %i.r to i1
  br i1 %i.s, label %bb.i, label %_ZN4absl12lts_202605264CordD2Ev.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #39
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit.i.i:         ; preds = %bb.i, %bb.h
  %i.v = load i8, ptr %i.p, align 8, !tbaa !813
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.k, label %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit

bb.k:                                             ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.i
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #39
  unreachable

_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit.i.i, %bb.k
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !1125, !nonnull !844, !align !908
  tail call void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.m

_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit: ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1125, !nonnull !844, !align !908
  %i.ac = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35 ; 2 uses
  tail call void @_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.0 = phi ptr [ %i.b, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %i.ac, %_ZNSt8_Rb_treeIN4absl12lts_202605264CordESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE20_Reuse_or_alloc_node10_M_extractEv.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12base_checkerINS0_9btree_mapINS0_4CordES4_St4lessIS4_ESaISt4pairIKS4_S4_EEEESt3mapIS4_S4_S6_SA_EE11erase_checkERS8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair.560", align 8    ; 7 uses
  %3 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.537", align 8 ; 5 uses
  %10 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.540", align 8 ; 5 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %19 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.540", align 8 ; 5 uses
  %20 = alloca %"class.absl::lts_20260526::container_internal::btree_iterator.537", align 8 ; 5 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %24 = alloca %"struct.std::pair.560", align 8   ; 6 uses
  %25 = alloca %"struct.std::pair.542", align 8   ; 6 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %bb.a
  %.sroa.02.0.in.i.i.i.i.i = phi ptr [ %0, %bb.a ], [ %i.ah, %bb.j ]
  %.sroa.02.0.i.i.i.i.i = load ptr, ptr %.sroa.02.0.in.i.i.i.i.i, align 8, !tbaa !1106, !noalias !5781 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 10
  %i.d = load i8, ptr %i.c, align 1, !tbaa !813, !noalias !5781 ; 2 uses
  %.not25.i.i.i.i.i.i.i.i = icmp eq i8 %i.d, 0
  br i1 %.not25.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 16
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.01627.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i ] ; 4 uses
  %.01726.i.i.i.i.i.i.i.i = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.219.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.g = add i64 %.01726.i.i.i.i.i.i.i.i, %.01627.i.i.i.i.i.i.i.i
  %i.h = lshr i64 %i.g, 1                         ; 6 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h ; 4 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !813, !noalias !5781 ; 2 uses
  %i.k = trunc i8 %i.j to i1
  br i1 %i.k, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i8, ptr %1, align 8, !tbaa !813, !noalias !5781 ; 2 uses
  %i.m = trunc i8 %i.l to i1
  br i1 %i.m, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.0.copyload5.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.n, align 1, !noalias !5781 ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 1, !noalias !5781 ; 2 uses
  %i.o = icmp eq i64 %.0.copyload5.i.i.i.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 1, !noalias !5781 ; 2 uses
  %.0.copyload1.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !5781 ; 2 uses
  %i.q = icmp eq i64 %.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i, %.0.copyload1.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.q, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.r = sext i8 %i.j to i64
  %i.s = lshr exact i64 %i.r, 1                   ; 2 uses
  %i.t = sext i8 %i.l to i64
  %i.u = lshr exact i64 %i.t, 1                   ; 2 uses
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINS0_4CordES5_JEEEEEE8containsIS5_EEbRKT_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = icmp samesign ult i64 %i.s, %i.u
  br i1 %i.w, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.f, %bb.e
  %.019.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.0.copyload7.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.0.copyload5.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.0.copyload1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f ], [ %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e ]
  %i.x = tail call noundef i64 @llvm.bswap.i64(i64 %.019.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.aa = tail call noundef i32 @_ZNK4absl12lts_202605264Cord11CompareImplERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1), !noalias !5781 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i.i.i.i.i, %bb.i, %bb.h
  %i.ac = add nuw i64 %i.h, 1
  br label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.i.i.i.i.i.i.i.i
  %.not24.i.i.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not24.i.i.i.i.i.i.i.i, label %_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINS0_4CordES5_JEEEEEE8containsIS5_EEbRKT_.exit, label %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i

_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i, %bb.i, %bb.h
  %.219.i.i.i.i.i.i.i.i = phi i64 [ %.01726.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i ], [ %i.h, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i ], [ %i.h, %bb.h ], [ %i.h, %bb.i ] ; 3 uses
  %.2.i.i.i.i.i.i.i.i = phi i64 [ %i.ac, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread39.i.i.i.i.i.i.i.i ], [ %.01627.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i ], [ %.01627.i.i.i.i.i.i.i.i, %bb.h ], [ %.01627.i.i.i.i.i.i.i.i, %bb.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.2.i.i.i.i.i.i.i.i, %.219.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.loopexit.i.i.i.i, label %bb.c

.loopexit.i.loopexit.i.i.i.i:                     ; preds = %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.thread.i.i.i.i.i.i.i.i
  %i.ad = and i64 %.219.i.i.i.i.i.i.i.i, 255
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.i.loopexit.i.i.i.i, %bb.b
  %.sroa.015.2.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ad, %.loopexit.i.loopexit.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 11
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !813, !noalias !5781
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.j, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.j:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i.i, i64 240
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.015.2.i.i.i.i.i.i.i.i
  br label %bb.b

_ZNK4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15map_params_implINS0_4CordES5_JEEEEEE8containsIS5_EEbRKT_.exit: ; preds = %bb.g, %_ZNK4absl12lts_2026052618container_internal22StringBtreeDefaultLessclERKNS0_4CordES5_.exit.thread.i.i.i.i.i.i.i.i
  %i.ai = trunc i64 %i.h to i32
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !1106 ; 2 uses
  %.phi.trans.insert13.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 10
  %.pre14.i = load i8, ptr %.phi.trans.insert13.i, align 1, !tbaa !813
end_hunk_5
