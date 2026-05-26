inline.NumInlined: 1628
inline.NumDeleted: 812
begin_hunk_0_@_ZNK5arrow3ipc21DictionaryFieldMapper10GetFieldIdESt6vectorIiSaIiEE:bb.a
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIiSaIiEED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.c, align 16, !tbaa !67
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3

_ZNSt6vectorIiSaIiEED2Ev.exit3:                   ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5arrow3ipc21DictionaryFieldMapper4Impl10GetFieldIdESt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::FieldPath", align 16 ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = load <2 x ptr>, ptr %2, align 8, !tbaa !80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store <2 x ptr> %i.c, ptr %3, align 16, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.d, align 16, !tbaa !67
  %i.e = invoke ptr @_ZNKSt10_HashtableIN5arrow9FieldPathESt4pairIKS1_lESaIS4_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_4HashENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS3_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNKSt13unordered_mapIN5arrow9FieldPathElNS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS6_.exit unwind label %bb.f ; 2 uses

_ZNKSt13unordered_mapIN5arrow9FieldPathElNS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS6_.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 16, !tbaa !64    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNKSt13unordered_mapIN5arrow9FieldPathElNS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS6_.exit
  %i.g = load ptr, ptr %i.d, align 16, !tbaa !67
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.j) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.b, %_ZNKSt13unordered_mapIN5arrow9FieldPathElNS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_lEEE4findERS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.k = icmp eq ptr %i.e, null
  br i1 %i.k, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN5arrow6Status8FromArgsIJRA27_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 2, ptr noundef nonnull align 1 dereferenceable(27) @.str.7)
  call void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  %i.l = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !88

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !89, !range !99, !noundef !100
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %3, align 16, !tbaa !64    ; 3 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i2, label %_ZNSt6vectorIiSaIiEED2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.d, align 16, !tbaa !67
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit5

_ZNSt6vectorIiSaIiEED2Ev.exit5:                   ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.p

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.v, align 8, !tbaa !84
  store i64 %i.x, ptr %i.w, align 8, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK5arrow3ipc21DictionaryFieldMapper10num_fieldsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !72
  %i.d = trunc i64 %i.c to i32
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK5arrow3ipc21DictionaryFieldMapper9num_dictsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = tail call noundef i32 @_ZNK5arrow3ipc21DictionaryFieldMapper4Impl9num_dictsEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5arrow3ipc21DictionaryFieldMapper4Impl9num_dictsEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::set", align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !106
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !107
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !109
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.05.09 = load ptr, ptr %i.f, align 8, !tbaa !63 ; 2 uses
  %i.g = icmp eq ptr %.sroa.05.09, null
  br i1 %i.g, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.h = trunc i64 %i.af to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.a ]
  %i.j = phi i32 [ %i.h, %._crit_edge.loopexit ], [ 0, %bb.a ]
  invoke void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.i)
          to label %_ZNSt3setIlSt4lessIlESaIlEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #27
  unreachable

_ZNSt3setIlSt4lessIlESaIlEED2Ev.exit:             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret i32 %i.j

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.m = phi i64 [ %i.af, %bb.f ], [ 0, %bb.a ]
  %.sroa.05.010 = phi ptr [ %.sroa.05.0, %bb.f ], [ %.sroa.05.09, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 32
  %.02022.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !110 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  %.pre.i.pre.pre.i.i = load i64, ptr %i.n, align 8, !tbaa !84 ; 4 uses
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %.lr.ph ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !84   ; 2 uses
  %i.q = icmp slt i64 %.pre.i.pre.pre.i.i, %i.p   ; 2 uses
  %.in.v.i.i.i = select i1 %i.q, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !111

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.q, label %._crit_edge.thread.i.i.i, label %bb.d

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %.lr.ph
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.a, %.lr.ph ] ; 4 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.s = icmp eq ptr %.019.lcssa29.i.i.i, %i.r
  br i1 %i.s, label %select.unfold.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.t = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #28
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i
  %i.u = phi i64 [ %.pre.i.i, %bb.c ], [ %i.p, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.c ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.v = icmp slt i64 %i.u, %.pre.i.pre.pre.i.i
  br i1 %i.v, label %select.unfold.i.i, label %bb.f

select.unfold.i.i:                                ; preds = %bb.d, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.d ] ; 3 uses
  %i.w = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.a
  br i1 %i.w, label %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE10_M_insert_IRKlNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIlEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %select.unfold.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !84
  %i.z = icmp slt i64 %.pre.i.pre.pre.i.i, %i.y
  br label %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE10_M_insert_IRKlNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIlEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE10_M_insert_IRKlNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIlEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.e, %select.unfold.i.i
  %i.aa = phi i1 [ %i.z, %bb.e ], [ true, %select.unfold.i.i ]
  %i.ab = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE10_M_insert_IRKlNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIlEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %.pre.i.pre.pre.i.i, ptr %i.ac, align 8, !tbaa !84
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.a) #25
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !109
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ae, ptr %i.e, align 8, !tbaa !109
  br label %bb.f

bb.f:                                             ; preds = %.noexc, %bb.d
  %i.af = phi i64 [ %i.ae, %.noexc ], [ %i.m, %bb.d ] ; 2 uses
  %.sroa.05.0 = load ptr, ptr %.sroa.05.010, align 8, !tbaa !63 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.05.0, null
  br i1 %i.ag, label %._crit_edge.loopexit, label %.lr.ph

bb.g:                                             ; preds = %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE10_M_insert_IRKlNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIlEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setIlSt4lessIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.ah
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc14DictionaryMemoC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #24 ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %i.a, align 8, !tbaa !112
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !43
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.i, ptr %i.h, align 8, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 1, ptr %i.j, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.l, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  invoke void @_ZN5arrow3ipc21DictionaryFieldMapperC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_ZN5arrow3ipc14DictionaryMemo4ImplC2Ev.exit unwind label %.body

.body:                                            ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.h) #25
  tail call void @_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(120) %i.a) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #26
  resume { ptr, i32 } %i.o

_ZN5arrow3ipc14DictionaryMemo4ImplC2Ev.exit:      ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !118
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow3ipc14DictionaryMemoD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118    ; 10 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow3ipc14DictionaryMemo4ImplESt14default_deleteIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @_ZN5arrow3ipc21DictionaryFieldMapperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %i.c) #25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.noexc.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.f, %.noexc.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !63 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS8_EEELb0EEEEE18_M_deallocate_nodeEPSC_(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull %.06.i.i.i.i.i.i)
          to label %.noexc.i.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !121

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #27
  unreachable

_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.noexc.i.i.i.i.i, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !114
  %i.l = shl i64 %i.k, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt14default_deleteIN5arrow3ipc14DictionaryMemo4ImplEEclEPS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.p = load i64, ptr %i.j, align 8, !tbaa !114
  %i.q = shl i64 %i.p, 3
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNKSt14default_deleteIN5arrow3ipc14DictionaryMemo4ImplEEclEPS3_.exit

_ZNKSt14default_deleteIN5arrow3ipc14DictionaryMemo4ImplEEclEPS3_.exit: ; preds = %_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #26
  br label %_ZNSt10unique_ptrIN5arrow3ipc14DictionaryMemo4ImplESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow3ipc14DictionaryMemo4ImplESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow3ipc14DictionaryMemo4ImplEEclEPS3_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow3ipc14DictionaryMemo6fieldsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5arrow3ipc14DictionaryMemo6fieldsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow3ipc14DictionaryMemo17GetDictionaryTypeEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.68") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !84
  %i.b = load ptr, ptr %1, align 8, !tbaa !118    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !122
  %.not.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !63 ; 4 uses
  %i.f = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !84
  %i.i = icmp eq i64 %2, %i.h
  br i1 %i.i, label %_ZNSt13unordered_mapIlSt10shared_ptrIN5arrow8DataTypeEESt4hashIlESt8equal_toIlESaISt4pairIKlS3_EEE4findERS9_.exit, label %bb.c, !llvm.loop !123

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.l = load i64, ptr %i.k, align 8, !tbaa !117  ; 2 uses
  %i.m = urem i64 %2, %i.l                        ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc14DictionaryMemo4Impl15ReifyDictionaryElPNS_10MemoryPoolE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.c, align 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !136  ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !139
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.j, 16
  br i1 %i.k, label %bb.d, label %bb.bo

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !139  ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.h, %i.m                       ; 3 uses
  %i.o = icmp ugt i64 %i.n, 9223372036854775792
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #29
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.not = icmp eq ptr %i.f, %i.l
  br i1 %.not, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24
          to label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i unwind label %bb.g ; 3 uses

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre109.pre = load ptr, ptr %i.e, align 8, !tbaa !140
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !140
  store ptr %i.q, ptr %5, align 8, !tbaa !141
  store ptr %i.q, ptr %i.r, align 8, !tbaa !144
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n
  store ptr %i.s, ptr %i.p, align 8, !tbaa !145
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.f
  %i.t = phi ptr [ %.pre109.pre, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.f, %bb.f ] ; 2 uses
  %i.u = phi ptr [ %.pre.pre, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ %i.l, %bb.f ] ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.t
  br i1 %i.v, label %.critedge55, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_M_allocateEm.exit.i, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.h:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.sroa.0104.0108 = phi ptr [ %i.u, %.lr.ph ], [ %i.bi, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.z = load ptr, ptr %.sroa.0104.0108, align 8, !tbaa !146 ; 2 uses
  %i.aa = call fastcc noundef zeroext i1 @_ZN5arrow3ipc12_GLOBAL__N_123HasUnresolvedNestedDictERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(120) %i.z)
  br i1 %i.aa, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZN5arrow6Status8FromArgsIJRA66_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(66) @.str.15)
          to label %_ZN5arrow6Status14NotImplementedIJRA66_KcEEES0_DpOT_.exit unwind label %bb.l

_ZN5arrow6Status14NotImplementedIJRA66_KcEEES0_DpOT_.exit: ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  %i.ab = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j, !prof !88

bb.j:                                             ; preds = %_ZN5arrow6Status14NotImplementedIJRA66_KcEEES0_DpOT_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !89, !range !99, !noundef !100
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status14NotImplementedIJRA66_KcEEES0_DpOT_.exit, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.critedge57

bb.l:                                             ; preds = %bb.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.bn

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN5arrow8internal17ValidateArrayFullERKNS_9ArrayDataE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.z)
          to label %_ZN5arrow6StatusD2Ev.exit61 unwind label %bb.q

_ZN5arrow6StatusD2Ev.exit61:                      ; preds = %bb.m
  %i.ag = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  store ptr %i.ag, ptr %7, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit67, label %bb.n, !prof !88

bb.n:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit61
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #25
  %i.ai = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i62 = icmp eq ptr %i.ai, null
  br i1 %.not.i62, label %_ZN5arrow6StatusD2Ev.exit63, label %bb.o, !prof !88

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !89, !range !99, !noundef !100
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit63, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #25
  br label %_ZN5arrow6StatusD2Ev.exit63

_ZN5arrow6StatusD2Ev.exit63:                      ; preds = %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.critedge57

bb.q:                                             ; preds = %bb.m
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bn

_ZN5arrow6StatusD2Ev.exit67:                      ; preds = %_ZN5arrow6StatusD2Ev.exit61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.122") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0104.0108)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit67
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !144 ; 5 uses
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !145
  %.not.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !133
  %i.aq = load <2 x ptr>, ptr %9, align 16, !tbaa !134
  store ptr null, ptr %i.x, align 8, !tbaa !133
  store <2 x ptr> %i.aq, ptr %i.an, align 8, !tbaa !134
  store ptr null, ptr %9, align 16, !tbaa !149
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ar, ptr %i.w, align 8, !tbaa !144
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit

