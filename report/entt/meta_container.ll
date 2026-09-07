Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/meta_container?download=true
inline.NumInlined: 11203
inline.NumDeleted: 3081
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZZN4entt8internal14setup_node_forINSt7__cxx114listIiSaIiEEEEEDavENUlRKNS_8meta_ctxEPvPKvE_8__invokeES8_S9_SB_:bb.a

bb.d:                                             ; preds = %bb.b
  store i8 4, ptr %i.m, align 4, !tbaa !111, !alias.scope !1742
  store ptr %3, ptr %0, align 8, !tbaa !98, !alias.scope !1742
  store ptr %1, ptr %i.n, align 8, !tbaa !114, !alias.scope !1742
  store ptr null, ptr %i.o, align 8, !tbaa !115, !alias.scope !1742
  store ptr @_ZN4entt8meta_any12basic_vtableITkNS_17cvref_unqualifiedENSt7__cxx114listIiSaIiEEEEEvNS_8internal11meta_traitsERKS0_Pv, ptr %i.p, align 8, !tbaa !116, !alias.scope !1742
  br label %_ZZN4entt8internal14setup_node_forINSt7__cxx114listIiSaIiEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES8_S9_SB_.exit

_ZZN4entt8internal14setup_node_forINSt7__cxx114listIiSaIiEEEEEDavENKUlRKNS_8meta_ctxEPvPKvE_clES8_S9_SB_.exit: ; preds = %_ZN4entt8meta_anyC2INSt7__cxx114listIiSaIiEEEEERKNS_8meta_ctxESt10in_place_tPT_.exit.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4entt36basic_meta_sequence_container_traitsINSt7__cxx114listIiSaIiEEEE4sizeEPKv(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !350
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt36basic_meta_sequence_container_traitsINSt7__cxx114listIiSaIiEEEE5clearEPv(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !191    ; 2 uses
  %.not8.i.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIiSaIiEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr %.09.i.i, align 8, !tbaa !191 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #30
  %.not.i.i = icmp eq ptr %i.b, %0
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIiSaIiEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !10

_ZNSt7__cxx114listIiSaIiEE5clearEv.exit:          ; preds = %.lr.ph.i.i, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !190
  store ptr %0, ptr %0, align 8, !tbaa !191
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !193
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt36basic_meta_sequence_container_traitsINSt7__cxx114listIiSaIiEEEE7reserveEPvm(ptr noundef %0, i64 noundef %1) #8 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4entt36basic_meta_sequence_container_traitsINSt7__cxx114listIiSaIiEEEE6resizeEPvm(ptr noundef %0, i64 noundef %1) #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt7__cxx114listIiSaIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1)
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsINSt7__cxx114listIiSaIiEEEE4iterERKNS_8meta_ctxEPvPKvb(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %2, null                     ; 4 uses
  %.14 = select i1 %i.a, ptr %3, ptr %2           ; 2 uses
  br i1 %4, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.b = load ptr, ptr %.14, align 8, !tbaa !191
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  %.sroa.0.0.sink = phi ptr [ %.14, %bb.a ], [ %i.b, %.sink.split ]
  %. = select i1 %i.a, i32 -349865257, i32 1590119563
  %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt20_List_const_iteratorIiEEEPKvNS_8internal11any_requestERKS1_S6_._ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt14_List_iteratorIiEEEPKvNS_8internal11any_requestERKS1_S6_ = select i1 %i.a, ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt20_List_const_iteratorIiEEEPKvNS_8internal11any_requestERKS1_S6_, ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt14_List_iteratorIiEEEPKvNS_8internal11any_requestERKS1_S6_
  %_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt20_List_const_iteratorIiEEEvPKvlPNS_8meta_anyE._ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt14_List_iteratorIiEEEvPKvlPNS_8meta_anyE = select i1 %i.a, ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt20_List_const_iteratorIiEEEvPKvlPNS_8meta_anyE, ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt14_List_iteratorIiEEEvPKvlPNS_8meta_anyE
  store ptr %1, ptr %0, align 8, !tbaa !118
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt20_List_const_iteratorIiEEEvPKvlPNS_8meta_anyE._ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt14_List_iteratorIiEEEvPKvlPNS_8meta_anyE, ptr %i.c, align 8, !tbaa !119
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr %_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt20_List_const_iteratorIiEEEPKvNS_8internal11any_requestERKS1_S6_._ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt14_List_iteratorIiEEEPKvNS_8internal11any_requestERKS1_S6_, ptr %i.e, align 8, !tbaa !108
  store i32 %., ptr %i.g, align 8, !tbaa !109
  store ptr null, ptr %i.f, align 8, !tbaa !110
  store i8 2, ptr %i.h, align 4, !tbaa !111
  %i.i = ptrtoint ptr %.sroa.0.0.sink to i64
  store i64 %i.i, ptr %i.d, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsINSt7__cxx114listIiSaIiEEEE6insertERKNS_8meta_ctxEPvPKvSB_RKNS_23meta_sequence_container13meta_iteratorE(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(56) %5) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109
  %i.d = icmp ne i32 %i.c, 1590119563
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.f = load i8, ptr %i.e, align 4
  %i.g = icmp eq i8 %i.f, 2
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = select i1 %i.g, ptr %i.a, ptr %i.h       ; 3 uses
  %.not10 = icmp eq ptr %i.i, null
  %.not = select i1 %i.d, i1 true, i1 %.not10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !352
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !194
  %i.l = inttoptr i64 %i.k to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.b ]
  %.not9 = icmp eq ptr %3, null
  %i.m = select i1 %.not9, ptr %4, ptr %3
  %i.n = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i32, ptr %i.m, align 4, !tbaa !134
  store i32 %i.p, ptr %i.o, align 4, !tbaa !134
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef %.sroa.0.0) #27
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !350
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !350
  store ptr %1, ptr %0, align 8, !tbaa !118
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt14_List_iteratorIiEEEvPKvlPNS_8meta_anyE, ptr %i.t, align 8, !tbaa !119
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt14_List_iteratorIiEEEPKvNS_8internal11any_requestERKS1_S6_, ptr %i.v, align 8, !tbaa !108
  store i32 1590119563, ptr %i.x, align 8, !tbaa !109
  store ptr null, ptr %i.w, align 8, !tbaa !110
  store i8 2, ptr %i.y, align 4, !tbaa !111
  %i.z = ptrtoint ptr %i.n to i64
  store i64 %i.z, ptr %i.u, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt36basic_meta_sequence_container_traitsINSt7__cxx114listIiSaIiEEEE5eraseERKNS_8meta_ctxEPvRKNS_23meta_sequence_container13meta_iteratorE(ptr dead_on_unwind noalias writable sret(%"class.entt::meta_sequence_container::meta_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !109
  %i.d = icmp ne i32 %i.c, 1590119563
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.f = load i8, ptr %i.e, align 4
  %i.g = icmp eq i8 %i.f, 2
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = select i1 %i.g, ptr %i.a, ptr %i.h       ; 3 uses
  %.not6 = icmp eq ptr %i.i, null
  %.not = select i1 %i.d, i1 true, i1 %.not6
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !352
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8, !tbaa !194
  %i.l = inttoptr i64 %i.k to ptr
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.l, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.m = load ptr, ptr %.sroa.0.0, align 8, !tbaa !191
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !350
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !350
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef 24) #30
  store ptr %1, ptr %0, align 8, !tbaa !118
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt14_List_iteratorIiEEEvPKvlPNS_8meta_anyE, ptr %i.q, align 8, !tbaa !119
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 52
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedESt14_List_iteratorIiEEEPKvNS_8internal11any_requestERKS1_S6_, ptr %i.s, align 8, !tbaa !108
  store i32 1590119563, ptr %i.u, align 8, !tbaa !109
  store ptr null, ptr %i.t, align 8, !tbaa !110
  store i8 2, ptr %i.v, align 4, !tbaa !111
  %i.w = ptrtoint ptr %i.m to i64
  store i64 %i.w, ptr %i.r, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !350  ; 8 uses
  %i.c = icmp ult i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %_ZNKSt7__cxx114listIiSaIiEE13_M_resize_posERm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 1
  %.not.i = icmp ugt i64 %1, %i.d
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !191    ; 3 uses
  %.not28.i = icmp eq i64 %1, 0
  br i1 %.not28.i, label %.loopexit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %1, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol

.preheader.i.i.prol:                              ; preds = %.preheader.i.i.preheader, %.preheader.i.i.prol
  %.013.i.i.prol = phi i64 [ %i.g, %.preheader.i.i.prol ], [ %1, %.preheader.i.i.preheader ]
  %i.f = phi ptr [ %i.h, %.preheader.i.i.prol ], [ %i.e, %.preheader.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.i.i.prol ], [ 0, %.preheader.i.i.preheader ]
  %i.g = add nsw i64 %.013.i.i.prol, -1           ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !191  ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i.i.prol.loopexit, label %.preheader.i.i.prol, !llvm.loop !1743

.preheader.i.i.prol.loopexit:                     ; preds = %.preheader.i.i.prol, %.preheader.i.i.preheader
  %.lcssa33.unr = phi ptr [ poison, %.preheader.i.i.preheader ], [ %i.h, %.preheader.i.i.prol ]
  %.013.i.i.unr = phi i64 [ %1, %.preheader.i.i.preheader ], [ %i.g, %.preheader.i.i.prol ]
  %.unr = phi ptr [ %i.e, %.preheader.i.i.preheader ], [ %i.h, %.preheader.i.i.prol ]
  %i.i = icmp ult i64 %1, 8
  br i1 %i.i, label %.loopexit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i
  %.013.i.i = phi i64 [ %i.r, %.preheader.i.i ], [ %.013.i.i.unr, %.preheader.i.i.prol.loopexit ]
  %i.j = phi ptr [ %i.s, %.preheader.i.i ], [ %.unr, %.preheader.i.i.prol.loopexit ]
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !191
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !191
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !191
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !191
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !191
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !191
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !191
  %i.r = add nsw i64 %.013.i.i, -8                ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !191  ; 2 uses
  %.not6.i.i.7 = icmp eq i64 %i.r, 0
  br i1 %.not6.i.i.7, label %.loopexit, label %.preheader.i.i, !llvm.loop !48

bb.d:                                             ; preds = %bb.b
  %.neg.i = sub i64 %1, %i.b                      ; 7 uses
  %i.t = icmp sgt i64 %.neg.i, 0
  br i1 %i.t, label %.preheader.i23.i.preheader, label %.preheader7.i14.i

.preheader.i23.i.preheader:                       ; preds = %bb.d
  %xtraiter38 = and i64 %.neg.i, 7                ; 2 uses
  %lcmp.mod39.not = icmp eq i64 %xtraiter38, 0
  br i1 %lcmp.mod39.not, label %.preheader.i23.i.prol.loopexit, label %.preheader.i23.i.prol

.preheader.i23.i.prol:                            ; preds = %.preheader.i23.i.preheader, %.preheader.i23.i.prol
  %.013.i25.i.prol = phi i64 [ %i.v, %.preheader.i23.i.prol ], [ %.neg.i, %.preheader.i23.i.preheader ]
  %i.u = phi ptr [ %i.w, %.preheader.i23.i.prol ], [ %0, %.preheader.i23.i.preheader ]
  %prol.iter40 = phi i64 [ %prol.iter40.next, %.preheader.i23.i.prol ], [ 0, %.preheader.i23.i.preheader ]
  %i.v = add nsw i64 %.013.i25.i.prol, -1         ; 2 uses
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !191  ; 3 uses
  %prol.iter40.next = add i64 %prol.iter40, 1     ; 2 uses
  %prol.iter40.cmp.not = icmp eq i64 %prol.iter40.next, %xtraiter38
  br i1 %prol.iter40.cmp.not, label %.preheader.i23.i.prol.loopexit, label %.preheader.i23.i.prol, !llvm.loop !1744

.preheader.i23.i.prol.loopexit:                   ; preds = %.preheader.i23.i.prol, %.preheader.i23.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.preheader.i23.i.preheader ], [ %i.w, %.preheader.i23.i.prol ]
  %.013.i25.i.unr = phi i64 [ %.neg.i, %.preheader.i23.i.preheader ], [ %i.v, %.preheader.i23.i.prol ]
  %.unr41 = phi ptr [ %0, %.preheader.i23.i.preheader ], [ %i.w, %.preheader.i23.i.prol ]
  %2 = sub i64 %i.b, %1
  %3 = icmp ugt i64 %2, -8
  br i1 %3, label %.loopexit, label %.preheader.i23.i

.preheader7.i14.i:                                ; preds = %bb.d
  %.not9.i15.i = icmp eq i64 %.neg.i, 0
  br i1 %.not9.i15.i, label %_ZNSt7__cxx114listIiSaIiEE5eraseESt20_List_const_iteratorIiES4_.exit, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %.preheader7.i14.i
  %i.x = sub i64 %i.b, %1
  %xtraiter34 = and i64 %i.x, 7                   ; 2 uses
  %lcmp.mod35.not = icmp eq i64 %xtraiter34, 0
  br i1 %lcmp.mod35.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol

.lr.ph.i18.i.prol:                                ; preds = %.lr.ph.i18.i.preheader, %.lr.ph.i18.i.prol
  %.110.i19.i.prol = phi i64 [ %i.z, %.lr.ph.i18.i.prol ], [ %.neg.i, %.lr.ph.i18.i.preheader ]
  %i.y = phi ptr [ %i.ab, %.lr.ph.i18.i.prol ], [ %0, %.lr.ph.i18.i.preheader ]
  %prol.iter36 = phi i64 [ %prol.iter36.next, %.lr.ph.i18.i.prol ], [ 0, %.lr.ph.i18.i.preheader ]
  %i.z = add nsw i64 %.110.i19.i.prol, 1          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !190 ; 3 uses
  %prol.iter36.next = add i64 %prol.iter36, 1     ; 2 uses
  %prol.iter36.cmp.not = icmp eq i64 %prol.iter36.next, %xtraiter34
  br i1 %prol.iter36.cmp.not, label %.lr.ph.i18.i.prol.loopexit, label %.lr.ph.i18.i.prol, !llvm.loop !1745

.lr.ph.i18.i.prol.loopexit:                       ; preds = %.lr.ph.i18.i.prol, %.lr.ph.i18.i.preheader
  %.lcssa31.unr = phi ptr [ poison, %.lr.ph.i18.i.preheader ], [ %i.ab, %.lr.ph.i18.i.prol ]
  %.110.i19.i.unr = phi i64 [ %.neg.i, %.lr.ph.i18.i.preheader ], [ %i.z, %.lr.ph.i18.i.prol ]
  %.unr37 = phi ptr [ %0, %.lr.ph.i18.i.preheader ], [ %i.ab, %.lr.ph.i18.i.prol ]
  %i.ac = sub i64 %1, %i.b
  %i.ad = icmp ugt i64 %i.ac, -8
  br i1 %i.ad, label %.loopexit, label %.lr.ph.i18.i

.preheader.i23.i:                                 ; preds = %.preheader.i23.i.prol.loopexit, %.preheader.i23.i
  %.013.i25.i = phi i64 [ %i.am, %.preheader.i23.i ], [ %.013.i25.i.unr, %.preheader.i23.i.prol.loopexit ]
  %i.ae = phi ptr [ %i.an, %.preheader.i23.i ], [ %.unr41, %.preheader.i23.i.prol.loopexit ]
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !191
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !191
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !191
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !191
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !191
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !191
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !191
  %i.am = add nsw i64 %.013.i25.i, -8             ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !191 ; 2 uses
  %.not6.i26.i.7 = icmp eq i64 %i.am, 0
  br i1 %.not6.i26.i.7, label %.loopexit, label %.preheader.i23.i, !llvm.loop !48

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i
  %.110.i19.i = phi i64 [ %i.bd, %.lr.ph.i18.i ], [ %.110.i19.i.unr, %.lr.ph.i18.i.prol.loopexit ]
  %i.ao = phi ptr [ %i.bf, %.lr.ph.i18.i ], [ %.unr37, %.lr.ph.i18.i.prol.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !190
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !190
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !190
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !190
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !190
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !190
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !190
  %i.bd = add nsw i64 %.110.i19.i, 8              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !190 ; 2 uses
  %.not.i20.i.7 = icmp eq i64 %i.bd, 0
  br i1 %.not.i20.i.7, label %.loopexit, label %.lr.ph.i18.i, !llvm.loop !49

_ZNKSt7__cxx114listIiSaIiEE13_M_resize_posERm.exit: ; preds = %bb.a
  %.not = icmp eq i64 %1, %i.b
  br i1 %.not, label %_ZNSt7__cxx114listIiSaIiEE5eraseESt20_List_const_iteratorIiES4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx114listIiSaIiEE13_M_resize_posERm.exit
  %i.bg = sub nuw i64 %1, %i.b
  tail call void @_ZNSt7__cxx114listIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.bg)
  br label %_ZNSt7__cxx114listIiSaIiEE5eraseESt20_List_const_iteratorIiES4_.exit

.loopexit:                                        ; preds = %.preheader.i.i.prol.loopexit, %.preheader.i.i, %.lr.ph.i18.i.prol.loopexit, %.lr.ph.i18.i, %.preheader.i23.i.prol.loopexit, %.preheader.i23.i, %bb.c
  %.sroa.0.0.i.ph = phi ptr [ %i.an, %.preheader.i23.i ], [ %i.bf, %.lr.ph.i18.i ], [ %i.e, %bb.c ], [ %.lcssa.unr, %.preheader.i23.i.prol.loopexit ], [ %.lcssa31.unr, %.lr.ph.i18.i.prol.loopexit ], [ %.lcssa33.unr, %.preheader.i.i.prol.loopexit ], [ %i.s, %.preheader.i.i ] ; 2 uses
  %i.bh = icmp eq ptr %.sroa.0.0.i.ph, %0
  br i1 %i.bh, label %_ZNSt7__cxx114listIiSaIiEE5eraseESt20_List_const_iteratorIiES4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %.lr.ph.i
  %.sroa.05.06.i = phi ptr [ %i.bi, %.lr.ph.i ], [ %.sroa.0.0.i.ph, %.loopexit ] ; 3 uses
  %i.bi = load ptr, ptr %.sroa.05.06.i, align 8, !tbaa !191 ; 2 uses
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !350
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !350
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.06.i) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.05.06.i, i64 noundef 24) #30
  %i.bl = icmp eq ptr %i.bi, %0
  br i1 %i.bl, label %_ZNSt7__cxx114listIiSaIiEE5eraseESt20_List_const_iteratorIiES4_.exit, label %.lr.ph.i, !llvm.loop !46

