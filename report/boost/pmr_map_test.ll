Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/pmr_map_test?download=true
inline.NumInlined: 196
inline.NumDeleted: 148
begin_hunk_0_@main:bb.a
bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !18
  store ptr %i.n, ptr %i.k, align 8, !tbaa !17
  store ptr %.01115.i.i.i.i.i, ptr %i.m, align 8, !tbaa !18
  br label %_ZN5boost9intrusive6detail13node_disposerINS_9container3dtl24allocator_node_destroyerINS3_3pmr21polymorphic_allocatorINS3_9base_nodeISt4pairIKifENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEEEEEENS0_8bhtraitsISG_NS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELNS0_10algo_typesE5EEclEPNS0_19compact_rbtree_nodeISD_EE.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.q = load ptr, ptr %.01115.i.i.i.i.i, align 8, !tbaa !21
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = and i64 %i.r, 1
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %.01115.i.i.i.i.i, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %.01115.i.i.i.i.i, i64 noundef 32, i64 noundef 8)
          to label %_ZN5boost9intrusive6detail13node_disposerINS_9container3dtl24allocator_node_destroyerINS3_3pmr21polymorphic_allocatorINS3_9base_nodeISt4pairIKifENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEEEEEENS0_8bhtraitsISG_NS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELNS0_10algo_typesE5EEclEPNS0_19compact_rbtree_nodeISD_EE.exit.i.i.i.i.i unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #11
  unreachable