bb.t:                                             ; preds = %bb.r
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.an, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ab

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.s, %bb.t
  %i.as = load ptr, ptr %i.x, align 8, !tbaa !133 ; 8 uses
  %.not.i.i69 = icmp eq ptr %i.as, null
  br i1 %.not.i.i69, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.at, align 8, !tbaa !152
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !154
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !155
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #25, !inline_history !157
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !155
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #25, !inline_history !157
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.x ], [ %i.bg, %bb.y ]
  %i.bh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bh, label %bb.z, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backEOS3_.exit, %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0104.0108, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.t
  br i1 %i.bj, label %.critedge55, label %bb.h

bb.aa:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit67
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.t
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn42 = phi { ptr, i32 } [ %i.bl, %bb.ab ], [ %i.bk, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bn

.critedge55:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  invoke void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.201") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %3)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %.critedge55
  %i.bm = load ptr, ptr %10, align 8, !tbaa !74
  %i.bn = icmp eq ptr %i.bm, null                 ; 2 uses
  br i1 %i.bn, label %bb.ag, label %bb.ae, !prof !88

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #25
  br label %bb.aw

bb.af:                                            ; preds = %.critedge55
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bs = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !134, !noalias !164
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !149, !noalias !164 ; 2 uses
  store ptr null, ptr %i.br, align 8, !tbaa !133, !noalias !164
  store <2 x ptr> %i.bs, ptr %11, align 16, !tbaa !134, !alias.scope !164
  store ptr null, ptr %i.bp, align 8, !tbaa !149, !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !133 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !134
  store <2 x ptr> %i.bx, ptr %12, align 16, !tbaa !134
  %.not.i.i.i70 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i70, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i71 = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i71, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !3
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

bb.aj:                                            ; preds = %bb.ah
  %i.cc = atomicrmw volatile add ptr %i.by, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit: ; preds = %bb.ag, %bb.ai, %bb.aj
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull %12, ptr noundef nonnull %i.cd)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.bm

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !133 ; 8 uses
  %.not.i.i73 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i73, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.cg, align 8, !tbaa !152
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !154
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !155
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !165
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !155
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !165
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.am:                                            ; preds = %bb.ak
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i74 = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i74, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75

bb.ao:                                            ; preds = %bb.am
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i76 = phi i32 [ %i.cj, %bb.an ], [ %i.ct, %bb.ao ]
  %i.cu = icmp eq i32 %.0.i.i.i.i76, 1
  br i1 %i.cu, label %bb.ap, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i75, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.cv = load ptr, ptr %i.bq, align 8, !tbaa !133 ; 8 uses
  %.not.i.i77 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i77, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 4294967297
  %i.cz = trunc i64 %i.cx to i32                  ; 2 uses
  br i1 %i.cy, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.cw, align 8, !tbaa !152
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  store i32 0, ptr %i.da, align 4, !tbaa !154
  %i.db = load ptr, ptr %i.cv, align 8, !tbaa !155
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #25, !inline_history !157
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !155
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #25, !inline_history !157
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81

bb.as:                                            ; preds = %bb.aq
  %i.dh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i78 = icmp eq i8 %i.dh, 0
  br i1 %.not.i.i.i78, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.di = add nsw i32 %i.cz, -1
  store i32 %i.di, ptr %i.cw, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79

bb.au:                                            ; preds = %bb.as
  %i.dj = atomicrmw volatile add ptr %i.cw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i80 = phi i32 [ %i.cz, %bb.at ], [ %i.dj, %bb.au ]
  %i.dk = icmp eq i32 %.0.i.i.i.i80, 1
  br i1 %i.dk, label %bb.av, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81, !prof !135

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81: ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i79, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit81, %bb.ae
  %i.dl = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ax, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !88

bb.ax:                                            ; preds = %bb.aw
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.dp, align 8, !tbaa !152
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !154
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !155
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #25, !inline_history !166
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !155
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #25, !inline_history !166
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ds, %bb.bb ], [ %i.ec, %bb.bc ]
  %i.ed = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ed, label %bb.bd, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !135

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.az, %bb.ax
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !74  ; 2 uses
  %.not.i.i82 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i82, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !167

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.aw
  %i.ee = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.dl, %bb.aw ]
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !89, !range !99, !noundef !100
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ei = load ptr, ptr %5, align 8, !tbaa !141   ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !144 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ei, %i.ek
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fc, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i ], [ %i.ei, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.en, align 8, !tbaa !152
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !154
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !155
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25, !inline_history !168
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !155
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25, !inline_history !168
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.eq, %bb.bi ], [ %i.fa, %bb.bj ]
  %i.fb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fb, label %bb.bk, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !135

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.bg, %.lr.ph.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %i.fc, %i.ek
  br i1 %.not.i.i.i83, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !169

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i84 = load ptr, ptr %5, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit
  %i.fd = phi ptr [ %.pr.i84, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ei, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.fe = load ptr, ptr %i.p, align 8, !tbaa !145
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = ptrtoint ptr %i.fd to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fh) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %i.bn, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit._crit_edge, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2IRS3_vEEOT_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit._crit_edge: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit
  %.pre110 = load ptr, ptr %i.e, align 8, !tbaa !140
  br label %bb.bo

bb.bm:                                            ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.bn

bb.bn:                                            ; preds = %bb.l, %bb.q, %bb.ac, %bb.af, %bb.bm, %bb.g
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.g ], [ %i.bo, %bb.af ], [ %i.fi, %bb.bm ], [ %i.af, %bb.l ], [ %.pn42, %bb.ac ], [ %i.am, %bb.q ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.fj = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %.not.i.i102 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i102, label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit103, label %bb.cb, !prof !88

bb.bo:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit._crit_edge, %bb.c
  %i.fk = phi ptr [ %.pre110, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit._crit_edge ], [ %i.f, %bb.c ] ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -16
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fn = getelementptr inbounds i8, ptr %i.fk, i64 -8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !133 ; 2 uses
  %i.fp = load <2 x ptr>, ptr %i.fl, align 8, !tbaa !134
  store <2 x ptr> %i.fp, ptr %i.fm, align 8, !tbaa !134
  %.not.i.i.i.i.i.i85 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i85, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2IRS3_vEEOT_.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 3 uses
  %i.fr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i86 = icmp eq i8 %i.fr, 0
  br i1 %.not.i.i.i.i.i.i.i86, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !3
  %i.ft = add nsw i32 %i.fs, 1
  store i32 %i.ft, ptr %i.fq, align 4, !tbaa !3
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2IRS3_vEEOT_.exit

bb.br:                                            ; preds = %bb.bp
  %i.fu = atomicrmw volatile add ptr %i.fq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2IRS3_vEEOT_.exit

.critedge57:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit63
  %i.fv = load ptr, ptr %5, align 8, !tbaa !141   ; 3 uses
  %i.fw = load ptr, ptr %i.w, align 8, !tbaa !144 ; 2 uses
  %.not4.i.i.i87 = icmp eq ptr %i.fv, %i.fw
  br i1 %.not4.i.i.i87, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i98, label %.lr.ph.i.i.i88

.lr.ph.i.i.i88:                                   ; preds = %.critedge57, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94
  %.05.i.i.i89 = phi ptr [ %i.go, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94 ], [ %i.fv, %.critedge57 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i.i.i90 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i.i90, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i.i88
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.fz, align 8, !tbaa !152
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !154
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !155
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #25, !inline_history !168
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !155
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #25, !inline_history !168
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94

bb.bu:                                            ; preds = %bb.bs
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i91 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i.i.i.i.i.i91, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fz, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92

bb.bw:                                            ; preds = %bb.bu
  %i.gm = atomicrmw volatile add ptr %i.fz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92: ; preds = %bb.bw, %bb.bv
  %.0.i.i.i.i.i.i.i.i.i93 = phi i32 [ %i.gc, %bb.bv ], [ %i.gm, %bb.bw ]
  %i.gn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i93, 1
  br i1 %i.gn, label %bb.bx, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94, !prof !135

bb.bx:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94: ; preds = %bb.bx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i92, %bb.bt, %.lr.ph.i.i.i88
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 16 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.go, %i.fw
  br i1 %.not.i.i.i95, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i96, label %.lr.ph.i.i.i88, !llvm.loop !169

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i96: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i94
  %.pr.i97 = load ptr, ptr %5, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i98

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i98: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i96, %.critedge57
  %i.gp = phi ptr [ %.pr.i97, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i96 ], [ %i.fv, %.critedge57 ] ; 3 uses
  %.not.i.i1.i99 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i1.i99, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit100, label %bb.by

bb.by:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i98
  %i.gq = load ptr, ptr %i.p, align 8, !tbaa !145
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gp to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gt) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit100

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit100: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i98, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2IRS3_vEEOT_.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2IRS3_vEEOT_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit100, %bb.bo, %bb.bq, %bb.br, %bb.b
  %i.gu = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i101, label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit, label %bb.bz, !prof !88

bb.bz:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2IRS3_vEEOT_.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !89, !range !99, !noundef !100
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  br label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit

_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2IRS3_vEEOT_.exit, %bb.bz, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.cb:                                            ; preds = %bb.bn
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !89, !range !99, !noundef !100
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit103, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  br label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit103

_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit103: ; preds = %bb.bn, %bb.cb, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn46.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc14DictionaryMemo17AddDictionaryTypeElRKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !84
  %i.b = load ptr, ptr %1, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = call { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRlRKS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.d, 1
  %i.e = trunc i8 %.fca.1.extract to i1
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.fca.0.extract = extractvalue { ptr, i8 } %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !170
  %i.h = load ptr, ptr %3, align 8, !tbaa !170
  %i.i = call noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i1 noundef zeroext false)
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !173
  call void @_ZN5arrow8internal12JoinToStringIJRA37_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(37) @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !173
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %4, align 8, !tbaa !131, !noalias !173 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN5arrow6Status8KeyErrorIJRA37_KcRlEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !132, !noalias !173
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZN5arrow6Status8KeyErrorIJRA37_KcRlEEES0_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8, !tbaa !131, !noalias !173 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !132, !noalias !173
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !173
  resume { ptr, i32 } %i.o

_ZN5arrow6Status8KeyErrorIJRA37_KcRlEEES0_DpOT_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !173
  br label %bb.g

bb.f:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !178
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5arrow6Status8KeyErrorIJRA37_KcRlEEES0_DpOT_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

declare noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK5arrow3ipc14DictionaryMemo13HasDictionaryEl(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !181
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !63 ; 4 uses
  %i.e = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.e, label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84
  %i.h = icmp eq i64 %1, %i.g
  br i1 %i.h, label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit, label %bb.c, !llvm.loop !182

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114  ; 2 uses
  %i.k = urem i64 %1, %i.j                        ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !84
  %i.r = icmp eq i64 %1, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.s = icmp eq i64 %1, %i.v
  br i1 %i.s, label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !183

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.t, %bb.g ], [ %i.o, %bb.f ]
  %i.t = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !63 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !84   ; 2 uses
  %i.w = urem i64 %i.v, %i.j
  %.not19.i.i.i.i = icmp eq i64 %i.w, %i.k
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !183

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit, !llvm.loop !183

_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.c, %bb.d, %bb.e, %bb.f, %..loopexit_crit_edge21.i.i.i.i
  %.sroa.06.1.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i ], [ null, %bb.c ], [ %i.o, %bb.f ], [ null, %bb.e ], [ %.sroa.06.0.i.i, %bb.d ], [ %i.t, %bb.g ], [ null, %.lr.ph.i.i.i.i ]
  %i.x = icmp ne ptr %.sroa.06.1.i.i, null
  ret i1 %i.x
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc14DictionaryMemo13AddDictionaryElRKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %5 = alloca %"class.std::vector.90", align 8    ; 11 uses
  %6 = alloca [1 x %"class.std::shared_ptr.95"], align 16 ; 8 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !84
  %i.b = load ptr, ptr %1, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133  ; 2 uses
  %i.f = load <2 x ptr>, ptr %3, align 8, !tbaa !134
  store <2 x ptr> %i.f, ptr %6, align 16, !tbaa !134
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.l = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24
          to label %.noexc unwind label %bb.x     ; 3 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  store ptr %i.l, ptr %5, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !184
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %i.p = load <2 x ptr>, ptr %6, align 16, !tbaa !134
  store <2 x ptr> %i.p, ptr %i.l, align 8, !tbaa !134
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.v, align 8, !tbaa !136
  %i.w = invoke { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRlS8_EEES0_INSB_14_Node_iteratorIS9_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE7emplaceIJRlS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.y

_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE7emplaceIJRlS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.fca.1.extract = extractvalue { ptr, i8 } %i.w, 1
  %i.x = load ptr, ptr %5, align 8, !tbaa !139    ; 3 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !136  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE7emplaceIJRlS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aq, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.x, %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE7emplaceIJRlS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !152
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !154
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !155
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #25, !inline_history !185
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !155
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #25, !inline_history !185
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.m, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !135

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.aq, %i.y
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !186

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !139
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE7emplaceIJRlS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit
  %i.ar = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE7emplaceIJRlS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.as = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !133 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ay, align 8, !tbaa !152
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !154
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #25, !inline_history !165
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !155
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #25, !inline_history !165
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i10 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i10, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.bb, %bb.r ], [ %i.bl, %bb.s ]
  %i.bm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bm, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.bn = trunc i8 %.fca.1.extract to i1
  br i1 %i.bn, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !187
  call void @_ZN5arrow8internal12JoinToStringIJRA20_KcRlRA16_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(20) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(16) @.str.3), !noalias !187
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bo = load ptr, ptr %4, align 8, !tbaa !131, !noalias !187 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN5arrow6Status8KeyErrorIJRA20_KcRlRA16_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !132, !noalias !187
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #26
  br label %_ZN5arrow6Status8KeyErrorIJRA20_KcRlRA16_S2_EEES0_DpOT_.exit