_ZNSt7__cxx114listIiSaIiEE5eraseESt20_List_const_iteratorIiES4_.exit: ; preds = %.lr.ph.i, %_ZNKSt7__cxx114listIiSaIiEE13_M_resize_posERm.exit, %.preheader7.i14.i, %.loopexit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx114listIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not15 = icmp eq i64 %1, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.f, %bb.c ]  ; 3 uses
  %i.b = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.c, align 4, !tbaa !134
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0) #27
  %i.d = load i64, ptr %i.a, align 8, !tbaa !350
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.a, align 8, !tbaa !350
  %i.f = add nuw i64 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1746

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = tail call ptr @__cxa_begin_catch(ptr %i.h) #27 ; 0 uses
  %.not10 = icmp eq i64 %.09, 0
  br i1 %.not10, label %._crit_edge14, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph13, %bb.e
  %.111 = phi i64 [ %.09, %.lr.ph13 ], [ %i.n, %bb.e ]
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !190  ; 2 uses
  %i.l = load i64, ptr %i.a, align 8, !tbaa !350
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.a, align 8, !tbaa !350
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 24) #30
  %i.n = add i64 %.111, -1                        ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %._crit_edge14, label %bb.e, !llvm.loop !1747

._crit_edge14:                                    ; preds = %bb.e, %bb.d
  invoke void @__cxa_rethrow() #31
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge14
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.o

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #29
  unreachable

bb.i:                                             ; preds = %._crit_edge14
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt23meta_sequence_container13meta_iterator12basic_vtableISt20_List_const_iteratorIiEEEvPKvlPNS_8meta_anyE(ptr noundef %0, i64 noundef %1, ptr noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !355
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(64) %2), !inline_history !34
  br label %_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i

_ZN4entt9basic_anyILm16ELm8EE7emplaceIRKiJS4_EEEvDpOT0_.exit.i: ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @_ZN4entt9basic_anyILm16ELm8EE12basic_vtableITkNS_17cvref_unqualifiedEiEEPKvNS_8internal11any_requestERKS1_S4_, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 -1779859874, ptr %i.f, align 8, !tbaa !109
  store ptr null, ptr %i.c, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 4, ptr %i.g, align 4, !tbaa !111
end_hunk_0