_ZN5boost9intrusive6detail13node_disposerINS_9container3dtl24allocator_node_destroyerINS3_3pmr21polymorphic_allocatorINS3_9base_nodeISt4pairIKifENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEEEEEENS0_8bhtraitsISG_NS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELNS0_10algo_typesE5EEclEPNS0_19compact_rbtree_nodeISD_EE.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i = phi ptr [ %i.l, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.0.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost9container3dtl17node_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIKifEEENS_9intrusive11rbtree_implINS9_8bhtraitsINS0_9base_nodeIS7_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS9_18rbtree_node_traitsISE_Lb1EEELNS9_14link_mode_typeE0ENS9_7dft_tagELj3EEENS1_11key_of_nodeISH_NS1_9select1stIS6_EEEESt4lessIiEmLb1EvEEED2Ev.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN5boost9container3dtl17node_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIKifEEENS_9intrusive11rbtree_implINS9_8bhtraitsINS0_9base_nodeIS7_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS9_18rbtree_node_traitsISE_Lb1EEELNS9_14link_mode_typeE0ENS9_7dft_tagELj3EEENS1_11key_of_nodeISH_NS1_9select1stIS6_EEEESt4lessIiEmLb1EvEEED2Ev.exit: ; preds = %_ZN5boost9intrusive6detail13node_disposerINS_9container3dtl24allocator_node_destroyerINS3_3pmr21polymorphic_allocatorINS3_9base_nodeISt4pairIKifENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEEEEEENS0_8bhtraitsISG_NS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELNS0_10algo_typesE5EEclEPNS0_19compact_rbtree_nodeISD_EE.exit.i.i.i.i.i, %_ZN5boost9container3mapIifSt4lessIiENS0_3pmr21polymorphic_allocatorISt4pairIKifEEEvE6insertEOS8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  ret i32 0

bb.f:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @_ZN5boost9container3dtl17node_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIKifEEENS_9intrusive11rbtree_implINS9_8bhtraitsINS0_9base_nodeIS7_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS9_18rbtree_node_traitsISE_Lb1EEELNS9_14link_mode_typeE0ENS9_7dft_tagELj3EEENS1_11key_of_nodeISH_NS1_9select1stIS6_EEEESt4lessIiEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  resume { ptr, i32 } %i.aa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl17node_alloc_holderINS0_3pmr21polymorphic_allocatorISt4pairIKifEEENS_9intrusive11rbtree_implINS9_8bhtraitsINS0_9base_nodeIS7_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENS9_18rbtree_node_traitsISE_Lb1EEELNS9_14link_mode_typeE0ENS9_7dft_tagELj3EEENS1_11key_of_nodeISH_NS1_9select1stIS6_EEEESt4lessIiEmLb1EvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, -2                         ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.d to ptr
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9intrusive6detail13node_disposerINS_9container3dtl24allocator_node_destroyerINS3_3pmr21polymorphic_allocatorINS3_9base_nodeISt4pairIKifENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEEEEEENS0_8bhtraitsISG_NS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELNS0_10algo_typesE5EEclEPNS0_19compact_rbtree_nodeISD_EE.exit.i.i.i.i, %bb.b
  %.01115.i.i.i.i = phi ptr [ %.0.i.i.i.i, %_ZN5boost9intrusive6detail13node_disposerINS_9container3dtl24allocator_node_destroyerINS3_3pmr21polymorphic_allocatorINS3_9base_nodeISt4pairIKifENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEEEEEENS0_8bhtraitsISG_NS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELNS0_10algo_typesE5EEclEPNS0_19compact_rbtree_nodeISD_EE.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %.not13.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not13.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  store ptr %i.i, ptr %i.f, align 8, !tbaa !17
  store ptr %.01115.i.i.i.i, ptr %i.h, align 8, !tbaa !18
  br label %_ZN5boost9intrusive6detail13node_disposerINS_9container3dtl24allocator_node_destroyerINS3_3pmr21polymorphic_allocatorINS3_9base_nodeISt4pairIKifENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEEEEEENS0_8bhtraitsISG_NS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELNS0_10algo_typesE5EEclEPNS0_19compact_rbtree_nodeISD_EE.exit.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.01115.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.l = load ptr, ptr %.01115.i.i.i.i, align 8, !tbaa !21
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = and i64 %i.m, 1
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.o, ptr %.01115.i.i.i.i, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.p = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %.01115.i.i.i.i, i64 noundef 32, i64 noundef 8)
          to label %_ZN5boost9intrusive6detail13node_disposerINS_9container3dtl24allocator_node_destroyerINS3_3pmr21polymorphic_allocatorINS3_9base_nodeISt4pairIKifENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEEEEEENS0_8bhtraitsISG_NS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELNS0_10algo_typesE5EEclEPNS0_19compact_rbtree_nodeISD_EE.exit.i.i.i.i unwind label %bb.e, !inline_history !0

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #11
  unreachable

_ZN5boost9intrusive6detail13node_disposerINS_9container3dtl24allocator_node_destroyerINS3_3pmr21polymorphic_allocatorINS3_9base_nodeISt4pairIKifENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEEEEEENS0_8bhtraitsISG_NS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELNS0_10algo_typesE5EEclEPNS0_19compact_rbtree_nodeISD_EE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1

.loopexit:                                        ; preds = %_ZN5boost9intrusive6detail13node_disposerINS_9container3dtl24allocator_node_destroyerINS3_3pmr21polymorphic_allocatorINS3_9base_nodeISt4pairIKifENS4_19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEEEEEENS0_8bhtraitsISG_NS0_18rbtree_node_traitsISD_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELNS0_10algo_typesE5EEclEPNS0_19compact_rbtree_nodeISD_EE.exit.i.i.i.i, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.v, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3dtl4treeISt4pairIKifEiSt4lessIiENS0_3pmr21polymorphic_allocatorIS5_EEvE25insert_unique_convertibleIS5_EES3_INS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSE_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSE_18rbtree_node_traitsISJ_Lb1EEELNSE_14link_mode_typeE0ENSE_7dft_tagELj3EEELb0EEELb0EEEbEOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20, !noalias !39
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, -2                         ; 2 uses
  %.not29.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not29.i.i.i, label %bb.d, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load i32, ptr %2, align 4, !tbaa !40, !noalias !39 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.02631.i.i.i = phi ptr [ null, %.lr.ph.i.i.i ], [ %.127.i.i.i, %bb.b ]
  %.02830.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.j, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02830.i.i.i, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40, !noalias !39
  %i.i = icmp slt i32 %i.f, %i.h                  ; 4 uses
  %.127.i.i.i = select i1 %i.i, ptr %.02631.i.i.i, ptr %.02830.i.i.i ; 4 uses
  %.in.v.i.i.i = select i1 %i.i, i64 8, i64 16
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02830.i.i.i, i64 %.in.v.i.i.i
  %i.j = load ptr, ptr %.in.i.i.i, align 8, !tbaa !21, !noalias !39 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.b, !llvm.loop !32

._crit_edge.i.i.i:                                ; preds = %bb.b
  %.not18.i.i.i = icmp eq ptr %.127.i.i.i, null
  br i1 %.not18.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.127.i.i.i, i64 24
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40, !noalias !39
  %i.m = icmp slt i32 %i.l, %i.f
  br i1 %i.m, label %bb.d, label %_ZN5boost9container3dtl4treeISt4pairIKifEiSt4lessIiENS0_3pmr21polymorphic_allocatorIS5_EEvE19insert_unique_checkIiEES3_INS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSE_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSE_18rbtree_node_traitsISJ_Lb1EEELNSE_14link_mode_typeE0ENSE_7dft_tagELj3EEELb0EEELb0EEEbERKT_RNSE_20insert_commit_data_tIPNSE_19compact_rbtree_nodeISJ_EEEE.exit

_ZN5boost9container3dtl4treeISt4pairIKifEiSt4lessIiENS0_3pmr21polymorphic_allocatorIS5_EEvE19insert_unique_checkIiEES3_INS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSE_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSE_18rbtree_node_traitsISJ_Lb1EEELNSE_14link_mode_typeE0ENSE_7dft_tagELj3EEELb0EEELb0EEEbERKT_RNSE_20insert_commit_data_tIPNSE_19compact_rbtree_nodeISJ_EEEE.exit: ; preds = %bb.c
  store ptr %.127.i.i.i, ptr %0, align 8, !tbaa !42, !alias.scope !38
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !47, !alias.scope !38
  br label %bb.i

bb.d:                                             ; preds = %bb.a, %._crit_edge.i.i.i, %bb.c
  %.0.lcssa.i12.shrunk.i.i = phi i1 [ %i.i, %._crit_edge.i.i.i ], [ %i.i, %bb.c ], [ true, %bb.a ]
  %.013.lcssa.i11.i.i = phi ptr [ %.02830.i.i.i, %._crit_edge.i.i.i ], [ %.02830.i.i.i, %bb.c ], [ %i.a, %bb.a ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.o, align 8, !tbaa !47, !alias.scope !38
  %i.p = load ptr, ptr %1, align 8, !tbaa !14, !noalias !48 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23, !noalias !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !noalias !48
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 32, i64 noundef 8), !noalias !48, !inline_history !35 ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load i32, ptr %2, align 4, !tbaa !40, !noalias !48
  store i32 %i.w, ptr %i.u, align 4, !tbaa !40, !noalias !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %i.y = load float, ptr %i.v, align 4, !tbaa !49, !noalias !48
  store float %i.y, ptr %i.x, align 4, !tbaa !49, !noalias !48
  %i.z = icmp eq ptr %.013.lcssa.i11.i.i, %i.a
  br i1 %i.z, label %bb.e, label %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKifENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i

_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKifENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i: ; preds = %bb.d
  br i1 %.0.lcssa.i12.shrunk.i.i, label %.thread.i.i, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.t to i64
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !21, !noalias !50
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = and i64 %i.ac, 1
  %i.ae = or disjoint i64 %i.ad, %i.aa
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr %i.af, ptr %i.a, align 8, !tbaa !21, !noalias !50
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.t, ptr %i.ag, align 8, !tbaa !18, !noalias !50
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.t, ptr %i.ah, align 8, !tbaa !17, !noalias !50
  br label %_ZN5boost9container3dtl4treeISt4pairIKifEiSt4lessIiENS0_3pmr21polymorphic_allocatorIS5_EEvE20insert_unique_commitIS5_EENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSE_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSE_18rbtree_node_traitsISJ_Lb1EEELNSE_14link_mode_typeE0ENSE_7dft_tagELj3EEELb0EEELb0EEEOT_RNSE_20insert_commit_data_tIPNSE_19compact_rbtree_nodeISJ_EEEE.exit

.thread.i.i:                                      ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKifENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i, i64 8
  store ptr %i.t, ptr %i.ai, align 8, !tbaa !17, !noalias !50
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17, !noalias !50
  %i.al = icmp eq ptr %.013.lcssa.i11.i.i, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN5boost9container3dtl4treeISt4pairIKifEiSt4lessIiENS0_3pmr21polymorphic_allocatorIS5_EEvE20insert_unique_commitIS5_EENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSE_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSE_18rbtree_node_traitsISJ_Lb1EEELNSE_14link_mode_typeE0ENSE_7dft_tagELj3EEELb0EEELb0EEEOT_RNSE_20insert_commit_data_tIPNSE_19compact_rbtree_nodeISJ_EEEE.exit

bb.f:                                             ; preds = %.thread.i.i
  store ptr %i.t, ptr %i.aj, align 8, !tbaa !17, !noalias !50
  br label %_ZN5boost9container3dtl4treeISt4pairIKifEiSt4lessIiENS0_3pmr21polymorphic_allocatorIS5_EEvE20insert_unique_commitIS5_EENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSE_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSE_18rbtree_node_traitsISJ_Lb1EEELNSE_14link_mode_typeE0ENSE_7dft_tagELj3EEELb0EEELb0EEEOT_RNSE_20insert_commit_data_tIPNSE_19compact_rbtree_nodeISJ_EEEE.exit

bb.g:                                             ; preds = %_ZN5boost9intrusive13tree_iteratorINS0_8bhtraitsINS_9container9base_nodeISt4pairIKifENS3_3dtl19intrusive_tree_hookIPvLNS3_14tree_type_enumE0ELb1EEELb1EEENS0_18rbtree_node_traitsISA_Lb1EEELNS0_14link_mode_typeE0ENS0_7dft_tagELj3EEELb0EEppEv.exit.thread.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.013.lcssa.i11.i.i, i64 16
  store ptr %i.t, ptr %i.am, align 8, !tbaa !18, !noalias !50
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18, !noalias !50
  %i.ap = icmp eq ptr %.013.lcssa.i11.i.i, %i.ao
  br i1 %i.ap, label %bb.h, label %_ZN5boost9container3dtl4treeISt4pairIKifEiSt4lessIiENS0_3pmr21polymorphic_allocatorIS5_EEvE20insert_unique_commitIS5_EENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSE_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSE_18rbtree_node_traitsISJ_Lb1EEELNSE_14link_mode_typeE0ENSE_7dft_tagELj3EEELb0EEELb0EEEOT_RNSE_20insert_commit_data_tIPNSE_19compact_rbtree_nodeISJ_EEEE.exit

bb.h:                                             ; preds = %bb.g
  store ptr %i.t, ptr %i.an, align 8, !tbaa !18, !noalias !50
  br label %_ZN5boost9container3dtl4treeISt4pairIKifEiSt4lessIiENS0_3pmr21polymorphic_allocatorIS5_EEvE20insert_unique_commitIS5_EENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSE_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSE_18rbtree_node_traitsISJ_Lb1EEELNSE_14link_mode_typeE0ENSE_7dft_tagELj3EEELb0EEELb0EEEOT_RNSE_20insert_commit_data_tIPNSE_19compact_rbtree_nodeISJ_EEEE.exit

_ZN5boost9container3dtl4treeISt4pairIKifEiSt4lessIiENS0_3pmr21polymorphic_allocatorIS5_EEvE20insert_unique_commitIS5_EENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSE_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSE_18rbtree_node_traitsISJ_Lb1EEELNSE_14link_mode_typeE0ENSE_7dft_tagELj3EEELb0EEELb0EEEOT_RNSE_20insert_commit_data_tIPNSE_19compact_rbtree_nodeISJ_EEEE.exit: ; preds = %bb.e, %.thread.i.i, %bb.f, %bb.g, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = ptrtoint ptr %.013.lcssa.i11.i.i to i64
  %i.as = load ptr, ptr %i.t, align 8, !tbaa !21, !noalias !50
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = and i64 %i.at, 1
  %i.av = or i64 %i.au, %i.ar
  %i.aw = inttoptr i64 %i.av to ptr
  store ptr %i.aw, ptr %i.t, align 8, !tbaa !21, !noalias !50
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i8 0, i64 16, i1 false), !noalias !50
  tail call void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #10, !noalias !50
  %i.ay = load i64, ptr %i.aq, align 8, !tbaa !53, !noalias !50
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.aq, align 8, !tbaa !53, !noalias !50
  store ptr %i.t, ptr %0, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl4treeISt4pairIKifEiSt4lessIiENS0_3pmr21polymorphic_allocatorIS5_EEvE19insert_unique_checkIiEES3_INS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSE_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSE_18rbtree_node_traitsISJ_Lb1EEELNSE_14link_mode_typeE0ENSE_7dft_tagELj3EEELb0EEELb0EEEbERKT_RNSE_20insert_commit_data_tIPNSE_19compact_rbtree_nodeISJ_EEEE.exit, %_ZN5boost9container3dtl4treeISt4pairIKifEiSt4lessIiENS0_3pmr21polymorphic_allocatorIS5_EEvE20insert_unique_commitIS5_EENS1_23iterator_from_iiteratorINS_9intrusive13tree_iteratorINSE_8bhtraitsINS0_9base_nodeIS5_NS1_19intrusive_tree_hookIPvLNS0_14tree_type_enumE0ELb1EEELb1EEENSE_18rbtree_node_traitsISJ_Lb1EEELNSE_14link_mode_typeE0ENSE_7dft_tagELj3EEELb0EEELb0EEEOT_RNSE_20insert_commit_data_tIPNSE_19compact_rbtree_nodeISJ_EEEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9intrusive17rbtree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rebalance_after_insertionEPNS0_19compact_rbtree_nodeIS3_EES8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 4 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !21
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = and i64 %i.f, -2
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = icmp eq ptr %0, %i.d
  %i.j = trunc i64 %i.f to i1
  %i.k = icmp eq ptr %0, %i.h
  %or.cond67 = or i1 %i.k, %i.j
  %or.cond5668 = select i1 %i.i, i1 true, i1 %or.cond67
  br i1 %or.cond5668, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.x
  %i.l = phi ptr [ %i.em, %bb.x ], [ %i.h, %bb.a ] ; 18 uses
  %i.m = phi i64 [ %i.ek, %bb.x ], [ %i.f, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %i.ei, %bb.x ], [ %i.d, %bb.a ] ; 13 uses
  %i.o = phi i64 [ %i.eh, %bb.x ], [ %i.c, %bb.a ] ; 2 uses
  %.04369 = phi ptr [ %i.l, %bb.x ], [ %1, %bb.a ] ; 8 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -2                         ; 3 uses
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.l, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !17   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.n                   ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.y = phi ptr [ %i.x, %bb.b ], [ %i.u, %.lr.ph ] ; 3 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = and i64 %i.aa, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !17 ; 2 uses
  %i.ag = icmp eq ptr %i.af, %.04369              ; 2 uses
  br i1 %i.v, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  br i1 %i.ag, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.04369, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !17 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rotate_left_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, 1
  %i.an = or disjoint i64 %i.am, %i.o
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr %i.ao, ptr %i.ai, align 8, !tbaa !21
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rotate_left_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rotate_left_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit: ; preds = %bb.g, %bb.h
  store ptr %i.n, ptr %i.ah, align 8, !tbaa !17
  %i.ap = ptrtoint ptr %.04369 to i64
  %i.aq = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 1
  %i.at = or i64 %i.as, %i.ap
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.n, align 8, !tbaa !21
  %.pre81 = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.av = ptrtoint ptr %.pre81 to i64
  %i.aw = and i64 %i.av, -2
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rotate_left_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit, %bb.f
  %i.ax = phi i64 [ %i.r, %bb.f ], [ %i.aw, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rotate_left_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit ] ; 2 uses
  %.041 = phi ptr [ %i.n, %bb.f ], [ %.04369, %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE25rotate_left_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit ] ; 9 uses
  %i.ay = inttoptr i64 %i.ax to ptr               ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17
  %i.bb = icmp eq ptr %i.ba, %i.l
  %i.bc = getelementptr inbounds nuw i8, ptr %.041, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18 ; 4 uses
  store ptr %i.bd, ptr %i.ad, align 8, !tbaa !17
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE26rotate_right_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = and i64 %i.bf, 1
  %i.bh = or disjoint i64 %i.bg, %i.m
  %i.bi = inttoptr i64 %i.bh to ptr
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !21
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE26rotate_right_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i