bb.w:                                             ; preds = %bb.u
  %i.bt = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %4, align 8, !tbaa !131, !noalias !187 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.w
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !132, !noalias !187
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

common.resume:                                    ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ], [ %.pn, %bb.z ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !187
  br label %common.resume

_ZN5arrow6Status8KeyErrorIJRA20_KcRlRA16_S2_EEES0_DpOT_.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !187
  br label %bb.ab

bb.x:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.y ], [ %i.bz, %bb.x ]
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %common.resume

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !192
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN5arrow6Status8KeyErrorIJRA20_KcRlRA16_S2_EEES0_DpOT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !139    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !152
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !154
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !195
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !195
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, !prof !135

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !186

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !139
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !184
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc14DictionaryMemo18AddDictionaryDeltaElRKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Result.98", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !118
  call void @_ZN5arrow3ipc14DictionaryMemo4Impl14FindDictionaryEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.98") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.a, i64 noundef %2)
  %i.b = load ptr, ptr %4, align 8, !tbaa !74
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.b, !prof !88

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.e, align 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !133  ; 2 uses
  %i.l = load <2 x ptr>, ptr %3, align 8, !tbaa !134
  store <2 x ptr> %i.l, ptr %i.g, align 8, !tbaa !134
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !136
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.r = phi ptr [ %i.g, %bb.e ], [ %i.g, %bb.g ], [ %.pre.i, %bb.h ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.f, align 8, !tbaa !136
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE9push_backERKS3_.exit

bb.i:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE9push_backERKS3_.exit unwind label %bb.j

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.i
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !196
  br label %_ZN5arrow6StatusC2ERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.b, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE9push_backERKS3_.exit
  %i.v = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit, label %bb.k, !prof !88

bb.k:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !89, !range !99, !noundef !100
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  br label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit

_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit: ; preds = %_ZN5arrow6StatusC2ERKS0_.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.m:                                             ; preds = %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.u, %bb.j ]
  %i.z = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.z, null
  br i1 %.not.i.i9, label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit10, label %bb.n, !prof !88

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !89, !range !99, !noundef !100
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit10, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #25
  br label %_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit10

_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEED2Ev.exit10: ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc14DictionaryMemo4Impl14FindDictionaryEl(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.98") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !84
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !181
  %.not.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.d, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !63 ; 4 uses
  %i.e = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.e, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !84
  %i.h = icmp eq i64 %2, %i.g
  br i1 %i.h, label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit, label %bb.c, !llvm.loop !182

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114  ; 2 uses
  %i.k = urem i64 %2, %i.j                        ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !124  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !84
  %i.r = icmp eq i64 %2, %i.q
  br i1 %i.r, label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.s = icmp eq i64 %2, %i.v
  br i1 %i.s, label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !183

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %.020.i.i.i.i = phi ptr [ %i.t, %bb.g ], [ %i.o, %bb.f ]
  %i.t = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !63 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !84   ; 2 uses
  %i.w = urem i64 %i.v, %i.j
  %.not19.i.i.i.i = icmp eq i64 %i.w, %i.k
  br i1 %.not19.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !183

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %.loopexit, !llvm.loop !183

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.c, %..loopexit_crit_edge21.i.i.i.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !199
  call void @_ZN5arrow8internal12JoinToStringIJRA20_KcRlRA11_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(20) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.18), !noalias !199
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.x = load ptr, ptr %3, align 8, !tbaa !131, !noalias !199 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN5arrow6Status8KeyErrorIJRA20_KcRlRA11_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !132, !noalias !199
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #26
  br label %_ZN5arrow6Status8KeyErrorIJRA20_KcRlRA11_S2_EEES0_DpOT_.exit

bb.j:                                             ; preds = %.loopexit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %3, align 8, !tbaa !131, !noalias !199 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.j
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !132, !noalias !199
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !199
  resume { ptr, i32 } %i.ac

_ZN5arrow6Status8KeyErrorIJRA20_KcRlRA11_S2_EEES0_DpOT_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !199
  call void @_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  %i.ai = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.k, !prof !88

bb.k:                                             ; preds = %_ZN5arrow6Status8KeyErrorIJRA20_KcRlRA11_S2_EEES0_DpOT_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !89, !range !99, !noundef !100
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN5arrow6StatusD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status8KeyErrorIJRA20_KcRlRA11_S2_EEES0_DpOT_.exit, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.m

_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.o, %bb.f ], [ %i.t, %bb.g ]
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = ptrtoint ptr %.sroa.06.1.i.i to i64
  store i64 %i.an, ptr %i.am, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE4findERSC_.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc14DictionaryMemo22AddOrReplaceDictionaryElRKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Result.104") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %4 = alloca %"class.std::vector.90", align 8    ; 14 uses
  %5 = alloca [1 x %"class.std::shared_ptr.95"], align 16 ; 8 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %i.e = load <2 x ptr>, ptr %3, align 8, !tbaa !134
  store <2 x ptr> %i.e, ptr %5, align 16, !tbaa !134
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.k, align 8
  %i.l = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #24
          to label %.noexc unwind label %bb.l     ; 3 uses

.noexc:                                           ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  store ptr %i.l, ptr %4, align 8, !tbaa !139
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !184
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !133  ; 3 uses
  %i.p = load <2 x ptr>, ptr %5, align 16, !tbaa !134
  store <2 x ptr> %i.p, ptr %i.l, align 8, !tbaa !134
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread, label %bb.e

_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread: ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.q, align 8, !tbaa !136
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread26

_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread26: ; preds = %bb.e
  %i.u = load i32, ptr %i.r, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.r, align 4, !tbaa !3
  store ptr %i.m, ptr %i.t, align 8, !tbaa !136
  br label %bb.f

_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !133 ; 2 uses
  store ptr %i.m, ptr %i.t, align 8, !tbaa !136
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread26, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.x = phi ptr [ %i.o, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread26 ], [ %.pre, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.y, align 8, !tbaa !152
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !154
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25, !inline_history !165
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25, !inline_history !165
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i7 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.ab, %bb.i ], [ %i.al, %bb.j ]
  %i.am = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.am, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  %i.an = phi ptr [ %i.q, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.thread ], [ %i.t, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.t, %bb.g ], [ %i.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.t, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ao = load ptr, ptr %1, align 8, !tbaa !118
  %i.ap = invoke { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRlRS8_EEES0_INSB_14_Node_iteratorIS9_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE7emplaceIJRlRS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.m ; 2 uses

_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE7emplaceIJRlRS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.fca.1.extract = extractvalue { ptr, i8 } %i.ap, 1
  %i.aq = trunc i8 %.fca.1.extract to i1
  br i1 %i.aq, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit, label %bb.n

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEC2ERKS2_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.ac

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  br label %bb.ac

bb.n:                                             ; preds = %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE7emplaceIJRlRS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit
  %.fca.0.extract = extractvalue { ptr, i8 } %i.ap, 0 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !139 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !136 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 32 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !184
  %i.az = load ptr, ptr %4, align 8, !tbaa !139
  store ptr %i.az, ptr %i.at, align 8, !tbaa !139
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !136
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !136
  %i.bb = load ptr, ptr %i.n, align 8, !tbaa !184
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !184
  %.not4.i.i.i.i.i = icmp eq ptr %i.au, %i.aw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.n, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bt, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i ], [ %i.au, %bb.n ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 4 uses
  %i.bf = load atomic i64, ptr %i.be acquire, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 4294967297
  %i.bh = trunc i64 %i.bf to i32                  ; 2 uses
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.be, align 8, !tbaa !152
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 0, ptr %i.bi, align 4, !tbaa !154
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !155
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #25, !inline_history !204
  %i.bm = load ptr, ptr %i.bd, align 8, !tbaa !155
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #25, !inline_history !204
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i.i9 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i9, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = add nsw i32 %i.bh, -1
  store i32 %i.bq, ptr %i.be, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.br = atomicrmw volatile add ptr %i.be, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bh, %bb.r ], [ %i.br, %bb.s ]
  %i.bs = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bs, label %bb.t, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i, !prof !135

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bd) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.p, %.lr.ph.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bt, %i.aw
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !186

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i, %bb.n
  %.not.i.i1.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.bu = ptrtoint ptr %i.ay to i64
  %i.bv = ptrtoint ptr %i.au to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bw) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit: ; preds = %bb.u, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE7emplaceIJRlRS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit
  %.sink = phi i8 [ 1, %_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEE7emplaceIJRlRS6_EEESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEDpOT_.exit ], [ 0, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i ], [ 0, %bb.u ]
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.bx, align 8, !tbaa !205
  %i.by = load ptr, ptr %4, align 8, !tbaa !139   ; 3 uses
  %i.bz = load ptr, ptr %i.an, align 8, !tbaa !136 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cr, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.by, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 4 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.ce = icmp eq i64 %i.cd, 4294967297
  %i.cf = trunc i64 %i.cd to i32                  ; 2 uses
  br i1 %i.ce, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.cc, align 8, !tbaa !152
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cg, align 4, !tbaa !154
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !155
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #25, !inline_history !185
  %i.ck = load ptr, ptr %i.cb, align 8, !tbaa !155
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #25, !inline_history !185
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.co = add nsw i32 %i.cf, -1
  store i32 %i.co, ptr %i.cc, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.cp = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cf, %bb.y ], [ %i.cp, %bb.z ]
  %i.cq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cq, label %bb.aa, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !135

bb.aa:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.w, %.lr.ph.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %i.cr, %i.bz
  br i1 %.not.i.i.i10, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !186

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !139
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit
  %i.cs = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.by, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EEaSEOS5_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.ct = load ptr, ptr %i.n, align 8, !tbaa !184
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cw) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.ac:                                            ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.as, %bb.m ], [ %i.ar, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc19CollectDictionariesERKNS_11RecordBatchERKNS0_21DictionaryFieldMapperE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.108") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 8 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 6 uses
  %6 = alloca %"class.std::shared_ptr.122", align 8 ; 7 uses
  %7 = alloca %"struct.arrow::ipc::(anonymous namespace)::DictionaryCollector", align 8 ; 10 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %2, ptr %7, align 8, !tbaa !206
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !208
  store ptr null, ptr %3, align 8, !tbaa !46, !noalias !208
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -1, ptr %i.b, align 8, !tbaa !49, !noalias !208
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !50, !noalias !208
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !211, !noalias !208 ; 3 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !44, !noalias !208
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !72, !noalias !208
  %sext.i = shl i64 %i.h, 32                      ; 2 uses
  %i.i = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.j = icmp ugt i64 %i.i, 384307168202282325
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %.not = icmp eq i64 %sext.i, 0
  br i1 %.not, label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE7reserveEm.exit.i, label %_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.l = mul nuw nsw i64 %i.i, 24
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #24
          to label %_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i unwind label %.loopexit.split-lp ; 3 uses

_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i: ; preds = %_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.m, ptr %i.a, align 8, !tbaa !214, !noalias !208
  store ptr %i.m, ptr %i.n, align 8, !tbaa !217, !noalias !208
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.i
  store ptr %i.o, ptr %i.k, align 8, !tbaa !218, !noalias !208
  br label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE7reserveEm.exit.i

_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE7reserveEm.exit.i: ; preds = %_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE13_M_deallocateEPS5_m.exit.i.i, %bb.c
  %i.p = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE7reserveEm.exit.i
  %.not25.i = icmp sgt i32 %i.p, 0
  br i1 %.not25.i, label %.lr.ph.i, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.thread

.lr.ph.i:                                         ; preds = %.noexc8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.s = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %.not.i = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %.not.i, label %bb.e, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.thread, !llvm.loop !219

bb.e:                                             ; preds = %.noexc9, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc9 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !208
  %i.u = load i32, ptr %i.c, align 4, !tbaa !50, !noalias !208
  %i.v = add nsw i32 %i.u, 1
  %.sroa.4.8.insert.ext.i.i = zext i32 %i.v to i64
  %.sroa.4.8.insert.shift.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i, 32
  %.sroa.2.8.insert.insert.i.i = add nuw nsw i64 %.sroa.4.8.insert.shift.i.i, %indvars.iv.i
  store ptr %3, ptr %5, align 8, !noalias !208
  store i64 %.sroa.2.8.insert.insert.i.i, ptr %i.q, align 8, !noalias !208
  %i.w = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef %i.w)
          to label %.noexc10 unwind label %.loopexit ; 0 uses

.noexc10:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !208
  %i.y = load ptr, ptr %1, align 8, !tbaa !155, !noalias !208
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !208
  invoke void %i.aa(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.122") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.w)
          to label %.noexc11 unwind label %.loopexit, !inline_history !220

.noexc11:                                         ; preds = %.noexc10
  %i.ab = load ptr, ptr %6, align 8, !tbaa !149, !noalias !208
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollector5VisitERKNS0_8internal13FieldPositionERKSt10shared_ptrINS_5FieldEEPKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.ab)
          to label %_ZN5arrow6StatusD2Ev.exit.i unwind label %bb.l, !noalias !208

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %.noexc11
  %i.ac = load ptr, ptr %4, align 8, !tbaa !74, !noalias !208 ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !74, !noalias !208
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !133, !noalias !208 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8, !noalias !208 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ae, align 8, !tbaa !152, !noalias !208
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !154, !noalias !208
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !155, !noalias !208
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !208
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !noalias !208, !inline_history !221
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !155, !noalias !208
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !208
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !noalias !208, !inline_history !221
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132, !noalias !208
  %.not.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 4, !tbaa !3, !noalias !208
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4, !noalias !208
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.ah, %bb.i ], [ %i.ar, %bb.j ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.as, label %bb.k, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !135

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #25, !noalias !208
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k, %_ZN5arrow6StatusD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !208
  %i.at = icmp eq ptr %i.ac, null
  br i1 %i.at, label %bb.d, label %bb.m

bb.l:                                             ; preds = %.noexc11
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #25, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !208
  br label %.body

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !208
  store ptr %i.ac, ptr %8, align 8, !tbaa !74
  call void @_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  %i.av = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %.not.i13 = icmp eq ptr %i.av, null
  br i1 %.not.i13, label %bb.p, label %bb.n, !prof !88

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !89, !range !99, !noundef !100
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  br label %bb.p

.loopexit:                                        ; preds = %bb.d, %bb.e, %.noexc10
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.b, %_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_M_allocateEm.exit.i.i, %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE7reserveEm.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.l
  %.pn = phi { ptr, i32 } [ %i.au, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  resume { ptr, i32 } %.pn

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.thread: ; preds = %.noexc9, %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  store ptr null, ptr %0, align 8, !tbaa !74
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load <2 x ptr>, ptr %i.a, align 8, !tbaa !222
  store <2 x ptr> %i.ba, ptr %i.az, align 8, !tbaa !222
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !218
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !218
  br label %_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollectorD2Ev.exit

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !214 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.pre27 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !217 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %.pre, %.pre27
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bu, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i ], [ %.pre, %bb.p ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bf, align 8, !tbaa !152
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !154
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !155
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #25, !inline_history !223
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !155
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #25, !inline_history !223
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bi, %bb.t ], [ %i.bs, %bb.u ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.v, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i, !prof !135

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #25
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i: ; preds = %bb.v, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.r, %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.bu, %.pre27
  br i1 %.not.i.i.i.i19, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !224

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !214
  br label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.p
  %i.bv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %.pre, %bb.p ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollectorD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bw = load ptr, ptr %i.k, align 8, !tbaa !218
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.bz) #26
  br label %_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollectorD2Ev.exit

_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollectorD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.thread, %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.130", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !74
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !135

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !131    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !132
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !131    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !132
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %3, align 8, !tbaa !131    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !132
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollectorD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !214  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !152
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !154
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !155
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !225
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !155
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !225
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i, !prof !135

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !224

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !214
  br label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !218
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #26
  br label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal19CollectDictionariesERKNS_11RecordBatchEPNS0_14DictionaryMemoE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 5 uses
  %4 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %6 = alloca %"class.arrow::Result.108", align 8 ; 10 uses
  %7 = alloca %"class.std::vector.112", align 8   ; 8 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = load ptr, ptr %2, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44, !noalias !226 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !72, !noalias !229
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !229
  store ptr null, ptr %4, align 8, !tbaa !46, !noalias !229
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1, ptr %i.i, align 8, !tbaa !49, !noalias !229
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !50, !noalias !229
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow6Schema6fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h), !noalias !229 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51, !noalias !229
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !54, !noalias !229 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = lshr exact i64 %i.q, 4
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit39.thread

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.c ] ; 3 uses
  %i.v = phi ptr [ %i.n, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !229
  %i.w = load i32, ptr %i.j, align 4, !tbaa !50, !noalias !229
  %i.x = add nsw i32 %i.w, 1
  %.sroa.4.8.insert.ext.i.i.i.i.i = zext i32 %i.x to i64
  %.sroa.4.8.insert.shift.i.i.i.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i.i.i.i, 32
  %.sroa.2.8.insert.insert.i.i.i.i.i = add nuw nsw i64 %.sroa.4.8.insert.shift.i.i.i.i.i, %indvars.iv.i.i.i.i
  store ptr %4, ptr %3, align 8, !noalias !229
  store i64 %.sroa.2.8.insert.insert.i.i.i.i.i, ptr %i.u, align 8, !noalias !229
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55, !noalias !229
  call void @_ZN5arrow3ipc21DictionaryFieldMapper4Impl11ImportFieldERKNS0_8internal13FieldPositionERKNS_5FieldE(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.z), !noalias !229, !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !229
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !51, !noalias !229
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !54, !noalias !229 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %sext.i.i.i.i = shl i64 %i.ae, 28
  %i.af = ashr i64 %sext.i.i.i.i, 32
  %i.ag = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.af
  br i1 %i.ag, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit39.thread, !llvm.loop !60

_ZN5arrow6StatusD2Ev.exit39.thread:               ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !229
  store ptr null, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.d

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @_ZN5arrow6Status8FromArgsIJRA32_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(32) @.str.5)
  %.pr = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ah = icmp eq ptr %.pr, null
  br i1 %i.ah, label %bb.d, label %bb.r

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit39.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ai = load ptr, ptr %2, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  call void @_ZN5arrow3ipc19CollectDictionariesERKNS_11RecordBatchERKNS0_21DictionaryFieldMapperE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.108") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.aj)
  %i.ak = load ptr, ptr %6, align 8, !tbaa !74
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.g, label %bb.e, !prof !88

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !214, !noalias !238 ; 5 uses
  store ptr %i.ao, ptr %7, align 8, !tbaa !214, !alias.scope !238
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.as = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !222, !noalias !238
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !217, !noalias !238 ; 3 uses
  store <2 x ptr> %i.as, ptr %i.ap, align 8, !tbaa !222, !alias.scope !238
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false), !noalias !238
  %i.au = icmp eq ptr %i.ao, %i.at                ; 2 uses
  br i1 %i.au, label %.critedge35, label %.lr.ph

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit41
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.046.050, i64 24 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.at
  br i1 %i.aw, label %.critedge35, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.046.050 = phi ptr [ %i.av, %bb.h ], [ %i.ao, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ax = load i64, ptr %.sroa.046.050, align 8, !tbaa !239
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.046.050, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !149
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  invoke void @_ZN5arrow3ipc14DictionaryMemo13AddDictionaryElRKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %_ZN5arrow6StatusD2Ev.exit41 unwind label %bb.i

_ZN5arrow6StatusD2Ev.exit41:                      ; preds = %.lr.ph
  %i.bb = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  store ptr %i.bb, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.h, label %.critedge

bb.i:                                             ; preds = %.lr.ph
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.q

.critedge35:                                      ; preds = %bb.h, %bb.g
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !242
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit41, %.critedge35
  br i1 %i.au, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bv, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i ], [ %i.ao, %.critedge ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bg, align 8, !tbaa !152
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !154
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !155
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #25, !inline_history !225
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !155
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #25, !inline_history !225
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.m ], [ %i.bt, %bb.n ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.o, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i, !prof !135

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #25
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, %i.at
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !224

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !214
  br label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.critedge
  %i.bw = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ao, %.critedge ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bx = load ptr, ptr %i.ar, align 8, !tbaa !218
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #26
  br label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev.exit

_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZN5arrow6StatusC2ERKS0_.exit

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.e, %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev.exit
  call void @_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.r

bb.q:                                             ; preds = %bb.i, %bb.f
  %.pn32 = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.bd, %bb.i ]
  call void @_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  resume { ptr, i32 } %.pn32

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !214    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !152
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !154
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !245
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !245
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i, !prof !135

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i

_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !224

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !214
  br label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !218
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit.thread, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !217  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !152
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !154
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !246
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !246
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i, !prof !135

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !224

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !214
  br label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.y = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !218
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #26
  br label %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit

_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit.thread, !prof !167

_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit
  %i.ae = phi ptr [ %.pr, %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !89, !range !99, !noundef !100
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit.thread, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc19ResolveDictionariesERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS4_EERKNS0_14DictionaryMemoEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"struct.arrow::ipc::(anonymous namespace)::DictionaryResolver", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %2, ptr %6, align 8, !tbaa !247
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr null, ptr %4, align 8, !noalias !252
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4294967295, ptr %i.b, align 8, !noalias !252
  %i.c = load ptr, ptr %1, align 8, !tbaa !140, !noalias !252 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !140, !noalias !252 ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 2 uses
  %.sroa.025.028.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.m, %.critedge.i ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.025.028.i, align 8, !tbaa !146, !noalias !252 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.critedge.i, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !252
  %i.i = load i32, ptr %i.g, align 4, !tbaa !50, !noalias !252
  %i.j = add nsw i32 %i.i, 1
  %.sroa.4.8.insert.ext.i.i = zext i32 %i.j to i64
  %.sroa.4.8.insert.shift.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i, 32
  %.sroa.2.8.insert.insert.i.i = add nuw nsw i64 %.sroa.4.8.insert.shift.i.i, %indvars.iv.i
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver10VisitFieldENS0_8internal13FieldPositionEPNS_9ArrayDataE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(16) %6, ptr nonnull %4, i64 %.sroa.2.8.insert.insert.i.i, ptr noundef nonnull %i.h) #30, !noalias !252, !inline_history !255
  %i.k = load ptr, ptr %5, align 8, !tbaa !74, !noalias !252 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !252
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge.i, label %_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE.exit