_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE26rotate_right_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i: ; preds = %bb.j, %bb.i
  store ptr %i.l, ptr %i.bc, align 8, !tbaa !18
  %i.bj = ptrtoint ptr %.041 to i64               ; 2 uses
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = and i64 %i.bl, 1
  %i.bn = or i64 %i.bm, %i.bj
  %i.bo = inttoptr i64 %i.bn to ptr
  store ptr %i.bo, ptr %i.l, align 8, !tbaa !21
  %i.bp = load ptr, ptr %.041, align 8, !tbaa !21
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = and i64 %i.bq, 1
  %i.bs = or disjoint i64 %i.br, %i.ax
  %i.bt = inttoptr i64 %i.bs to ptr
  store ptr %i.bt, ptr %.041, align 8, !tbaa !21
  %i.bu = icmp eq ptr %0, %i.ay
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE26rotate_right_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i
  %i.bv = load ptr, ptr %0, align 8, !tbaa !21
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = and i64 %i.bw, 1
  %i.by = or i64 %i.bx, %i.bj
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %0, align 8, !tbaa !21
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE12rotate_rightEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit

bb.l:                                             ; preds = %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE26rotate_right_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit.i
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %.041, ptr %i.az, align 8, !tbaa !17
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE12rotate_rightEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit

bb.n:                                             ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %.041, ptr %i.ca, align 8, !tbaa !18
  br label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE12rotate_rightEPNS0_19compact_rbtree_nodeIS3_EES8_S8_S8_.exit

bb.o:                                             ; preds = %bb.e
  br i1 %i.ag, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %.04369, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !18 ; 4 uses
  store ptr %i.cc, ptr %i.ae, align 8, !tbaa !17
  %.not.i51 = icmp eq ptr %i.cc, null
  br i1 %.not.i51, label %_ZN5boost9intrusive17bstree_algorithmsINS0_18rbtree_node_traitsIPvLb1EEEE26rotate_right_no_parent_fixEPNS0_19compact_rbtree_nodeIS3_EES8_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  %i.ce = ptrtoint ptr %i.cd to i64
end_hunk_0