.critedge.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.025.028.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE.exit, label %bb.b

_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %.critedge.i, %bb.a
  %storemerge = phi ptr [ null, %bb.a ], [ %i.k, %_ZN5arrow6StatusD2Ev.exit.i ], [ null, %.critedge.i ]
  store ptr %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE(ptr dead_on_unwind noalias writable writeonly align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr %3, i64 %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %i.a, align 8
  %i.b = load ptr, ptr %2, align 8, !tbaa !140    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.critedge19, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.sroa.025.028 = phi ptr [ %i.b, %.lr.ph ], [ %i.l, %.critedge ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.025.028, align 8, !tbaa !146 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.critedge, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.h = load i32, ptr %i.f, align 4, !tbaa !50
  %i.i = add nsw i32 %i.h, 1
  %.sroa.4.8.insert.ext.i = zext i32 %i.i to i64
  %.sroa.4.8.insert.shift.i = shl nuw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %indvars.iv
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver10VisitFieldENS0_8internal13FieldPositionEPNS_9ArrayDataE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %5, i64 %.sroa.2.8.insert.insert.i, ptr noundef nonnull %i.g)
  %i.j = load ptr, ptr %6, align 8, !tbaa !74     ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge, label %.critedge18

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.025.028, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %.critedge19, label %bb.b

.critedge19:                                      ; preds = %.critedge, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !256
  br label %.critedge18

.critedge18:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %.critedge19
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow6Schema6fieldsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc21DictionaryFieldMapper4Impl11ImportFieldERKNS0_8internal13FieldPositionERKNS_5FieldE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 5 uses
  %4 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  %i.e = icmp eq i32 %i.d, 31
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !170  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !259
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %.pre, %bb.b ], [ %i.d, %bb.a ]
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ]  ; 3 uses
  %i.i = icmp eq i32 %i.h, 29
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow3ipc21DictionaryFieldMapper4Impl10InsertPathERKNS0_8internal13FieldPositionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load i8, ptr %3, align 1, !tbaa !132
  store i8 %i.x, ptr %i.w, align 1, !tbaa !132
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !132
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !132
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8, !tbaa !131
  store i64 %.0, ptr %i.h, align 8, !tbaa !132
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setIlSt4lessIlESaIlEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106
  invoke void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #27
  unreachable

_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !317
  tail call void @_ZNSt8_Rb_treeIllSt9_IdentityIlESt4lessIlESaIlEE8_M_eraseEPSt13_Rb_tree_nodeIlE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !318  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !319

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_mapIlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS4_EESt4hashIlESt8equal_toIlESaISt4pairIKlS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.noexc.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.noexc.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !63 ; 2 uses
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS8_EEELb0EEEEE18_M_deallocate_nodeEPSC_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %.06.i.i.i)
          to label %.noexc.i.i unwind label %bb.b

.noexc.i.i:                                       ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !121

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #27
  unreachable

_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.noexc.i.i, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !114
  %i.i = shl i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %0, align 8, !tbaa !112    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  %i.m = load i64, ptr %i.g, align 8, !tbaa !114
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !320  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !63 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !152
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !154
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !321
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !321
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i.i, !prof !135

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 32) #26
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !322

_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i.i, %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !117
  %i.x = shl i64 %i.w, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.u, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.y = load ptr, ptr %0, align 8, !tbaa !115    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !117
  %i.ac = shl i64 %i.ab, 3
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #26
  br label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.h, %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !323
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !155
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #25, !inline_history !323
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS8_EEELb0EEEEE18_M_deallocate_nodeEPSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !152
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !154
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !155
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !324
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !155
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25, !inline_history !324
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i, !prof !135

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !186

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !139
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.a
  %i.w = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i.i, label %_ZSt10destroy_atISt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEEEvPT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !184
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #26
  br label %_ZSt10destroy_atISt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEEEvPT_.exit

_ZSt10destroy_atISt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEEEvPT_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !152
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !154
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !325
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !325
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !135

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !131  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5arrow6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !132
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #26
  br label %_ZN5arrow6Status5StateD2Ev.exit

_ZN5arrow6Status5StateD2Ev.exit:                  ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6Status5StateD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.130", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !74
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !135

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !131    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !132
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !131    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !132
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %3, align 8, !tbaa !131    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !132
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN5arrow3ipc12_GLOBAL__N_123HasUnresolvedNestedDictERKNS_9ArrayDataE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) unnamed_addr #19 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !259
  %i.d = icmp eq i32 %i.c, 29
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !146  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef zeroext i1 @_ZN5arrow3ipc12_GLOBAL__N_123HasUnresolvedNestedDictERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(120) %i.f)
  br i1 %i.g, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140  ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.sroa.011.015 = phi ptr [ %i.o, %.lr.ph ], [ %i.i, %bb.d ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.011.015, align 8, !tbaa !146
  %i.n = tail call fastcc noundef zeroext i1 @_ZN5arrow3ipc12_GLOBAL__N_123HasUnresolvedNestedDictERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(120) %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.011.015, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.k
  %or.cond = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c, %bb.b
  %.3 = phi i1 [ true, %bb.c ], [ true, %bb.b ], [ false, %bb.d ], [ %i.n, %.lr.ph ]
  ret i1 %.3
}

declare void @_ZN5arrow8internal17ValidateArrayFullERKNS_9ArrayDataE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #8

declare void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.122") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !154
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !326
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !326
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.201") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !152
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !154
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !327
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !327
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, !prof !135

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !167

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !89, !range !99, !noundef !100
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !141    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !144  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !152
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !154
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !328
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25, !inline_history !328
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i, !prof !135

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !169

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !141
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !145
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA66_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(66) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !329
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !329
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !299, !noalias !329, !nonnull !100, !align !309
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(66) %2) #25, !noalias !329
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(66) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA66_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !329 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA66_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA66_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA66_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !329
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA66_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA66_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !329
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA66_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !131    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !132
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA66_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !131    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !132
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !141    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !134
  store ptr null, ptr %i.r, align 8, !tbaa !133
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !134
  store ptr null, ptr %2, align 8, !tbaa !149
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !134, !alias.scope !335, !noalias !332
  store ptr null, ptr %i.t, align 8, !tbaa !133, !alias.scope !335, !noalias !332
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !134, !alias.scope !332, !noalias !335
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !149, !alias.scope !335, !noalias !332
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !337

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !134, !alias.scope !341, !noalias !338
  store ptr null, ptr %i.y, align 8, !tbaa !133, !alias.scope !341, !noalias !338
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !134, !alias.scope !338, !noalias !341
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !149, !alias.scope !341, !noalias !338
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !337

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !145
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5ArrayEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !141
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !144
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !145
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !184
  %i.g = load ptr, ptr %0, align 8, !tbaa !139    ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133  ; 2 uses
  %i.p = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !134
  store <2 x ptr> %i.p, ptr %.011.i.i.i.i.i, align 8, !tbaa !134
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !343

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre47 = load ptr, ptr %0, align 8, !tbaa !139
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i
  %i.x = phi ptr [ %.pre47, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit ], [ %i.g, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !136  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ac, align 8, !tbaa !152
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !154
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !155
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25, !inline_history !195
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !155
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25, !inline_history !195
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %bb.j ], [ %i.ap, %bb.k ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.l, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, !prof !135

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.ar, %i.z
  br i1 %.not.i.i16, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEEEvT_S5_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !186

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEEEvT_S5_.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !139
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEEEvT_S5_.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEEEvT_S5_.exitthread-pre-split, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit
  %i.as = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEEEvT_S5_.exitthread-pre-split ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEEEvT_S5_.exit
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !184
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEEEvT_S5_.exit, %bb.m
  store ptr %i.m, ptr %0, align 8, !tbaa !139
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.c ; 2 uses
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !136
  store ptr %i.ax, ptr %i.e, align 8, !tbaa !184
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.n:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !136 ; 3 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.i                     ; 3 uses
  %.not = icmp ult i64 %i.bb, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKSt10shared_ptrIN5arrow9ArrayDataEElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = icmp sgt i64 %i.d, 0
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i17:                               ; preds = %bb.o, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.cf, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i ], [ %i.d, %bb.o ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ce, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i ], [ %i.g, %bb.o ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cd, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i ], [ %1, %bb.o ] ; 3 uses
  %i.bd = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !146
  store ptr %i.bd, ptr %.0811.i.i.i.i.i, align 8, !tbaa !146
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !133 ; 4 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i17
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i18 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i18, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !133
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.bn = phi ptr [ %i.bh, %bb.p ], [ %i.bh, %bb.r ], [ %.pr.pre.i.i.i.i.i.i.i.i, %bb.s ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not8.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bo, align 8, !tbaa !152
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !154
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !155
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #25, !inline_history !344
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !155
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #25, !inline_history !344
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i9.i.i.i.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.w ], [ %i.cb, %bb.x ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.y, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, !prof !135

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.u, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !133
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i17
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.cf = add nsw i64 %.012.i.i.i.i.i, -1
  %i.cg = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i17, label %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !345

_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit.loopexit: ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !136
  br label %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit

_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit.loopexit, %bb.o
  %i.ch = phi ptr [ %i.az, %bb.o ], [ %.pre, %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.g, %bb.o ], [ %i.ce, %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit.loopexit ] ; 3 uses
  %.not.i19 = icmp eq ptr %i.ch, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i19, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cz, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 4 uses
  %i.cl = load atomic i64, ptr %i.ck acquire, align 8 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 4294967297
  %i.cn = trunc i64 %i.cl to i32                  ; 2 uses
  br i1 %i.cm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.ck, align 8, !tbaa !152
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  store i32 0, ptr %i.co, align 4, !tbaa !154
  %i.cp = load ptr, ptr %i.cj, align 8, !tbaa !155
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25, !inline_history !346
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !155
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25, !inline_history !346
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.cv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i21 = icmp eq i8 %i.cv, 0
  br i1 %.not.i.i.i.i.i.i.i.i21, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = add nsw i32 %i.cn, -1
  store i32 %i.cw, ptr %i.ck, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cx = atomicrmw volatile add ptr %i.ck, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cn, %bb.ac ], [ %i.cx, %bb.ad ]
  %i.cy = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cy, label %bb.ae, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !135

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.aa, %.lr.ph.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cz, %i.ch
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !186

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.ay, align 8, !tbaa !136
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZSt9__advanceIPKSt10shared_ptrIN5arrow9ArrayDataEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.n
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.bb ; 2 uses
  %i.da = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 0
  br i1 %i.db, label %.lr.ph.i.i.i.i.i23, label %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38

.lr.ph.i.i.i.i.i23:                               ; preds = %_ZSt9__advanceIPKSt10shared_ptrIN5arrow9ArrayDataEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i36
  %.012.i.i.i.i.i24 = phi i64 [ %i.ee, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i36 ], [ %i.da, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow9ArrayDataEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.ed, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i36 ], [ %i.g, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow9ArrayDataEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.ec, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i36 ], [ %1, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow9ArrayDataEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.dc = load ptr, ptr %.0910.i.i.i.i.i26, align 8, !tbaa !146
  store ptr %i.dc, ptr %.0811.i.i.i.i.i25, align 8, !tbaa !146
  %i.dd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !133 ; 4 uses
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !133 ; 3 uses
  %.not.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i.i.i.i.i.i.i.i27, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i36, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i23
  %.not7.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.df, null
  br i1 %.not7.i.i.i.i.i.i.i.i28, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 3 uses
  %i.di = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i29 = icmp eq i8 %i.di, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i29, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dj = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.dh, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30

bb.ai:                                            ; preds = %bb.ag
  %i.dl = atomicrmw volatile add ptr %i.dh, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i37 = load ptr, ptr %i.dd, align 8, !tbaa !133
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30: ; preds = %bb.ai, %bb.ah, %bb.af
  %i.dm = phi ptr [ %i.dg, %bb.af ], [ %i.dg, %bb.ah ], [ %.pr.pre.i.i.i.i.i.i.i.i37, %bb.ai ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i31 = icmp eq ptr %i.dm, null
  br i1 %.not8.i.i.i.i.i.i.i.i31, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4294967297
  %i.dq = trunc i64 %i.do to i32                  ; 2 uses
  br i1 %i.dp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dn, align 8, !tbaa !152
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 0, ptr %i.dr, align 4, !tbaa !154
  %i.ds = load ptr, ptr %i.dm, align 8, !tbaa !155
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  tail call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #25, !inline_history !344
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !155
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #25, !inline_history !344
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35

bb.al:                                            ; preds = %bb.aj
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i9.i.i.i.i.i.i.i.i32 = icmp eq i8 %i.dy, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i32, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dz = add nsw i32 %i.dq, -1
  store i32 %i.dz, ptr %i.dn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33

bb.an:                                            ; preds = %bb.al
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i.i.i.i34 = phi i32 [ %i.dq, %bb.am ], [ %i.ea, %bb.an ]
  %i.eb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i34, 1
  br i1 %i.eb, label %bb.ao, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35, !prof !135

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33, %bb.ak, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !133
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i36

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i36: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35, %.lr.ph.i.i.i.i.i23
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 16
  %i.ee = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.ef = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i23, label %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38.loopexit, !llvm.loop !345

_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38.loopexit: ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSERKS2_.exit.i.i.i.i.i36
  %.pre46 = load ptr, ptr %i.ay, align 8, !tbaa !136
  br label %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38

_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38: ; preds = %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38.loopexit, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow9ArrayDataEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.eg = phi ptr [ %.pre46, %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38.loopexit ], [ %i.az, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow9ArrayDataEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.eq, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.eg, %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ep, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !133 ; 2 uses
  %i.ej = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !134
  store <2 x ptr> %i.ej, ptr %.011.i.i.i.i, align 8, !tbaa !134
  %.not.i.i.i.i.i.i.i.i39 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i39, label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 3 uses
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i40 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i40, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !3
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.eo = atomicrmw volatile add ptr %i.ek, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq, %.lr.ph.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ep, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !343

_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38
  %.0.lcssa.i.i.i.i = phi ptr [ %i.eg, %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit38 ], [ %i.eq, %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ay, align 8, !tbaa !136
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_ET0_T_S8_S7_.exit, %_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow9ArrayDataEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_deallocateEPS3_m.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINSt8__detail14_Node_iteratorISt4pairIKlSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS8_EEELb0ELb0EEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.130", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !74
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !135

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !131    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !132
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !131    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !132
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.m = load ptr, ptr %3, align 8, !tbaa !131    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !132
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #27
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA20_KcRlRA11_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(11) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !299, !nonnull !100, !align !309
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(20) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA20_KcRlRA11_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA20_KcRlRA11_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !299, !nonnull !100, !align !309
  %i.f = load i64, ptr %2, align 8, !tbaa !84
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA20_KcRlRA11_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA20_KcRlRA11_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA20_KcRlRA11_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E1_clIS4_EEDaSI_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !299, !nonnull !100, !align !309
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %3) #25
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(11) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA20_KcRlRA11_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA20_KcRlRA11_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA20_KcRlRA11_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS5_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA20_KcRlRA11_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS7_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.c:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollector5VisitERKNS0_8internal13FieldPositionERKSt10shared_ptrINS_5FieldEEPKNS_5ArrayE:bb.a
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #24
          to label %.noexc52 unwind label %bb.p   ; 5 uses

.noexc52:                                         ; preds = %.noexc9.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ag
  store i32 0, ptr %i.aj, align 4, !tbaa !3, !noalias !363
  %i.al = getelementptr i8, ptr %i.aj, i64 4      ; 3 uses
  %i.am = add nsw i64 %i.ag, -1                   ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc52
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.am, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.al, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !3, !noalias !363
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc52
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.ao, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.al, %.noexc52 ]
  %i.ap = zext nneg i32 %i.af to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %i.aq, %bb.i ] ; 2 uses
  %.0810.i = phi ptr [ %2, %.lr.ph.i ], [ %i.au, %bb.i ] ; 2 uses
  %i.aq = add nsw i64 %indvars.iv.i, -1           ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !49, !noalias !363
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.aq
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3, !noalias !363
  %i.au = load ptr, ptr %.0810.i, align 8, !tbaa !46, !noalias !363
  %i.av = trunc nuw i64 %indvars.iv.i to i32
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %bb.i, label %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit, !llvm.loop !276

_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.0.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.aj, %bb.i ]
  %.sroa.6.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %.0.i.i.i.i.i.ph.i, %bb.i ]
  %.sroa.8.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ak, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !44, !noalias !366
  store ptr %.sroa.0.0, ptr %4, align 8, !tbaa !64, !noalias !366
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.sroa.6.0, ptr %i.ay, align 8, !tbaa !277, !noalias !366
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %.sroa.8.0, ptr %i.az, align 8, !tbaa !67, !noalias !366
  invoke void @_ZNK5arrow3ipc21DictionaryFieldMapper4Impl10GetFieldIdESt6vectorIiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull %4)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit
  %i.ba = load ptr, ptr %4, align 8, !tbaa !64, !noalias !366 ; 3 uses
  %.not.i.i.i.i53 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i53, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !67, !noalias !366
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.be) #26
  br label %bb.n

bb.l:                                             ; preds = %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %4, align 8, !tbaa !64, !noalias !366 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit57, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !67, !noalias !366
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bk) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit57

bb.n:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bl = load ptr, ptr %7, align 8, !tbaa !74
  %i.bm = icmp eq ptr %i.bl, null                 ; 2 uses
  br i1 %i.bm, label %bb.r, label %bb.o, !prof !88

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.critedge unwind label %bb.q

bb.p:                                             ; preds = %.noexc9.i, %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit57

bb.q:                                             ; preds = %bb.o
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.r:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !84 ; 2 uses
  store i64 %i.bq, ptr %i.a, align 8, !tbaa !84
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !217 ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !218
  %.not.i58 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i58, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !239
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load ptr, ptr %i.p, align 8, !tbaa !133 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %5, align 16, !tbaa !134
  store <2 x ptr> %i.bx, ptr %i.bv, align 8, !tbaa !134
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !3
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !3
  br label %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.v:                                             ; preds = %bb.t
  %i.cc = atomicrmw volatile add ptr %i.by, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.br, align 8, !tbaa !217
  br label %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.v, %bb.u, %bb.s
  %i.cd = phi ptr [ %i.bs, %bb.s ], [ %i.bs, %bb.u ], [ %.pre.i, %bb.v ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.ce, ptr %i.br, align 8, !tbaa !217
  br label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12emplace_backIJRlRS4_EEERS5_DpOT_.exit

bb.w:                                             ; preds = %bb.r
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  invoke void @_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE17_M_realloc_insertIJRlRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12emplace_backIJRlRS4_EEERS5_DpOT_.exit unwind label %bb.af

_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12emplace_backIJRlRS4_EEERS5_DpOT_.exit: ; preds = %bb.w, %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12emplace_backIJRlRS4_EEERS5_DpOT_.exit
  %i.cg = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.x, !prof !88

bb.x:                                             ; preds = %.critedge
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !89, !range !99, !noundef !100
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultIlED2Ev.exit

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %.critedge, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.ck = load ptr, ptr %i.p, align 8, !tbaa !133 ; 8 uses
  %.not.i.i60 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i60, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5arrow6ResultIlED2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 4 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 4294967297
  %i.co = trunc i64 %i.cm to i32                  ; 2 uses
  br i1 %i.cn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cl, align 8, !tbaa !152
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store i32 0, ptr %i.cp, align 4, !tbaa !154
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !155
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #25, !inline_history !157
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !155
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #25, !inline_history !157
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.cw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i61 = icmp eq i8 %i.cw, 0
  br i1 %.not.i.i.i61, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cx = add nsw i32 %i.co, -1
  store i32 %i.cx, ptr %i.cl, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.cy = atomicrmw volatile add ptr %i.cl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ %i.co, %bb.ac ], [ %i.cy, %bb.ad ]
  %i.cz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cz, label %bb.ae, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ck) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %i.bm, label %_ZN5arrow6StatusD2Ev.exit69, label %.critedge47

bb.af:                                            ; preds = %bb.w
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.q
  %.pn40 = phi { ptr, i32 } [ %i.bo, %bb.q ], [ %i.da, %bb.af ]
  %i.db = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.db, null
  br i1 %.not.i.i62, label %_ZN5arrow6ResultIlED2Ev.exit63, label %bb.ah, !prof !88

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !89, !range !99, !noundef !100
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_ZN5arrow6ResultIlED2Ev.exit63, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultIlED2Ev.exit63

_ZN5arrow6ResultIlED2Ev.exit63:                   ; preds = %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit57

_ZNSt6vectorIiSaIiEED2Ev.exit57:                  ; preds = %bb.l, %bb.m, %bb.p, %_ZN5arrow6ResultIlED2Ev.exit63, %bb.h
  %.pn40.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn40, %_ZN5arrow6ResultIlED2Ev.exit63 ], [ %i.bn, %bb.p ], [ %i.bf, %bb.l ], [ %i.bf, %bb.m ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %.pn40.pn.pn

_ZN5arrow6StatusD2Ev.exit65:                      ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollector12WalkChildrenERKNS0_8internal13FieldPositionERKNS_8DataTypeERKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(72) %.038, ptr noundef nonnull align 8 dereferenceable(32) %.026)
  %i.df = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  store ptr %i.df, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit69, label %.critedge47

_ZN5arrow6StatusD2Ev.exit69:                      ; preds = %_ZN5arrow6StatusD2Ev.exit65, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !369
  br label %.critedge47

.critedge45:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !133 ; 8 uses
  %.not.i.i70 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i70, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74, label %bb.aj

bb.aj:                                            ; preds = %.critedge45
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 4 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8 ; 2 uses
  %i.dk = icmp eq i64 %i.dj, 4294967297
  %i.dl = trunc i64 %i.dj to i32                  ; 2 uses
  br i1 %i.dk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.di, align 8, !tbaa !152
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 0, ptr %i.dm, align 4, !tbaa !154
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !155
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #25, !inline_history !157
  %i.dq = load ptr, ptr %i.dh, align 8, !tbaa !155
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #25, !inline_history !157
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74

bb.al:                                            ; preds = %bb.aj
  %i.dt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i71 = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i.i71, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = add nsw i32 %i.dl, -1
  store i32 %i.du, ptr %i.di, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72

bb.an:                                            ; preds = %bb.al
  %i.dv = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i73 = phi i32 [ %i.dl, %bb.am ], [ %i.dv, %bb.an ]
  %i.dw = icmp eq i32 %.0.i.i.i.i73, 1
  br i1 %i.dw, label %bb.ao, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74, !prof !135

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74: ; preds = %.critedge45, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i72, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %.critedge47

.critedge47:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit65, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit74, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit69
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow15DictionaryArray10dictionaryEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollector12WalkChildrenERKNS0_8internal13FieldPositionERKNS_8DataTypeERKNS_5ArrayE(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.122", align 8 ; 8 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !139
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv
  call void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.122") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.s = load i32, ptr %i.l, align 4, !tbaa !50
  %i.t = add nsw i32 %i.s, 1
  %.sroa.4.8.insert.ext.i = zext i32 %i.t to i64
  %.sroa.4.8.insert.shift.i = shl nuw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %indvars.iv
  store ptr %2, ptr %7, align 8
  store i64 %.sroa.2.8.insert.insert.i, ptr %i.m, align 8
  %i.u = load ptr, ptr %5, align 8, !tbaa !149
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_119DictionaryCollector5VisitERKNS0_8internal13FieldPositionERKSt10shared_ptrINS_5FieldEEPKNS_5ArrayE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.u)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  %i.v = load ptr, ptr %6, align 8, !tbaa !74     ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.w = icmp eq ptr %i.v, null
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !133  ; 15 uses
  %.not.i.i = icmp eq ptr %i.x, null              ; 2 uses
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit24, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.y

_ZN5arrow6StatusD2Ev.exit24:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.z, align 8, !tbaa !152
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !154
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25, !inline_history !157
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25, !inline_history !157
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.ac, %bb.g ], [ %i.am, %bb.h ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.i, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit24, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %sext = shl i64 %i.as, 28
  %i.at = ashr i64 %sext, 32
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge, !llvm.loop !372

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit
  br i1 %.not.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.av, align 8, !tbaa !152
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !154
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25, !inline_history !157
  %i.bd = load ptr, ptr %i.x, align 8, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25, !inline_history !157
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i26 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i26, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

bb.n:                                             ; preds = %bb.l
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i28 = phi i32 [ %i.ay, %bb.m ], [ %i.bi, %bb.n ]
  %i.bj = icmp eq i32 %.0.i.i.i.i28, 1
  br i1 %i.bj, label %bb.o, label %bb.p, !prof !135

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i27, %bb.k, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !373
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE17_M_realloc_insertIJRlRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !217  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !214    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
  unreachable

_ZNKSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = load i64, ptr %2, align 8, !tbaa !84
  store i64 %i.r, ptr %i.q, align 8, !tbaa !239
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !133  ; 2 uses
  %i.v = load <2 x ptr>, ptr %3, align 8, !tbaa !134
  store <2 x ptr> %i.v, ptr %i.s, align 8, !tbaa !134
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit

_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit: ; preds = %_ZNKSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.d, %bb.e
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.p, %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %i.c, %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.ab = load i64, ptr %.0911.i.i.i, align 8, !tbaa !239, !alias.scope !379, !noalias !376
  store i64 %i.ab, ptr %.012.i.i.i, align 8, !tbaa !239, !alias.scope !376, !noalias !379
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.af = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !134, !alias.scope !379, !noalias !376
  store ptr null, ptr %i.ae, align 8, !tbaa !133, !alias.scope !379, !noalias !376
  store <2 x ptr> %i.af, ptr %i.ac, align 8, !tbaa !134, !alias.scope !376, !noalias !379
  store ptr null, ptr %i.ad, align 8, !tbaa !149, !alias.scope !379, !noalias !376
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !381

_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %.lr.ph.i.i.i, %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZSt12construct_atISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEJRlRS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit ], [ %i.ah, %.lr.ph.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %.lr.ph.i.i.i18
  %.012.i.i.i19 = phi ptr [ %i.ap, %.lr.ph.i.i.i18 ], [ %i.ai, %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 3 uses
  %.0911.i.i.i20 = phi ptr [ %i.ao, %.lr.ph.i.i.i18 ], [ %1, %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %i.aj = load i64, ptr %.0911.i.i.i20, align 8, !tbaa !239, !alias.scope !385, !noalias !382
  store i64 %i.aj, ptr %.012.i.i.i19, align 8, !tbaa !239, !alias.scope !382, !noalias !385
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16
  %i.an = load <2 x ptr>, ptr %i.al, align 8, !tbaa !134, !alias.scope !385, !noalias !382
  store ptr null, ptr %i.am, align 8, !tbaa !133, !alias.scope !385, !noalias !382
  store <2 x ptr> %i.an, ptr %i.ak, align 8, !tbaa !134, !alias.scope !382, !noalias !385
  store ptr null, ptr %i.al, align 8, !tbaa !149, !alias.scope !385, !noalias !382
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23, label %.lr.ph.i.i.i18, !llvm.loop !381

_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23: ; preds = %.lr.ph.i.i.i18, %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.ai, %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ap, %.lr.ph.i.i.i18 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i24 = icmp eq ptr %i.c, null
  br i1 %.not.i24, label %_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !218
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #26
  br label %_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt4pairIlSt10shared_ptrIN5arrow5ArrayEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit23, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !214
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !217
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver10VisitFieldENS0_8internal13FieldPositionEPNS_9ArrayDataE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr %2, i64 %3, ptr noundef captures(none) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 8 uses
  %6 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 5 uses
  %7 = alloca %"class.arrow::Result", align 8     ; 20 uses
  %8 = alloca %"class.arrow::Result.72", align 8  ; 17 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 5 uses
  store ptr %2, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = load ptr, ptr %4, align 8, !tbaa !170    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  %i.e = icmp eq i32 %i.d, 31
  %i.f = lshr i64 %3, 32                          ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !259
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.d, %bb.a ]
  %i.j = icmp eq i32 %i.i, 29
  br i1 %i.j, label %bb.d, label %bb.am

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.k = load ptr, ptr %1, align 8, !tbaa !387, !nonnull !100, !align !309
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.n = ashr i64 %3, 32                          ; 3 uses
  %i.o = icmp slt i64 %3, 0
  br i1 %i.o, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29, !noalias !388
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.d
  %.not.i.i.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit, label %.noexc9.i

.noexc9.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #24, !noalias !388 ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n
  store i32 0, ptr %i.q, align 4, !tbaa !3, !noalias !388
  %i.s = getelementptr i8, ptr %i.q, i64 4        ; 3 uses
  %i.t = add nsw i64 %i.n, -1                     ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc9.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.t, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !3, !noalias !388
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc9.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.v, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.s, %.noexc9.i ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.i ], [ %i.w, %bb.e ] ; 2 uses
  %.0810.i = phi ptr [ %6, %.lr.ph.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.w = add nsw i64 %indvars.iv.i, -1            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !49, !noalias !388
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.w
  store i32 %i.y, ptr %i.z, align 4, !tbaa !3, !noalias !388
  %i.aa = load ptr, ptr %.0810.i, align 8, !tbaa !46, !noalias !388
  %i.ab = trunc nuw i64 %indvars.iv.i to i32
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %bb.e, label %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit, !llvm.loop !276

_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.076.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.q, %bb.e ]
  %.sroa.679.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %.0.i.i.i.i.i.ph.i, %bb.e ]
  %.sroa.8.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !44, !noalias !391
  store ptr %.sroa.076.0, ptr %5, align 8, !tbaa !64, !noalias !391
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.sroa.679.0, ptr %i.ae, align 8, !tbaa !277, !noalias !391
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %.sroa.8.0, ptr %i.af, align 8, !tbaa !67, !noalias !391
  invoke void @_ZNK5arrow3ipc21DictionaryFieldMapper4Impl10GetFieldIdESt6vectorIiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull %5)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit
  %i.ag = load ptr, ptr %5, align 8, !tbaa !64, !noalias !391 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !67, !noalias !391
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %bb.j

bb.h:                                             ; preds = %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %5, align 8, !tbaa !64, !noalias !391 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit46, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.af, align 8, !tbaa !67, !noalias !391
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit46

bb.j:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ar = load ptr, ptr %7, align 8, !tbaa !74
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.m, label %bb.k, !prof !88

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.critedge unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.m:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.aw = load ptr, ptr %1, align 8, !tbaa !387, !nonnull !100, !align !309
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !249
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !118, !noalias !394
  invoke void @_ZN5arrow3ipc14DictionaryMemo4Impl15ReifyDictionaryElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.72") align 8 %8, ptr noundef nonnull align 8 dereferenceable(120) %i.az, i64 noundef %i.av, ptr noundef %i.ay)
          to label %_ZNK5arrow3ipc14DictionaryMemo13GetDictionaryElPNS_10MemoryPoolE.exit unwind label %bb.o

_ZNK5arrow3ipc14DictionaryMemo13GetDictionaryElPNS_10MemoryPoolE.exit: ; preds = %bb.m
  %i.ba = load ptr, ptr %8, align 8, !tbaa !74
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.q, label %bb.n, !prof !88

bb.n:                                             ; preds = %_ZNK5arrow3ipc14DictionaryMemo13GetDictionaryElPNS_10MemoryPoolE.exit
  store ptr null, ptr %0, align 8, !tbaa !74
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.critedge42 unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.p:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.q:                                             ; preds = %_ZNK5arrow3ipc14DictionaryMemo13GetDictionaryElPNS_10MemoryPoolE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bi = load <2 x ptr>, ptr %i.be, align 8, !tbaa !134, !noalias !397
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !133 ; 8 uses
  store <2 x ptr> %i.bi, ptr %i.bg, align 8, !tbaa !134
  %.not.i.i.i.i48 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i48, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bk, align 8, !tbaa !152
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !154
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !155
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #25, !inline_history !402
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !155
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #25, !inline_history !402
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i49 = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i49, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.u ], [ %i.bx, %bb.v ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.w, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %.sroa.02.0.copyload = load ptr, ptr %6, align 8, !tbaa !403
  %.sroa.23.0.copyload = load i64, ptr %i.a, align 8
  %i.bz = load ptr, ptr %i.bg, align 8, !tbaa !146
  invoke fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver10VisitFieldENS0_8internal13FieldPositionEPNS_9ArrayDataE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, ptr noundef %i.bz)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.x

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ca = load ptr, ptr %9, align 8, !tbaa !74    ; 2 uses
  store ptr %i.ca, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.cb = icmp eq ptr %i.ca, null
  %i.cc = load ptr, ptr %8, align 8, !tbaa !74    ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null                 ; 2 uses
  br i1 %i.cb, label %_ZN5arrow6StatusD2Ev.exit54, label %.critedge44

bb.x:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.ai

_ZN5arrow6StatusD2Ev.exit54:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  br i1 %i.cd, label %bb.y, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !88

bb.y:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit54
  %i.cf = load ptr, ptr %i.bf, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i55 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i55, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 4 uses
  %i.ch = load atomic i64, ptr %i.cg acquire, align 8 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 4294967297
  %i.cj = trunc i64 %i.ch to i32                  ; 2 uses
  br i1 %i.ci, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cg, align 8, !tbaa !152
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  store i32 0, ptr %i.ck, align 4, !tbaa !154
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !155
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !404
  %i.co = load ptr, ptr %i.cf, align 8, !tbaa !155
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25, !inline_history !404
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.cr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cr, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = add nsw i32 %i.cj, -1
  store i32 %i.cs, ptr %i.cg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ct = atomicrmw volatile add ptr %i.cg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cj, %bb.ac ], [ %i.ct, %bb.ad ]
  %i.cu = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cu, label %bb.ae, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, !prof !135

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aa
  %.pr.i.pr = load ptr, ptr %8, align 8, !tbaa !74 ; 2 uses
  %.not.i.i56 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i56, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, !prof !167

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6StatusD2Ev.exit54
  %i.cv = phi ptr [ %.pr.i.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i ], [ %i.cc, %_ZN5arrow6StatusD2Ev.exit54 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !89, !range !99, !noundef !100
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit: ; preds = %bb.y, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.cz = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i57 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i57, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.ag, !prof !88

bb.ag:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !89, !range !99, !noundef !100
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN5arrow6ResultIlED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultIlED2Ev.exit

_ZN5arrow6ResultIlED2Ev.exit:                     ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.sroa.0.0.copyload.pre = load ptr, ptr %6, align 8, !tbaa !403
  %.sroa.2.0.copyload.pre = load i64, ptr %i.a, align 8
  br label %bb.am

bb.ai:                                            ; preds = %bb.x, %bb.p
  %.pn34 = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.ce, %bb.x ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.o, %bb.l
  %.pn38 = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.bc, %bb.o ], [ %.pn34, %bb.ai ]
  %i.dd = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i58, label %_ZN5arrow6ResultIlED2Ev.exit59, label %bb.ak, !prof !88

bb.ak:                                            ; preds = %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !89, !range !99, !noundef !100
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6ResultIlED2Ev.exit59, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultIlED2Ev.exit59

_ZN5arrow6ResultIlED2Ev.exit59:                   ; preds = %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit46

_ZNSt6vectorIiSaIiEED2Ev.exit46:                  ; preds = %bb.h, %bb.i, %_ZN5arrow6ResultIlED2Ev.exit59
  %.pn38.pn = phi { ptr, i32 } [ %.pn38, %_ZN5arrow6ResultIlED2Ev.exit59 ], [ %i.al, %bb.h ], [ %i.al, %bb.i ]
  resume { ptr, i32 } %.pn38.pn

bb.am:                                            ; preds = %_ZN5arrow6ResultIlED2Ev.exit, %bb.c
  %.sroa.2.0.copyload = phi i64 [ %.sroa.2.0.copyload.pre, %_ZN5arrow6ResultIlED2Ev.exit ], [ %3, %bb.c ]
  %.sroa.0.0.copyload = phi ptr [ %.sroa.0.0.copyload.pre, %_ZN5arrow6ResultIlED2Ev.exit ], [ %2, %bb.c ]
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 64
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  br label %bb.bb

.critedge:                                        ; preds = %bb.k
  %i.di = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.di, null
  br i1 %.not.i.i60, label %_ZN5arrow6ResultIlED2Ev.exit61, label %bb.an, !prof !88

bb.an:                                            ; preds = %.critedge
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !89, !range !99, !noundef !100
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZN5arrow6ResultIlED2Ev.exit61, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultIlED2Ev.exit61

_ZN5arrow6ResultIlED2Ev.exit61:                   ; preds = %.critedge, %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bb

.critedge42:                                      ; preds = %bb.n
  call void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.dm = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i62, label %_ZN5arrow6ResultIlED2Ev.exit63, label %bb.ap, !prof !88

bb.ap:                                            ; preds = %.critedge42
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !89, !range !99, !noundef !100
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %_ZN5arrow6ResultIlED2Ev.exit63, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultIlED2Ev.exit63

_ZN5arrow6ResultIlED2Ev.exit63:                   ; preds = %.critedge42, %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bb

.critedge44:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  br i1 %i.cd, label %bb.ar, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i64, !prof !88

bb.ar:                                            ; preds = %.critedge44
  %i.dq = load ptr, ptr %i.bf, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i65 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i.i65, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.dr, align 8, !tbaa !152
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !154
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !155
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25, !inline_history !404
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !155
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25, !inline_history !404
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69

bb.au:                                            ; preds = %bb.as
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i66 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i.i66, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i67

bb.aw:                                            ; preds = %bb.au
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i67

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i67: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i.i.i.i68 = phi i32 [ %i.du, %bb.av ], [ %i.ee, %bb.aw ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i.i68, 1
  br i1 %i.ef, label %bb.ax, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69, !prof !135

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i67
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69: ; preds = %bb.ax, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i67, %bb.at
  %.pr.i70.pr = load ptr, ptr %8, align 8, !tbaa !74 ; 2 uses
  %.not.i.i71 = icmp eq ptr %.pr.i70.pr, null
  br i1 %.not.i.i71, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i64, !prof !167

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i64: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69, %.critedge44
  %i.eg = phi ptr [ %.pr.i70.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69 ], [ %i.cc, %.critedge44 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !89, !range !99, !noundef !100
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72, label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i64
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72: ; preds = %bb.ar, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.i69, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread.i64, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ek = load ptr, ptr %7, align 8, !tbaa !74    ; 2 uses
  %.not.i.i73 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i73, label %_ZN5arrow6ResultIlED2Ev.exit74, label %bb.az, !prof !88

bb.az:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !89, !range !99, !noundef !100
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %_ZN5arrow6ResultIlED2Ev.exit74, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  br label %_ZN5arrow6ResultIlED2Ev.exit74

_ZN5arrow6ResultIlED2Ev.exit74:                   ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev.exit72, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN5arrow6ResultIlED2Ev.exit74, %_ZN5arrow6ResultIlED2Ev.exit63, %_ZN5arrow6ResultIlED2Ev.exit61, %bb.am
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !152
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !154
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !405
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !405
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, !prof !135

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, !prof !167

_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !89, !range !99, !noundef !100
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !152
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !154
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !326
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25, !inline_history !326
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !299, !nonnull !100, !align !309
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(38) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(38) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !299, !nonnull !100, !align !309
  %i.f = load i64, ptr %2, align 8, !tbaa !84
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA38_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRlRKS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<long, std::pair<const long, std::shared_ptr<arrow::DataType>>, std::allocator<std::pair<const long, std::shared_ptr<arrow::DataType>>>, std::__detail::_Select1st, std::equal_to<long>, std::hash<long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8, !tbaa !406
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 7 uses
  store ptr null, ptr %i.a, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load i64, ptr %1, align 8, !tbaa !84
  store i64 %i.c, ptr %i.b, align 8, !tbaa !410
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133  ; 2 uses
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !134
  store <2 x ptr> %i.h, ptr %i.d, align 8, !tbaa !134
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRlRKS5_EEEPNS8_16_Hashtable_allocISaINS8_10_Hash_nodeIS6_Lb0EEEEEEDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !tbaa !3
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !3
  br label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRlRKS5_EEEPNS8_16_Hashtable_allocISaINS8_10_Hash_nodeIS6_Lb0EEEEEEDpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRlRKS5_EEEPNS8_16_Hashtable_allocISaINS8_10_Hash_nodeIS6_Lb0EEEEEEDpOT_.exit

_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRlRKS5_EEEPNS8_16_Hashtable_allocISaINS8_10_Hash_nodeIS6_Lb0EEEEEEDpOT_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.a, ptr %i.n, align 8, !tbaa !413
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !122
  %.not.not = icmp eq i64 %i.p, 0
  br i1 %.not.not, label %bb.e, label %.thread

.thread:                                          ; preds = %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRlRKS5_EEEPNS8_16_Hashtable_allocISaINS8_10_Hash_nodeIS6_Lb0EEEEEEDpOT_.exit
  %i.q = load i64, ptr %i.b, align 8, !tbaa !84   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !117  ; 2 uses
  %i.t = urem i64 %i.q, %i.s                      ; 5 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !115
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !124  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %.critedge28, label %bb.i

bb.e:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeC2IJRlRKS5_EEEPNS8_16_Hashtable_allocISaINS8_10_Hash_nodeIS6_Lb0EEEEEEDpOT_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.034.0.in = phi ptr [ %i.x, %bb.e ], [ %.sroa.034.0, %bb.g ]
  %.sroa.034.0 = load ptr, ptr %.sroa.034.0.in, align 8, !tbaa !63 ; 4 uses
  %i.y = icmp eq ptr %.sroa.034.0, null
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 8
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !84
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !84
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %_ZNKSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %bb.f, !llvm.loop !414

bb.h:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !84  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !117
  %i.ag = urem i64 %i.ad, %i.af
  br label %.critedge28

bb.i:                                             ; preds = %.thread
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !63  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !84
  %i.ak = icmp eq i64 %i.q, %i.aj
  br i1 %i.ak, label %_ZNKSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.k
  %i.al = icmp eq i64 %i.q, %i.ao
  br i1 %i.al, label %_ZNKSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i, !llvm.loop !125

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %.020.i.i = phi ptr [ %i.am, %bb.j ], [ %i.ah, %bb.i ]
  %i.am = load ptr, ptr %.020.i.i, align 8, !tbaa !63 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.am, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !84 ; 2 uses
  %i.ap = urem i64 %i.ao, %i.s
  %.not19.i.i = icmp eq i64 %i.ap, %i.t
  br i1 %.not19.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i, !llvm.loop !125

..loopexit_crit_edge21.i.i:                       ; preds = %bb.k
  br label %.critedge28, !llvm.loop !125

.critedge28:                                      ; preds = %.lr.ph.i.i, %bb.h, %..loopexit_crit_edge21.i.i, %.thread
  %i.aq = phi i64 [ %i.ag, %bb.h ], [ %i.t, %.thread ], [ %i.t, %..loopexit_crit_edge21.i.i ], [ %i.t, %.lr.ph.i.i ]
  %i.ar = phi i64 [ %i.ad, %bb.h ], [ %i.q, %.thread ], [ %i.q, %..loopexit_crit_edge21.i.i ], [ %i.q, %.lr.ph.i.i ]
  %i.as = invoke ptr @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.aq, i64 noundef %i.ar, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %.critedge28
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.at

_ZNKSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit: ; preds = %bb.j, %bb.g, %bb.i
  %.sroa.038.0.ph = phi ptr [ %.sroa.034.0, %bb.g ], [ %i.ah, %bb.i ], [ %i.am, %bb.j ]
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNKSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.av, align 8, !tbaa !152
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !154
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !155
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !415
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25, !inline_history !415
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i29 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ay, %bb.p ], [ %i.bi, %bb.q ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.r, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i, !prof !135

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.n, %_ZNKSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #26
  br label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i
  %.sroa.4.046 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i ], [ 1, %.critedge28 ]
  %.sroa.038.045 = phi ptr [ %.sroa.038.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit.i ], [ %i.as, %.critedge28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.038.045, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.046, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !293
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !122
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #25 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !293
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #27
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !117
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !115    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63
  store ptr %i.w, ptr %3, align 8, !tbaa !63
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !124
  store ptr %3, ptr %i.x, align 8, !tbaa !63
  br label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !320
  store ptr %i.z, ptr %3, align 8, !tbaa !63
  store ptr %3, ptr %i.y, align 8, !tbaa !320
  %i.aa = load ptr, ptr %3, align 8, !tbaa !63    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !117
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !84
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !124
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !124
  br label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit

_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !122
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !122
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !152
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !154
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !416
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !155
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25, !inline_history !416
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit, !prof !135

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE18_M_deallocate_nodeEPS9_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !135

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !417
  br label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !135

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !320  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !320
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !63  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !84
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !124  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !320
  store ptr %i.o, ptr %.031, align 8, !tbaa !63
  store ptr %.031, ptr %i.g, align 8, !tbaa !320
  store ptr %i.g, ptr %i.m, align 8, !tbaa !124
  %i.p = load ptr, ptr %.031, align 8, !tbaa !63
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !124
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !63
  store ptr %i.r, ptr %.031, align 8, !tbaa !63
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !124
  store ptr %.031, ptr %i.s, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !418

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !115    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !117
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #26
  br label %_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIlSt4pairIKlSt10shared_ptrIN5arrow8DataTypeEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !117
  store ptr %.0.i, ptr %0, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA37_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(37) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !299, !nonnull !100, !align !309
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %1) #25
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(37) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA37_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA37_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !299, !nonnull !100, !align !309
  %i.f = load i64, ptr %2, align 8, !tbaa !84
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA37_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA37_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSG_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcRlEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS5_EEDaSG_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIlSt4pairIKlSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS6_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toIlESt4hashIlENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJRlS8_EEES0_INSB_14_Node_iteratorIS9_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Hashtable<long, std::pair<const long, std::vector<std::shared_ptr<arrow::ArrayData>>>, std::allocator<std::pair<const long, std::vector<std::shared_ptr<arrow::ArrayData>>>>, std::__detail::_Select1st, std::equal_to<long>, std::hash<long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8, !tbaa !419
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24 ; 7 uses
  store ptr null, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %1, align 8, !tbaa !84     ; 7 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !423
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load <2 x ptr>, ptr %2, align 8, !tbaa !140
  store <2 x ptr> %i.f, ptr %i.e, align 8, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184
  store ptr %i.i, ptr %i.g, align 8, !tbaa !184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !428
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !181
  %.not.not = icmp eq i64 %i.k, 0
  br i1 %.not.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !114  ; 2 uses
end_hunk_3
