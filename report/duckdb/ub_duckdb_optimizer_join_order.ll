inline.NumInlined: 7873
inline.NumDeleted: 3418
begin_hunk_0_@_ZN6duckdb15QueryGraphEdges12GetQueryEdgeERNS_15JoinRelationSetE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %.pre = load i64, ptr %i.a, align 8, !tbaa !59
  br label %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit

bb.j:                                             ; preds = %.loopexit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb15QueryGraphEdges9QueryEdgeESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #28
  call void @_ZNSt10unique_ptrIN6duckdb15QueryGraphEdges9QueryEdgeESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.an

_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit: ; preds = %bb.h, %bb.e, %bb.g, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE6insertISB_ImS6_EEENSt9enable_ifIXsr16is_constructibleISD_OT_EE5valueESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEE4typeESK_.exit
  %i.ao = phi i64 [ %.pre, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE6insertISB_ImS6_EEENSt9enable_ifIXsr16is_constructibleISD_OT_EE5valueESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEE4typeESK_.exit ], [ %i.d, %bb.e ], [ %i.d, %bb.g ], [ %i.d, %bb.h ] ; 2 uses
  %.sroa.014.0 = phi ptr [ %.fca.0.extract, %_ZNSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE6insertISB_ImS6_EEENSt9enable_ifIXsr16is_constructibleISD_OT_EE5valueESB_INSt8__detail14_Node_iteratorISD_Lb0ELb0EEEbEE4typeESK_.exit ], [ %.sroa.06.0.i.i, %bb.e ], [ %i.v, %bb.g ], [ %i.aa, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !53 ; 2 uses
  %i.ar = add nuw i64 %.028, 1                    ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.ao
  br i1 %i.as, label %bb.b, label %._crit_edge, !llvm.loop !96
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb15QueryGraphEdges9QueryEdgeESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.d, null
  br i1 %.not.i.i4, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_15QueryGraphEdges9QueryEdgeESt14default_deleteIS7_ELb1EEEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0.i.i5 = phi ptr [ %i.e, %.lr.ph ], [ %i.d, %bb.b ] ; 3 uses
  %i.e = load ptr, ptr %.0.i.i5, align 8, !tbaa !33 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.i.i5, i64 16
  tail call void @_ZNSt10unique_ptrIN6duckdb15QueryGraphEdges9QueryEdgeESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #28, !inline_history !98
  tail call void @_ZdlPv(ptr noundef nonnull %.0.i.i5) #27, !inline_history !99
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_15QueryGraphEdges9QueryEdgeESt14default_deleteIS7_ELb1EEEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i, label %.lr.ph, !llvm.loop !100

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_15QueryGraphEdges9QueryEdgeESt14default_deleteIS7_ELb1EEEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i: ; preds = %.lr.ph, %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !76
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15QueryGraphEdges9QueryEdgeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_15QueryGraphEdges9QueryEdgeESt14default_deleteIS7_ELb1EEEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i
  tail call void @_ZdlPv(ptr noundef %i.k) #27, !inline_history !101
  br label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15QueryGraphEdges9QueryEdgeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15QueryGraphEdges9QueryEdgeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb10unique_ptrINS4_15QueryGraphEdges9QueryEdgeESt14default_deleteIS7_ELb1EEEELb0EEEEE19_M_deallocate_nodesEPSC_.exit.i, %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !104  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.n, %i.p
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15QueryGraphEdges9QueryEdgeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.n, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15QueryGraphEdges9QueryEdgeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit ] ; 2 uses
  %i.q = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !107  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #27, !inline_history !110
  br label %_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #27, !inline_history !110
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.p
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !111

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15QueryGraphEdges9QueryEdgeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit
  %i.u = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.n, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15QueryGraphEdges9QueryEdgeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i.i, label %_ZNKSt14default_deleteIN6duckdb15QueryGraphEdges9QueryEdgeEEclEPS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.u) #27, !inline_history !110
  br label %_ZNKSt14default_deleteIN6duckdb15QueryGraphEdges9QueryEdgeEEclEPS2_.exit

_ZNKSt14default_deleteIN6duckdb15QueryGraphEdges9QueryEdgeEEclEPS2_.exit: ; preds = %bb.f, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #27, !inline_history !112
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb15QueryGraphEdges9QueryEdgeEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15QueryGraphEdges10CreateEdgeERNS_15JoinRelationSetES2_NS_12optional_ptrINS_10FilterInfoELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::optional_ptr", align 8 ; 14 uses
  %5 = alloca %"class.duckdb::unique_ptr.30", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = tail call ptr @_ZN6duckdb15QueryGraphEdges12GetQueryEdgeERNS_15JoinRelationSetE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  store ptr %i.a, ptr %4, align 8
  call void @_ZNK6duckdb12optional_ptrINS_15QueryGraphEdges9QueryEdgeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.b = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !102
  %.not41.not = icmp eq ptr %i.d, %i.e
  br i1 %.not41.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.042 = phi i64 [ %i.ay, %bb.h ], [ 0, %bb.a ]  ; 3 uses
  call void @_ZNK6duckdb12optional_ptrINS_15QueryGraphEdges9QueryEdgeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.f = load ptr, ptr %4, align 8, !tbaa !113
  %i.g = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12NeighborInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.042)
  %i.h = call noundef ptr @_ZNK6duckdb10unique_ptrINS_12NeighborInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = icmp eq ptr %i.i, %2
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph
  %.not37 = icmp eq ptr %3, null
  br i1 %.not37, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNK6duckdb12optional_ptrINS_15QueryGraphEdges9QueryEdgeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = load ptr, ptr %4, align 8, !tbaa !113
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12NeighborInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.042)
  %i.m = call noundef ptr @_ZNK6duckdb10unique_ptrINS_12NeighborInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !115  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !116
  %.not.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %3 to i64
  store i64 %i.s, ptr %i.p, align 8, !tbaa !117
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.t, ptr %i.o, align 8, !tbaa !115
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !107  ; 7 uses
  %i.v = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.f, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ad, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.x
  %i.ah = ptrtoint ptr %3 to i64
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.ai = ptrtoaddr ptr %i.af to i64
  %6 = sub i64 %i.v, %i.w
  %7 = add i64 %6, -8                             ; 2 uses
  %i.aj = lshr i64 %7, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  %i.al = sub i64 %i.ai, %i.w
  %diff.check = icmp ult i64 %i.al, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader112, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.af, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.u, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ap ; 2 uses
  %next.gep69 = getelementptr i8, ptr %i.u, i64 %i.ap ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.aq = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep69, align 8, !tbaa !117, !alias.scope !122, !noalias !119
  %wide.load70 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !117, !alias.scope !122, !noalias !119
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !117, !alias.scope !119, !noalias !122
  store <2 x i64> %wide.load70, ptr %i.ar, align 8, !tbaa !117, !alias.scope !119, !noalias !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader112

.lr.ph.i.i.i.i.i.i.preheader112:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader112, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader112 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader112 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.at = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !122, !noalias !119
  store i64 %i.at, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !119, !noalias !122
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.p
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !127

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.af, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.an, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.u) #27
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.af, ptr %i.n, align 8, !tbaa !107
  store ptr %i.aw, ptr %i.o, align 8, !tbaa !115
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.ax, ptr %i.q, align 8, !tbaa !116
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ay = add nuw i64 %.042, 1                    ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_15QueryGraphEdges9QueryEdgeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.az = load ptr, ptr %4, align 8, !tbaa !113   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !104
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !102
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 3
  %.not = icmp ult i64 %i.ay, %i.bg
  br i1 %.not, label %.lr.ph, label %.critedge, !llvm.loop !128

.critedge:                                        ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.bh = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #30, !noalias !129 ; 3 uses
  store ptr %2, ptr %i.bh, align 8, !tbaa !132, !noalias !129
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false), !noalias !129
  store ptr %i.bh, ptr %5, align 8, !tbaa !105, !alias.scope !129
  %.not62 = icmp eq ptr %3, null
  br i1 %.not62, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.bj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12NeighborInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.n       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !115 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !116
  %.not.i11 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i11, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = ptrtoint ptr %3 to i64
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !117
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !115
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25

bb.l:                                             ; preds = %bb.j
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !107 ; 7 uses
  %i.bs = ptrtoint ptr %i.bm to i64               ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64               ; 3 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %.invoke, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i12

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i12: ; preds = %bb.l
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i13 = call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %i.bx = add nsw i64 %.sroa.speculated.i.i.i13, %i.bw ; 2 uses
  %i.by = icmp ult i64 %i.bx, %i.bw
  %i.bz = call i64 @llvm.umin.i64(i64 %i.bx, i64 1152921504606846975)
  %i.ca = select i1 %i.by, i64 1152921504606846975, i64 %i.bz ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.ca, 0
  call void @llvm.assume(i1 %.not.i.i.i14)
  %i.cb = shl nuw nsw i64 %i.ca, 3
  %i.cc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #30
          to label %.noexc24 unwind label %bb.n   ; 8 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i12
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bu
  %i.ce = ptrtoint ptr %3 to i64
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i15 = icmp eq ptr %i.br, %i.bm
  br i1 %.not10.i.i.i.i.i.i15, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20, label %.lr.ph.i.i.i.i.i.i16.preheader

.lr.ph.i.i.i.i.i.i16.preheader:                   ; preds = %.noexc24
  %i.cf = ptrtoaddr ptr %i.cc to i64
  %8 = sub i64 %i.bs, %i.bt
  %9 = add i64 %8, -8                             ; 2 uses
  %i.cg = lshr i64 %9, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check75 = icmp ult i64 %9, 56
  %i.ci = sub i64 %i.cf, %i.bt
  %diff.check73 = icmp ult i64 %i.ci, 32
  %or.cond108 = or i1 %min.iters.check75, %diff.check73
  br i1 %or.cond108, label %.lr.ph.i.i.i.i.i.i16.preheader110, label %vector.ph76

vector.ph76:                                      ; preds = %.lr.ph.i.i.i.i.i.i16.preheader
  %n.vec78 = and i64 %i.ch, 4611686018427387900   ; 3 uses
  %i.cj = shl i64 %n.vec78, 3                     ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cc, i64 %i.cj  ; 2 uses
  %i.cl = getelementptr i8, ptr %i.br, i64 %i.cj
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph76
  %index80 = phi i64 [ 0, %vector.ph76 ], [ %index.next85, %vector.body79 ] ; 2 uses
  %i.cm = shl i64 %index80, 3                     ; 2 uses
  %next.gep81 = getelementptr i8, ptr %i.cc, i64 %i.cm ; 2 uses
  %next.gep82 = getelementptr i8, ptr %i.br, i64 %i.cm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.cn = getelementptr i8, ptr %next.gep82, i64 16
  %wide.load83 = load <2 x i64>, ptr %next.gep82, align 8, !tbaa !117, !alias.scope !136, !noalias !133
  %wide.load84 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !117, !alias.scope !136, !noalias !133
  %i.co = getelementptr i8, ptr %next.gep81, i64 16
  store <2 x i64> %wide.load83, ptr %next.gep81, align 8, !tbaa !117, !alias.scope !133, !noalias !136
  store <2 x i64> %wide.load84, ptr %i.co, align 8, !tbaa !117, !alias.scope !133, !noalias !136
  %index.next85 = add nuw i64 %index80, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next85, %n.vec78
  br i1 %i.cp, label %middle.block86, label %vector.body79, !llvm.loop !138

middle.block86:                                   ; preds = %vector.body79
  %cmp.n87 = icmp eq i64 %i.ch, %n.vec78
  br i1 %cmp.n87, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20, label %.lr.ph.i.i.i.i.i.i16.preheader110

.lr.ph.i.i.i.i.i.i16.preheader110:                ; preds = %.lr.ph.i.i.i.i.i.i16.preheader, %middle.block86
  %.012.i.i.i.i.i.i17.ph = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i16.preheader ], [ %i.ck, %middle.block86 ]
  %.0911.i.i.i.i.i.i18.ph = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i16.preheader ], [ %i.cl, %middle.block86 ]
  br label %.lr.ph.i.i.i.i.i.i16

.lr.ph.i.i.i.i.i.i16:                             ; preds = %.lr.ph.i.i.i.i.i.i16.preheader110, %.lr.ph.i.i.i.i.i.i16
  %.012.i.i.i.i.i.i17 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.i16 ], [ %.012.i.i.i.i.i.i17.ph, %.lr.ph.i.i.i.i.i.i16.preheader110 ] ; 2 uses
  %.0911.i.i.i.i.i.i18 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i16 ], [ %.0911.i.i.i.i.i.i18.ph, %.lr.ph.i.i.i.i.i.i16.preheader110 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.cq = load i64, ptr %.0911.i.i.i.i.i.i18, align 8, !tbaa !117, !alias.scope !136, !noalias !133
  store i64 %i.cq, ptr %.012.i.i.i.i.i.i17, align 8, !tbaa !117, !alias.scope !133, !noalias !136
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i18, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i17, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i19 = icmp eq ptr %i.cr, %i.bm
  br i1 %.not.i.i.i.i.i.i19, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20, label %.lr.ph.i.i.i.i.i.i16, !llvm.loop !139

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20: ; preds = %.lr.ph.i.i.i.i.i.i16, %middle.block86, %.noexc24
  %.0.lcssa.i.i.i.i.i.i21 = phi ptr [ %i.cc, %.noexc24 ], [ %i.ck, %middle.block86 ], [ %i.cs, %.lr.ph.i.i.i.i.i.i16 ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i21, i64 8
  %.not.i23.i.i22 = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i22, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i23, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20
  call void @_ZdlPv(ptr noundef nonnull %i.br) #27
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i23

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i23: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i20
  store ptr %i.cc, ptr %i.bk, align 8, !tbaa !107
  store ptr %i.ct, ptr %i.bl, align 8, !tbaa !115
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ca
  store ptr %i.cu, ptr %i.bn, align 8, !tbaa !116
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25

bb.n:                                             ; preds = %.invoke, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i12, %bb.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.cv

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25: ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i23, %bb.k, %.critedge
  invoke void @_ZNK6duckdb12optional_ptrINS_15QueryGraphEdges9QueryEdgeELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.n

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit25
  %i.cw = load ptr, ptr %4, align 8, !tbaa !113   ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !104 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !140
  %.not.i.i = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i.i, label %bb.p, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.o
  %i.db = load i64, ptr %5, align 8, !tbaa !105
  store i64 %i.db, ptr %i.cy, align 8, !tbaa !105
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.dc, ptr %i.cx, align 8, !tbaa !104
  br label %_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev.exit

bb.p:                                             ; preds = %bb.o
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !102 ; 10 uses
  %i.de = ptrtoint ptr %i.cy to i64               ; 3 uses
  %i.df = ptrtoint ptr %i.dd to i64               ; 3 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

.invoke:                                          ; preds = %bb.l, %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.p
  %i.di = ashr exact i64 %i.dg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 1152921504606846975)
  %i.dm = select i1 %i.dk, i64 1152921504606846975, i64 %i.dl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #30
          to label %.noexc28 unwind label %bb.n   ; 10 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  %i.dq = load i64, ptr %5, align 8, !tbaa !105
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !105
  store ptr null, ptr %5, align 8, !tbaa !105
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.cy
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc28
  %10 = sub i64 %i.de, %i.df
  %11 = add i64 %10, -8                           ; 2 uses
  %i.dr = lshr i64 %11, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check93 = icmp ult i64 %11, 152
  br i1 %min.iters.check93, label %.lr.ph.i.i.i.i.i.i.i.preheader109, label %vector.memcheck90

vector.memcheck90:                                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dt = add i64 %i.de, -8
  %i.du = sub i64 %i.dt, %i.df
  %i.dv = and i64 %i.du, -8
  %i.dw = add i64 %i.dv, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.do, i64 %i.dw
  %scevgep91 = getelementptr i8, ptr %i.dd, i64 %i.dw
  %bound0 = icmp ult ptr %i.do, %scevgep91
  %bound1 = icmp ult ptr %i.dd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader109, label %vector.ph94

vector.ph94:                                      ; preds = %vector.memcheck90
  %n.vec96 = and i64 %i.ds, 4611686018427387900   ; 3 uses
  %i.dx = shl i64 %n.vec96, 3                     ; 2 uses
  %i.dy = getelementptr i8, ptr %i.do, i64 %i.dx  ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dd, i64 %i.dx
  br label %vector.body97

vector.body97:                                    ; preds = %vector.body97, %vector.ph94
  %index98 = phi i64 [ 0, %vector.ph94 ], [ %index.next103, %vector.body97 ] ; 2 uses
  %i.ea = shl i64 %index98, 3                     ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.do, i64 %i.ea ; 2 uses
  %next.gep100 = getelementptr i8, ptr %i.dd, i64 %i.ea ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.eb = getelementptr i8, ptr %next.gep100, i64 16
  %wide.load101 = load <2 x i64>, ptr %next.gep100, align 8, !tbaa !105, !alias.scope !146, !noalias !141
  %wide.load102 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !105, !alias.scope !146, !noalias !141
  %i.ec = getelementptr i8, ptr %next.gep99, i64 16
  store <2 x i64> %wide.load101, ptr %next.gep99, align 8, !tbaa !105, !alias.scope !149, !noalias !146
  store <2 x i64> %wide.load102, ptr %i.ec, align 8, !tbaa !105, !alias.scope !149, !noalias !146
  %i.ed = getelementptr i8, ptr %next.gep100, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep100, align 8, !tbaa !105, !alias.scope !146, !noalias !141
  store <2 x ptr> splat (ptr null), ptr %i.ed, align 8, !tbaa !105, !alias.scope !146, !noalias !141
  %index.next103 = add nuw i64 %index98, 4        ; 2 uses
  %i.ee = icmp eq i64 %index.next103, %n.vec96
  br i1 %i.ee, label %middle.block104, label %vector.body97, !llvm.loop !151

middle.block104:                                  ; preds = %vector.body97
  %cmp.n105 = icmp eq i64 %i.ds, %n.vec96
  br i1 %cmp.n105, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader109

.lr.ph.i.i.i.i.i.i.i.preheader109:                ; preds = %vector.memcheck90, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block104
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.do, %vector.memcheck90 ], [ %i.do, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dy, %middle.block104 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dd, %vector.memcheck90 ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dz, %middle.block104 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader109, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader109 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader109 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.ef = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !105, !alias.scope !144, !noalias !141
  store i64 %i.ef, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !105, !alias.scope !141, !noalias !144
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !105, !alias.scope !144, !noalias !141
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eg, %i.cy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !152

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block104, %.noexc28
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.do, %.noexc28 ], [ %i.dy, %middle.block104 ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dd) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.q
  store ptr %i.do, ptr %i.cw, align 8, !tbaa !102
  store ptr %i.ei, ptr %i.cx, align 8, !tbaa !104
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.ej, ptr %i.cz, align 8, !tbaa !140
  %.pr = load ptr, ptr %5, align 8, !tbaa !105    ; 3 uses
  %.not.i29 = icmp eq ptr %.pr, null
  br i1 %.not.i29, label %_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !107 ; 2 uses
  %.not.i.i.i.i.i.i30 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i.i30, label %_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPv(ptr noundef nonnull %i.el) #27
  br label %_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i: ; preds = %bb.s, %bb.r
  call void @_ZdlPv(ptr noundef nonnull %.pr) #27
  br label %_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_12NeighborInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb12NeighborInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %bb.d, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %_ZNSt10unique_ptrIN6duckdb12NeighborInfoESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_12NeighborInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.e = load ptr, ptr %0, align 8, !tbaa !102    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  store i64 %i.i, ptr %i.b, align 8, !tbaa !19
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_12NeighborInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_12NeighborInfoESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_12NeighborInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !105    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_12NeighborInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !51

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN6duckdb17QueryGraphManager11ReconstructENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.bq, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 55, ptr %i.a, align 8, !tbaa !19
  %i.br = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc84 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

.noexc84:                                         ; preds = %.noexc.i
  store ptr %i.br, ptr %3, align 8, !tbaa !25
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.br, ptr noundef nonnull align 1 dereferenceable(55) @.str.40, i64 55, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !14
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc84
  invoke void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.o unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %.noexc84
  %.0.i.i.i = phi i1 [ false, %bb.l ], [ true, %.noexc84 ] ; 2 uses
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bx = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bq
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.bx) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.0.i.i.i, label %bb.n, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %.0.i.i.i, label %bb.n, label %.body

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bp) #28
  br label %.body

bb.o:                                             ; preds = %bb.l
  unreachable

.noexc43:                                         ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.02028.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !377, !noalias !478
  %i.cb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18SingleJoinRelationESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.092.0127)
          to label %.noexc44 unwind label %.loopexit98

.noexc44:                                         ; preds = %.noexc43
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !481, !noalias !478, !nonnull !362, !align !363
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.noexc44
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %.02028.i)
          to label %.noexc45 unwind label %.loopexit.split-lp99 ; 2 uses

.noexc45:                                         ; preds = %bb.p
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !377, !noalias !478 ; 6 uses
  store ptr null, ptr %i.ce, align 8, !tbaa !377, !noalias !478
  invoke void @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE8erase_atEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %.02028.i)
          to label %_ZN6duckdbL19ExtractJoinRelationERNS_10unique_ptrINS_18SingleJoinRelationESt14default_deleteIS1_ELb1EEE.exit unwind label %bb.q, !noalias !478

bb.q:                                             ; preds = %.noexc45
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i, label %.body, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i: ; preds = %bb.q
  %i.ch = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !352, !noalias !478
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !478
  call void %i.ck(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ch) #28, !noalias !478, !inline_history !483
  br label %.body

bb.r:                                             ; preds = %.noexc44
  %i.cl = add nuw i64 %.02028.i, 1                ; 2 uses
  %i.cm = load ptr, ptr %i.bg, align 8, !tbaa !468, !noalias !478 ; 2 uses
  %i.cn = load ptr, ptr %i.bf, align 8, !tbaa !469, !noalias !478 ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 3
  %.not.i = icmp ult i64 %i.cl, %i.cr
  br i1 %.not.i, label %.lr.ph.i, label %.critedge.i, !llvm.loop !484

.critedge.i:                                      ; preds = %.noexc42, %bb.r
  %i.cs = call ptr @__cxa_allocate_exception(i64 16) #28, !noalias !478 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !478
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !478
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, !noalias !478

bb.s:                                             ; preds = %.critedge.i
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.t unwind label %bb.u, !noalias !478

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.cs, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.w unwind label %bb.u, !noalias !478

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.critedge.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !478
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !478
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cv = load ptr, ptr %4, align 8, !tbaa !25, !noalias !478 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.cv) #27, !noalias !478
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !478
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !478
  br i1 %.0.i, label %bb.v, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !478
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !478
  br i1 %.0.i, label %bb.v, label %.body

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn25.i = phi { ptr, i32 } [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.cs) #28, !noalias !478
  br label %.body

bb.w:                                             ; preds = %bb.t
  unreachable

_ZN6duckdbL19ExtractJoinRelationERNS_10unique_ptrINS_18SingleJoinRelationESt14default_deleteIS1_ELb1EEE.exit: ; preds = %.noexc45
  %i.cy = load ptr, ptr %i.ax, align 8, !tbaa !468 ; 6 uses
  %i.cz = load ptr, ptr %i.ap, align 8, !tbaa !471
  %.not.i.i46 = icmp eq ptr %i.cy, %i.cz
  br i1 %.not.i.i46, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN6duckdbL19ExtractJoinRelationERNS_10unique_ptrINS_18SingleJoinRelationESt14default_deleteIS1_ELb1EEE.exit
  store i64 %i.cf, ptr %i.cy, align 8, !tbaa !377
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.da, ptr %i.ax, align 8, !tbaa !468
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

bb.y:                                             ; preds = %_ZN6duckdbL19ExtractJoinRelationERNS_10unique_ptrINS_18SingleJoinRelationESt14default_deleteIS1_ELb1EEE.exit
  %i.db = load ptr, ptr %8, align 8, !tbaa !469   ; 10 uses
  %i.dc = ptrtoint ptr %i.cy to i64               ; 3 uses
  %i.dd = ptrtoint ptr %i.db to i64               ; 3 uses
  %i.de = sub i64 %i.dc, %i.dd                    ; 3 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.z, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc47 unwind label %.loopexit.split-lp105

.noexc47:                                         ; preds = %bb.z
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.y
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #30
          to label %.noexc48 unwind label %.loopexit104 ; 10 uses

.noexc48:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.de
  store i64 %i.cf, ptr %i.dn, align 8, !tbaa !377
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.db, %i.cy
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc48
  %14 = sub i64 %i.dc, %i.dd
  %15 = add i64 %14, -8                           ; 2 uses
  %i.do = lshr i64 %15, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %15, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader204, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.dm, i64 8
  %i.dq = add i64 %i.dc, -8
  %i.dr = sub i64 %i.dq, %i.dd
  %i.ds = and i64 %i.dr, -8                       ; 2 uses
  %scevgep197 = getelementptr i8, ptr %scevgep, i64 %i.ds
  %scevgep198 = getelementptr i8, ptr %i.db, i64 8
  %scevgep199 = getelementptr i8, ptr %scevgep198, i64 %i.ds
  %bound0 = icmp ult ptr %i.dm, %scevgep199
  %bound1 = icmp ult ptr %i.db, %scevgep197
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader204, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dp, 4611686018427387900     ; 3 uses
  %i.dt = shl i64 %n.vec, 3                       ; 2 uses
  %i.du = getelementptr i8, ptr %i.dm, i64 %i.dt  ; 2 uses
  %i.dv = getelementptr i8, ptr %i.db, i64 %i.dt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dm, i64 %i.dw ; 2 uses
  %next.gep200 = getelementptr i8, ptr %i.db, i64 %i.dw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.dx = getelementptr i8, ptr %next.gep200, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep200, align 8, !tbaa !377, !alias.scope !490, !noalias !485
  %wide.load201 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !377, !alias.scope !490, !noalias !485
  %i.dy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !377, !alias.scope !493, !noalias !490
  store <2 x i64> %wide.load201, ptr %i.dy, align 8, !tbaa !377, !alias.scope !493, !noalias !490
  %i.dz = getelementptr i8, ptr %next.gep200, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep200, align 8, !tbaa !377, !alias.scope !490, !noalias !485
  store <2 x ptr> splat (ptr null), ptr %i.dz, align 8, !tbaa !377, !alias.scope !490, !noalias !485
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !495

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader204

.lr.ph.i.i.i.i.i.i.i.preheader204:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dm, %vector.memcheck ], [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.du, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader204, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader204 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader204 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.eb = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !488, !noalias !485
  store i64 %i.eb, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !485, !noalias !488
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !488, !noalias !485
  %i.ec = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ec, %i.cy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !496

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc48
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dm, %.noexc48 ], [ %i.du, %middle.block ], [ %i.ed, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.db) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aa, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.dm, ptr %8, align 8, !tbaa !469
  store ptr %i.ee, ptr %i.ax, align 8, !tbaa !468
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk
  store ptr %i.ef, ptr %i.ap, align 8, !tbaa !471
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.x, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.092.0127, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.eg, %i.aj
  br i1 %.not, label %._crit_edge129, label %bb.k

.loopexit98:                                      ; preds = %.noexc43
  %lpad.loopexit100 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp99:                             ; preds = %bb.k, %.noexc41, %bb.p
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit104:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit106 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp105:                            ; preds = %bb.z
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp105, %.loopexit104
  %lpad.phi108 = phi { ptr, i32 } [ %lpad.loopexit106, %.loopexit104 ], [ %lpad.loopexit.split-lp107, %.loopexit.split-lp105 ] ; 2 uses
  %.not.i50 = icmp eq i64 %i.cf, 0
  br i1 %.not.i50, label %.body, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i51

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i51: ; preds = %bb.ab
  %i.eh = inttoptr i64 %i.cf to ptr               ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !352
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.eh) #28, !inline_history !395
  br label %.body

.body:                                            ; preds = %.loopexit98, %.loopexit.split-lp99, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i51, %bb.ab, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i, %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.n
  %.pn34 = phi { ptr, i32 } [ %i.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn25.i, %bb.v ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.cg, %bb.q ], [ %i.cg, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i ], [ %lpad.phi108, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i51 ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.n ], [ %lpad.phi108, %bb.ab ], [ %lpad.loopexit100, %.loopexit98 ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp99 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.av

bb.ac:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !445 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !445 ; 2 uses
  %.not96130 = icmp eq ptr %i.em, %i.eo
  br i1 %.not96130, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.ac
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  br label %bb.ae

._crit_edge134:                                   ; preds = %bb.al, %bb.ac
  br i1 %i.m, label %bb.am, label %bb.an

bb.ad:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb20GenerateJoinRelationD2Ev.exit80

bb.ae:                                            ; preds = %.lr.ph133, %bb.al
  %.sroa.085.0131 = phi ptr [ %i.em, %.lr.ph133 ], [ %i.fq, %bb.al ] ; 3 uses
  %i.er = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10FilterInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.085.0131)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !350
  %.not97 = icmp eq ptr %i.es, null
  br i1 %.not97, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.et = load i64, ptr %i.ep, align 8, !tbaa !377
  store i64 %i.et, ptr %12, align 8, !tbaa !377
  store ptr null, ptr %i.ep, align 8, !tbaa !377
  %i.eu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10FilterInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.085.0131)
          to label %bb.ah unwind label %bb.aj     ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !350
  store i64 %i.ev, ptr %13, align 8, !tbaa !350
  store ptr null, ptr %i.eu, align 8, !tbaa !350
  invoke fastcc void @_ZN6duckdbL10PushFilterENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEENS0_INS_10ExpressionES2_IS5_ELb1EEE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef %12, ptr noundef %13)
          to label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit56 unwind label %bb.ak

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit56: ; preds = %bb.ah
  %i.ew = load ptr, ptr %11, align 8, !tbaa !377
  store ptr %i.ew, ptr %i.ep, align 8, !tbaa !377
  %i.ex = load ptr, ptr %13, align 8, !tbaa !350  ; 3 uses
  %.not.i57 = icmp eq ptr %i.ex, null
  br i1 %.not.i57, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit56
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !352
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(88) %i.ex) #28, !inline_history !497
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit56, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  %i.fb = load ptr, ptr %12, align 8, !tbaa !377  ; 3 uses
  %.not.i58 = icmp eq ptr %i.fb, null
  br i1 %.not.i58, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit60, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i59

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i59: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !352
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.fb) #28, !inline_history !395
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit60

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit60: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i59
end_hunk_1
begin_hunk_2_@_ZN6duckdb20CardinalityEstimator20AddToEquivalenceSetsENS_12optional_ptrINS_10FilterInfoELb1EEENS_6vectorImLb1ESaImEEE:bb.a
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1)
  %i.u = load i64, ptr %i.t, align 8, !tbaa !19   ; 3 uses
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !560
  %i.w = load ptr, ptr %0, align 8, !tbaa !566    ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 7                  ; 2 uses
  %.not.i.i18 = icmp ult i64 %i.u, %i.aa
  br i1 %.not.i.i18, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit19, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.u, i64 noundef %i.aa) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit19: ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [128 x i8], ptr %i.w, i64 %i.u ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !524 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !524 ; 2 uses
  %.not7787 = icmp eq ptr %i.ad, %i.af
  br i1 %.not7787, label %._crit_edge90, label %.lr.ph89

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit21
  %.sroa.074.086 = phi ptr [ %.sroa.074.0, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit21 ], [ %.sroa.074.084, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.074.086, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !tbaa.struct !567
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0)
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !19 ; 3 uses
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !560
  %i.ak = load ptr, ptr %0, align 8, !tbaa !566   ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 7                 ; 2 uses
  %.not.i.i20 = icmp ult i64 %i.ai, %i.ao
  br i1 %.not.i.i20, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit21, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.ai, i64 noundef %i.ao) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit21: ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.ak, i64 %i.ai ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.ap, ptr %8, align 8, !tbaa !547
  %i.aq = call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %.sroa.074.0 = load ptr, ptr %.sroa.074.086, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %.sroa.074.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge90:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit19
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1)
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !19 ; 3 uses
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !560
  %i.au = load ptr, ptr %0, align 8, !tbaa !566   ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 7                 ; 2 uses
  %.not.i.i22 = icmp ult i64 %i.as, %i.ay
  br i1 %.not.i.i22, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit23, label %bb.f

bb.f:                                             ; preds = %._crit_edge90
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.as, i64 noundef %i.ay) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit23: ; preds = %._crit_edge90
  %i.az = getelementptr inbounds nuw [128 x i8], ptr %i.au, i64 %i.as ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !558 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit23, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i ], [ %i.bb, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit23 ] ; 2 uses
  %i.bc = load ptr, ptr %.06.i.i.i, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i) #27
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !559

_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit23
  %i.bd = load ptr, ptr %i.az, align 8, !tbaa !542
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !541
  %i.bg = shl i64 %i.bf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bd, i8 0, i64 %i.bg, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1)
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !19 ; 3 uses
  %i.bj = load ptr, ptr %i.k, align 8, !tbaa !560
  %i.bk = load ptr, ptr %0, align 8, !tbaa !566   ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 7                 ; 2 uses
  %.not.i.i24 = icmp ult i64 %i.bi, %i.bo
  br i1 %.not.i.i24, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit25, label %bb.g

bb.g:                                             ; preds = %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE5clearEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.bi, i64 noundef %i.bo) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit25: ; preds = %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EE5clearEv.exit
  %i.bp = getelementptr inbounds nuw [128 x i8], ptr %i.bk, i64 %i.bi ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !435 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 112 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !436 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bt, %i.br
  br i1 %.not.i.i.i26, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit25, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.br, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit25 ] ; 3 uses
  %i.bu = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !25 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.bu) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, %i.bt
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !437

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !436
  br label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit: ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit25, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.by = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0)
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !19 ; 3 uses
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !560
  %i.cb = load ptr, ptr %0, align 8, !tbaa !566   ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 7                 ; 2 uses
  %.not.i.i27 = icmp ult i64 %i.bz, %i.cf
  br i1 %.not.i.i27, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit28, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.bz, i64 noundef %i.cf) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit28: ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE5clearEv.exit
  %i.cg = getelementptr inbounds nuw [128 x i8], ptr %i.cb, i64 %i.bz ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 80 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 88 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !115 ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 96 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !116
  %.not.i = icmp eq ptr %i.cj, %i.cl
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit28
  %i.cm = load i64, ptr %9, align 8, !tbaa !117
  store i64 %i.cm, ptr %i.cj, align 8, !tbaa !117
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cn, ptr %i.ci, align 8, !tbaa !115
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit28
  %i.co = load ptr, ptr %i.ch, align 8, !tbaa !107 ; 7 uses
  %i.cp = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 3 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %bb.k, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i.i29 = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i29)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #30 ; 8 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  %i.db = load i64, ptr %9, align 8, !tbaa !117
  store i64 %i.db, ptr %i.da, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.co, %i.cj
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %12 = sub i64 %i.cp, %i.cq
  %13 = add i64 %12, -8                           ; 2 uses
  %i.dd = lshr i64 %13, 3
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check196 = icmp ult i64 %13, 56
  %i.df = sub i64 %i.dc, %i.cq
  %diff.check194 = icmp ult i64 %i.df, 32
  %or.cond = or i1 %min.iters.check196, %diff.check194
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader213, label %vector.ph197

vector.ph197:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec199 = and i64 %i.de, 4611686018427387900  ; 3 uses
  %i.dg = shl i64 %n.vec199, 3                    ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cz, i64 %i.dg  ; 2 uses
  %i.di = getelementptr i8, ptr %i.co, i64 %i.dg
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph197
  %index201 = phi i64 [ 0, %vector.ph197 ], [ %index.next206, %vector.body200 ] ; 2 uses
  %i.dj = shl i64 %index201, 3                    ; 2 uses
  %next.gep202 = getelementptr i8, ptr %i.cz, i64 %i.dj ; 2 uses
  %next.gep203 = getelementptr i8, ptr %i.co, i64 %i.dj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.dk = getelementptr i8, ptr %next.gep203, i64 16
  %wide.load204 = load <2 x i64>, ptr %next.gep203, align 8, !tbaa !117, !alias.scope !571, !noalias !568
  %wide.load205 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !117, !alias.scope !571, !noalias !568
  %i.dl = getelementptr i8, ptr %next.gep202, i64 16
  store <2 x i64> %wide.load204, ptr %next.gep202, align 8, !tbaa !117, !alias.scope !568, !noalias !571
  store <2 x i64> %wide.load205, ptr %i.dl, align 8, !tbaa !117, !alias.scope !568, !noalias !571
  %index.next206 = add nuw i64 %index201, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next206, %n.vec199
  br i1 %i.dm, label %middle.block207, label %vector.body200, !llvm.loop !573

middle.block207:                                  ; preds = %vector.body200
  %cmp.n208 = icmp eq i64 %i.de, %n.vec199
  br i1 %cmp.n208, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader213

.lr.ph.i.i.i.i.i.i.preheader213:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block207
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.dh, %middle.block207 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.di, %middle.block207 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader213, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader213 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader213 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.dn = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !571, !noalias !568
  store i64 %i.dn, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !117, !alias.scope !568, !noalias !571
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.do, %i.cj
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !574

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block207, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cz, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dh, %middle.block207 ], [ %i.dp, %.lr.ph.i.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.co) #27
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.cz, ptr %i.ch, align 8, !tbaa !107
  store ptr %i.dq, ptr %i.ci, align 8, !tbaa !115
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.dr, ptr %i.ck, align 8, !tbaa !116
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

.lr.ph89:                                         ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit19, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %.sroa.070.088 = phi ptr [ %i.ev, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit ], [ %i.ad, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit19 ] ; 4 uses
  %i.ds = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0)
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !19 ; 3 uses
  %i.du = load ptr, ptr %i.k, align 8, !tbaa !560
  %i.dv = load ptr, ptr %0, align 8, !tbaa !566   ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 7                 ; 2 uses
  %.not.i.i30 = icmp ult i64 %i.dt, %i.dz
  br i1 %.not.i.i30, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit31, label %bb.m

bb.m:                                             ; preds = %.lr.ph89
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.dt, i64 noundef %i.dz) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit31: ; preds = %.lr.ph89
  %i.ea = getelementptr inbounds nuw [128 x i8], ptr %i.dv, i64 %i.dt ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 112 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !436 ; 8 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 120
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !514
  %.not.i32 = icmp eq ptr %i.ec, %i.ee
  br i1 %.not.i32, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit31
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 3 uses
  store ptr %i.ef, ptr %i.ec, align 8, !tbaa !11
  %i.eg = load ptr, ptr %.sroa.070.088, align 8, !tbaa !25 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.070.088, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !14 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.ei, ptr %i.a, align 8, !tbaa !19
  %i.ej = icmp ugt i64 %i.ei, 15
  br i1 %i.ej, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.ek = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ec, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ek, ptr %i.ec, align 8, !tbaa !25
  %i.el = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.el, ptr %i.ef, align 8, !tbaa !17
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.n
  %i.em = phi ptr [ %i.ek, %.noexc.i.i ], [ %i.ef, %bb.n ] ; 2 uses
  switch i64 %i.ei, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.en = load i8, ptr %i.eg, align 1, !tbaa !17
  store i8 %i.en, ptr %i.em, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.em, ptr align 1 %i.eg, i64 %i.ei, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.eo = load i64, ptr %i.a, align 8, !tbaa !19  ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !14
  %i.eq = load ptr, ptr %i.ec, align 8, !tbaa !25
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eo
  store i8 0, ptr %i.er, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.es = load ptr, ptr %i.eb, align 8, !tbaa !436
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store ptr %i.et, ptr %i.eb, align 8, !tbaa !436
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit31
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ea, i64 104
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.070.088)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.q
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.070.088, i64 32 ; 2 uses
  %.not77 = icmp eq ptr %i.ev, %i.af
  br i1 %.not77, label %._crit_edge90, label %.lr.ph89

bb.r:                                             ; preds = %bb.a
  %i.ew = icmp eq i64 %i.g, 8
  br i1 %i.ew, label %_ZNSt6vectorImSaImEE2atEm.exit, label %bb.x

_ZNSt6vectorImSaImEE2atEm.exit:                   ; preds = %bb.r
  %i.ex = load i64, ptr %i.d, align 8, !tbaa !19  ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !560
  %i.fa = load ptr, ptr %0, align 8, !tbaa !566   ; 2 uses
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = ptrtoint ptr %i.fa to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = ashr exact i64 %i.fd, 7                 ; 2 uses
  %.not.i.i34 = icmp ult i64 %i.ex, %i.fe
  br i1 %.not.i.i34, label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit35, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE2atEm.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.ex, i64 noundef %i.fe) #29
  unreachable

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit35: ; preds = %_ZNSt6vectorImSaImEE2atEm.exit
  %i.ff = getelementptr inbounds nuw [128 x i8], ptr %i.fa, i64 %i.ex ; 7 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.fg = load ptr, ptr %9, align 8, !tbaa !563
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %i.ff, ptr %7, align 8, !tbaa !547
  %i.fi = call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 8 dereferenceable(8) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %i.fj = load ptr, ptr %9, align 8, !tbaa !563
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr %i.ff, ptr %6, align 8, !tbaa !547
  %i.fl = call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ff, ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 80 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 88 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !115 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ff, i64 96 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !116
  %.not.i36 = icmp eq ptr %i.fo, %i.fq
  br i1 %.not.i36, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit35
  %i.fr = load i64, ptr %9, align 8, !tbaa !117
  store i64 %i.fr, ptr %i.fo, align 8, !tbaa !117
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr %i.fs, ptr %i.fn, align 8, !tbaa !115
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

bb.u:                                             ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE2atEm.exit35
  %i.ft = load ptr, ptr %i.fm, align 8, !tbaa !107 ; 7 uses
  %i.fu = ptrtoint ptr %i.fo to i64               ; 2 uses
  %i.fv = ptrtoint ptr %i.ft to i64               ; 3 uses
  %i.fw = sub i64 %i.fu, %i.fv                    ; 3 uses
  %i.fx = icmp eq i64 %i.fw, 9223372036854775800
  br i1 %i.fx, label %bb.v, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37: ; preds = %bb.u
  %i.fy = ashr exact i64 %i.fw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i38 = call i64 @llvm.umax.i64(i64 %i.fy, i64 1)
  %i.fz = add nsw i64 %.sroa.speculated.i.i.i38, %i.fy ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %i.fy
  %i.gb = call i64 @llvm.umin.i64(i64 %i.fz, i64 1152921504606846975)
  %i.gc = select i1 %i.ga, i64 1152921504606846975, i64 %i.gb ; 3 uses
  %.not.i.i.i39 = icmp ne i64 %i.gc, 0
  call void @llvm.assume(i1 %.not.i.i.i39)
  %i.gd = shl nuw nsw i64 %i.gc, 3
  %i.ge = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gd) #30 ; 8 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fw
  %i.gg = load i64, ptr %9, align 8, !tbaa !117
  store i64 %i.gg, ptr %i.gf, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i40 = icmp eq ptr %i.ft, %i.fo
  br i1 %.not10.i.i.i.i.i.i40, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i45, label %.lr.ph.i.i.i.i.i.i41.preheader

.lr.ph.i.i.i.i.i.i41.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37
  %i.gh = ptrtoaddr ptr %i.ge to i64
  %14 = sub i64 %i.fu, %i.fv
  %15 = add i64 %14, -8                           ; 2 uses
  %i.gi = lshr i64 %15, 3
  %i.gj = add nuw nsw i64 %i.gi, 1                ; 2 uses
  %min.iters.check178 = icmp ult i64 %15, 56
  %i.gk = sub i64 %i.gh, %i.fv
  %diff.check176 = icmp ult i64 %i.gk, 32
  %or.cond211 = or i1 %min.iters.check178, %diff.check176
  br i1 %or.cond211, label %.lr.ph.i.i.i.i.i.i41.preheader222, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph.i.i.i.i.i.i41.preheader
  %n.vec181 = and i64 %i.gj, 4611686018427387900  ; 3 uses
  %i.gl = shl i64 %n.vec181, 3                    ; 2 uses
  %i.gm = getelementptr i8, ptr %i.ge, i64 %i.gl  ; 2 uses
  %i.gn = getelementptr i8, ptr %i.ft, i64 %i.gl
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph179
  %index183 = phi i64 [ 0, %vector.ph179 ], [ %index.next188, %vector.body182 ] ; 2 uses
  %i.go = shl i64 %index183, 3                    ; 2 uses
  %next.gep184 = getelementptr i8, ptr %i.ge, i64 %i.go ; 2 uses
  %next.gep185 = getelementptr i8, ptr %i.ft, i64 %i.go ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.gp = getelementptr i8, ptr %next.gep185, i64 16
  %wide.load186 = load <2 x i64>, ptr %next.gep185, align 8, !tbaa !117, !alias.scope !578, !noalias !575
  %wide.load187 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !117, !alias.scope !578, !noalias !575
  %i.gq = getelementptr i8, ptr %next.gep184, i64 16
  store <2 x i64> %wide.load186, ptr %next.gep184, align 8, !tbaa !117, !alias.scope !575, !noalias !578
  store <2 x i64> %wide.load187, ptr %i.gq, align 8, !tbaa !117, !alias.scope !575, !noalias !578
  %index.next188 = add nuw i64 %index183, 4       ; 2 uses
  %i.gr = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.gr, label %middle.block189, label %vector.body182, !llvm.loop !580

middle.block189:                                  ; preds = %vector.body182
  %cmp.n190 = icmp eq i64 %i.gj, %n.vec181
  br i1 %cmp.n190, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i45, label %.lr.ph.i.i.i.i.i.i41.preheader222

.lr.ph.i.i.i.i.i.i41.preheader222:                ; preds = %.lr.ph.i.i.i.i.i.i41.preheader, %middle.block189
  %.012.i.i.i.i.i.i42.ph = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i.i41.preheader ], [ %i.gm, %middle.block189 ]
  %.0911.i.i.i.i.i.i43.ph = phi ptr [ %i.ft, %.lr.ph.i.i.i.i.i.i41.preheader ], [ %i.gn, %middle.block189 ]
  br label %.lr.ph.i.i.i.i.i.i41

.lr.ph.i.i.i.i.i.i41:                             ; preds = %.lr.ph.i.i.i.i.i.i41.preheader222, %.lr.ph.i.i.i.i.i.i41
  %.012.i.i.i.i.i.i42 = phi ptr [ %i.gu, %.lr.ph.i.i.i.i.i.i41 ], [ %.012.i.i.i.i.i.i42.ph, %.lr.ph.i.i.i.i.i.i41.preheader222 ] ; 2 uses
  %.0911.i.i.i.i.i.i43 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i41 ], [ %.0911.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i41.preheader222 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  %i.gs = load i64, ptr %.0911.i.i.i.i.i.i43, align 8, !tbaa !117, !alias.scope !578, !noalias !575
  store i64 %i.gs, ptr %.012.i.i.i.i.i.i42, align 8, !tbaa !117, !alias.scope !575, !noalias !578
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i43, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i42, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i44 = icmp eq ptr %i.gt, %i.fo
  br i1 %.not.i.i.i.i.i.i44, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i45, label %.lr.ph.i.i.i.i.i.i41, !llvm.loop !581

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i45: ; preds = %.lr.ph.i.i.i.i.i.i41, %middle.block189, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37
  %.0.lcssa.i.i.i.i.i.i46 = phi ptr [ %i.ge, %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i37 ], [ %i.gm, %middle.block189 ], [ %i.gu, %.lr.ph.i.i.i.i.i.i41 ]
  %i.gv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i46, i64 8
  %.not.i23.i.i47 = icmp eq ptr %i.ft, null
  br i1 %.not.i23.i.i47, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i48, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i45
  call void @_ZdlPv(ptr noundef nonnull %i.ft) #27
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i48

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i48: ; preds = %bb.w, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i45
  store ptr %i.ge, ptr %i.fm, align 8, !tbaa !107
  store ptr %i.gv, ptr %i.fn, align 8, !tbaa !115
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gc
  store ptr %i.gw, ptr %i.fp, align 8, !tbaa !116
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

bb.x:                                             ; preds = %bb.r
  %i.gx = icmp eq ptr %i.d, %i.c
  br i1 %i.gx, label %bb.y, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store ptr %i.gy, ptr %11, align 8, !tbaa !542
  %i.gz = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 1, ptr %i.gz, align 8, !tbaa !541
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hb, align 8, !tbaa !83
  %i.hc = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i8 0, i64 16, i1 false)
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.z unwind label %bb.al

bb.z:                                             ; preds = %bb.y
  %i.hd = load ptr, ptr %9, align 8, !tbaa !563
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %11, ptr %5, align 8, !tbaa !547
  %i.hf = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.aa unwind label %bb.al     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ab unwind label %bb.al

bb.ab:                                            ; preds = %bb.aa
  %i.hg = load ptr, ptr %9, align 8, !tbaa !563
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %11, ptr %4, align 8, !tbaa !547
  %i.hi = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS1_SF_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ac unwind label %bb.al     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !560 ; 14 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !561
  %.not.i52 = icmp eq ptr %i.hk, %i.hm
  br i1 %.not.i52, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr null, ptr %i.hk, align 8, !tbaa !542
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ho = load i64, ptr %i.gz, align 8, !tbaa !541
  store i64 %i.ho, ptr %i.hn, align 8, !tbaa !541
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store ptr null, ptr %i.hp, align 8, !tbaa !33
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.hr = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !537
  store i64 %i.hs, ptr %i.hq, align 8, !tbaa !537
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ht, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !tbaa.struct !544
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  store ptr null, ptr %i.hu, align 8, !tbaa !546
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %i.hk, ptr %3, align 8, !tbaa !547
  invoke void @_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSC_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(128) %i.hk, ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  store i64 0, ptr %i.hv, align 8, !tbaa !549
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  store i64 -1, ptr %i.hw, align 8, !tbaa !556
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  store i8 0, ptr %i.hx, align 8, !tbaa !557
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hy, i8 0, i64 48, i1 false)
  %i.hz = load ptr, ptr %i.hj, align 8, !tbaa !560
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 128
  store ptr %i.ia, ptr %i.hj, align 8, !tbaa !560
  br label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE12emplace_backIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvDpOT_.exit

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE17_M_realloc_insertIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.hk, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE12emplace_backIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvDpOT_.exit unwind label %bb.al

_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE12emplace_backIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvDpOT_.exit: ; preds = %.noexc, %bb.ae
  %i.ib = invoke noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_19RelationsSetToStatsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.af unwind label %bb.al     ; 3 uses

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE12emplace_backIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvDpOT_.exit
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 80 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 88 ; 3 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !115 ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 96 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !116
  %.not.i54 = icmp eq ptr %i.ie, %i.ig
  br i1 %.not.i54, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ih = load i64, ptr %9, align 8, !tbaa !117
  store i64 %i.ih, ptr %i.ie, align 8, !tbaa !117
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store ptr %i.ii, ptr %i.id, align 8, !tbaa !115
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69

bb.ah:                                            ; preds = %bb.af
  %i.ij = load ptr, ptr %i.ic, align 8, !tbaa !107 ; 7 uses
  %i.ik = ptrtoint ptr %i.ie to i64               ; 2 uses
  %i.il = ptrtoint ptr %i.ij to i64               ; 3 uses
  %i.im = sub i64 %i.ik, %i.il                    ; 3 uses
  %i.in = icmp eq i64 %i.im, 9223372036854775800
  br i1 %i.in, label %bb.ai, label %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i55

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc67 unwind label %bb.al

.noexc67:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i55: ; preds = %bb.ah
  %i.io = ashr exact i64 %i.im, 3                 ; 3 uses
  %.sroa.speculated.i.i.i56 = call i64 @llvm.umax.i64(i64 %i.io, i64 1)
  %i.ip = add nsw i64 %.sroa.speculated.i.i.i56, %i.io ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.io
  %i.ir = call i64 @llvm.umin.i64(i64 %i.ip, i64 1152921504606846975)
  %i.is = select i1 %i.iq, i64 1152921504606846975, i64 %i.ir ; 3 uses
  %.not.i.i.i57 = icmp ne i64 %i.is, 0
  call void @llvm.assume(i1 %.not.i.i.i57)
  %i.it = shl nuw nsw i64 %i.is, 3
  %i.iu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.it) #30
          to label %.noexc68 unwind label %bb.al  ; 8 uses

.noexc68:                                         ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i55
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.im
  %i.iw = load i64, ptr %9, align 8, !tbaa !117
  store i64 %i.iw, ptr %i.iv, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i58 = icmp eq ptr %i.ij, %i.ie
  br i1 %.not10.i.i.i.i.i.i58, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i63, label %.lr.ph.i.i.i.i.i.i59.preheader

.lr.ph.i.i.i.i.i.i59.preheader:                   ; preds = %.noexc68
  %i.ix = ptrtoaddr ptr %i.iu to i64
  %16 = sub i64 %i.ik, %i.il
  %17 = add i64 %16, -8                           ; 2 uses
  %i.iy = lshr i64 %17, 3
  %i.iz = add nuw nsw i64 %i.iy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %17, 56
  %i.ja = sub i64 %i.ix, %i.il
  %diff.check = icmp ult i64 %i.ja, 32
  %or.cond212 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond212, label %.lr.ph.i.i.i.i.i.i59.preheader224, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i59.preheader
  %n.vec = and i64 %i.iz, 4611686018427387900     ; 3 uses
  %i.jb = shl i64 %n.vec, 3                       ; 2 uses
  %i.jc = getelementptr i8, ptr %i.iu, i64 %i.jb  ; 2 uses
  %i.jd = getelementptr i8, ptr %i.ij, i64 %i.jb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.je = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.iu, i64 %i.je ; 2 uses
  %next.gep172 = getelementptr i8, ptr %i.ij, i64 %i.je ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.jf = getelementptr i8, ptr %next.gep172, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep172, align 8, !tbaa !117, !alias.scope !585, !noalias !582
  %wide.load173 = load <2 x i64>, ptr %i.jf, align 8, !tbaa !117, !alias.scope !585, !noalias !582
  %i.jg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !117, !alias.scope !582, !noalias !585
  store <2 x i64> %wide.load173, ptr %i.jg, align 8, !tbaa !117, !alias.scope !582, !noalias !585
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !587

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i63, label %.lr.ph.i.i.i.i.i.i59.preheader224

.lr.ph.i.i.i.i.i.i59.preheader224:                ; preds = %.lr.ph.i.i.i.i.i.i59.preheader, %middle.block
  %.012.i.i.i.i.i.i60.ph = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i59.preheader ], [ %i.jc, %middle.block ]
  %.0911.i.i.i.i.i.i61.ph = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i.i59.preheader ], [ %i.jd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i59:                             ; preds = %.lr.ph.i.i.i.i.i.i59.preheader224, %.lr.ph.i.i.i.i.i.i59
  %.012.i.i.i.i.i.i60 = phi ptr [ %i.jk, %.lr.ph.i.i.i.i.i.i59 ], [ %.012.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i59.preheader224 ] ; 2 uses
  %.0911.i.i.i.i.i.i61 = phi ptr [ %i.jj, %.lr.ph.i.i.i.i.i.i59 ], [ %.0911.i.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i.i59.preheader224 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.ji = load i64, ptr %.0911.i.i.i.i.i.i61, align 8, !tbaa !117, !alias.scope !585, !noalias !582
  store i64 %i.ji, ptr %.012.i.i.i.i.i.i60, align 8, !tbaa !117, !alias.scope !582, !noalias !585
  %i.jj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i61, i64 8 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i60, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i62 = icmp eq ptr %i.jj, %i.ie
  br i1 %.not.i.i.i.i.i.i62, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i63, label %.lr.ph.i.i.i.i.i.i59, !llvm.loop !588

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i63: ; preds = %.lr.ph.i.i.i.i.i.i59, %middle.block, %.noexc68
  %.0.lcssa.i.i.i.i.i.i64 = phi ptr [ %i.iu, %.noexc68 ], [ %i.jc, %middle.block ], [ %i.jk, %.lr.ph.i.i.i.i.i.i59 ]
  %i.jl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i64, i64 8
  %.not.i23.i.i65 = icmp eq ptr %i.ij, null
  br i1 %.not.i23.i.i65, label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i66, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i63
  call void @_ZdlPv(ptr noundef nonnull %i.ij) #27
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i66

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i66: ; preds = %bb.aj, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i63
  store ptr %i.iu, ptr %i.ic, align 8, !tbaa !107
  store ptr %i.jl, ptr %i.id, align 8, !tbaa !115
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.is
  store ptr %i.jm, ptr %i.if, align 8, !tbaa !116
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69: ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i66, %bb.ag
  %i.jn = load ptr, ptr %i.ha, align 8, !tbaa !558 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.jo, %.lr.ph.i.i.i.i ], [ %i.jn, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69 ] ; 2 uses
  %i.jo = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !559

_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit69
  %i.jp = load ptr, ptr %11, align 8, !tbaa !542
  %i.jq = load i64, ptr %i.gz, align 8, !tbaa !541
  %i.jr = shl i64 %i.jq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jp, i8 0, i64 %i.jr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i8 0, i64 16, i1 false)
  %i.js = load ptr, ptr %11, align 8, !tbaa !542  ; 2 uses
  %i.jt = icmp eq ptr %i.js, %i.gy
  br i1 %i.jt, label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.js) #27
  br label %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingES1_SaIS1_ENSt8__detail9_IdentityENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit

bb.al:                                            ; preds = %_ZNKSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i55, %bb.ai, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %_ZNSt6vectorIN6duckdb19RelationsSetToStatsESaIS1_EE12emplace_backIJRSt13unordered_setINS0_13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS6_EEEEEvDpOT_.exit
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  resume { ptr, i32 } %i.ju

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i48, %bb.t, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.i, %_ZNSt13unordered_setIN6duckdb13ColumnBindingENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaIS1_EED2Ev.exit, %bb.x
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.e = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  store i64 %i.i, ptr %i.b, align 8, !tbaa !19
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit, label %bb.b, !prof !153

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_19RelationsSetToStatsELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !525    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
begin_hunk_3_@_ZN6duckdb14PlanEnumerator21EnumerateCmpRecursiveERNS_15JoinRelationSetES2_RSt13unordered_setImSt4hashImESt8equal_toImESaImEE:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 144
  %i.at = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %bb.m unwind label %bb.w       ; 8 uses

bb.m:                                             ; preds = %bb.l
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !463
  %.not.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.not.i.i, label %.preheader126, label %bb.o

.preheader126:                                    ; preds = %bb.m, %bb.n
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.n ], [ %i.ah, %bb.m ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread, label %bb.n

bb.n:                                             ; preds = %.preheader126
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !456
  %i.ax = icmp eq ptr %i.at, %i.aw
  br i1 %i.ax, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit, label %.preheader126, !llvm.loop !464

bb.o:                                             ; preds = %bb.m
  %i.ay = ptrtoint ptr %i.at to i64               ; 3 uses
  %i.az = load i64, ptr %i.ag, align 8, !tbaa !392 ; 2 uses
  %i.ba = urem i64 %i.ay, %i.az                   ; 2 uses
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !391
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !465
  %i.bi = icmp eq i64 %i.bh, %i.ay
  %i.bj = load ptr, ptr %i.bf, align 8
  %i.bk = icmp eq ptr %i.at, %i.bj
  %i.bl = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %i.bl, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit, label %.lr.ph.i.i.i.i

bb.q:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bn = icmp eq i64 %i.bt, %i.ay
  %i.bo = load ptr, ptr %i.bm, align 8
  %i.bp = icmp eq ptr %i.at, %i.bo
  %i.bq = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %i.bq, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !467

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %bb.q
  %.020.i.i.i.i = phi ptr [ %i.br, %bb.q ], [ %i.be, %bb.p ]
  %i.br = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !33 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !465 ; 2 uses
  %i.bu = urem i64 %i.bt, %i.az
  %.not19.i.i.i.i = icmp eq i64 %i.bu, %i.ba
  br i1 %.not19.i.i.i.i, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !467

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.r
  br label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread, !llvm.loop !467

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit: ; preds = %bb.q, %bb.n, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.bv = load ptr, ptr %0, align 8, !tbaa !679, !nonnull !362, !align !363
  invoke void @_ZNK6duckdb15QueryGraphEdges14GetConnectionsERNS_15JoinRelationSetES2_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.63") align 8 %10, ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit
  %i.bw = load ptr, ptr %10, align 8, !tbaa !673  ; 4 uses
  %i.bx = load ptr, ptr %i.ai, align 8, !tbaa !673
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load i64, ptr %i.aj, align 8, !tbaa !383
  %i.ca = add i64 %i.bz, 1                        ; 2 uses
  store i64 %i.ca, ptr %i.aj, align 8, !tbaa !383
  %i.cb = icmp ult i64 %i.ca, 10000
  br i1 %i.cb, label %bb.u, label %_ZN6duckdb14PlanEnumerator11TryEmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE.exit

bb.u:                                             ; preds = %bb.t
  %i.cc = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb14PlanEnumerator8EmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN6duckdb14PlanEnumerator11TryEmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE.exit.thread unwind label %bb.y ; 0 uses

_ZN6duckdb14PlanEnumerator11TryEmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE.exit.thread: ; preds = %bb.u
  %.pr = load ptr, ptr %10, align 8, !tbaa !171
  br label %.critedge

bb.v:                                             ; preds = %bb.k
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.w:                                             ; preds = %bb.l
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.x:                                             ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit

bb.y:                                             ; preds = %bb.u
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load ptr, ptr %10, align 8, !tbaa !171  ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i74, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdlPv(ptr noundef nonnull %i.ch) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit

.critedge:                                        ; preds = %_ZN6duckdb14PlanEnumerator11TryEmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE.exit.thread, %bb.s
  %i.ci = phi ptr [ %.pr, %_ZN6duckdb14PlanEnumerator11TryEmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE.exit.thread ], [ %i.bw, %bb.s ] ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit76, label %bb.aa

bb.aa:                                            ; preds = %.critedge
  call void @_ZdlPv(ptr noundef nonnull %i.ci) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit76

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit76: ; preds = %.critedge, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread

_ZN6duckdb14PlanEnumerator11TryEmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE.exit: ; preds = %bb.t
  %.not.i.i.i77 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit78, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb14PlanEnumerator11TryEmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit78

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit78: ; preds = %_ZN6duckdb14PlanEnumerator11TryEmitPairERNS_15JoinRelationSetES2_RKNS_6vectorISt17reference_wrapperINS_12NeighborInfoEELb1ESaIS6_EEE.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ar

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit: ; preds = %bb.z, %bb.y, %bb.x
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.x ], [ %i.cg, %bb.y ], [ %i.cg, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.av

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %.preheader126, %bb.o, %..loopexit_crit_edge21.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit76
  %i.cj = load ptr, ptr %i.ak, align 8, !tbaa !688 ; 5 uses
  %i.ck = load ptr, ptr %i.y, align 8, !tbaa !689
  %.not.i.i79 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not.i.i79, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread
  %i.cl = ptrtoint ptr %i.at to i64
  store i64 %i.cl, ptr %i.cj, align 8
  %i.cm = load ptr, ptr %i.ak, align 8, !tbaa !688
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cn, ptr %i.ak, align 8, !tbaa !688
  br label %.critedge62

bb.ad:                                            ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread
  %i.co = load ptr, ptr %9, align 8, !tbaa !685   ; 7 uses
  %i.cp = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cq = ptrtoint ptr %i.co to i64               ; 3 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = icmp eq i64 %i.cr, 9223372036854775800
  br i1 %i.cs, label %bb.ae, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc81 unwind label %.loopexit.split-lp

.noexc81:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ad
  %i.ct = ashr exact i64 %i.cr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.cu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ct ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.ct
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 1152921504606846975)
  %i.cx = select i1 %i.cv, i64 1152921504606846975, i64 %i.cw ; 3 uses
  %.not.i.i.i.i80 = icmp ne i64 %i.cx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i80)
  %i.cy = shl nuw nsw i64 %i.cx, 3
  %i.cz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cy) #30
          to label %.noexc82 unwind label %.loopexit ; 8 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cr
  %i.db = ptrtoint ptr %i.at to i64
  store i64 %i.db, ptr %i.da, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.co, %i.cj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc82
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %12 = sub i64 %i.cp, %i.cq
  %13 = add i64 %12, -8                           ; 2 uses
  %i.dd = lshr i64 %13, 3
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %13, 24
  %i.df = sub i64 %i.dc, %i.cq
  %diff.check = icmp ult i64 %i.df, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader173, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.de, 4611686018427387900     ; 3 uses
  %i.dg = shl i64 %n.vec, 3                       ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cz, i64 %i.dg  ; 2 uses
  %i.di = getelementptr i8, ptr %i.co, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cz, i64 %i.dj ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.co, i64 %i.dj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.dk = getelementptr i8, ptr %next.gep170, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep170, align 8, !alias.scope !693, !noalias !690
  %wide.load171 = load <2 x i64>, ptr %i.dk, align 8, !alias.scope !693, !noalias !690
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !690, !noalias !693
  store <2 x i64> %wide.load171, ptr %i.dl, align 8, !alias.scope !690, !noalias !693
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !695

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader173

.lr.ph.i.i.i.i.i.i.i.preheader173:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader173, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader173 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader173 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.dn = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !693, !noalias !690
  store i64 %i.dn, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !690, !noalias !693
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.do, %i.cj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !696

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc82
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cz, %.noexc82 ], [ %i.dh, %middle.block ], [ %i.dp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.co) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.cz, ptr %9, align 8, !tbaa !685
  store ptr %i.dq, ptr %i.ak, align 8, !tbaa !688
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cx
  store ptr %i.dr, ptr %i.y, align 8, !tbaa !689
  br label %.critedge62

.critedge62:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.ac
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0105.0116, i64 56 ; 2 uses
  %.not110 = icmp eq ptr %i.ds, %i.r
  br i1 %.not110, label %.critedge64, label %bb.k

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp:                               ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.critedge64:                                      ; preds = %.critedge62, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store ptr null, ptr %11, align 8, !tbaa !162
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !164
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !164
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr null, ptr %i.dw, align 8, !tbaa !33
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !236
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !236
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !tbaa.struct !544
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store ptr null, ptr %i.ec, align 8, !tbaa !680
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %11, ptr %5, align 8, !tbaa !460
  invoke void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_assignIRKSC_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.critedge64
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ed = load ptr, ptr %6, align 8, !tbaa !68    ; 2 uses
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !68  ; 2 uses
  %.not111117 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not111117, label %.preheader, label %.lr.ph119

.preheader:                                       ; preds = %bb.ai, %bb.ag
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !688
  %i.eh = load ptr, ptr %9, align 8, !tbaa !685
  %.not120 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not120, label %.critedge66, label %.lr.ph123

bb.ah:                                            ; preds = %.critedge64
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.lr.ph119:                                        ; preds = %bb.ag, %bb.ai
  %.sroa.095.0118 = phi ptr [ %i.ek, %bb.ai ], [ %i.ed, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %11, ptr %4, align 8, !tbaa !460
  %i.ej = invoke { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.095.0118, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.095.0118, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ai unwind label %bb.aj     ; 0 uses

bb.ai:                                            ; preds = %.lr.ph119
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.095.0118, i64 8 ; 2 uses
  %.not111 = icmp eq ptr %i.ek, %i.ee
  br i1 %.not111, label %.preheader, label %.lr.ph119

bb.aj:                                            ; preds = %.lr.ph119
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ak:                                            ; preds = %bb.am
  %i.em = add nuw i64 %.0121, 1                   ; 2 uses
  %i.en = load ptr, ptr %i.ef, align 8, !tbaa !688
  %i.eo = load ptr, ptr %9, align 8, !tbaa !685
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 3
  %.not.not = icmp ult i64 %i.em, %i.es
  br i1 %.not.not, label %.lr.ph123, label %.critedge66, !llvm.loop !697

.lr.ph123:                                        ; preds = %.preheader, %bb.ak
  %.0121 = phi i64 [ %i.em, %bb.ak ], [ 0, %.preheader ] ; 2 uses
  %i.et = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_15JoinRelationSetEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %.0121)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %.lr.ph123
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !456
  %i.ev = invoke noundef zeroext i1 @_ZN6duckdb14PlanEnumerator21EnumerateCmpRecursiveERNS_15JoinRelationSetES2_RSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %bb.am unwind label %bb.an     ; 3 uses

bb.am:                                            ; preds = %bb.al
  br i1 %i.ev, label %bb.ak, label %.critedge66

bb.an:                                            ; preds = %bb.al, %.lr.ph123
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.critedge66:                                      ; preds = %bb.am, %bb.ak, %.preheader
  %.not.lcssa = phi i1 [ true, %.preheader ], [ %i.ev, %bb.ak ], [ %i.ev, %bb.am ]
  %i.ex = load ptr, ptr %i.dw, align 8, !tbaa !167 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i85

.lr.ph.i.i.i.i85:                                 ; preds = %.critedge66, %.lr.ph.i.i.i.i85
  %.06.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i85 ], [ %i.ex, %.critedge66 ] ; 2 uses
  %i.ey = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i86 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i86, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i85, !llvm.loop !168

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i85, %.critedge66
  %i.ez = load ptr, ptr %11, align 8, !tbaa !162
  %i.fa = load i64, ptr %i.dt, align 8, !tbaa !164
  %i.fb = shl i64 %i.fa, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ez, i8 0, i64 %i.fb, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false)
  %i.fc = load ptr, ptr %11, align 8, !tbaa !162  ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ec
  br i1 %i.fd, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.fc) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
end_hunk_3
begin_hunk_4_@_ZN6duckdb14PlanEnumerator21EnumerateCSGRecursiveERNS_15JoinRelationSetERSt13unordered_setImSt4hashImESt8equal_toImESaImEE:bb.a
  %i.x = icmp ugt i64 %i.w, 1152921504606846975
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #29
          to label %.noexc56 unwind label %bb.j

.noexc56:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %.not = icmp eq ptr %i.r, %i.s
  br i1 %.not, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.h
  %i.z = shl nuw nsw i64 %i.w, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #30
          to label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE13_M_deallocateEPS3_m.exit.i unwind label %bb.j ; 3 uses

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_M_allocateEm.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.aa, ptr %8, align 8, !tbaa !685
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !688
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.w
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !689
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.h
  %.not9096 = icmp eq ptr %i.s, %i.r
  br i1 %.not9096, label %.critedge51, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE7reserveEm.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  br label %bb.k

bb.i:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

_ZNSt6vectorImSaImEED2Ev.exit59:                  ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.j) #27
  br label %bb.ap

bb.j:                                             ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_M_allocateEm.exit.i, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.k:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.086.097 = phi ptr [ %i.s, %.lr.ph ], [ %i.df, %.critedge ] ; 2 uses
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !450, !nonnull !362, !align !363
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 144
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationERKSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(64) %i.an, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.086.097)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !450, !nonnull !362, !align !363
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %bb.m unwind label %bb.u       ; 7 uses

bb.m:                                             ; preds = %bb.l
  %i.as = load i64, ptr %i.ae, align 8, !tbaa !463
  %.not.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.not.i.i, label %.preheader107, label %bb.o

.preheader107:                                    ; preds = %bb.m, %bb.n
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.n ], [ %i.ah, %bb.m ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread, label %bb.n

bb.n:                                             ; preds = %.preheader107
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !456
  %i.av = icmp eq ptr %i.ar, %i.au
  br i1 %i.av, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit, label %.preheader107, !llvm.loop !464

bb.o:                                             ; preds = %bb.m
  %i.aw = ptrtoint ptr %i.ar to i64               ; 3 uses
  %i.ax = load i64, ptr %i.ag, align 8, !tbaa !392 ; 2 uses
  %i.ay = urem i64 %i.aw, %i.ax                   ; 2 uses
  %i.az = load ptr, ptr %i.af, align 8, !tbaa !391
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !33 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !465
  %i.bg = icmp eq i64 %i.bf, %i.aw
  %i.bh = load ptr, ptr %i.bd, align 8
  %i.bi = icmp eq ptr %i.ar, %i.bh
  %i.bj = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %i.bj, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit, label %.lr.ph.i.i.i.i

bb.q:                                             ; preds = %bb.r
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bl = icmp eq i64 %i.br, %i.aw
  %i.bm = load ptr, ptr %i.bk, align 8
  %i.bn = icmp eq ptr %i.ar, %i.bm
  %i.bo = select i1 %i.bl, i1 %i.bn, i1 false
  br i1 %i.bo, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !467

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %bb.q
  %.020.i.i.i.i = phi ptr [ %i.bp, %bb.q ], [ %i.bc, %bb.p ]
  %i.bp = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !33 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !465 ; 2 uses
  %i.bs = urem i64 %i.br, %i.ax
  %.not19.i.i.i.i = icmp eq i64 %i.bs, %i.ay
  br i1 %.not19.i.i.i.i, label %bb.q, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !467

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.r
  br label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread, !llvm.loop !467

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit: ; preds = %bb.q, %bb.n, %bb.p
  %i.bt = invoke noundef zeroext i1 @_ZN6duckdb14PlanEnumerator7EmitCSGERNS_15JoinRelationSetE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit
  br i1 %i.bt, label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread, label %.loopexit

bb.t:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.u:                                             ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit, %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %.preheader107, %bb.o, %..loopexit_crit_edge21.i.i.i.i, %bb.s
  %i.bw = load ptr, ptr %i.ai, align 8, !tbaa !688 ; 5 uses
  %i.bx = load ptr, ptr %i.y, align 8, !tbaa !689
  %.not.i.i60 = icmp eq ptr %i.bw, %i.bx
  br i1 %.not.i.i60, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread
  %i.by = ptrtoint ptr %i.ar to i64
  store i64 %i.by, ptr %i.bw, align 8
  %i.bz = load ptr, ptr %i.ai, align 8, !tbaa !688
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.ca, ptr %i.ai, align 8, !tbaa !688
  br label %.critedge

bb.w:                                             ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb15JoinRelationSetEENS1_10unique_ptrINS1_10DPJoinNodeESt14default_deleteIS5_ELb1EEENS1_21ReferenceHashFunctionIS2_EENS1_17ReferenceEqualityIS2_EESaISt4pairIKS3_S8_EEE4findERSE_.exit.thread
  %i.cb = load ptr, ptr %8, align 8, !tbaa !685   ; 7 uses
  %i.cc = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64               ; 3 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = icmp eq i64 %i.ce, 9223372036854775800
  br i1 %i.cf, label %bb.x, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc62 unwind label %.loopexit.split-lp

.noexc62:                                         ; preds = %bb.x
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.cg = ashr exact i64 %i.ce, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ch = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cg ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cg
  %i.cj = call i64 @llvm.umin.i64(i64 %i.ch, i64 1152921504606846975)
  %i.ck = select i1 %i.ci, i64 1152921504606846975, i64 %i.cj ; 3 uses
  %.not.i.i.i.i61 = icmp ne i64 %i.ck, 0
  call void @llvm.assume(i1 %.not.i.i.i.i61)
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #30
          to label %.noexc63 unwind label %.loopexit94 ; 8 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  %i.co = ptrtoint ptr %i.ar to i64
  store i64 %i.co, ptr %i.cn, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.bw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc63
  %i.cp = ptrtoaddr ptr %i.cm to i64
  %10 = sub i64 %i.cc, %i.cd
  %11 = add i64 %10, -8                           ; 2 uses
  %i.cq = lshr i64 %11, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 24
  %i.cs = sub i64 %i.cp, %i.cd
  %diff.check = icmp ult i64 %i.cs, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader146, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.cr, 4611686018427387900     ; 3 uses
  %i.ct = shl i64 %n.vec, 3                       ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cm, i64 %i.ct  ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cb, i64 %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cm, i64 %i.cw ; 2 uses
  %next.gep143 = getelementptr i8, ptr %i.cb, i64 %i.cw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.cx = getelementptr i8, ptr %next.gep143, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep143, align 8, !alias.scope !713, !noalias !710
  %wide.load144 = load <2 x i64>, ptr %i.cx, align 8, !alias.scope !713, !noalias !710
  %i.cy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !710, !noalias !713
  store <2 x i64> %wide.load144, ptr %i.cy, align 8, !alias.scope !710, !noalias !713
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !715

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader146

.lr.ph.i.i.i.i.i.i.i.preheader146:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cu, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader146, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader146 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader146 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !710)
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  %i.da = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !713, !noalias !710
  store i64 %i.da, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !710, !noalias !713
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.db, %i.bw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !716

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc63
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cm, %.noexc63 ], [ %i.cu, %middle.block ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cb) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.y, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.cm, ptr %8, align 8, !tbaa !685
  store ptr %i.dd, ptr %i.ai, align 8, !tbaa !688
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  store ptr %i.de, ptr %i.y, align 8, !tbaa !689
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.v
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.086.097, i64 56 ; 2 uses
  %.not90 = icmp eq ptr %i.df, %i.r
  br i1 %.not90, label %.critedge51, label %bb.k

.loopexit94:                                      ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp:                               ; preds = %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.critedge51:                                      ; preds = %.critedge, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr null, ptr %9, align 8, !tbaa !162
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !164
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !164
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.dj, align 8, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !236
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !236
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %i.do, i64 16, i1 false), !tbaa.struct !544
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !680
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %9, ptr %4, align 8, !tbaa !460
  invoke void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_assignIRKSC_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %.critedge51
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.dq = load ptr, ptr %5, align 8, !tbaa !68    ; 2 uses
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !68  ; 2 uses
  %.not9198 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not9198, label %.preheader, label %.lr.ph100

.preheader:                                       ; preds = %bb.ab, %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !688
  %i.du = load ptr, ptr %8, align 8, !tbaa !685
  %.not101 = icmp eq ptr %i.dt, %i.du
  br i1 %.not101, label %.critedge53, label %.lr.ph104

bb.aa:                                            ; preds = %.critedge51
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph100:                                        ; preds = %bb.z, %bb.ab
  %.sroa.076.099 = phi ptr [ %i.dx, %bb.ab ], [ %i.dq, %bb.z ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %9, ptr %3, align 8, !tbaa !460
  %i.dw = invoke { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.076.099, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.076.099, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ab unwind label %bb.ac     ; 0 uses

bb.ab:                                            ; preds = %.lr.ph100
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.076.099, i64 8 ; 2 uses
  %.not91 = icmp eq ptr %i.dx, %i.dr
  br i1 %.not91, label %.preheader, label %.lr.ph100

bb.ac:                                            ; preds = %.lr.ph100
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ad:                                            ; preds = %bb.af
  %i.dz = add nuw i64 %.0102, 1                   ; 2 uses
  %i.ea = load ptr, ptr %i.ds, align 8, !tbaa !688
  %i.eb = load ptr, ptr %8, align 8, !tbaa !685
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3
  %.not.not = icmp ult i64 %i.dz, %i.ef
  br i1 %.not.not, label %.lr.ph104, label %.critedge53, !llvm.loop !717

.lr.ph104:                                        ; preds = %.preheader, %bb.ad
  %.0102 = phi i64 [ %i.dz, %bb.ad ], [ 0, %.preheader ] ; 2 uses
  %i.eg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_15JoinRelationSetEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %.0102)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %.lr.ph104
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !456
  %i.ei = invoke noundef zeroext i1 @_ZN6duckdb14PlanEnumerator21EnumerateCSGRecursiveERNS_15JoinRelationSetERSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %bb.af unwind label %bb.ag     ; 3 uses

bb.af:                                            ; preds = %bb.ae
  br i1 %i.ei, label %bb.ad, label %.critedge53

bb.ag:                                            ; preds = %bb.ae, %.lr.ph104
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.critedge53:                                      ; preds = %bb.af, %bb.ad, %.preheader
  %.not.lcssa = phi i1 [ true, %.preheader ], [ %i.ei, %bb.ad ], [ %i.ei, %bb.af ]
  %i.ek = load ptr, ptr %i.dj, align 8, !tbaa !167 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ek, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i66

.lr.ph.i.i.i.i66:                                 ; preds = %.critedge53, %.lr.ph.i.i.i.i66
  %.06.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i.i.i.i66 ], [ %i.ek, %.critedge53 ] ; 2 uses
  %i.el = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i67 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i67, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i66, !llvm.loop !168

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i66, %.critedge53
  %i.em = load ptr, ptr %9, align 8, !tbaa !162
  %i.en = load i64, ptr %i.dg, align 8, !tbaa !164
  %i.eo = shl i64 %i.en, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.em, i8 0, i64 %i.eo, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  %i.ep = load ptr, ptr %9, align 8, !tbaa !162   ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.dp
  br i1 %i.eq, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ep) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
end_hunk_4
begin_hunk_5_@_ZN6duckdb14PlanEnumerator21SolveJoinOrderExactlyEv:bb.a
_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i: ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.aw) #27
  br label %.body

.loopexit:                                        ; preds = %bb.l, %bb.i, %bb.k, %.noexc
  %i.ba = add nuw i64 %storemerge25, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %umax51
  br i1 %exitcond.not, label %bb.g, label %thread-pre-split, !llvm.loop !722

bb.n:                                             ; preds = %.critedge.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.g
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !167 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %i.be = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !168

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.p
  %i.bf = load ptr, ptr %2, align 8, !tbaa !162
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !164
  %i.bh = shl i64 %i.bg, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bf, i8 0, i64 %i.bh, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.bi = load ptr, ptr %2, align 8, !tbaa !162   ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.g
  br i1 %i.bj, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.bi) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.aa, label %bb.b, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit..critedge_crit_edge, !llvm.loop !718

.body:                                            ; preds = %bb.n, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.o ], [ %i.bb, %bb.n ], [ %i.az, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ]
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit..critedge_crit_edge: ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  br label %.critedge, !llvm.loop !718

.critedge:                                        ; preds = %bb.b, %_ZN6duckdb22JoinRelationSetManager15GetJoinRelationEm.exit, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit..critedge_crit_edge, %bb.a
  %.not.lcssa = phi i1 [ true, %bb.a ], [ false, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit..critedge_crit_edge ], [ %i.z, %_ZN6duckdb22JoinRelationSetManager15GetJoinRelationEm.exit ], [ %i.z, %bb.b ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14PlanEnumerator27SolveJoinOrderApproximatelyEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"struct.std::_Hashtable<std::reference_wrapper<duckdb::JoinRelationSet>, std::pair<const std::reference_wrapper<duckdb::JoinRelationSet>, duckdb::unique_ptr<duckdb::DPJoinNode>>, std::allocator<std::pair<const std::reference_wrapper<duckdb::JoinRelationSet>, duckdb::unique_ptr<duckdb::DPJoinNode>>>, std::__detail::_Select1st, duckdb::ReferenceEquality<duckdb::JoinRelationSet>, duckdb::ReferenceHashFunction<duckdb::JoinRelationSet>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %4 = alloca %"struct.std::_Hashtable<std::reference_wrapper<duckdb::JoinRelationSet>, std::pair<const std::reference_wrapper<duckdb::JoinRelationSet>, duckdb::unique_ptr<duckdb::DPJoinNode>>, std::allocator<std::pair<const std::reference_wrapper<duckdb::JoinRelationSet>, duckdb::unique_ptr<duckdb::DPJoinNode>>>, std::__detail::_Select1st, duckdb::ReferenceEquality<duckdb::JoinRelationSet>, duckdb::ReferenceHashFunction<duckdb::JoinRelationSet>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::function", align 8     ; 11 uses
  %7 = alloca %"class.duckdb::unique_ptr", align 8 ; 6 uses
  %8 = alloca %"class.duckdb::vector.63", align 8 ; 12 uses
  %9 = alloca [2 x %"class.duckdb::optional_ptr.508"], align 16 ; 15 uses
  %.sroa.0 = alloca i64, align 16                 ; 8 uses
  %.sroa.8 = alloca i64, align 8                  ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.duckdb::vector.63", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !450, !nonnull !362, !align !363 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !443
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !444
  %.not516 = icmp eq ptr %i.f, %i.g
  %.us-phi.sroa.gep883 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.us-phi.sroa.gep884 = getelementptr inbounds nuw i8, ptr %9, i64 8
  br i1 %.not516, label %.preheader326, label %.lr.ph

.preheader326:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit, %bb.a
  %.sroa.48.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.48.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ]
  %.sroa.24.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.24.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %.sroa.0259.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0259.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ] ; 4 uses
  %i.h = ptrtoint ptr %.sroa.24.0.lcssa to i64    ; 2 uses
  %i.i = ptrtoint ptr %.sroa.0259.0.lcssa to i64  ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp ugt i64 %i.k, 1
  br i1 %i.l, label %.preheader325.lr.ph, label %._crit_edge514

.preheader325.lr.ph:                              ; preds = %.preheader326
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  br label %.preheader325

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit
  %i.t = phi ptr [ %i.bf, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ %i.c, %bb.a ]
  %.0461 = phi i64 [ %i.be, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0259.0460 = phi ptr [ %.sroa.0259.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 12 uses
  %.sroa.24.0459 = phi ptr [ %.sroa.24.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 6 uses
  %.sroa.48.0458 = phi ptr [ %.sroa.48.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.u = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %.noexc unwind label %.loopexit331 ; 2 uses

.noexc:                                           ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store i64 %.0461, ptr %i.u, align 8, !tbaa !19
  %i.w = ptrtoint ptr %i.u to i64
  store i64 %i.w, ptr %7, align 8, !tbaa !68
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull %7, i64 noundef 1)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %.noexc
  %i.y = load ptr, ptr %7, align 8, !tbaa !68     ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.d, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #27
  br label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %7, align 8, !tbaa !68    ; 2 uses
  %.not.i7.i = icmp eq ptr %i.aa, null
  br i1 %.not.i7.i, label %.body, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i8.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #27
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %.not.i.i81 = icmp eq ptr %.sroa.24.0459, %.sroa.48.0458
  br i1 %.not.i.i81, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.x to i64
  store i64 %i.ab, ptr %.sroa.24.0459, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = ptrtoint ptr %.sroa.24.0459 to i64      ; 2 uses
  %i.ad = ptrtoint ptr %.sroa.0259.0460 to i64    ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc82 unwind label %.loopexit.split-lp332

.noexc82:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #30
          to label %.noexc83 unwind label %.loopexit331 ; 8 uses

.noexc83:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = ptrtoint ptr %i.x to i64
  store i64 %i.ao, ptr %i.an, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0259.0460, %.sroa.24.0459
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc83
  %i.ap = ptrtoaddr ptr %i.am to i64
  %13 = sub i64 %i.ac, %i.ad
  %14 = add i64 %13, -8                           ; 2 uses
  %i.aq = lshr i64 %14, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %14, 24
  %i.as = sub i64 %i.ap, %i.ad
  %diff.check = icmp ult i64 %i.as, 32
  %or.cond812 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond812, label %.lr.ph.i.i.i.i.i.i.i.preheader871, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %.sroa.0259.0460, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.aw ; 2 uses
  %next.gep789 = getelementptr i8, ptr %.sroa.0259.0460, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.ax = getelementptr i8, ptr %next.gep789, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep789, align 8, !alias.scope !726, !noalias !723
  %wide.load790 = load <2 x i64>, ptr %i.ax, align 8, !alias.scope !726, !noalias !723
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !723, !noalias !726
  store <2 x i64> %wide.load790, ptr %i.ay, align 8, !alias.scope !723, !noalias !726
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !728

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader871

.lr.ph.i.i.i.i.i.i.i.preheader871:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0259.0460, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader871, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader871 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader871 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !726, !noalias !723
  store i64 %i.ba, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !723, !noalias !726
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %.sroa.24.0459
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !729

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc83
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.am, %.noexc83 ], [ %i.au, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0259.0460, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0259.0460) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.e
  %.sroa.48.2 = phi ptr [ %i.bd, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.48.0458, %bb.e ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.24.0459, %bb.e ]
  %.sroa.0259.3 = phi ptr [ %i.am, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.0259.0460, %bb.e ] ; 2 uses
  %.sroa.24.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.be = add nuw i64 %.0461, 1                   ; 2 uses
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !450, !nonnull !362, !align !363 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !443
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !444
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  %i.bo = icmp ult i64 %i.be, %i.bn
  br i1 %i.bo, label %.lr.ph, label %.preheader326, !llvm.loop !730

.loopexit331:                                     ; preds = %.lr.ph, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit333 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp332:                            ; preds = %bb.g
  %lpad.loopexit.split-lp334 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader325:                                    ; preds = %.preheader325.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165
  %i.bp = phi i64 [ %i.k, %.preheader325.lr.ph ], [ %i.mb, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 8 uses
  %i.bq = phi i64 [ %i.i, %.preheader325.lr.ph ], [ %i.lz, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ]
  %i.br = phi i64 [ %i.h, %.preheader325.lr.ph ], [ %i.ly, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ]
  %.sroa.0259.1512 = phi ptr [ %.sroa.0259.0.lcssa, %.preheader325.lr.ph ], [ %.sroa.0259.4, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 21 uses
  %.sroa.24.1511 = phi ptr [ %.sroa.24.0.lcssa, %.preheader325.lr.ph ], [ %.sroa.24.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 3 uses
  %.sroa.48.1510 = phi ptr [ %.sroa.48.0.lcssa, %.preheader325.lr.ph ], [ %.sroa.48.3, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15JoinRelationSetEESaIS3_EE9push_backEOS3_.exit165 ] ; 5 uses
  %.sroa.0259.1512795 = ptrtoint ptr %.sroa.0259.1512 to i64
  %.sroa.0259.1512793 = ptrtoaddr ptr %.sroa.0259.1512 to i64
  br label %bb.j

.loopexit324:                                     ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104, %bb.j
  %.sroa.0248.1.lcssa = phi ptr [ %.sroa.0248.0473, %bb.j ], [ %.sroa.0248.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.1302.lcssa = phi i64 [ %.0301474, %bb.j ], [ %.2303, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0300475, %bb.j ], [ %.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %exitcond588.not = icmp eq i64 %i.bv, %i.bp
  br i1 %exitcond588.not, label %bb.i, label %bb.j, !llvm.loop !731

bb.i:                                             ; preds = %.loopexit324
  %.not = icmp eq ptr %.sroa.0248.1.lcssa, null
  br i1 %.not, label %.split, label %bb.bp

bb.j:                                             ; preds = %.preheader325, %.loopexit324
  %.054476 = phi i64 [ 0, %.preheader325 ], [ %i.bv, %.loopexit324 ] ; 3 uses
  %.0300475 = phi i64 [ 0, %.preheader325 ], [ %.1.lcssa, %.loopexit324 ] ; 2 uses
  %.0301474 = phi i64 [ 0, %.preheader325 ], [ %.1302.lcssa, %.loopexit324 ] ; 2 uses
  %.sroa.0248.0473 = phi ptr [ null, %.preheader325 ], [ %.sroa.0248.1.lcssa, %.loopexit324 ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1512, i64 %.054476
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = inttoptr i64 %i.bt to ptr               ; 5 uses
  %i.bv = add nuw i64 %.054476, 1                 ; 4 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  br i1 %i.bw, label %.lr.ph469, label %.loopexit324

.lr.ph469:                                        ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph469, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104
  %.060467 = phi i64 [ %i.bv, %.lr.ph469 ], [ %i.ep, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 3 uses
  %.1466 = phi i64 [ %.0300475, %.lr.ph469 ], [ %.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.1302465 = phi i64 [ %.0301474, %.lr.ph469 ], [ %.2303, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 2 uses
  %.sroa.0248.1464 = phi ptr [ %.sroa.0248.0473, %.lr.ph469 ], [ %.sroa.0248.2, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EED2Ev.exit104 ] ; 4 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0259.1512, i64 %.060467
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.cb = load ptr, ptr %0, align 8, !tbaa !679, !nonnull !362, !align !363 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !alias.scope !732
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !732
  store ptr %i.ca, ptr %6, align 8, !tbaa !132, !noalias !732
  store ptr %8, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !169, !noalias !732
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFbRN6duckdb12NeighborInfoEEZNKS0_15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES6_E3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFbRN6duckdb12NeighborInfoEEZNKS0_15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES6_E3$_0E9_M_invokeERKSt9_Any_dataS2_">, ptr %i.m, align 8, !tbaa !619, !noalias !732
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !59, !noalias !732 ; 2 uses
  %.not.i.i96 = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i96, label %_ZNK6duckdb15QueryGraphEdges18EnumerateNeighborsERNS_15JoinRelationSetERKSt8functionIFbRNS_12NeighborInfoEEE.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i, %.lr.ph.i.i
  %i.ch = phi i64 [ %i.cc, %.lr.ph.i.i ], [ %i.dq, %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i ] ; 4 uses
  %.017.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dr, %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i ] ; 3 uses
  %i.ci = load ptr, ptr %i.bu, align 8, !tbaa !68, !noalias !732
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.017.i.i
  %i.ck = load i64, ptr %i.cd, align 8, !tbaa !69, !noalias !732
  %.not.not.i.i.i.i = icmp eq i64 %i.ck, 0
  %i.cl = load i64, ptr %i.cj, align 8            ; 4 uses
  br i1 %.not.not.i.i.i.i, label %.preheader.i, label %bb.n

.preheader.i:                                     ; preds = %bb.l, %bb.m
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.m ], [ %i.cg, %bb.l ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8, !tbaa !33 ; 4 uses
  %.not.i.i.i.i98 = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %.not.i.i.i.i98, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %.preheader.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !19
  %i.co = icmp eq i64 %i.cl, %i.cn
  br i1 %i.co, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i, label %.preheader.i, !llvm.loop !160

bb.n:                                             ; preds = %bb.l
  %i.cp = load i64, ptr %i.cf, align 8, !tbaa !76, !noalias !732 ; 2 uses
  %i.cq = urem i64 %i.cl, %i.cp                   ; 2 uses
  %i.cr = load ptr, ptr %i.ce, align 8, !tbaa !77, !noalias !732
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !33 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !19
  %i.cx = icmp eq i64 %i.cl, %i.cw
  br i1 %i.cx, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.q
  %i.cy = icmp eq i64 %i.cl, %i.db
  br i1 %i.cy, label %_ZNKSt13unordered_mapImN6duckdb10unique_ptrINS0_15QueryGraphEdges9QueryEdgeESt14default_deleteIS3_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE4findERSC_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !79
end_hunk_5
begin_hunk_6_@_ZNK6duckdb10unique_ptrINS_18SingleJoinRelationESt14default_deleteIS1_ELb1EEptEv:bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_18SingleJoinRelationESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb15RelationManager12GetRelationsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.137") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !756
  store <2 x ptr> %i.b, ptr %0, align 8, !tbaa !756
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !475
  store ptr %i.e, ptr %i.c, align 8, !tbaa !475
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15RelationManager28AddAggregateOrWindowRelationERNS_15LogicalOperatorENS_12optional_ptrIS1_Lb1EEERKNS_13RelationStatsENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(97) %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i8 zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::RelationStats", align 16 ; 12 uses
  %6 = alloca %"class.duckdb::unique_ptr.511", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::vector.376", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #30, !noalias !757 ; 13 uses
  invoke void @_ZN6duckdb13RelationStatsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(104) %3)
          to label %bb.b unwind label %bb.d, !noalias !757

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.a, align 8, !tbaa !377, !noalias !757
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !377, !noalias !757
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load <2 x ptr>, ptr %5, align 16, !tbaa !523, !noalias !757
  store <2 x ptr> %i.d, ptr %i.c, align 8, !tbaa !523, !noalias !757
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !511, !noalias !757
  store ptr %i.g, ptr %i.e, align 8, !tbaa !511, !noalias !757
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %i.i, i64 17, i1 false), !noalias !757
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.l = load <2 x ptr>, ptr %i.k, align 16, !tbaa !524, !noalias !757
  store <2 x ptr> %i.l, ptr %i.j, align 8, !tbaa !524, !noalias !757
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !514, !noalias !757
  store ptr %i.o, ptr %i.m, align 8, !tbaa !514, !noalias !757
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !11, !noalias !757
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !25, !noalias !757 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 3 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.w = load i64, ptr %i.v, align 16, !tbaa !14, !noalias !757 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !noalias !757
  br label %_ZN6duckdb9make_uniqINS_18SingleJoinRelationEJRNS_15LogicalOperatorERNS_12optional_ptrIS2_Lb1EEERKNS_13RelationStatsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.s, ptr %i.p, align 8, !tbaa !25, !noalias !757
  %i.z = load i64, ptr %i.t, align 8, !tbaa !17, !noalias !757
  store i64 %i.z, ptr %i.r, align 8, !tbaa !17, !noalias !757
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 16, !tbaa !14, !noalias !757
  br label %_ZN6duckdb9make_uniqINS_18SingleJoinRelationEJRNS_15LogicalOperatorERNS_12optional_ptrIS2_Lb1EEERKNS_13RelationStatsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit

common.resume:                                    ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit32, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.d ], [ %.pn.pn.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit32 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.a) #27, !noalias !757
  br label %common.resume

_ZN6duckdb9make_uniqINS_18SingleJoinRelationEJRNS_15LogicalOperatorERNS_12optional_ptrIS2_Lb1EEERKNS_13RelationStatsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ab = phi i64 [ %i.w, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !14, !noalias !757
  store ptr %i.a, ptr %6, align 8, !tbaa !754, !alias.scope !757
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !443
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !444
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.al = load ptr, ptr %1, align 8, !tbaa !352
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = ptrtoint ptr %i.a to i64                ; 2 uses
  invoke void %i.an(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.376") align 8 %7, ptr noundef nonnull align 8 dereferenceable(97) %1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_ZN6duckdb9make_uniqINS_18SingleJoinRelationEJRNS_15LogicalOperatorERNS_12optional_ptrIS2_Lb1EEERKNS_13RelationStatsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ap = load ptr, ptr %7, align 8, !tbaa !760   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !760 ; 2 uses
  %.not47 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit, %bb.e
  %i.av = load ptr, ptr %i.ae, align 8, !tbaa !443 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !475
  %.not.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  store i64 %i.ao, ptr %i.av, align 8, !tbaa !754
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.ay, ptr %i.ae, align 8, !tbaa !443
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %._crit_edge
  %i.az = load ptr, ptr %i.ad, align 8, !tbaa !444 ; 10 uses
  %i.ba = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.bb = ptrtoint ptr %i.az to i64               ; 3 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.h, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #30
          to label %.noexc19 unwind label %bb.v   ; 10 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  store i64 %i.ao, ptr %i.bl, align 8, !tbaa !754
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.az, %i.av
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc19
  %8 = sub i64 %i.ba, %i.bb
  %9 = add i64 %8, -8                             ; 2 uses
  %i.bm = lshr i64 %9, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %9, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader102, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.bo = add i64 %i.ba, -8
  %i.bp = sub i64 %i.bo, %i.bb
  %i.bq = and i64 %i.bp, -8
  %i.br = add i64 %i.bq, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.br
  %scevgep98 = getelementptr i8, ptr %i.az, i64 %i.br
  %bound0 = icmp ult ptr %i.bk, %scevgep98
  %bound1 = icmp ult ptr %i.az, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 4611686018427387900     ; 3 uses
  %i.bs = shl i64 %n.vec, 3                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bk, i64 %i.bs  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.az, i64 %i.bs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bk, i64 %i.bv ; 2 uses
  %next.gep99 = getelementptr i8, ptr %i.az, i64 %i.bv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.bw = getelementptr i8, ptr %next.gep99, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep99, align 8, !tbaa !754, !alias.scope !766, !noalias !761
  %wide.load100 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !754, !alias.scope !766, !noalias !761
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !754, !alias.scope !769, !noalias !766
  store <2 x i64> %wide.load100, ptr %i.bx, align 8, !tbaa !754, !alias.scope !769, !noalias !766
  %i.by = getelementptr i8, ptr %next.gep99, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep99, align 8, !tbaa !754, !alias.scope !766, !noalias !761
  store <2 x ptr> splat (ptr null), ptr %i.by, align 8, !tbaa !754, !alias.scope !766, !noalias !761
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !771

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader102

.lr.ph.i.i.i.i.i.i.i.preheader102:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bt, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader102, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader102 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader102 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !761)
  call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.ca = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !764, !noalias !761
  store i64 %i.ca, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !761, !noalias !764
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !764, !noalias !761
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.av
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !772

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.noexc19 ], [ %i.bt, %middle.block ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.az) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bk, ptr %i.ad, align 8, !tbaa !444
  store ptr %i.cd, ptr %i.ae, align 8, !tbaa !443
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.ce, ptr %i.aw, align 8, !tbaa !475
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.j:                                             ; preds = %_ZN6duckdb9make_uniqINS_18SingleJoinRelationEJRNS_15LogicalOperatorERNS_12optional_ptrIS2_Lb1EEERKNS_13RelationStatsEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit32

bb.k:                                             ; preds = %.lr.ph, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit
  %.sroa.035.048 = phi ptr [ %i.ap, %.lr.ph ], [ %i.dq, %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit ] ; 2 uses
  %i.cg = load i64, ptr %i.as, align 8, !tbaa !773
  %.not.not.i.i = icmp eq i64 %i.cg, 0
  %i.ch = load i64, ptr %.sroa.035.048, align 8   ; 9 uses
  br i1 %.not.not.i.i, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.k, %bb.l
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.l ], [ %i.au, %bb.k ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !33 ; 3 uses
  %.not.i.i21 = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i21, label %.loopexit40.loopexit, label %bb.l

bb.l:                                             ; preds = %.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !19
  %i.ck = icmp eq i64 %i.ch, %i.cj
  br i1 %i.ck, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit, label %.preheader, !llvm.loop !774

bb.m:                                             ; preds = %bb.k
  %i.cl = load i64, ptr %i.at, align 8, !tbaa !264 ; 4 uses
  %i.cm = urem i64 %i.ch, %i.cl                   ; 5 uses
  %i.cn = load ptr, ptr %0, align 8, !tbaa !262
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !78 ; 4 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i20, label %.loopexit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !33 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !19
  %i.ct = icmp eq i64 %i.ch, %i.cs
  br i1 %i.ct, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i

bb.o:                                             ; preds = %bb.p
  %i.cu = icmp eq i64 %i.ch, %i.cx
  br i1 %i.cu, label %_ZNSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE4findERS5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !775

.lr.ph.i.i.i.i:                                   ; preds = %bb.n, %bb.o
  %.020.i.i.i.i = phi ptr [ %i.cv, %bb.o ], [ %i.cq, %bb.n ]
  %i.cv = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !33 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not18.i.i.i.i, label %.loopexit40, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !19 ; 2 uses
  %i.cy = urem i64 %i.cx, %i.cl
  %.not19.i.i.i.i = icmp eq i64 %i.cy, %i.cm
  br i1 %.not19.i.i.i.i, label %bb.o, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !775

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.p
  br label %.loopexit40, !llvm.loop !775

.loopexit40.loopexit:                             ; preds = %.preheader
  %.pre = load i64, ptr %i.at, align 8, !tbaa !264 ; 2 uses
  %.pre55 = load ptr, ptr %0, align 8, !tbaa !262
  %.pre56 = urem i64 %i.ch, %.pre                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre55, i64 %.pre56
  %.pre57 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !78
  br label %.loopexit40

.loopexit40:                                      ; preds = %.lr.ph.i.i.i.i, %.loopexit40.loopexit, %..loopexit_crit_edge21.i.i.i.i
  %i.cz = phi ptr [ %i.cp, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre57, %.loopexit40.loopexit ], [ %i.cp, %.lr.ph.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %i.cm, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre56, %.loopexit40.loopexit ], [ %i.cm, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.da = phi i64 [ %i.cl, %..loopexit_crit_edge21.i.i.i.i ], [ %.pre, %.loopexit40.loopexit ], [ %i.cl, %.lr.ph.i.i.i.i ]
  %.not.i.i.i.i22 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i22, label %.loopexit.i.i, label %bb.q

bb.q:                                             ; preds = %.loopexit40
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !33 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !19
  %i.de = icmp eq i64 %i.ch, %i.dd
  br i1 %i.de, label %.loopexit, label %.lr.ph.i.i.i.i23

bb.r:                                             ; preds = %bb.s
  %i.df = icmp eq i64 %i.ch, %i.di
  br i1 %i.df, label %.loopexit, label %.lr.ph.i.i.i.i23, !llvm.loop !775

.lr.ph.i.i.i.i23:                                 ; preds = %bb.q, %bb.r
  %.020.i.i.i.i24 = phi ptr [ %i.dg, %bb.r ], [ %i.db, %bb.q ]
  %i.dg = load ptr, ptr %.020.i.i.i.i24, align 8, !tbaa !33 ; 4 uses
  %.not18.i.i.i.i25 = icmp eq ptr %i.dg, null
  br i1 %.not18.i.i.i.i25, label %.loopexit.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i23
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !19 ; 2 uses
  %i.dj = urem i64 %i.di, %i.da
  %.not19.i.i.i.i26 = icmp eq i64 %i.dj, %.pre-phi
  br i1 %.not19.i.i.i.i26, label %bb.r, label %..loopexit_crit_edge21.i.i.i.i27, !llvm.loop !775

..loopexit_crit_edge21.i.i.i.i27:                 ; preds = %bb.s
  br label %.loopexit.i.i, !llvm.loop !775

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i23, %bb.m, %..loopexit_crit_edge21.i.i.i.i27, %.loopexit40
  %.pre-phi85 = phi i64 [ %i.cm, %bb.m ], [ %.pre-phi, %.loopexit40 ], [ %.pre-phi, %..loopexit_crit_edge21.i.i.i.i27 ], [ %.pre-phi, %.lr.ph.i.i.i.i23 ]
  %i.dk = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc28 unwind label %bb.t   ; 5 uses

.noexc28:                                         ; preds = %.loopexit.i.i
  store ptr null, ptr %i.dk, align 8, !tbaa !33
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.ch, ptr %i.dl, align 8, !tbaa !776
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i64 0, ptr %i.dm, align 8, !tbaa !778
  %i.dn = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %.pre-phi85, i64 noundef %i.ch, ptr noundef nonnull %i.dk, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i: ; preds = %.noexc28
end_hunk_6
begin_hunk_7_@_ZN6duckdb15RelationManager11AddRelationERNS_15LogicalOperatorENS_12optional_ptrIS1_Lb1EEERKNS_13RelationStatsE:bb.a
  %i.dg = urem i64 %i.de, %i.df                   ; 3 uses
  %i.dh = load ptr, ptr %0, align 8, !tbaa !262
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i39, label %.loopexit.i.i45, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !33 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !19
  %i.dn = icmp eq i64 %i.de, %i.dm
  br i1 %i.dn, label %.loopexit88, label %.lr.ph.i.i.i.i40

bb.x:                                             ; preds = %bb.y
  %i.do = icmp eq i64 %i.de, %i.dr
  br i1 %i.do, label %.loopexit88, label %.lr.ph.i.i.i.i40, !llvm.loop !775

.lr.ph.i.i.i.i40:                                 ; preds = %bb.w, %bb.x
  %.020.i.i.i.i41 = phi ptr [ %i.dp, %bb.x ], [ %i.dk, %bb.w ]
  %i.dp = load ptr, ptr %.020.i.i.i.i41, align 8, !tbaa !33 ; 4 uses
  %.not18.i.i.i.i42 = icmp eq ptr %i.dp, null
  br i1 %.not18.i.i.i.i42, label %.loopexit.i.i45, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !19 ; 2 uses
  %i.ds = urem i64 %i.dr, %i.df
  %.not19.i.i.i.i43 = icmp eq i64 %i.ds, %i.dg
  br i1 %.not19.i.i.i.i43, label %bb.x, label %..loopexit_crit_edge21.i.i.i.i44, !llvm.loop !775

..loopexit_crit_edge21.i.i.i.i44:                 ; preds = %bb.y
  br label %.loopexit.i.i45, !llvm.loop !775

.loopexit.i.i45:                                  ; preds = %.lr.ph.i.i.i.i40, %..loopexit_crit_edge21.i.i.i.i44, %bb.v
  %i.dt = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc49 unwind label %bb.z   ; 5 uses

.noexc49:                                         ; preds = %.loopexit.i.i45
  store ptr null, ptr %i.dt, align 8, !tbaa !33
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 %i.de, ptr %i.du, align 8, !tbaa !776
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 0, ptr %i.dv, align 8, !tbaa !778
  %i.dw = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.dg, i64 noundef %i.de, ptr noundef nonnull %i.dt, i64 noundef 1)
          to label %.loopexit88 unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i46

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i46: ; preds = %.noexc49
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.dt) #27
  br label %.body50

.loopexit88:                                      ; preds = %bb.x, %.noexc49, %bb.w
  %.pn.i.i47 = phi ptr [ %i.dw, %.noexc49 ], [ %i.dk, %bb.w ], [ %i.dp, %bb.x ]
  %.1.i.i48 = getelementptr inbounds nuw i8, ptr %.pn.i.i47, i64 16
  store i64 %i.ak, ptr %.1.i.i48, align 8, !tbaa !19
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.079.0102, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.dy, %i.da
  br i1 %.not, label %._crit_edge.loopexit, label %bb.v

bb.z:                                             ; preds = %.loopexit.i.i45
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.body50:                                          ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i46, %bb.z
  %eh.lpad-body51 = phi { ptr, i32 } [ %i.dz, %bb.z ], [ %i.dx, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i46 ] ; 2 uses
  %i.ea = load ptr, ptr %8, align 8, !tbaa !439   ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit54, label %bb.aa

bb.aa:                                            ; preds = %.body50
  call void @_ZdlPv(ptr noundef nonnull %i.ea) #27
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit54

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit54: ; preds = %bb.aa, %.body50, %bb.u
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.u ], [ %eh.lpad-body51, %.body50 ], [ %eh.lpad-body51, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.body67

_ZNSt6vectorImSaImEE2atEm.exit:                   ; preds = %.thread157, %bb.q
  %i.eb = phi ptr [ %i.ar, %bb.q ], [ %i.az, %.thread157 ]
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !19 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !264 ; 2 uses
  %i.ef = urem i64 %i.ec, %i.ee                   ; 3 uses
  %i.eg = load ptr, ptr %0, align 8, !tbaa !262
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ef
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !78 ; 2 uses
  %.not.i.i.i.i56 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i56, label %.loopexit.i.i62, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE2atEm.exit
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !33 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !19
  %i.em = icmp eq i64 %i.ec, %i.el
  br i1 %i.em, label %.loopexit89, label %.lr.ph.i.i.i.i57

bb.ac:                                            ; preds = %bb.ad
  %i.en = icmp eq i64 %i.ec, %i.eq
  br i1 %i.en, label %.loopexit89, label %.lr.ph.i.i.i.i57, !llvm.loop !775

.lr.ph.i.i.i.i57:                                 ; preds = %bb.ab, %bb.ac
  %.020.i.i.i.i58 = phi ptr [ %i.eo, %bb.ac ], [ %i.ej, %bb.ab ]
  %i.eo = load ptr, ptr %.020.i.i.i.i58, align 8, !tbaa !33 ; 4 uses
  %.not18.i.i.i.i59 = icmp eq ptr %i.eo, null
  br i1 %.not18.i.i.i.i59, label %.loopexit.i.i62, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i57
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !19 ; 2 uses
  %i.er = urem i64 %i.eq, %i.ee
  %.not19.i.i.i.i60 = icmp eq i64 %i.er, %i.ef
  br i1 %.not19.i.i.i.i60, label %bb.ac, label %..loopexit_crit_edge21.i.i.i.i61, !llvm.loop !775

..loopexit_crit_edge21.i.i.i.i61:                 ; preds = %bb.ad
  br label %.loopexit.i.i62, !llvm.loop !775

.loopexit.i.i62:                                  ; preds = %.lr.ph.i.i.i.i57, %..loopexit_crit_edge21.i.i.i.i61, %_ZNSt6vectorImSaImEE2atEm.exit
  %i.es = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc66 unwind label %bb.ae  ; 5 uses

.noexc66:                                         ; preds = %.loopexit.i.i62
  store ptr null, ptr %i.es, align 8, !tbaa !33
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 %i.ec, ptr %i.et, align 8, !tbaa !776
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i64 0, ptr %i.eu, align 8, !tbaa !778
  %i.ev = invoke ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ef, i64 noundef %i.ec, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %.loopexit89 unwind label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i63

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i63: ; preds = %.noexc66
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.es) #27
  br label %.body67

.loopexit89:                                      ; preds = %bb.ac, %.noexc66, %bb.ab
  %.pn.i.i64 = phi ptr [ %i.ev, %.noexc66 ], [ %i.ej, %bb.ab ], [ %i.eo, %bb.ac ]
  %.1.i.i65 = getelementptr inbounds nuw i8, ptr %.pn.i.i64, i64 16
  store i64 %i.ak, ptr %.1.i.i65, align 8, !tbaa !19
  br label %bb.af

bb.ae:                                            ; preds = %.loopexit.i.i62
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body67

bb.af:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, %.loopexit89, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %i.ey = load ptr, ptr %i.ae, align 8, !tbaa !443 ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !475
  %.not.i.i70 = icmp eq ptr %i.ey, %i.fa
  br i1 %.not.i.i70, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = load i64, ptr %5, align 8, !tbaa !754
  store i64 %i.fb, ptr %i.ey, align 8, !tbaa !754
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.fc, ptr %i.ae, align 8, !tbaa !443
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.ah:                                            ; preds = %bb.af
  %i.fd = load ptr, ptr %i.ad, align 8, !tbaa !444 ; 10 uses
  %i.fe = ptrtoint ptr %i.ey to i64               ; 3 uses
  %i.ff = ptrtoint ptr %i.fd to i64               ; 3 uses
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775800
  br i1 %i.fh, label %bb.ai, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc72 unwind label %bb.al

.noexc72:                                         ; preds = %bb.ai
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ah
  %i.fi = ashr exact i64 %i.fg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fi ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  %i.fl = call i64 @llvm.umin.i64(i64 %i.fj, i64 1152921504606846975)
  %i.fm = select i1 %i.fk, i64 1152921504606846975, i64 %i.fl ; 3 uses
  %.not.i.i.i.i71 = icmp ne i64 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i71)
  %i.fn = shl nuw nsw i64 %i.fm, 3
  %i.fo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #30
          to label %.noexc73 unwind label %bb.al  ; 10 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fg
  %i.fq = load i64, ptr %5, align 8, !tbaa !754
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !754
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fd, %i.ey
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc73
  %9 = sub i64 %i.fe, %i.ff
  %10 = add i64 %9, -8                            ; 2 uses
  %i.fr = lshr i64 %10, 3
  %i.fs = add nuw nsw i64 %i.fr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %10, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader189, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ft = add i64 %i.fe, -8
  %i.fu = sub i64 %i.ft, %i.ff
  %i.fv = and i64 %i.fu, -8
  %i.fw = add i64 %i.fv, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fo, i64 %i.fw
  %scevgep185 = getelementptr i8, ptr %i.fd, i64 %i.fw
  %bound0 = icmp ult ptr %i.fo, %scevgep185
  %bound1 = icmp ult ptr %i.fd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader189, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fs, 4611686018427387900     ; 3 uses
  %i.fx = shl i64 %n.vec, 3                       ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fo, i64 %i.fx  ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fd, i64 %i.fx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ga = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fo, i64 %i.ga ; 2 uses
  %next.gep186 = getelementptr i8, ptr %i.fd, i64 %i.ga ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.gb = getelementptr i8, ptr %next.gep186, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep186, align 8, !tbaa !754, !alias.scope !799, !noalias !794
  %wide.load187 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !754, !alias.scope !799, !noalias !794
  %i.gc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !754, !alias.scope !802, !noalias !799
  store <2 x i64> %wide.load187, ptr %i.gc, align 8, !tbaa !754, !alias.scope !802, !noalias !799
  %i.gd = getelementptr i8, ptr %next.gep186, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep186, align 8, !tbaa !754, !alias.scope !799, !noalias !794
  store <2 x ptr> splat (ptr null), ptr %i.gd, align 8, !tbaa !754, !alias.scope !799, !noalias !794
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ge = icmp eq i64 %index.next, %n.vec
  br i1 %i.ge, label %middle.block, label %vector.body, !llvm.loop !804

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fs, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader189

.lr.ph.i.i.i.i.i.i.i.preheader189:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fo, %vector.memcheck ], [ %i.fo, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fy, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.fd, %vector.memcheck ], [ %i.fd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fz, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader189, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gh, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader189 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader189 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  %i.gf = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !797, !noalias !794
  store i64 %i.gf, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !794, !noalias !797
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !754, !alias.scope !797, !noalias !794
  %i.gg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gg, %i.ey
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !805

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc73
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fo, %.noexc73 ], [ %i.fy, %middle.block ], [ %i.gh, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fd) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.aj, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.fo, ptr %i.ad, align 8, !tbaa !444
  store ptr %i.gi, ptr %i.ae, align 8, !tbaa !443
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fm
  store ptr %i.gj, ptr %i.ez, align 8, !tbaa !475
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ag
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !402
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !416
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i8 1, ptr %i.gn, align 8, !tbaa !431
  %i.go = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i74, label %_ZNSt10unique_ptrIN6duckdb18SingleJoinRelationESt14default_deleteIS1_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @_ZdlPv(ptr noundef nonnull %i.go) #27
  br label %_ZNSt10unique_ptrIN6duckdb18SingleJoinRelationESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18SingleJoinRelationESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ak, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.al:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_18SingleJoinRelationESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.ai
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body67

.body67:                                          ; preds = %bb.ae, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i63, %bb.al, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit54, %.body
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %.body ], [ %i.gp, %bb.al ], [ %.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit54 ], [ %i.ex, %bb.ae ], [ %i.ew, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i63 ] ; 2 uses
  %i.gq = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i77, label %_ZNSt6vectorImSaImEED2Ev.exit78, label %bb.am

bb.am:                                            ; preds = %.body67
  call void @_ZdlPv(ptr noundef nonnull %i.gq) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit78

_ZNSt6vectorImSaImEED2Ev.exit78:                  ; preds = %bb.am, %.body67, %bb.g
  %.pn33.pn.pn = phi { ptr, i32 } [ %i.av, %bb.g ], [ %.pn33.pn, %.body67 ], [ %.pn33.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZNSt10unique_ptrIN6duckdb18SingleJoinRelationESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume
}

declare void @_ZN6duckdb11LogicalJoin18GetTableReferencesERNS_15LogicalOperatorERSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb27ExpressionContainsColumnRefERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::function.1012", align 8 ; 12 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"class.std::function.558", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 0, ptr %i.a, align 1, !tbaa !513
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = ptrtoint ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.e, align 8
  store i64 %i.b, ptr %2, align 8, !tbaa !806
  store ptr @"_ZNSt17_Function_handlerIFvRKN6duckdb24BoundColumnRefExpressionEEZNS0_27ExpressionContainsColumnRefERKNS0_10ExpressionEE3$_0E9_M_invokeERKSt9_Any_dataS3_", ptr %i.d, align 8, !tbaa !808
  store ptr @"_ZNSt17_Function_handlerIFvRKN6duckdb24BoundColumnRefExpressionEEZNS0_27ExpressionContainsColumnRefERKNS0_10ExpressionEE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.c, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = ptrtoint ptr %2 to i64
  store i64 %i.i, ptr %1, align 8, !tbaa !810
  store ptr @_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNS0_18ExpressionIterator15VisitExpressionINS0_24BoundColumnRefExpressionEEEvS3_RKSt8functionIFvRKT_EEEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.g, align 8, !tbaa !812
  store ptr @_ZNSt17_Function_handlerIFvRKN6duckdb10ExpressionEEZNS0_18ExpressionIterator15VisitExpressionINS0_24BoundColumnRefExpressionEEEvS3_RKSt8functionIFvRKT_EEEUlS3_E_E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation, ptr %i.f, align 8, !tbaa !154
  invoke void @_ZN6duckdb18ExpressionIterator20VisitExpressionClassERKNS_10ExpressionENS_15ExpressionClassERKSt8functionIFvS3_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, i8 noundef zeroext 28, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !154  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %bb.h unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #31
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !154  ; 2 uses
  %.not.i3.i = icmp eq ptr %i.o, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4.i unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #31
  unreachable

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %.not.i2 = icmp eq ptr %i.s, null
  br i1 %.not.i2, label %_ZNSt14_Function_baseD2Ev.exit3, label %bb.k

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !154  ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6duckdb15RelationManager20ExtractJoinRelationsERNS_18JoinOrderOptimizerERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS3_ELb1ESaIS7_EEENS_12optional_ptrIS3_Lb1EEE:bb.a
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !469
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp eq i64 %i.p, 8
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.e unwind label %.loopexit.split-lp1064.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %11, align 8, !tbaa !476
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i8, ptr %i.s, align 8, !tbaa !442
  switch i8 %i.t, label %_ZN6duckdbL21OperatorNeedsRelationENS_19LogicalOperatorTypeE.exit [
    i8 1, label %.critedge
    i8 28, label %.critedge
    i8 25, label %.critedge
    i8 5, label %.critedge
    i8 27, label %.critedge
    i8 3, label %.critedge
    i8 4, label %.critedge
    i8 12, label %.critedge
  ]

_ZN6duckdbL21OperatorNeedsRelationENS_19LogicalOperatorTypeE.exit: ; preds = %bb.e
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.f unwind label %.loopexit.split-lp1064.loopexit.split-lp

bb.f:                                             ; preds = %_ZN6duckdbL21OperatorNeedsRelationENS_19LogicalOperatorTypeE.exit
  %i.u = load ptr, ptr %11, align 8, !tbaa !476
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i8, ptr %i.v, align 8, !tbaa !442
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %bb.g, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit317

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.h unwind label %.loopexit.split-lp1064.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %11, align 8, !tbaa !476   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !468 ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !469 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp eq i64 %i.af, 8
  br i1 %i.ag, label %.lr.ph.i, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit

.lr.ph.i:                                         ; preds = %bb.h, %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit.i
  %i.ah = phi ptr [ %i.bb, %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit.i ], [ %i.z, %bb.h ]
  %.020.i = phi ptr [ %i.al, %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit.i ], [ %i.y, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.020.i, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !442
  switch i8 %i.aj, label %_ZN6duckdbL24OperatorIsNonReorderableENS_19LogicalOperatorTypeE.exit.i [
    i8 1, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 28, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 25, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 5, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 27, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 3, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 4, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 12, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 75, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 76, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 77, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 53, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
    i8 56, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
  ]

_ZN6duckdbL24OperatorIsNonReorderableENS_19LogicalOperatorTypeE.exit.i: ; preds = %.lr.ph.i
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp1064.loopexit

.noexc:                                           ; preds = %_ZN6duckdbL24OperatorIsNonReorderableENS_19LogicalOperatorTypeE.exit.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !377 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !442
  %i.ao = icmp eq i8 %i.an, 52
  br i1 %i.ao, label %bb.i, label %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit.i

bb.i:                                             ; preds = %.noexc
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 97
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !782
  switch i8 %i.aq, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread [
    i8 3, label %bb.j
    i8 5, label %bb.j
    i8 6, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !821 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !821 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.as, %i.au
  br i1 %.not18.i.i, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.critedge.i.i
  %.sroa.015.019.i.i = phi ptr [ %i.ba, %.critedge.i.i ], [ %i.as, %bb.j ] ; 3 uses
  %i.av = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.015.019.i.i)
          to label %.noexc291 unwind label %.loopexit1063

.noexc291:                                        ; preds = %.lr.ph.i.i
  %i.aw = invoke noundef zeroext i1 @_ZN6duckdb27ExpressionContainsColumnRefERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(88) %i.av)
          to label %.noexc292 unwind label %.loopexit1063

.noexc292:                                        ; preds = %.noexc291
  br i1 %i.aw, label %bb.k, label %.critedge.i.i

bb.k:                                             ; preds = %.noexc292
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i.i, i64 8
  %i.ay = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %.noexc293 unwind label %.loopexit1063

.noexc293:                                        ; preds = %bb.k
  %i.az = invoke noundef zeroext i1 @_ZN6duckdb27ExpressionContainsColumnRefERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(88) %i.ay)
          to label %.noexc294 unwind label %.loopexit1063

.noexc294:                                        ; preds = %.noexc293
  br i1 %i.az, label %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.noexc294, %.noexc292
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, %i.au
  br i1 %.not.i.i, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread, label %.lr.ph.i.i

_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit.i: ; preds = %.noexc294, %.noexc
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !468 ; 2 uses
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !469 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = icmp eq i64 %i.bh, 8
  br i1 %i.bi, label %.lr.ph.i, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit, !llvm.loop !823

_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit: ; preds = %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit.i, %bb.h
  %.lcssa17.i = phi ptr [ %i.ab, %bb.h ], [ %i.bd, %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit.i ]
  %.lcssa.i = phi ptr [ %i.ac, %bb.h ], [ %i.be, %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit.i ]
  %i.bj = icmp eq ptr %.lcssa.i, %.lcssa17.i
  br i1 %i.bj, label %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit

_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread: ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %bb.j, %bb.i, %.critedge.i.i, %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.l unwind label %.loopexit1072

bb.l:                                             ; preds = %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread
  %i.bk = load ptr, ptr %11, align 8, !tbaa !476  ; 2 uses
  %.not.i.i297 = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i297, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = ptrtoint ptr %i.bk to i64
  store i64 %i.bl, ptr %i.h, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit

bb.n:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %12, align 8, !tbaa !356  ; 7 uses
  %i.bo = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.o, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc298 unwind label %.loopexit.split-lp1073

.noexc298:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bs = ashr exact i64 %i.bq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975)
  %i.bw = select i1 %i.bu, i64 1152921504606846975, i64 %i.bv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #30
          to label %.noexc299 unwind label %.loopexit1072 ; 8 uses

.noexc299:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  %i.ca = ptrtoint ptr %i.bk to i64
  store i64 %i.ca, ptr %i.bz, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bn, %i.g
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc299
  %i.cb = ptrtoaddr ptr %i.by to i64
  %70 = sub i64 %i.bo, %i.bp
  %71 = add i64 %70, -8                           ; 2 uses
  %i.cc = lshr i64 %71, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check1526 = icmp ult i64 %71, 24
  %i.ce = sub i64 %i.cb, %i.bp
  %diff.check1524 = icmp ult i64 %i.ce, 32
  %or.cond = or i1 %min.iters.check1526, %diff.check1524
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader1592, label %vector.ph1527

vector.ph1527:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec1529 = and i64 %i.cd, 4611686018427387900 ; 3 uses
  %i.cf = shl i64 %n.vec1529, 3                   ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bn, i64 %i.cf
  br label %vector.body1530

vector.body1530:                                  ; preds = %vector.body1530, %vector.ph1527
  %index1531 = phi i64 [ 0, %vector.ph1527 ], [ %index.next1536, %vector.body1530 ] ; 2 uses
  %i.ci = shl i64 %index1531, 3                   ; 2 uses
  %next.gep1532 = getelementptr i8, ptr %i.by, i64 %i.ci ; 2 uses
  %next.gep1533 = getelementptr i8, ptr %i.bn, i64 %i.ci ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.cj = getelementptr i8, ptr %next.gep1533, i64 16
  %wide.load1534 = load <2 x i64>, ptr %next.gep1533, align 8, !alias.scope !827, !noalias !824
  %wide.load1535 = load <2 x i64>, ptr %i.cj, align 8, !alias.scope !827, !noalias !824
  %i.ck = getelementptr i8, ptr %next.gep1532, i64 16
  store <2 x i64> %wide.load1534, ptr %next.gep1532, align 8, !alias.scope !824, !noalias !827
  store <2 x i64> %wide.load1535, ptr %i.ck, align 8, !alias.scope !824, !noalias !827
  %index.next1536 = add nuw i64 %index1531, 4     ; 2 uses
  %i.cl = icmp eq i64 %index.next1536, %n.vec1529
  br i1 %i.cl, label %middle.block1537, label %vector.body1530, !llvm.loop !829

middle.block1537:                                 ; preds = %vector.body1530
  %cmp.n1538 = icmp eq i64 %i.cd, %n.vec1529
  br i1 %cmp.n1538, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1592

.lr.ph.i.i.i.i.i.i.i.preheader1592:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block1537
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block1537 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ch, %middle.block1537 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1592, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1592 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1592 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !827, !noalias !824
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !824, !noalias !827
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !830

_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block1537, %.noexc299
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.by, %.noexc299 ], [ %i.cg, %middle.block1537 ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.by, ptr %12, align 8, !tbaa !356
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit

.loopexit1063:                                    ; preds = %.lr.ph.i.i, %.noexc291, %bb.k, %.noexc293
  %lpad.loopexit1065 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1064

.loopexit.split-lp1064.loopexit:                  ; preds = %_ZN6duckdbL24OperatorIsNonReorderableENS_19LogicalOperatorTypeE.exit.i
  %lpad.loopexit1069 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1064

.loopexit.split-lp1064.loopexit.split-lp:         ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit317, %bb.g, %_ZN6duckdbL21OperatorNeedsRelationENS_19LogicalOperatorTypeE.exit, %bb.d, %bb.b
  %lpad.loopexit.split-lp1070 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1064

.loopexit1072:                                    ; preds = %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit.thread, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit1074 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1064

.loopexit.split-lp1073:                           ; preds = %bb.o
  %lpad.loopexit.split-lp1075 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1064

_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.m, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit
  %i.cr = phi ptr [ %i.g, %bb.m ], [ %i.cq, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.g, %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit ] ; 2 uses
  %i.cs = phi ptr [ %i.bm, %bb.m ], [ %i.cp, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.h, %_ZN6duckdbL22HasNonReorderableChildERNS_15LogicalOperatorE.exit ] ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.q unwind label %.loopexit1077

bb.q:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit
  %i.ct = load ptr, ptr %11, align 8, !tbaa !476  ; 2 uses
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !831 ; 5 uses
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !832
  %.not.i.i302 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i.i302, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cw = ptrtoint ptr %i.ct to i64
  store i64 %i.cw, ptr %i.cu, align 8
  %i.cx = load ptr, ptr %i.e, align 8, !tbaa !831
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cy, ptr %i.e, align 8, !tbaa !831
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit317

bb.s:                                             ; preds = %bb.q
  %i.cz = load ptr, ptr %3, align 8, !tbaa !356   ; 7 uses
  %i.da = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64               ; 3 uses
  %i.dc = sub i64 %i.da, %i.db                    ; 3 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775800
  br i1 %i.dd, label %bb.t, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i303

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc315 unwind label %.loopexit.split-lp1078

.noexc315:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i303: ; preds = %bb.s
  %i.de = ashr exact i64 %i.dc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i304 = call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i.i304, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 1152921504606846975)
  %i.di = select i1 %i.dg, i64 1152921504606846975, i64 %i.dh ; 3 uses
  %.not.i.i.i.i305 = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i.i305)
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #30
          to label %.noexc316 unwind label %.loopexit1077 ; 8 uses

.noexc316:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i303
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dc
  %i.dm = ptrtoint ptr %i.ct to i64
  store i64 %i.dm, ptr %i.dl, align 8
  %.not10.i.i.i.i.i.i.i306 = icmp eq ptr %i.cz, %i.cu
  br i1 %.not10.i.i.i.i.i.i.i306, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i311, label %.lr.ph.i.i.i.i.i.i.i307.preheader

.lr.ph.i.i.i.i.i.i.i307.preheader:                ; preds = %.noexc316
  %i.dn = ptrtoaddr ptr %i.dk to i64
  %72 = sub i64 %i.da, %i.db
  %73 = add i64 %72, -8                           ; 2 uses
  %i.do = lshr i64 %73, 3
  %i.dp = add nuw nsw i64 %i.do, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %73, 24
  %i.dq = sub i64 %i.dn, %i.db
  %diff.check = icmp ult i64 %i.dq, 32
  %or.cond1579 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond1579, label %.lr.ph.i.i.i.i.i.i.i307.preheader1591, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i307.preheader
  %n.vec = and i64 %i.dp, 4611686018427387900     ; 3 uses
  %i.dr = shl i64 %n.vec, 3                       ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dk, i64 %i.dr  ; 2 uses
  %i.dt = getelementptr i8, ptr %i.cz, i64 %i.dr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.du = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dk, i64 %i.du ; 2 uses
  %next.gep1520 = getelementptr i8, ptr %i.cz, i64 %i.du ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.dv = getelementptr i8, ptr %next.gep1520, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1520, align 8, !alias.scope !836, !noalias !833
  %wide.load1521 = load <2 x i64>, ptr %i.dv, align 8, !alias.scope !836, !noalias !833
  %i.dw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !833, !noalias !836
  store <2 x i64> %wide.load1521, ptr %i.dw, align 8, !alias.scope !833, !noalias !836
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !838

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i311, label %.lr.ph.i.i.i.i.i.i.i307.preheader1591

.lr.ph.i.i.i.i.i.i.i307.preheader1591:            ; preds = %.lr.ph.i.i.i.i.i.i.i307.preheader, %middle.block
  %.012.i.i.i.i.i.i.i308.ph = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i307.preheader ], [ %i.ds, %middle.block ]
  %.0911.i.i.i.i.i.i.i309.ph = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i.i.i307.preheader ], [ %i.dt, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i307

.lr.ph.i.i.i.i.i.i.i307:                          ; preds = %.lr.ph.i.i.i.i.i.i.i307.preheader1591, %.lr.ph.i.i.i.i.i.i.i307
  %.012.i.i.i.i.i.i.i308 = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i.i307 ], [ %.012.i.i.i.i.i.i.i308.ph, %.lr.ph.i.i.i.i.i.i.i307.preheader1591 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i309 = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i.i.i307 ], [ %.0911.i.i.i.i.i.i.i309.ph, %.lr.ph.i.i.i.i.i.i.i307.preheader1591 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !836)
  %i.dy = load i64, ptr %.0911.i.i.i.i.i.i.i309, align 8, !alias.scope !836, !noalias !833
  store i64 %i.dy, ptr %.012.i.i.i.i.i.i.i308, align 8, !alias.scope !833, !noalias !836
  %i.dz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i309, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i308, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i310 = icmp eq ptr %i.dz, %i.cu
  br i1 %.not.i.i.i.i.i.i.i310, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i311, label %.lr.ph.i.i.i.i.i.i.i307, !llvm.loop !839

_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i311: ; preds = %.lr.ph.i.i.i.i.i.i.i307, %middle.block, %.noexc316
  %.0.lcssa.i.i.i.i.i.i.i312 = phi ptr [ %i.dk, %.noexc316 ], [ %i.ds, %middle.block ], [ %i.ea, %.lr.ph.i.i.i.i.i.i.i307 ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i312, i64 8
  %.not.i23.i.i.i313 = icmp eq ptr %i.cz, null
  br i1 %.not.i23.i.i.i313, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i314, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i311
  call void @_ZdlPv(ptr noundef nonnull %i.cz) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i314

_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i314: ; preds = %bb.u, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i311
  store ptr %i.dk, ptr %3, align 8, !tbaa !356
  store ptr %i.eb, ptr %i.e, align 8, !tbaa !831
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.ec, ptr %i.f, align 8, !tbaa !832
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit317

.loopexit1077:                                    ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i303
  %lpad.loopexit1079 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1064

.loopexit.split-lp1078:                           ; preds = %bb.t
  %lpad.loopexit.split-lp1080 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1064

_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit317: ; preds = %bb.r, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i314, %bb.f
  %i.ed = phi ptr [ %i.cr, %bb.r ], [ %i.cr, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i314 ], [ %i.g, %bb.f ]
  %i.ee = phi ptr [ %i.cs, %bb.r ], [ %i.cs, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i314 ], [ %i.h, %bb.f ]
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.v unwind label %.loopexit.split-lp1064.loopexit.split-lp

bb.v:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit317
  %i.ef = load ptr, ptr %11, align 8, !tbaa !476  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !442
  %i.ei = icmp eq i8 %i.eh, 6
  %.sroa.01041.1 = select i1 %i.ei, ptr %i.ef, ptr %.sroa.01041.0
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.ej = load ptr, ptr %11, align 8, !tbaa !476
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 noundef 0)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !377
  %i.en = ptrtoint ptr %i.em to i64
  store i64 %i.en, ptr %11, align 8, !tbaa !377
  br label %bb.b, !llvm.loop !840

bb.y:                                             ; preds = %bb.v, %bb.w
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1064

.critedge:                                        ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.c
  store ptr %i.h, ptr %i.c, align 8
  store ptr %i.g, ptr %i.d, align 8
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZN6duckdbL24OperatorIsNonReorderableENS_19LogicalOperatorTypeE.exit unwind label %.loopexit.split-lp1059

_ZN6duckdbL24OperatorIsNonReorderableENS_19LogicalOperatorTypeE.exit: ; preds = %.critedge
  %i.ep = load ptr, ptr %11, align 8, !tbaa !476
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load i8, ptr %i.eq, align 8, !tbaa !442
  %switch.tableidx = add i8 %i.er, -53            ; 2 uses
  %i.es = icmp ult i8 %switch.tableidx, 25
  %switch.cast = zext nneg i8 %switch.tableidx to i25
  %switch.downshift = lshr i25 -4194295, %switch.cast
  %switch.masked = trunc i25 %switch.downshift to i1
  %.0.i324 = select i1 %i.es, i1 %switch.masked, i1 false
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.z unwind label %.loopexit.split-lp1059

.loopexit1058:                                    ; preds = %.lr.ph.i329, %.noexc330, %bb.ae, %.noexc332
  %lpad.loopexit1060 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1064

.loopexit.split-lp1059:                           ; preds = %.critedge, %_ZN6duckdbL24OperatorIsNonReorderableENS_19LogicalOperatorTypeE.exit, %bb.aa, %bb.bm
  %lpad.loopexit.split-lp1061 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1064

bb.z:                                             ; preds = %_ZN6duckdbL24OperatorIsNonReorderableENS_19LogicalOperatorTypeE.exit
  %i.et = load ptr, ptr %11, align 8, !tbaa !476
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !442
  %i.ew = icmp eq i8 %i.ev, 52
  br i1 %i.ew, label %bb.aa, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit351

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.ab unwind label %.loopexit.split-lp1059

bb.ab:                                            ; preds = %bb.aa
  %i.ex = load ptr, ptr %11, align 8, !tbaa !476  ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !442
  switch i8 %i.ez, label %.critedge288 [
    i8 54, label %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit
    i8 52, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 97
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !782
  switch i8 %i.fb, label %.critedge288 [
    i8 3, label %bb.ad
    i8 5, label %bb.ad
    i8 6, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ac, %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 184
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !821 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 192
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !821 ; 2 uses
  %.not18.i = icmp eq ptr %i.fd, %i.ff
  br i1 %.not18.i, label %.critedge288, label %.lr.ph.i329

.lr.ph.i329:                                      ; preds = %bb.ad, %.critedge.i
  %.sroa.015.019.i = phi ptr [ %i.fl, %.critedge.i ], [ %i.fd, %bb.ad ] ; 3 uses
  %i.fg = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.015.019.i)
          to label %.noexc330 unwind label %.loopexit1058

.noexc330:                                        ; preds = %.lr.ph.i329
  %i.fh = invoke noundef zeroext i1 @_ZN6duckdb27ExpressionContainsColumnRefERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(88) %i.fg)
          to label %.noexc331 unwind label %.loopexit1058

.noexc331:                                        ; preds = %.noexc330
  br i1 %i.fh, label %bb.ae, label %.critedge.i

bb.ae:                                            ; preds = %.noexc331
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i, i64 8
  %i.fj = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fi)
          to label %.noexc332 unwind label %.loopexit1058

.noexc332:                                        ; preds = %bb.ae
  %i.fk = invoke noundef zeroext i1 @_ZN6duckdb27ExpressionContainsColumnRefERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(88) %i.fj)
          to label %.noexc333 unwind label %.loopexit1058

.noexc333:                                        ; preds = %.noexc332
  br i1 %i.fk, label %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.noexc333, %.noexc331
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.fl, %i.ff
  br i1 %.not.i, label %.critedge288, label %.lr.ph.i329

_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit: ; preds = %.noexc333, %bb.ab
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit
  %i.fm = load ptr, ptr %11, align 8, !tbaa !476  ; 2 uses
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !831 ; 5 uses
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !832
  %.not.i.i336 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i.i336, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fp = ptrtoint ptr %i.fm to i64
  store i64 %i.fp, ptr %i.fn, align 8
  %i.fq = load ptr, ptr %i.e, align 8, !tbaa !831
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.fr, ptr %i.e, align 8, !tbaa !831
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit351

bb.ah:                                            ; preds = %bb.af
  %i.fs = load ptr, ptr %3, align 8, !tbaa !356   ; 7 uses
  %i.ft = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fu = ptrtoint ptr %i.fs to i64               ; 3 uses
  %i.fv = sub i64 %i.ft, %i.fu                    ; 3 uses
  %i.fw = icmp eq i64 %i.fv, 9223372036854775800
  br i1 %i.fw, label %bb.ai, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i337

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc349 unwind label %bb.ak

.noexc349:                                        ; preds = %bb.ai
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i337: ; preds = %bb.ah
  %i.fx = ashr exact i64 %i.fv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i338 = call i64 @llvm.umax.i64(i64 %i.fx, i64 1)
  %i.fy = add nsw i64 %.sroa.speculated.i.i.i.i338, %i.fx ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  %i.ga = call i64 @llvm.umin.i64(i64 %i.fy, i64 1152921504606846975)
  %i.gb = select i1 %i.fz, i64 1152921504606846975, i64 %i.ga ; 3 uses
  %.not.i.i.i.i339 = icmp ne i64 %i.gb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i339)
  %i.gc = shl nuw nsw i64 %i.gb, 3
  %i.gd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #30
          to label %.noexc350 unwind label %bb.ak ; 8 uses

.noexc350:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i337
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fv
  %i.gf = ptrtoint ptr %i.fm to i64
  store i64 %i.gf, ptr %i.ge, align 8
  %.not10.i.i.i.i.i.i.i340 = icmp eq ptr %i.fs, %i.fn
  br i1 %.not10.i.i.i.i.i.i.i340, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i345, label %.lr.ph.i.i.i.i.i.i.i341.preheader

.lr.ph.i.i.i.i.i.i.i341.preheader:                ; preds = %.noexc350
  %i.gg = ptrtoaddr ptr %i.gd to i64
  %74 = sub i64 %i.ft, %i.fu
  %75 = add i64 %74, -8                           ; 2 uses
  %i.gh = lshr i64 %75, 3
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check1544 = icmp ult i64 %75, 56
  %i.gj = sub i64 %i.gg, %i.fu
  %diff.check1542 = icmp ult i64 %i.gj, 32
  %or.cond1580 = or i1 %min.iters.check1544, %diff.check1542
  br i1 %or.cond1580, label %.lr.ph.i.i.i.i.i.i.i341.preheader1589, label %vector.ph1545

vector.ph1545:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i341.preheader
  %n.vec1547 = and i64 %i.gi, 4611686018427387900 ; 3 uses
  %i.gk = shl i64 %n.vec1547, 3                   ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gd, i64 %i.gk  ; 2 uses
  %i.gm = getelementptr i8, ptr %i.fs, i64 %i.gk
  br label %vector.body1548

vector.body1548:                                  ; preds = %vector.body1548, %vector.ph1545
  %index1549 = phi i64 [ 0, %vector.ph1545 ], [ %index.next1554, %vector.body1548 ] ; 2 uses
  %i.gn = shl i64 %index1549, 3                   ; 2 uses
  %next.gep1550 = getelementptr i8, ptr %i.gd, i64 %i.gn ; 2 uses
  %next.gep1551 = getelementptr i8, ptr %i.fs, i64 %i.gn ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.go = getelementptr i8, ptr %next.gep1551, i64 16
  %wide.load1552 = load <2 x i64>, ptr %next.gep1551, align 8, !alias.scope !844, !noalias !841
  %wide.load1553 = load <2 x i64>, ptr %i.go, align 8, !alias.scope !844, !noalias !841
  %i.gp = getelementptr i8, ptr %next.gep1550, i64 16
  store <2 x i64> %wide.load1552, ptr %next.gep1550, align 8, !alias.scope !841, !noalias !844
  store <2 x i64> %wide.load1553, ptr %i.gp, align 8, !alias.scope !841, !noalias !844
  %index.next1554 = add nuw i64 %index1549, 4     ; 2 uses
  %i.gq = icmp eq i64 %index.next1554, %n.vec1547
  br i1 %i.gq, label %middle.block1555, label %vector.body1548, !llvm.loop !846

middle.block1555:                                 ; preds = %vector.body1548
  %cmp.n1556 = icmp eq i64 %i.gi, %n.vec1547
  br i1 %cmp.n1556, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i345, label %.lr.ph.i.i.i.i.i.i.i341.preheader1589

.lr.ph.i.i.i.i.i.i.i341.preheader1589:            ; preds = %.lr.ph.i.i.i.i.i.i.i341.preheader, %middle.block1555
  %.012.i.i.i.i.i.i.i342.ph = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i.i.i341.preheader ], [ %i.gl, %middle.block1555 ]
  %.0911.i.i.i.i.i.i.i343.ph = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i.i.i341.preheader ], [ %i.gm, %middle.block1555 ]
  br label %.lr.ph.i.i.i.i.i.i.i341

.lr.ph.i.i.i.i.i.i.i341:                          ; preds = %.lr.ph.i.i.i.i.i.i.i341.preheader1589, %.lr.ph.i.i.i.i.i.i.i341
  %.012.i.i.i.i.i.i.i342 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i.i341 ], [ %.012.i.i.i.i.i.i.i342.ph, %.lr.ph.i.i.i.i.i.i.i341.preheader1589 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i343 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i.i341 ], [ %.0911.i.i.i.i.i.i.i343.ph, %.lr.ph.i.i.i.i.i.i.i341.preheader1589 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.gr = load i64, ptr %.0911.i.i.i.i.i.i.i343, align 8, !alias.scope !844, !noalias !841
  store i64 %i.gr, ptr %.012.i.i.i.i.i.i.i342, align 8, !alias.scope !841, !noalias !844
  %i.gs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i343, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i342, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i344 = icmp eq ptr %i.gs, %i.fn
  br i1 %.not.i.i.i.i.i.i.i344, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i345, label %.lr.ph.i.i.i.i.i.i.i341, !llvm.loop !847

_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i345: ; preds = %.lr.ph.i.i.i.i.i.i.i341, %middle.block1555, %.noexc350
  %.0.lcssa.i.i.i.i.i.i.i346 = phi ptr [ %i.gd, %.noexc350 ], [ %i.gl, %middle.block1555 ], [ %i.gt, %.lr.ph.i.i.i.i.i.i.i341 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i346, i64 8
  %.not.i23.i.i.i347 = icmp eq ptr %i.fs, null
  br i1 %.not.i23.i.i.i347, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i348, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i345
  call void @_ZdlPv(ptr noundef nonnull %i.fs) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i348

_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i348: ; preds = %bb.aj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i345
  store ptr %i.gd, ptr %3, align 8, !tbaa !356
  store ptr %i.gu, ptr %i.e, align 8, !tbaa !831
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gb
  store ptr %i.gv, ptr %i.f, align 8, !tbaa !832
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit351

bb.ak:                                            ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i337, %bb.ai, %_ZN6duckdbL17JoinIsReorderableERNS_15LogicalOperatorE.exit
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp1064

_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit351: ; preds = %bb.ag, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i348, %bb.z
  br i1 %.0.i324, label %.critedge288, label %bb.bm

.critedge288:                                     ; preds = %.critedge.i, %bb.ab, %bb.ad, %bb.ac, %_ZNSt6vectorISt17reference_wrapperIN6duckdb15LogicalOperatorEESaIS3_EE9push_backEOS3_.exit351
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.critedge288
  %i.gx = load ptr, ptr %11, align 8, !tbaa !476  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !848 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !848 ; 2 uses
  %.not10541124 = icmp eq ptr %i.gz, %i.hb
  br i1 %.not10541124, label %._crit_edge1128, label %.lr.ph1127

.lr.ph1127:                                       ; preds = %bb.al
  %i.hc = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.hf = getelementptr inbounds nuw i8, ptr %14, i64 48 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %14, i64 72 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.hj = getelementptr inbounds nuw i8, ptr %15, i64 688
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.hm = getelementptr inbounds nuw i8, ptr %15, i64 744
  %i.hn = getelementptr inbounds nuw i8, ptr %15, i64 760
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %14, i64 56
  br label %bb.an

._crit_edge1128:                                  ; preds = %_ZN6duckdb13RelationStatsD2Ev.exit, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.az unwind label %bb.be

bb.am:                                            ; preds = %.critedge288
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.an:                                            ; preds = %.lr.ph1127, %_ZN6duckdb13RelationStatsD2Ev.exit
  %.sroa.01031.01125 = phi ptr [ %i.gz, %.lr.ph1127 ], [ %i.iz, %_ZN6duckdb13RelationStatsD2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %14, i8 0, i64 24, i1 false)
  store i64 1, ptr %i.hc, align 8, !tbaa !402
  store double 1.000000e+00, ptr %i.hd, align 8, !tbaa !502
  store i8 0, ptr %i.he, align 8, !tbaa !433
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hf, i8 0, i64 24, i1 false)
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !11
  store i64 0, ptr %i.hi, align 8, !tbaa !14
  store i8 0, ptr %i.hh, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.ht = load ptr, ptr %1, align 8, !tbaa !361, !noalias !849, !nonnull !362, !align !363
  invoke void @_ZN6duckdb18JoinOrderOptimizerC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(816) %15, ptr noundef nonnull align 8 dereferenceable(512) %i.ht)
          to label %.noexc356 unwind label %bb.av

.noexc356:                                        ; preds = %bb.an
  invoke void @_ZNSt10_HashtableImSt4pairIKmN6duckdb13RelationStatsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE18_M_assign_elementsIRKSH_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.hj, ptr noundef nonnull align 8 dereferenceable(56) %i.hk)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc356
  %i.hu = load <2 x i64>, ptr %i.hl, align 8, !tbaa !17, !noalias !849
  %i.hv = add <2 x i64> %i.hu, <i64 0, i64 1>
  store <2 x i64> %i.hv, ptr %i.hm, align 8, !tbaa !17, !alias.scope !849
  invoke void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.hn, ptr noundef nonnull align 8 dereferenceable(56) %i.ho)
          to label %_ZN6duckdb18JoinOrderOptimizer20CreateChildOptimizerEv.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.noexc356
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb18JoinOrderOptimizerD2Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) %15) #28
  br label %.body

_ZN6duckdb18JoinOrderOptimizer20CreateChildOptimizerEv.exit: ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.hx = load i64, ptr %.sroa.01031.01125, align 8, !tbaa !377
  store i64 %i.hx, ptr %17, align 8, !tbaa !377
  store ptr null, ptr %.sroa.01031.01125, align 8, !tbaa !377
  invoke void @_ZN6duckdb18JoinOrderOptimizer8OptimizeENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEENS_12optional_ptrINS_13RelationStatsELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.327") align 8 %16, ptr noundef nonnull align 8 dereferenceable(816) %15, ptr noundef nonnull %17, ptr nonnull %14)
          to label %bb.aq unwind label %bb.aw

bb.aq:                                            ; preds = %_ZN6duckdb18JoinOrderOptimizer20CreateChildOptimizerEv.exit
  %i.hy = load ptr, ptr %16, align 8, !tbaa !377
  store ptr null, ptr %16, align 8, !tbaa !377
  %i.hz = load ptr, ptr %.sroa.01031.01125, align 8, !tbaa !377 ; 3 uses
  store ptr %i.hy, ptr %.sroa.01031.01125, align 8, !tbaa !377
  %.not.i.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.aq
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !352
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.hz) #28, !inline_history !394
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.aq, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i
  %i.id = load ptr, ptr %16, align 8, !tbaa !377  ; 3 uses
  %.not.i357 = icmp eq ptr %i.id, null
  br i1 %.not.i357, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !352
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8
  call void %i.ig(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.id) #28, !inline_history !395
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.ih = load ptr, ptr %17, align 8, !tbaa !377  ; 3 uses
  %.not.i358 = icmp eq ptr %i.ih, null
  br i1 %.not.i358, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit360, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i359

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i359: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !352
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8
end_hunk_8
begin_hunk_9_@_ZN6duckdb15RelationManager20ExtractJoinRelationsERNS_18JoinOrderOptimizerERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS3_ELb1ESaIS7_EEENS_12optional_ptrIS3_Lb1EEE:bb.a
  br i1 %.not.i861, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit863, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i862

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i862: ; preds = %bb.mv
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !352
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 8
  %i.apc = load ptr, ptr %i.apb, align 8
  call void %i.apc(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.aoz) #28, !inline_history !395
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit863

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit863: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i862, %bb.mv, %bb.mu
  %.pn192 = phi { ptr, i32 } [ %i.aox, %bb.mu ], [ %i.aoy, %bb.mv ], [ %i.aoy, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i862 ] ; 2 uses
  %i.apd = load ptr, ptr %57, align 8, !tbaa !377 ; 3 uses
  %.not.i864 = icmp eq ptr %i.apd, null
  br i1 %.not.i864, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit866, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i865

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i865: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit863
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !352
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 8
  %i.apg = load ptr, ptr %i.apf, align 8
  call void %i.apg(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.apd) #28, !inline_history !395
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit866

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit866: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i865, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit863, %bb.mt
  %.pn192.pn = phi { ptr, i32 } [ %i.aow, %bb.mt ], [ %.pn192, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit863 ], [ %.pn192, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i865 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #28
  br label %bb.pc

bb.mw:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit847
  %i.aph = landingpad { ptr, i32 }
          cleanup
  br label %.body855

.body855:                                         ; preds = %bb.mn, %bb.mw
  %eh.lpad-body856 = phi { ptr, i32 } [ %i.aph, %bb.mw ], [ %i.aoc, %bb.mn ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %59) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #28
  br label %_ZNSt10unique_ptrIN6duckdb16LogicalAggregateESt14default_deleteIS1_EED2Ev.exit982

bb.mx:                                            ; preds = %bb.mq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.api = landingpad { ptr, i32 }
          cleanup
  br label %bb.pb

.lr.ph:                                           ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEEvDpOT_.exit, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.01008.01118 = phi ptr [ %i.asl, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.aoq, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEEvDpOT_.exit ] ; 2 uses
  %i.apj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16LogicalAggregateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.my unwind label %bb.nl

bb.my:                                            ; preds = %.lr.ph
  %i.apk = getelementptr inbounds nuw i8, ptr %i.apj, i64 152
  %i.apl = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb6vectorISt3setImSt4lessImESaImEELb1ESaIS5_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.apk)
          to label %bb.mz unwind label %bb.nl     ; 4 uses

bb.mz:                                            ; preds = %bb.my
  %i.apm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16LogicalAggregateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.na unwind label %bb.nm     ; 2 uses

bb.na:                                            ; preds = %bb.mz
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 128
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apm, i64 136
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !373
  %i.apq = load ptr, ptr %i.apn, align 8, !tbaa !372
  %i.apr = ptrtoint ptr %i.app to i64
  %i.aps = ptrtoint ptr %i.apq to i64
  %i.apt = sub i64 %i.apr, %i.aps
  %i.apu = ashr exact i64 %i.apt, 3               ; 4 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apl, i64 16
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apl, i64 8 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.apv, align 8, !tbaa !900 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i867

.lr.ph.i.i.i867:                                  ; preds = %bb.na, %.lr.ph.i.i.i867
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i867 ], [ %.02022.i.i.i, %bb.na ] ; 4 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !19 ; 2 uses
  %i.apz = icmp ult i64 %i.apu, %i.apy            ; 2 uses
  %.in.v.i.i.i = select i1 %i.apz, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !900 ; 2 uses
  %.not.i.i.i868 = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i868, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i867, !llvm.loop !901

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i867
  br i1 %i.apz, label %._crit_edge.thread.i.i.i, label %bb.nc

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.na
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.apw, %bb.na ] ; 4 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apl, i64 24
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !892
  %i.aqc = icmp eq ptr %.019.lcssa29.i.i.i, %i.aqb
  br i1 %i.aqc, label %select.unfold.i.i, label %bb.nb

bb.nb:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.aqd = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #32
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.aqd, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !19
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %._crit_edge.i.i.i
  %i.aqe = phi i64 [ %.pre.i.i, %bb.nb ], [ %i.apy, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.nb ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.aqf = icmp ult i64 %i.aqe, %i.apu
  br i1 %i.aqf, label %select.unfold.i.i, label %bb.ne

select.unfold.i.i:                                ; preds = %bb.nc, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.nc ] ; 3 uses
  %i.aqg = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.apw
  br i1 %i.aqg, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.nd

bb.nd:                                            ; preds = %select.unfold.i.i
  %i.aqh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.aqi = load i64, ptr %i.aqh, align 8, !tbaa !19
  %i.aqj = icmp ult i64 %i.apu, %i.aqi
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.nd, %select.unfold.i.i
  %i.aqk = phi i1 [ %i.aqj, %bb.nd ], [ true, %select.unfold.i.i ]
  %i.aql = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %.noexc869 unwind label %bb.nm ; 2 uses

.noexc869:                                        ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 32
  store i64 %i.apu, ptr %i.aqm, align 8, !tbaa !19
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.aqk, ptr noundef nonnull %i.aql, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.apw) #28
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.apl, i64 40 ; 2 uses
  %i.aqo = load i64, ptr %i.aqn, align 8, !tbaa !898
  %i.aqp = add i64 %i.aqo, 1
  store i64 %i.aqp, ptr %i.aqn, align 8, !tbaa !898
  br label %bb.ne

bb.ne:                                            ; preds = %.noexc869, %bb.nc
  %i.aqq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16LogicalAggregateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %58)
          to label %bb.nf unwind label %bb.nl     ; 3 uses

bb.nf:                                            ; preds = %bb.ne
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 128 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #28
  %i.aqs = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01008.01118)
          to label %bb.ng unwind label %bb.nn     ; 2 uses

bb.ng:                                            ; preds = %bb.nf
  %i.aqt = load ptr, ptr %i.aqs, align 8, !tbaa !352
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 136
  %i.aqv = load ptr, ptr %i.aqu, align 8
  invoke void %i.aqv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.390") align 8 %60, ptr noundef nonnull align 8 dereferenceable(88) %i.aqs)
          to label %bb.nh unwind label %bb.nn

bb.nh:                                            ; preds = %bb.ng
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqq, i64 136 ; 3 uses
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !373 ; 6 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqq, i64 144 ; 2 uses
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !902
  %.not.i.i870 = icmp eq ptr %i.aqx, %i.aqz
  br i1 %.not.i.i870, label %bb.ni, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.nh
  %i.ara = load i64, ptr %60, align 8, !tbaa !350
  store i64 %i.ara, ptr %i.aqx, align 8, !tbaa !350
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  store ptr %i.arb, ptr %i.aqw, align 8, !tbaa !373
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ni:                                            ; preds = %bb.nh
  %i.arc = load ptr, ptr %i.aqr, align 8, !tbaa !372 ; 10 uses
  %i.ard = ptrtoint ptr %i.aqx to i64             ; 3 uses
  %i.are = ptrtoint ptr %i.arc to i64             ; 3 uses
  %i.arf = sub i64 %i.ard, %i.are                 ; 3 uses
  %i.arg = icmp eq i64 %i.arf, 9223372036854775800
  br i1 %i.arg, label %bb.nj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.nj:                                            ; preds = %bb.ni
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc880 unwind label %.loopexit.split-lp

.noexc880:                                        ; preds = %bb.nj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ni
  %i.arh = ashr exact i64 %i.arf, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i871 = call i64 @llvm.umax.i64(i64 %i.arh, i64 1)
  %i.ari = add nsw i64 %.sroa.speculated.i.i.i.i871, %i.arh ; 2 uses
  %i.arj = icmp ult i64 %i.ari, %i.arh
  %i.ark = call i64 @llvm.umin.i64(i64 %i.ari, i64 1152921504606846975)
  %i.arl = select i1 %i.arj, i64 1152921504606846975, i64 %i.ark ; 3 uses
  %.not.i.i.i.i872 = icmp ne i64 %i.arl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i872)
  %i.arm = shl nuw nsw i64 %i.arl, 3
  %i.arn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.arm) #30
          to label %.noexc881 unwind label %.loopexit1057 ; 10 uses

.noexc881:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.arf
  %i.arp = load i64, ptr %60, align 8, !tbaa !350
  store i64 %i.arp, ptr %i.aro, align 8, !tbaa !350
  store ptr null, ptr %60, align 8, !tbaa !350
  %.not10.i.i.i.i.i.i.i873 = icmp eq ptr %i.arc, %i.aqx
  br i1 %.not10.i.i.i.i.i.i.i873, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i874.preheader

.lr.ph.i.i.i.i.i.i.i874.preheader:                ; preds = %.noexc881
  %76 = sub i64 %i.ard, %i.are
  %77 = add i64 %76, -8                           ; 2 uses
  %i.arq = lshr i64 %77, 3
  %i.arr = add nuw nsw i64 %i.arq, 1              ; 2 uses
  %min.iters.check1564 = icmp ult i64 %77, 56
  br i1 %min.iters.check1564, label %.lr.ph.i.i.i.i.i.i.i874.preheader1585, label %vector.memcheck1559

vector.memcheck1559:                              ; preds = %.lr.ph.i.i.i.i.i.i.i874.preheader
  %scevgep = getelementptr i8, ptr %i.arn, i64 8
  %i.ars = add i64 %i.ard, -8
  %i.art = sub i64 %i.ars, %i.are
  %i.aru = and i64 %i.art, -8                     ; 2 uses
  %scevgep1560 = getelementptr i8, ptr %scevgep, i64 %i.aru
  %scevgep1561 = getelementptr i8, ptr %i.arc, i64 8
  %scevgep1562 = getelementptr i8, ptr %scevgep1561, i64 %i.aru
  %bound0 = icmp ult ptr %i.arn, %scevgep1562
  %bound1 = icmp ult ptr %i.arc, %scevgep1560
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i874.preheader1585, label %vector.ph1565

vector.ph1565:                                    ; preds = %vector.memcheck1559
  %n.vec1567 = and i64 %i.arr, 4611686018427387900 ; 3 uses
  %i.arv = shl i64 %n.vec1567, 3                  ; 2 uses
  %i.arw = getelementptr i8, ptr %i.arn, i64 %i.arv ; 2 uses
  %i.arx = getelementptr i8, ptr %i.arc, i64 %i.arv
  br label %vector.body1568

vector.body1568:                                  ; preds = %vector.body1568, %vector.ph1565
  %index1569 = phi i64 [ 0, %vector.ph1565 ], [ %index.next1574, %vector.body1568 ] ; 2 uses
  %i.ary = shl i64 %index1569, 3                  ; 2 uses
  %next.gep1570 = getelementptr i8, ptr %i.arn, i64 %i.ary ; 2 uses
  %next.gep1571 = getelementptr i8, ptr %i.arc, i64 %i.ary ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.arz = getelementptr i8, ptr %next.gep1571, i64 16
  %wide.load1572 = load <2 x i64>, ptr %next.gep1571, align 8, !tbaa !350, !alias.scope !908, !noalias !903
  %wide.load1573 = load <2 x i64>, ptr %i.arz, align 8, !tbaa !350, !alias.scope !908, !noalias !903
  %i.asa = getelementptr i8, ptr %next.gep1570, i64 16
  store <2 x i64> %wide.load1572, ptr %next.gep1570, align 8, !tbaa !350, !alias.scope !911, !noalias !908
  store <2 x i64> %wide.load1573, ptr %i.asa, align 8, !tbaa !350, !alias.scope !911, !noalias !908
  %i.asb = getelementptr i8, ptr %next.gep1571, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1571, align 8, !tbaa !350, !alias.scope !908, !noalias !903
  store <2 x ptr> splat (ptr null), ptr %i.asb, align 8, !tbaa !350, !alias.scope !908, !noalias !903
  %index.next1574 = add nuw i64 %index1569, 4     ; 2 uses
  %i.asc = icmp eq i64 %index.next1574, %n.vec1567
  br i1 %i.asc, label %middle.block1575, label %vector.body1568, !llvm.loop !913

middle.block1575:                                 ; preds = %vector.body1568
  %cmp.n1576 = icmp eq i64 %i.arr, %n.vec1567
  br i1 %cmp.n1576, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i874.preheader1585

.lr.ph.i.i.i.i.i.i.i874.preheader1585:            ; preds = %vector.memcheck1559, %.lr.ph.i.i.i.i.i.i.i874.preheader, %middle.block1575
  %.012.i.i.i.i.i.i.i875.ph = phi ptr [ %i.arn, %vector.memcheck1559 ], [ %i.arn, %.lr.ph.i.i.i.i.i.i.i874.preheader ], [ %i.arw, %middle.block1575 ]
  %.0911.i.i.i.i.i.i.i876.ph = phi ptr [ %i.arc, %vector.memcheck1559 ], [ %i.arc, %.lr.ph.i.i.i.i.i.i.i874.preheader ], [ %i.arx, %middle.block1575 ]
  br label %.lr.ph.i.i.i.i.i.i.i874

.lr.ph.i.i.i.i.i.i.i874:                          ; preds = %.lr.ph.i.i.i.i.i.i.i874.preheader1585, %.lr.ph.i.i.i.i.i.i.i874
  %.012.i.i.i.i.i.i.i875 = phi ptr [ %i.asf, %.lr.ph.i.i.i.i.i.i.i874 ], [ %.012.i.i.i.i.i.i.i875.ph, %.lr.ph.i.i.i.i.i.i.i874.preheader1585 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i876 = phi ptr [ %i.ase, %.lr.ph.i.i.i.i.i.i.i874 ], [ %.0911.i.i.i.i.i.i.i876.ph, %.lr.ph.i.i.i.i.i.i.i874.preheader1585 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.asd = load i64, ptr %.0911.i.i.i.i.i.i.i876, align 8, !tbaa !350, !alias.scope !906, !noalias !903
  store i64 %i.asd, ptr %.012.i.i.i.i.i.i.i875, align 8, !tbaa !350, !alias.scope !903, !noalias !906
  store ptr null, ptr %.0911.i.i.i.i.i.i.i876, align 8, !tbaa !350, !alias.scope !906, !noalias !903
  %i.ase = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i876, i64 8 ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i875, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i877 = icmp eq ptr %i.ase, %i.aqx
  br i1 %.not.i.i.i.i.i.i.i877, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i874, !llvm.loop !914

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i874, %middle.block1575, %.noexc881
  %.0.lcssa.i.i.i.i.i.i.i878 = phi ptr [ %i.arn, %.noexc881 ], [ %i.arw, %middle.block1575 ], [ %i.asf, %.lr.ph.i.i.i.i.i.i.i874 ]
  %i.asg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i878, i64 8
  %.not.i23.i.i.i879 = icmp eq ptr %i.arc, null
  br i1 %.not.i23.i.i.i879, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.nk

bb.nk:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.arc) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.nk
  store ptr %i.arn, ptr %i.aqr, align 8, !tbaa !372
  store ptr %i.asg, ptr %i.aqw, align 8, !tbaa !373
  %i.ash = getelementptr inbounds nuw [8 x i8], ptr %i.arn, i64 %i.arl
  store ptr %i.ash, ptr %i.aqy, align 8, !tbaa !902
  %.pr = load ptr, ptr %60, align 8, !tbaa !350   ; 3 uses
  %.not.i882 = icmp eq ptr %.pr, null
  br i1 %.not.i882, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.asi = load ptr, ptr %.pr, align 8, !tbaa !352
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 8
  %i.ask = load ptr, ptr %i.asj, align 8
  call void %i.ask(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #28, !inline_history !497
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  %i.asl = getelementptr inbounds nuw i8, ptr %.sroa.01008.01118, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.asl, %i.aos
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.nl:                                            ; preds = %bb.ne, %bb.my, %.lr.ph
  %i.asm = landingpad { ptr, i32 }
          cleanup
  br label %bb.pb

bb.nm:                                            ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, %bb.mz
  %i.asn = landingpad { ptr, i32 }
          cleanup
  br label %bb.pb

bb.nn:                                            ; preds = %bb.ng, %bb.nf
  %i.aso = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit885

.loopexit1057:                                    ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

.loopexit.split-lp:                               ; preds = %bb.nj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

bb.no:                                            ; preds = %.loopexit.split-lp, %.loopexit1057
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit1057 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.asp = load ptr, ptr %60, align 8, !tbaa !350 ; 3 uses
  %.not.i883 = icmp eq ptr %i.asp, null
  br i1 %.not.i883, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit885, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i884

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i884: ; preds = %bb.no
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !352
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 8
  %i.ass = load ptr, ptr %i.asr, align 8
  call void %i.ass(ptr noundef nonnull align 8 dereferenceable(88) %i.asp) #28, !inline_history !497
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit885

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit885: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i884, %bb.no, %bb.nn
  %.pn204 = phi { ptr, i32 } [ %i.aso, %bb.nn ], [ %lpad.phi, %bb.no ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i884 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #28
  br label %bb.pb

bb.np:                                            ; preds = %._crit_edge
  invoke void @_ZN6duckdb24RelationStatisticsHelper23ExtractAggregationStatsERNS_16LogicalAggregateERNS_13RelationStatsE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::RelationStats") align 8 %61, ptr noundef nonnull align 8 dereferenceable(225) %i.aot, ptr noundef nonnull align 8 dereferenceable(104) %54)
          to label %bb.nq unwind label %bb.nz

bb.nq:                                            ; preds = %bb.np
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %62, i8 0, i64 24, i1 false)
  %i.ast = getelementptr inbounds nuw i8, ptr %62, i64 24
  store i64 1, ptr %i.ast, align 8, !tbaa !402
  %i.asu = getelementptr inbounds nuw i8, ptr %62, i64 32
  store double 1.000000e+00, ptr %i.asu, align 8, !tbaa !502
  %i.asv = getelementptr inbounds nuw i8, ptr %62, i64 40
  store i8 0, ptr %i.asv, align 8, !tbaa !433
  %i.asw = getelementptr inbounds nuw i8, ptr %62, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.asw, i8 0, i64 24, i1 false)
  %i.asx = getelementptr inbounds nuw i8, ptr %62, i64 72 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %62, i64 88 ; 3 uses
  store ptr %i.asy, ptr %i.asx, align 8, !tbaa !11
  %i.asz = getelementptr inbounds nuw i8, ptr %62, i64 80
  store i64 0, ptr %i.asz, align 8, !tbaa !14
  store i8 0, ptr %i.asy, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %i.ata = load ptr, ptr %1, align 8, !tbaa !361, !noalias !915, !nonnull !362, !align !363
  invoke void @_ZN6duckdb18JoinOrderOptimizerC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(816) %63, ptr noundef nonnull align 8 dereferenceable(512) %i.ata)
          to label %.noexc886 unwind label %bb.oa

.noexc886:                                        ; preds = %bb.nq
  %i.atb = getelementptr inbounds nuw i8, ptr %63, i64 688
  invoke void @_ZNSt10_HashtableImSt4pairIKmN6duckdb13RelationStatsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE18_M_assign_elementsIRKSH_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.atb, ptr noundef nonnull align 8 dereferenceable(56) %i.amq)
          to label %bb.nr unwind label %bb.ns

bb.nr:                                            ; preds = %.noexc886
  %i.atc = getelementptr inbounds nuw i8, ptr %63, i64 744 ; 2 uses
  %i.atd = load <2 x i64>, ptr %i.amr, align 8, !tbaa !17, !noalias !915
  %i.ate = add <2 x i64> %i.atd, <i64 0, i64 1>
  store <2 x i64> %i.ate, ptr %i.atc, align 8, !tbaa !17, !alias.scope !915
  %i.atf = getelementptr inbounds nuw i8, ptr %63, i64 760
  invoke void @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE18_M_assign_elementsIRKSC_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.atf, ptr noundef nonnull align 8 dereferenceable(56) %i.amw)
          to label %bb.nt unwind label %bb.ns

bb.ns:                                            ; preds = %bb.nr, %.noexc886
  %i.atg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb18JoinOrderOptimizerD2Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) %63) #28
  br label %.body887

bb.nt:                                            ; preds = %bb.nr
  %i.ath = ptrtoint ptr %61 to i64
  store i64 %i.ath, ptr %i.atc, align 8, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #28
  invoke void @_ZNK6duckdb12optional_ptrINS_15LogicalOperatorELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.nu unwind label %bb.ob

bb.nu:                                            ; preds = %bb.nt
  %i.ati = load ptr, ptr %11, align 8, !tbaa !476
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 16
  %i.atk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.atj, i64 noundef 1)
end_hunk_9
begin_hunk_10_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
  store ptr null, ptr %34, align 8, !tbaa !36
  %i.bm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_26BoundConjunctionExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.u unwind label %bb.v       ; 2 uses

bb.h:                                             ; preds = %bb.e
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph1076:                                       ; preds = %bb.g, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0858.01075 = phi ptr [ %i.ej, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.bj, %bb.g ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  %i.bo = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #30
          to label %.noexc105 unwind label %bb.t  ; 8 uses

.noexc105:                                        ; preds = %.lr.ph1076
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0858.01075, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0858.01075, i64 16
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !617, !noalias !1114
  %i.bs = load i64, ptr %.sroa.0858.01075, align 8, !tbaa !350, !noalias !1114
  store i64 %i.bs, ptr %28, align 8, !tbaa !350, !noalias !1114
  store ptr null, ptr %.sroa.0858.01075, align 8, !tbaa !350, !noalias !1114
  %i.bt = load i64, ptr %i.bp, align 8, !tbaa !350, !noalias !1114
  store i64 %i.bt, ptr %29, align 8, !tbaa !350, !noalias !1114
  store ptr null, ptr %i.bp, align 8, !tbaa !350, !noalias !1114
  invoke void @_ZN6duckdb25BoundComparisonExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(104) %i.bo, i8 noundef zeroext %i.br, ptr noundef nonnull %28, ptr noundef nonnull %29)
          to label %bb.i unwind label %bb.j, !noalias !1114

bb.i:                                             ; preds = %.noexc105
  %i.bu = load ptr, ptr %29, align 8, !tbaa !350, !noalias !1114 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i: ; preds = %bb.i
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !352, !noalias !1114
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !1114
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(88) %i.bu) #28, !noalias !1114, !inline_history !1117
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i, %bb.i
  %i.by = load ptr, ptr %28, align 8, !tbaa !350, !noalias !1114 ; 3 uses
  %.not.i5.i = icmp eq ptr %i.by, null
  br i1 %.not.i5.i, label %bb.k, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !352, !noalias !1114
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !1114
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(88) %i.by) #28, !noalias !1114, !inline_history !1117
  br label %bb.k

bb.j:                                             ; preds = %.noexc105
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %29, align 8, !tbaa !350, !noalias !1114 ; 3 uses
  %.not.i8.i = icmp eq ptr %i.cd, null
  br i1 %.not.i8.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i: ; preds = %bb.j
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !352, !noalias !1114
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !1114
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(88) %i.cd) #28, !noalias !1114, !inline_history !1117
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i, %bb.j
  %i.ch = load ptr, ptr %28, align 8, !tbaa !350, !noalias !1114 ; 3 uses
  %.not.i11.i = icmp eq ptr %i.ch, null
  br i1 %.not.i11.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !352, !noalias !1114
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !1114
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(88) %i.ch) #28, !noalias !1114, !inline_history !1117
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #27, !noalias !1114
  br label %.body106

bb.k:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  %i.cl = load ptr, ptr %31, align 8, !tbaa !1112 ; 4 uses
  %.not.i = icmp eq ptr %i.cl, null
  br i1 %.not.i, label %.noexc.i556, label %_ZNK6duckdb10unique_ptrINS_26BoundConjunctionExpressionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !51

.noexc.i556:                                      ; preds = %bb.k
  %i.cm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  %i.cn = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  store ptr %i.cn, ptr %27, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #28
  store i64 49, ptr %i.g, align 8, !tbaa !19
  %i.co = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc557 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

.noexc557:                                        ; preds = %.noexc.i556
  store ptr %i.co, ptr %27, align 8, !tbaa !25
  %i.cp = load i64, ptr %i.g, align 8, !tbaa !19  ; 3 uses
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.co, ptr noundef nonnull align 1 dereferenceable(49) @.str.33, i64 49, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cp
  store i8 0, ptr %i.cr, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc557
  invoke void @__cxa_throw(ptr nonnull %i.cm, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.o unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i556
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %.noexc557
  %.0.i.i = phi i1 [ false, %bb.l ], [ true, %.noexc557 ] ; 2 uses
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cu = load ptr, ptr %27, align 8, !tbaa !25   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.cn
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  call void @_ZdlPv(ptr noundef %i.cu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br i1 %.0.i.i, label %bb.n, label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  br i1 %.0.i.i, label %bb.n, label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i120

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.cm) #28
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i120

bb.o:                                             ; preds = %bb.l
  unreachable

_ZNK6duckdb10unique_ptrINS_26BoundConjunctionExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 88 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 96 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !373 ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 104 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !902
  %.not.i.i110 = icmp eq ptr %i.cy, %i.da
  br i1 %.not.i.i110, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_26BoundConjunctionExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.db = ptrtoint ptr %i.bo to i64
  store i64 %i.db, ptr %i.cy, align 8, !tbaa !350
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.dc, ptr %i.cx, align 8, !tbaa !373
  br label %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit

bb.q:                                             ; preds = %_ZNK6duckdb10unique_ptrINS_26BoundConjunctionExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !372 ; 10 uses
  %i.de = ptrtoint ptr %i.cy to i64               ; 3 uses
  %i.df = ptrtoint ptr %i.dd to i64               ; 3 uses
  %i.dg = sub i64 %i.de, %i.df                    ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.r, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc112 unwind label %.body108.loopexit.split-lp

.noexc112:                                        ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.di = ashr exact i64 %i.dg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 1152921504606846975)
  %i.dm = select i1 %i.dk, i64 1152921504606846975, i64 %i.dl ; 3 uses
  %.not.i.i.i.i111 = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i111)
  %i.dn = shl nuw nsw i64 %i.dm, 3
  %i.do = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #30
          to label %.noexc113 unwind label %.body108.loopexit ; 10 uses

.noexc113:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  %i.dq = ptrtoint ptr %i.bo to i64
  store i64 %i.dq, ptr %i.dp, align 8, !tbaa !350
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dd, %i.cy
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc113
  %43 = sub i64 %i.de, %i.df
  %44 = add i64 %43, -8                           ; 2 uses
  %i.dr = lshr i64 %44, 3
  %i.ds = add nuw nsw i64 %i.dr, 1                ; 2 uses
  %min.iters.check1770 = icmp ult i64 %44, 56
  br i1 %min.iters.check1770, label %.lr.ph.i.i.i.i.i.i.i.preheader1818, label %vector.memcheck1761

vector.memcheck1761:                              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep1762 = getelementptr i8, ptr %i.do, i64 8
  %i.dt = add i64 %i.de, -8
  %i.du = sub i64 %i.dt, %i.df
  %i.dv = and i64 %i.du, -8                       ; 2 uses
  %scevgep1763 = getelementptr i8, ptr %scevgep1762, i64 %i.dv
  %scevgep1764 = getelementptr i8, ptr %i.dd, i64 8
  %scevgep1765 = getelementptr i8, ptr %scevgep1764, i64 %i.dv
  %bound01766 = icmp ult ptr %i.do, %scevgep1765
  %bound11767 = icmp ult ptr %i.dd, %scevgep1763
  %found.conflict1768 = and i1 %bound01766, %bound11767
  br i1 %found.conflict1768, label %.lr.ph.i.i.i.i.i.i.i.preheader1818, label %vector.ph1771

vector.ph1771:                                    ; preds = %vector.memcheck1761
  %n.vec1773 = and i64 %i.ds, 4611686018427387900 ; 3 uses
  %i.dw = shl i64 %n.vec1773, 3                   ; 2 uses
  %i.dx = getelementptr i8, ptr %i.do, i64 %i.dw  ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dd, i64 %i.dw
  br label %vector.body1774

vector.body1774:                                  ; preds = %vector.body1774, %vector.ph1771
  %index1775 = phi i64 [ 0, %vector.ph1771 ], [ %index.next1780, %vector.body1774 ] ; 2 uses
  %i.dz = shl i64 %index1775, 3                   ; 2 uses
  %next.gep1776 = getelementptr i8, ptr %i.do, i64 %i.dz ; 2 uses
  %next.gep1777 = getelementptr i8, ptr %i.dd, i64 %i.dz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.ea = getelementptr i8, ptr %next.gep1777, i64 16
  %wide.load1778 = load <2 x i64>, ptr %next.gep1777, align 8, !tbaa !350, !alias.scope !1123, !noalias !1118
  %wide.load1779 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !350, !alias.scope !1123, !noalias !1118
  %i.eb = getelementptr i8, ptr %next.gep1776, i64 16
  store <2 x i64> %wide.load1778, ptr %next.gep1776, align 8, !tbaa !350, !alias.scope !1126, !noalias !1123
  store <2 x i64> %wide.load1779, ptr %i.eb, align 8, !tbaa !350, !alias.scope !1126, !noalias !1123
  %i.ec = getelementptr i8, ptr %next.gep1777, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1777, align 8, !tbaa !350, !alias.scope !1123, !noalias !1118
  store <2 x ptr> splat (ptr null), ptr %i.ec, align 8, !tbaa !350, !alias.scope !1123, !noalias !1118
  %index.next1780 = add nuw i64 %index1775, 4     ; 2 uses
  %i.ed = icmp eq i64 %index.next1780, %n.vec1773
  br i1 %i.ed, label %middle.block1781, label %vector.body1774, !llvm.loop !1128

middle.block1781:                                 ; preds = %vector.body1774
  %cmp.n1782 = icmp eq i64 %i.ds, %n.vec1773
  br i1 %cmp.n1782, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1818

.lr.ph.i.i.i.i.i.i.i.preheader1818:               ; preds = %vector.memcheck1761, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block1781
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.do, %vector.memcheck1761 ], [ %i.do, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dx, %middle.block1781 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dd, %vector.memcheck1761 ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.dy, %middle.block1781 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1818, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1818 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1818 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  %i.ee = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !350, !alias.scope !1121, !noalias !1118
  store i64 %i.ee, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !350, !alias.scope !1118, !noalias !1121
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !350, !alias.scope !1121, !noalias !1118
  %i.ef = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ef, %i.cy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1129

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block1781, %.noexc113
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.do, %.noexc113 ], [ %i.dx, %middle.block1781 ], [ %i.eg, %.lr.ph.i.i.i.i.i.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dd) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.do, ptr %i.cw, align 8, !tbaa !372
  store ptr %i.eh, ptr %i.cx, align 8, !tbaa !373
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.ei, ptr %i.cz, align 8, !tbaa !902
  br label %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.p
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0858.01075, i64 24 ; 2 uses
  %.not914 = icmp eq ptr %i.ej, %i.bl
  br i1 %.not914, label %._crit_edge, label %.lr.ph1076

bb.t:                                             ; preds = %.lr.ph1076
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body106

.body108.loopexit:                                ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit965 = landingpad { ptr, i32 }
          cleanup
  br label %.body108

.body108.loopexit.split-lp:                       ; preds = %bb.r
  %lpad.loopexit.split-lp966 = landingpad { ptr, i32 }
          cleanup
  br label %.body108

.body108:                                         ; preds = %.body108.loopexit.split-lp, %.body108.loopexit
  %lpad.phi967 = phi { ptr, i32 } [ %lpad.loopexit965, %.body108.loopexit ], [ %lpad.loopexit.split-lp966, %.body108.loopexit.split-lp ]
  %i.el = load ptr, ptr %i.bo, align 8, !tbaa !352
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(88) %i.bo) #28, !inline_history !497
  br label %.body106

_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i120: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.n
  %.pn98.ph = phi { ptr, i32 } [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn9.i.i, %bb.n ], [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  %i.eo = load ptr, ptr %i.bo, align 8, !tbaa !352
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(104) %i.bo) #28, !inline_history !1130
  br label %.body106

bb.u:                                             ; preds = %._crit_edge
  %i.er = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !899 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !899 ; 2 uses
  %.not9151077 = icmp eq ptr %i.es, %i.eu
  br i1 %.not9151077, label %._crit_edge1081, label %.lr.ph1080

._crit_edge1081:                                  ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit291, %bb.u
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.fd unwind label %bb.fo

bb.v:                                             ; preds = %._crit_edge
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body130

.lr.ph1080:                                       ; preds = %bb.u, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit291
  %.sroa.0848.01078 = phi ptr [ %i.abm, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit291 ], [ %i.es, %bb.u ] ; 2 uses
  %i.ew = load ptr, ptr %.sroa.0848.01078, align 8, !tbaa !350 ; 4 uses
  %.not.i123 = icmp eq ptr %i.ew, null
  br i1 %.not.i123, label %.noexc.i559, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !51

.noexc.i559:                                      ; preds = %.lr.ph1080
  %i.ex = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  %i.ey = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  store ptr %i.ey, ptr %26, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i64 49, ptr %i.f, align 8, !tbaa !19
  %i.ez = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc560 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i124 ; 3 uses

.noexc560:                                        ; preds = %.noexc.i559
  store ptr %i.ez, ptr %26, align 8, !tbaa !25
  %i.fa = load i64, ptr %i.f, align 8, !tbaa !19  ; 3 uses
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ez, ptr noundef nonnull align 1 dereferenceable(49) @.str.33, i64 49, i1 false)
  %i.fb = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.fa, ptr %i.fb, align 8, !tbaa !14
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.fa
  store i8 0, ptr %i.fc, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.noexc560
  invoke void @__cxa_throw(ptr nonnull %i.ex, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.z unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i124: ; preds = %.noexc.i559
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %.noexc560
  %.0.i.i127 = phi i1 [ false, %bb.w ], [ true, %.noexc560 ] ; 2 uses
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ff = load ptr, ptr %26, align 8, !tbaa !25   ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.ey
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.ff) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br i1 %.0.i.i127, label %bb.y, label %.body130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i129: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br i1 %.0.i.i127, label %bb.y, label %.body130

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i124
  %.pn9.i.i125 = phi { ptr, i32 } [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i124 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i129 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128 ]
  call void @__cxa_free_exception(ptr %i.ex) #28
  br label %.body130

bb.z:                                             ; preds = %bb.w
  unreachable
end_hunk_10
begin_hunk_11_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
  %.not.i.i267 = icmp eq ptr %i.aau, null
  br i1 %.not.i.i267, label %bb.ey, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i268

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i268: ; preds = %bb.ew
  call void @_ZdaPv(ptr noundef nonnull %i.aau) #27
  br label %bb.ey

bb.ex:                                            ; preds = %.loopexit.i262
  %i.aav = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aaw = load ptr, ptr %16, align 8, !tbaa !68  ; 2 uses
  %.not.i51.i264 = icmp eq ptr %i.aaw, null
  br i1 %.not.i51.i264, label %.body142, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i265

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i265: ; preds = %bb.ex
  call void @_ZdaPv(ptr noundef nonnull %i.aaw) #27
  br label %.body142

bb.ey:                                            ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i268, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  br label %bb.fa

bb.ez:                                            ; preds = %_ZN6duckdb12optional_ptrINS_15JoinRelationSetELb1EEdeEv.exit249, %bb.dr
  %i.aax = landingpad { ptr, i32 }
          cleanup
  br label %.body142

bb.fa:                                            ; preds = %bb.ey, %bb.do
  %storemerge918.in = phi ptr [ %i.tm, %bb.do ], [ %i.aat, %bb.ey ]
  %storemerge918 = ptrtoint ptr %storemerge918.in to i64
  store i64 %storemerge918, ptr %33, align 8, !tbaa !132
  %i.aay = load ptr, ptr %i.af, align 8, !tbaa !167 ; 2 uses
  %.not5.i.i.i.i282 = icmp eq ptr %i.aay, null
  br i1 %.not5.i.i.i.i282, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i283

.lr.ph.i.i.i.i283:                                ; preds = %bb.fa, %.lr.ph.i.i.i.i283
  %.06.i.i.i.i284 = phi ptr [ %i.aaz, %.lr.ph.i.i.i.i283 ], [ %i.aay, %bb.fa ] ; 2 uses
  %i.aaz = load ptr, ptr %.06.i.i.i.i284, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i284) #27
  %.not.i.i.i.i285 = icmp eq ptr %i.aaz, null
  br i1 %.not.i.i.i.i285, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i283, !llvm.loop !168

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i283, %bb.fa
  %i.aba = load ptr, ptr %36, align 8, !tbaa !162
  %i.abb = load i64, ptr %i.ae, align 8, !tbaa !164
  %i.abc = shl i64 %i.abb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.aba, i8 0, i64 %i.abc, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.abd = load ptr, ptr %36, align 8, !tbaa !162 ; 2 uses
  %i.abe = icmp eq ptr %i.abd, %i.ad
  br i1 %i.abe, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.abd) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  %i.abf = load ptr, ptr %i.aa, align 8, !tbaa !167 ; 2 uses
  %.not5.i.i.i.i286 = icmp eq ptr %i.abf, null
  br i1 %.not5.i.i.i.i286, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i290, label %.lr.ph.i.i.i.i287

.lr.ph.i.i.i.i287:                                ; preds = %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, %.lr.ph.i.i.i.i287
  %.06.i.i.i.i288 = phi ptr [ %i.abg, %.lr.ph.i.i.i.i287 ], [ %i.abf, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit ] ; 2 uses
  %i.abg = load ptr, ptr %.06.i.i.i.i288, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i288) #27
  %.not.i.i.i.i289 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i.i.i289, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i290, label %.lr.ph.i.i.i.i287, !llvm.loop !168

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i290: ; preds = %.lr.ph.i.i.i.i287, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %i.abh = load ptr, ptr %35, align 8, !tbaa !162
  %i.abi = load i64, ptr %i.z, align 8, !tbaa !164
  %i.abj = shl i64 %i.abi, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.abh, i8 0, i64 %i.abj, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.abk = load ptr, ptr %35, align 8, !tbaa !162 ; 2 uses
  %i.abl = icmp eq ptr %i.abk, %i.y
  br i1 %i.abl, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit291, label %bb.fc

bb.fc:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i290
  call void @_ZdlPv(ptr noundef %i.abk) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit291

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit291: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i290, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  %i.abm = getelementptr inbounds nuw i8, ptr %.sroa.0848.01078, i64 8 ; 2 uses
  %.not915 = icmp eq ptr %i.abm, %i.eu
  br i1 %.not915, label %._crit_edge1081, label %.lr.ph1080

.body142:                                         ; preds = %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i233, %bb.eh, %bb.ez, %bb.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i705, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i704, %bb.ex, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i265, %bb.dp, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i206, %bb.dn, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i171, %bb.cc, %bb.cu, %bb.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i618, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i617, %bb.cs, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i, %bb.bk, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i, %bb.bh, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i150, %bb.an, %bb.bj
  %.pn93 = phi { ptr, i32 } [ %.pn35.ph.i208, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i206 ], [ %i.mn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i617 ], [ %.pn35.ph.i, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i ], [ %i.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i149 ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i140 ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i141 ], [ %.pn9.i.i137, %bb.ai ], [ %i.jm, %bb.bj ], [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i150 ], [ %.pn9.i.i146, %bb.an ], [ %i.jn, %bb.bk ], [ %i.jj, %bb.bh ], [ %.pn35.ph.i173, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i171 ], [ %i.mh, %bb.cc ], [ %i.qr, %bb.cs ], [ %i.qr, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i ], [ %i.qt, %bb.cu ], [ %i.mn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i618 ], [ %.pn9.i614, %bb.ci ], [ %i.tr, %bb.dp ], [ %i.to, %bb.dn ], [ %.pn35.ph.i235, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i233 ], [ %i.wl, %bb.eh ], [ %i.aav, %bb.ex ], [ %i.aav, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i52.i265 ], [ %i.aax, %bb.ez ], [ %i.wr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i705 ], [ %.pn9.i701, %bb.en ], [ %i.wr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i704 ]
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %.body130

bb.fd:                                            ; preds = %._crit_edge1081
  %i.abn = load ptr, ptr %32, align 8, !tbaa !36
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.fe unwind label %bb.fo

bb.fe:                                            ; preds = %bb.fd
  %i.abo = load ptr, ptr %33, align 8, !tbaa !36
  %i.abp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager5UnionERNS_15JoinRelationSetES2_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.abn, ptr noundef nonnull align 8 dereferenceable(16) %i.abo)
          to label %bb.ff unwind label %bb.fo

bb.ff:                                            ; preds = %bb.fe
  %i.abq = ptrtoint ptr %i.abp to i64
  store i64 %i.abq, ptr %34, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.fg unwind label %bb.fp

bb.fg:                                            ; preds = %bb.ff
  %i.abr = load ptr, ptr %34, align 8, !tbaa !36
  %i.abs = load ptr, ptr %i.w, align 8, !tbaa !349 ; 6 uses
  %i.abt = load ptr, ptr %0, align 8, !tbaa !348  ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  %i.abu = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30
          to label %bb.fh unwind label %bb.fq     ; 7 uses

bb.fh:                                            ; preds = %bb.fg
  %i.abv = ptrtoint ptr %i.abs to i64             ; 3 uses
  %i.abw = ptrtoint ptr %i.abt to i64             ; 3 uses
  %i.abx = sub i64 %i.abv, %i.abw                 ; 3 uses
  %i.aby = ashr exact i64 %i.abx, 3               ; 4 uses
  %i.abz = load ptr, ptr %31, align 8, !tbaa !1112, !noalias !1162
  store ptr null, ptr %31, align 8, !tbaa !1112, !noalias !1162
  %i.aca = load i8, ptr %i.be, align 1, !tbaa !1165, !noalias !1162
  %i.acb = ptrtoint ptr %i.abz to i64
  store i64 %i.acb, ptr %i.abu, align 8, !tbaa !350, !noalias !1162
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  store ptr %i.abr, ptr %i.acc, align 8, !tbaa !456, !noalias !1162
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  store i64 %i.aby, ptr %i.acd, align 8, !tbaa !1166, !noalias !1162
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abu, i64 24
  store i8 %i.aca, ptr %i.ace, align 8, !tbaa !562, !noalias !1162
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abu, i64 32
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abu, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acf, i8 0, i64 16, i1 false), !noalias !1162
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.acg, i8 -1, i64 32, i1 false), !noalias !1162
  store ptr %i.abu, ptr %37, align 8, !tbaa !117, !alias.scope !1162
  %i.ach = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10FilterInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.fi unwind label %.loopexit972

bb.fi:                                            ; preds = %bb.fh
  %.sroa.017.0.copyload = load ptr, ptr %32, align 8, !tbaa !132
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 32
  store ptr %.sroa.017.0.copyload, ptr %i.aci, align 8, !tbaa !132
  %i.acj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10FilterInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %bb.fj unwind label %.loopexit972

bb.fj:                                            ; preds = %bb.fi
  %.sroa.016.0.copyload = load ptr, ptr %33, align 8, !tbaa !132
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 40
  store ptr %.sroa.016.0.copyload, ptr %i.ack, align 8, !tbaa !132
  %i.acl = load ptr, ptr %i.x, align 8, !tbaa !446 ; 2 uses
  %.not.i.i298 = icmp eq ptr %i.abs, %i.acl
  br i1 %.not.i.i298, label %bb.fk, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.fj
  %i.acm = load i64, ptr %37, align 8, !tbaa !117
  store i64 %i.acm, ptr %i.abs, align 8, !tbaa !117
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abs, i64 8 ; 2 uses
  store ptr %i.acn, ptr %i.w, align 8, !tbaa !349
  br label %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit

bb.fk:                                            ; preds = %bb.fj
  %i.aco = icmp eq i64 %i.abx, 9223372036854775800
  br i1 %i.aco, label %bb.fl, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc308 unwind label %.loopexit.split-lp973

.noexc308:                                        ; preds = %bb.fl
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fk
  %.sroa.speculated.i.i.i.i299 = call i64 @llvm.umax.i64(i64 %i.aby, i64 1)
  %i.acp = add nsw i64 %.sroa.speculated.i.i.i.i299, %i.aby ; 2 uses
  %i.acq = icmp ult i64 %i.acp, %i.aby
  %i.acr = call i64 @llvm.umin.i64(i64 %i.acp, i64 1152921504606846975)
  %i.acs = select i1 %i.acq, i64 1152921504606846975, i64 %i.acr ; 3 uses
  %.not.i.i.i.i300 = icmp ne i64 %i.acs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i300)
  %i.act = shl nuw nsw i64 %i.acs, 3
  %i.acu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.act) #30
          to label %.noexc309 unwind label %.loopexit972 ; 12 uses

.noexc309:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acu, i64 %i.abx
  %i.acw = load i64, ptr %37, align 8, !tbaa !117
  store i64 %i.acw, ptr %i.acv, align 8, !tbaa !117
  store ptr null, ptr %37, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i.i301 = icmp eq ptr %i.abt, %i.abs
  br i1 %.not10.i.i.i.i.i.i.i301, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i302.preheader

.lr.ph.i.i.i.i.i.i.i302.preheader:                ; preds = %.noexc309
  %45 = sub i64 %i.abv, %i.abw
  %46 = add i64 %45, -8                           ; 2 uses
  %i.acx = lshr i64 %46, 3
  %i.acy = add nuw nsw i64 %i.acx, 1              ; 2 uses
  %min.iters.check1675 = icmp ult i64 %46, 56
  br i1 %min.iters.check1675, label %.lr.ph.i.i.i.i.i.i.i302.preheader1822, label %vector.memcheck1666

vector.memcheck1666:                              ; preds = %.lr.ph.i.i.i.i.i.i.i302.preheader
  %scevgep1667 = getelementptr i8, ptr %i.acu, i64 8
  %i.acz = add i64 %i.abv, -8
  %i.ada = sub i64 %i.acz, %i.abw
  %i.adb = and i64 %i.ada, -8                     ; 2 uses
  %scevgep1668 = getelementptr i8, ptr %scevgep1667, i64 %i.adb
  %scevgep1669 = getelementptr i8, ptr %i.abt, i64 8
  %scevgep1670 = getelementptr i8, ptr %scevgep1669, i64 %i.adb
  %bound01671 = icmp ult ptr %i.acu, %scevgep1670
  %bound11672 = icmp ult ptr %i.abt, %scevgep1668
  %found.conflict1673 = and i1 %bound01671, %bound11672
  br i1 %found.conflict1673, label %.lr.ph.i.i.i.i.i.i.i302.preheader1822, label %vector.ph1676

vector.ph1676:                                    ; preds = %vector.memcheck1666
  %n.vec1678 = and i64 %i.acy, 4611686018427387900 ; 3 uses
  %i.adc = shl i64 %n.vec1678, 3                  ; 2 uses
  %i.add = getelementptr i8, ptr %i.acu, i64 %i.adc ; 2 uses
  %i.ade = getelementptr i8, ptr %i.abt, i64 %i.adc
  br label %vector.body1679

vector.body1679:                                  ; preds = %vector.body1679, %vector.ph1676
  %index1680 = phi i64 [ 0, %vector.ph1676 ], [ %index.next1685, %vector.body1679 ] ; 2 uses
  %i.adf = shl i64 %index1680, 3                  ; 2 uses
  %next.gep1681 = getelementptr i8, ptr %i.acu, i64 %i.adf ; 2 uses
  %next.gep1682 = getelementptr i8, ptr %i.abt, i64 %i.adf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %i.adg = getelementptr i8, ptr %next.gep1682, i64 16
  %wide.load1683 = load <2 x i64>, ptr %next.gep1682, align 8, !tbaa !117, !alias.scope !1172, !noalias !1167
  %wide.load1684 = load <2 x i64>, ptr %i.adg, align 8, !tbaa !117, !alias.scope !1172, !noalias !1167
  %i.adh = getelementptr i8, ptr %next.gep1681, i64 16
  store <2 x i64> %wide.load1683, ptr %next.gep1681, align 8, !tbaa !117, !alias.scope !1175, !noalias !1172
  store <2 x i64> %wide.load1684, ptr %i.adh, align 8, !tbaa !117, !alias.scope !1175, !noalias !1172
  %i.adi = getelementptr i8, ptr %next.gep1682, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1682, align 8, !tbaa !117, !alias.scope !1172, !noalias !1167
  store <2 x ptr> splat (ptr null), ptr %i.adi, align 8, !tbaa !117, !alias.scope !1172, !noalias !1167
  %index.next1685 = add nuw i64 %index1680, 4     ; 2 uses
  %i.adj = icmp eq i64 %index.next1685, %n.vec1678
  br i1 %i.adj, label %middle.block1686, label %vector.body1679, !llvm.loop !1177

middle.block1686:                                 ; preds = %vector.body1679
  %cmp.n1687 = icmp eq i64 %i.acy, %n.vec1678
  br i1 %cmp.n1687, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i302.preheader1822

.lr.ph.i.i.i.i.i.i.i302.preheader1822:            ; preds = %vector.memcheck1666, %.lr.ph.i.i.i.i.i.i.i302.preheader, %middle.block1686
  %.012.i.i.i.i.i.i.i303.ph = phi ptr [ %i.acu, %vector.memcheck1666 ], [ %i.acu, %.lr.ph.i.i.i.i.i.i.i302.preheader ], [ %i.add, %middle.block1686 ]
  %.0911.i.i.i.i.i.i.i304.ph = phi ptr [ %i.abt, %vector.memcheck1666 ], [ %i.abt, %.lr.ph.i.i.i.i.i.i.i302.preheader ], [ %i.ade, %middle.block1686 ]
  br label %.lr.ph.i.i.i.i.i.i.i302

.lr.ph.i.i.i.i.i.i.i302:                          ; preds = %.lr.ph.i.i.i.i.i.i.i302.preheader1822, %.lr.ph.i.i.i.i.i.i.i302
  %.012.i.i.i.i.i.i.i303 = phi ptr [ %i.adm, %.lr.ph.i.i.i.i.i.i.i302 ], [ %.012.i.i.i.i.i.i.i303.ph, %.lr.ph.i.i.i.i.i.i.i302.preheader1822 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i304 = phi ptr [ %i.adl, %.lr.ph.i.i.i.i.i.i.i302 ], [ %.0911.i.i.i.i.i.i.i304.ph, %.lr.ph.i.i.i.i.i.i.i302.preheader1822 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  call void @llvm.experimental.noalias.scope.decl(metadata !1170)
  %i.adk = load i64, ptr %.0911.i.i.i.i.i.i.i304, align 8, !tbaa !117, !alias.scope !1170, !noalias !1167
  store i64 %i.adk, ptr %.012.i.i.i.i.i.i.i303, align 8, !tbaa !117, !alias.scope !1167, !noalias !1170
  store ptr null, ptr %.0911.i.i.i.i.i.i.i304, align 8, !tbaa !117, !alias.scope !1170, !noalias !1167
  %i.adl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i304, i64 8 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i303, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i305 = icmp eq ptr %i.adl, %i.abs
  br i1 %.not.i.i.i.i.i.i.i305, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i302, !llvm.loop !1178

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i302, %middle.block1686, %.noexc309
  %.0.lcssa.i.i.i.i.i.i.i306 = phi ptr [ %i.acu, %.noexc309 ], [ %i.add, %middle.block1686 ], [ %i.adm, %.lr.ph.i.i.i.i.i.i.i302 ]
  %i.adn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i306, i64 8 ; 3 uses
  %.not.i23.i.i.i307 = icmp eq ptr %i.abt, null
  br i1 %.not.i23.i.i.i307, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.abt) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.fm
  store ptr %i.acu, ptr %0, align 8, !tbaa !348
  store ptr %i.adn, ptr %i.w, align 8, !tbaa !349
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %i.acs ; 3 uses
  store ptr %i.ado, ptr %i.x, align 8, !tbaa !446
  %.pr = load ptr, ptr %37, align 8, !tbaa !117   ; 3 uses
  %.not.i310 = icmp eq ptr %.pr, null
  br i1 %.not.i310, label %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit, label %bb.fn

bb.fn:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.adp = load ptr, ptr %.pr, align 8, !tbaa !350 ; 3 uses
  %.not.i.i.i.i311 = icmp eq ptr %i.adp, null
  br i1 %.not.i.i.i.i311, label %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i: ; preds = %bb.fn
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !352
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.ads = load ptr, ptr %i.adr, align 8
  call void %i.ads(ptr noundef nonnull align 8 dereferenceable(88) %i.adp) #28, !inline_history !1179
  br label %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i, %bb.fn
  call void @_ZdlPv(ptr noundef nonnull %.pr) #27
  br label %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i
  %i.adt = phi ptr [ %i.acl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.ado, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.ado, %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i ]
  %i.adu = phi ptr [ %i.abt, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.acu, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.acu, %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i ]
  %i.adv = phi ptr [ %i.acn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread ], [ %i.adn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit ], [ %i.adn, %_ZNKSt14default_deleteIN6duckdb10FilterInfoEEclEPS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.adw = load ptr, ptr %31, align 8, !tbaa !1112 ; 3 uses
  %.not.i312 = icmp eq ptr %i.adw, null
  br i1 %.not.i312, label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !352
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  %i.adz = load ptr, ptr %i.ady, align 8
  call void %i.adz(ptr noundef nonnull align 8 dereferenceable(112) %i.adw) #28, !inline_history !1180
  br label %_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb26BoundConjunctionExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %.loopexit968

bb.fo:                                            ; preds = %bb.fd, %._crit_edge1081, %bb.fe
  %i.aea = landingpad { ptr, i32 }
          cleanup
  br label %.body130

bb.fp:                                            ; preds = %bb.ff
  %i.aeb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fq:                                            ; preds = %bb.fg
  %i.aec = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

.loopexit972:                                     ; preds = %bb.fh, %bb.fi, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit974 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

.loopexit.split-lp973:                            ; preds = %bb.fl
  %lpad.loopexit.split-lp975 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fr:                                            ; preds = %.loopexit.split-lp973, %.loopexit972
  %lpad.phi976 = phi { ptr, i32 } [ %lpad.loopexit974, %.loopexit972 ], [ %lpad.loopexit.split-lp975, %.loopexit.split-lp973 ]
  call void @_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %37) #28
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp
  %.pn91 = phi { ptr, i32 } [ %lpad.phi976, %bb.fr ], [ %i.aec, %bb.fq ], [ %i.aeb, %bb.fp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  br label %.body130

.body130:                                         ; preds = %.body142, %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i129, %bb.y, %bb.v, %bb.fs, %bb.fo
  %.pn93.pn.pn.pn = phi { ptr, i32 } [ %i.aea, %bb.fo ], [ %.pn91, %bb.fs ], [ %i.ev, %bb.v ], [ %.pn93, %.body142 ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128 ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i129 ], [ %.pn9.i.i125, %bb.y ], [ %i.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.fl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %.body106

.body106:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i, %bb.t, %.body108, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i120, %.body130
  %.pn98.pn.pn = phi { ptr, i32 } [ %.pn93.pn.pn.pn, %.body130 ], [ %i.cc, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i ], [ %i.ek, %bb.t ], [ %lpad.phi967, %.body108 ], [ %.pn98.ph, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i120 ] ; 2 uses
  %i.aed = load ptr, ptr %31, align 8, !tbaa !1112 ; 3 uses
  %.not.i313 = icmp eq ptr %i.aed, null
  br i1 %.not.i313, label %.body, label %_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i314

_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i314: ; preds = %.body106
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !352
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aeg = load ptr, ptr %i.aef, align 8
  call void %i.aeg(ptr noundef nonnull align 8 dereferenceable(112) %i.aed) #28, !inline_history !1180
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i314, %.body106, %bb.h, %bb.f
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.f ], [ %i.bn, %bb.h ], [ %.pn98.pn.pn, %.body106 ], [ %.pn98.pn.pn, %_ZNKSt14default_deleteIN6duckdb26BoundConjunctionExpressionEEclEPS1_.exit.i314 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  br label %.body328

bb.ft:                                            ; preds = %bb.d
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.bb, i64 184
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !821 ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.bb, i64 192
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !821 ; 2 uses
  %.not9131072 = icmp eq ptr %i.aei, %i.aek
  br i1 %.not9131072, label %.loopexit968, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ft, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424
  %i.ael = phi ptr [ %i.ang, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424 ], [ %i.ay, %bb.ft ]
  %i.aem = phi ptr [ %i.anh, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424 ], [ %i.az, %bb.ft ]
  %i.aen = phi ptr [ %i.ani, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424 ], [ %i.ba, %bb.ft ]
  %.sroa.0838.01073 = phi ptr [ %i.anj, %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424 ], [ %i.aei, %bb.ft ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
end_hunk_11
begin_hunk_12_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
  store i64 %i.ajk, ptr %.09.lcssa.i.i.i758, align 8, !tbaa !19
  %i.ajq = getelementptr inbounds nuw i8, ptr %.06.i.i755, i64 8 ; 3 uses
  %i.ajr = load i64, ptr %i.ajq, align 8, !tbaa !19 ; 3 uses
  %i.ajs = load i64, ptr %.06.i.i755, align 8, !tbaa !19 ; 2 uses
  %i.ajt = icmp ult i64 %i.ajr, %i.ajs
  br i1 %i.ajt, label %.lr.ph.i.i9.i760.1, label %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i757.1

.lr.ph.i.i9.i760.1:                               ; preds = %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i757, %.lr.ph.i.i9.i760.1
  %i.aju = phi i64 [ %i.ajv, %.lr.ph.i.i9.i760.1 ], [ %i.ajs, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i757 ]
  %.013.i.i10.i761.1 = phi ptr [ %.0.i.i12.i763.1, %.lr.ph.i.i9.i760.1 ], [ %.06.i.i755, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i757 ] ; 3 uses
  %.0912.i.i11.i762.1 = phi ptr [ %.013.i.i10.i761.1, %.lr.ph.i.i9.i760.1 ], [ %i.ajq, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i757 ]
  store i64 %i.aju, ptr %.0912.i.i11.i762.1, align 8, !tbaa !19
  %.0.i.i12.i763.1 = getelementptr inbounds i8, ptr %.013.i.i10.i761.1, i64 -8 ; 2 uses
  %i.ajv = load i64, ptr %.0.i.i12.i763.1, align 8, !tbaa !19 ; 2 uses
  %i.ajw = icmp ult i64 %i.ajr, %i.ajv
  br i1 %i.ajw, label %.lr.ph.i.i9.i760.1, label %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i757.1, !llvm.loop !1134

_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i757.1: ; preds = %.lr.ph.i.i9.i760.1, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i757
  %.09.lcssa.i.i.i758.1 = phi ptr [ %i.ajq, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i757 ], [ %.013.i.i10.i761.1, %.lr.ph.i.i9.i760.1 ]
  store i64 %i.ajr, ptr %.09.lcssa.i.i.i758.1, align 8, !tbaa !19
  %i.ajx = getelementptr inbounds nuw i8, ptr %.06.i.i755, i64 16 ; 2 uses
  %.not.i8.i759.1 = icmp eq ptr %i.ajx, %i.aij
  br i1 %.not.i8.i759.1, label %_ZSt4sortIPmEvT_S1_.exit.i384, label %.lr.ph.i.i754, !llvm.loop !1136

bb.gr:                                            ; preds = %.noexc.i383
  %.not17.i.i731 = icmp eq i64 %.01238.i371, 0
  br i1 %.not17.i.i731, label %_ZSt4sortIPmEvT_S1_.exit.i384, label %.lr.ph.i14.i733.preheader

.lr.ph.i14.i733.preheader:                        ; preds = %bb.gr
  %.016.i13.i730 = getelementptr inbounds nuw i8, ptr %.sroa.027.0.i366, i64 8
  br label %.lr.ph.i14.i733

.lr.ph.i14.i733:                                  ; preds = %.lr.ph.i14.i733.preheader, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17.i736
  %.019.i15.i734 = phi ptr [ %.0.i19.i738, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17.i736 ], [ %.016.i13.i730, %.lr.ph.i14.i733.preheader ] ; 6 uses
  %.pn18.i16.i735 = phi ptr [ %.019.i15.i734, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17.i736 ], [ %.sroa.027.0.i366, %.lr.ph.i14.i733.preheader ] ; 4 uses
  %i.ajy = load i64, ptr %.019.i15.i734, align 8, !tbaa !19 ; 4 uses
  %i.ajz = load i64, ptr %.sroa.027.0.i366, align 8, !tbaa !19 ; 2 uses
  %i.aka = icmp ult i64 %i.ajy, %i.ajz
  br i1 %i.aka, label %bb.gs, label %bb.gw

bb.gs:                                            ; preds = %.lr.ph.i14.i733
  %i.akb = ptrtoint ptr %.019.i15.i734 to i64
  %i.akc = sub i64 %i.akb, %i.ain                 ; 3 uses
  %i.akd = ashr exact i64 %i.akc, 3               ; 2 uses
  %i.ake = icmp sgt i64 %i.akd, 1
  br i1 %i.ake, label %bb.gt, label %bb.gu, !prof !153

bb.gt:                                            ; preds = %bb.gs
  %i.akf = getelementptr inbounds nuw i8, ptr %.pn18.i16.i735, i64 16
  %i.akg = sub nsw i64 0, %i.akd
  %i.akh = getelementptr inbounds [8 x i8], ptr %i.akf, i64 %i.akg
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.akh, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.027.0.i366, i64 %i.akc, i1 false)
  br label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17.i736

bb.gu:                                            ; preds = %bb.gs
  %i.aki = icmp eq i64 %i.akc, 8
  br i1 %i.aki, label %bb.gv, label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17.i736

bb.gv:                                            ; preds = %bb.gu
  %i.akj = getelementptr inbounds nuw i8, ptr %.pn18.i16.i735, i64 8
  store i64 %i.ajz, ptr %i.akj, align 8, !tbaa !19
  br label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17.i736

bb.gw:                                            ; preds = %.lr.ph.i14.i733
  %i.akk = load i64, ptr %.pn18.i16.i735, align 8, !tbaa !19 ; 2 uses
  %i.akl = icmp ult i64 %i.ajy, %i.akk
  br i1 %i.akl, label %.lr.ph.i.i21.i740, label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17.i736

.lr.ph.i.i21.i740:                                ; preds = %bb.gw, %.lr.ph.i.i21.i740
  %i.akm = phi i64 [ %i.akn, %.lr.ph.i.i21.i740 ], [ %i.akk, %bb.gw ]
  %.013.i.i22.i741 = phi ptr [ %.0.i.i24.i743, %.lr.ph.i.i21.i740 ], [ %.pn18.i16.i735, %bb.gw ] ; 3 uses
  %.0912.i.i23.i742 = phi ptr [ %.013.i.i22.i741, %.lr.ph.i.i21.i740 ], [ %.019.i15.i734, %bb.gw ]
  store i64 %i.akm, ptr %.0912.i.i23.i742, align 8, !tbaa !19
  %.0.i.i24.i743 = getelementptr inbounds i8, ptr %.013.i.i22.i741, i64 -8 ; 2 uses
  %i.akn = load i64, ptr %.0.i.i24.i743, align 8, !tbaa !19 ; 2 uses
  %i.ako = icmp ult i64 %i.ajy, %i.akn
  br i1 %i.ako, label %.lr.ph.i.i21.i740, label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17.i736, !llvm.loop !1134

_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17.i736: ; preds = %.lr.ph.i.i21.i740, %bb.gw, %bb.gv, %bb.gu, %bb.gt
  %.sink.i18.i737 = phi ptr [ %.sroa.027.0.i366, %bb.gv ], [ %.sroa.027.0.i366, %bb.gt ], [ %.sroa.027.0.i366, %bb.gu ], [ %.019.i15.i734, %bb.gw ], [ %.013.i.i22.i741, %.lr.ph.i.i21.i740 ]
  store i64 %i.ajy, ptr %.sink.i18.i737, align 8, !tbaa !19
  %.0.i19.i738 = getelementptr inbounds nuw i8, ptr %.019.i15.i734, i64 8 ; 2 uses
  %.not.i20.i739 = icmp eq ptr %.0.i19.i738, %i.aij
  br i1 %.not.i20.i739, label %_ZSt4sortIPmEvT_S1_.exit.i384, label %.lr.ph.i14.i733, !llvm.loop !1135

.lr.ph.i369:                                      ; preds = %bb.gj, %.lr.ph.i369
  %.sroa.024.039.i370 = phi ptr [ %.sroa.024.0.i372, %.lr.ph.i369 ], [ %.sroa.024.036.i367, %bb.gj ] ; 2 uses
  %.01238.i371 = phi i64 [ %i.akr, %.lr.ph.i369 ], [ 0, %bb.gj ] ; 5 uses
  %i.akp = getelementptr inbounds nuw i8, ptr %.sroa.024.039.i370, i64 8
  %i.akq = load i64, ptr %i.akp, align 8, !tbaa !19
  %i.akr = add i64 %.01238.i371, 1                ; 8 uses
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %.sroa.027.0.i366, i64 %.01238.i371
  store i64 %i.akq, ptr %i.aks, align 8, !tbaa !19
  %.sroa.024.0.i372 = load ptr, ptr %.sroa.024.039.i370, align 8, !tbaa !33 ; 2 uses
  %.not.i373 = icmp eq ptr %.sroa.024.0.i372, null
  br i1 %.not.i373, label %._crit_edge.i374, label %.lr.ph.i369

_ZSt4sortIPmEvT_S1_.exit.i384:                    ; preds = %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17.i736, %.lr.ph.i.i754.prol.loopexit, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i757.1, %bb.gr, %._crit_edge.i374, %bb.gj
  %.012.lcssa45.i385 = phi i64 [ 0, %bb.gj ], [ 0, %._crit_edge.i374 ], [ %i.akr, %.lr.ph.i.i754.prol.loopexit ], [ 1, %bb.gr ], [ %i.akr, %_ZSt25__unguarded_linear_insertIPmN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i.i757.1 ], [ %i.akr, %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit.i17.i736 ]
  %i.akt = ptrtoint ptr %.sroa.027.0.i366 to i64
  store i64 %i.akt, ptr %13, align 8, !tbaa !68
  %i.aku = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %13, i64 noundef %.012.lcssa45.i385)
          to label %bb.gx unwind label %bb.gy

bb.gx:                                            ; preds = %_ZSt4sortIPmEvT_S1_.exit.i384
  %i.akv = load ptr, ptr %13, align 8, !tbaa !68  ; 2 uses
  %.not.i.i387 = icmp eq ptr %i.akv, null
  br i1 %.not.i.i387, label %bb.gz, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i388

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i388: ; preds = %bb.gx
  call void @_ZdaPv(ptr noundef nonnull %i.akv) #27
  br label %bb.gz

bb.gy:                                            ; preds = %_ZSt4sortIPmEvT_S1_.exit.i384
  %i.akw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akx = load ptr, ptr %13, align 8, !tbaa !68  ; 2 uses
  %.not.i18.i386 = icmp eq ptr %i.akx, null
  br i1 %.not.i18.i386, label %.body352.thread900, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i378

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i377: ; preds = %bb.gk
  %i.aky = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i378

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i378: ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i377, %bb.gy
  %.sink.i379 = phi ptr [ %.sroa.027.0.i366, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i377 ], [ %i.akx, %bb.gy ]
  %.pn35.ph.i380 = phi { ptr, i32 } [ %i.aky, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i377 ], [ %i.akw, %bb.gy ]
  call void @_ZdaPv(ptr noundef nonnull %.sink.i379) #27
  br label %.body352.thread900

bb.gz:                                            ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i388, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  %i.akz = load ptr, ptr %i.w, align 8, !tbaa !349 ; 6 uses
  %i.ala = load ptr, ptr %0, align 8, !tbaa !348  ; 11 uses
  %i.alb = ptrtoint ptr %i.akz to i64             ; 3 uses
  %i.alc = ptrtoint ptr %i.ala to i64             ; 3 uses
  %i.ald = sub i64 %i.alb, %i.alc                 ; 3 uses
  %i.ale = ashr exact i64 %i.ald, 3               ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.alf = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #30
          to label %bb.ha unwind label %.body352  ; 8 uses

bb.ha:                                            ; preds = %bb.gz
  %i.alg = load i8, ptr %i.be, align 1, !tbaa !1165, !noalias !1196
  %i.alh = ptrtoint ptr %i.aeo to i64
  store i64 %i.alh, ptr %i.alf, align 8, !tbaa !350, !noalias !1196
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alf, i64 8
  store ptr %i.aku, ptr %i.ali, align 8, !tbaa !456, !noalias !1196
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  store i64 %i.ale, ptr %i.alj, align 8, !tbaa !1166, !noalias !1196
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alf, i64 24
  store i8 %i.alg, ptr %i.alk, align 8, !tbaa !562, !noalias !1196
  %i.all = getelementptr inbounds nuw i8, ptr %i.alf, i64 32
  %i.alm = getelementptr inbounds nuw i8, ptr %i.alf, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.all, i8 0, i64 16, i1 false), !noalias !1196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.alm, i8 -1, i64 32, i1 false), !noalias !1196
  store ptr %i.alf, ptr %39, align 8, !tbaa !117, !alias.scope !1196
  %i.aln = load ptr, ptr %i.x, align 8, !tbaa !446 ; 2 uses
  %.not.i.i395 = icmp eq ptr %i.akz, %i.aln
  %i.alo = ptrtoint ptr %i.alf to i64             ; 2 uses
  br i1 %.not.i.i395, label %bb.hb, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410.thread: ; preds = %bb.ha
  store i64 %i.alo, ptr %i.akz, align 8, !tbaa !117
  %i.alp = getelementptr inbounds nuw i8, ptr %i.akz, i64 8 ; 2 uses
  store ptr %i.alp, ptr %i.w, align 8, !tbaa !349
  br label %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit415

bb.hb:                                            ; preds = %bb.ha
  %i.alq = icmp eq i64 %i.ald, 9223372036854775800
  br i1 %i.alq, label %bb.hc, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i396

bb.hc:                                            ; preds = %bb.hb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc408 unwind label %.body352.thread904.loopexit.split-lp

.noexc408:                                        ; preds = %bb.hc
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i396: ; preds = %bb.hb
  %.sroa.speculated.i.i.i.i397 = call i64 @llvm.umax.i64(i64 %i.ale, i64 1)
  %i.alr = add nsw i64 %.sroa.speculated.i.i.i.i397, %i.ale ; 2 uses
  %i.als = icmp ult i64 %i.alr, %i.ale
  %i.alt = call i64 @llvm.umin.i64(i64 %i.alr, i64 1152921504606846975)
  %i.alu = select i1 %i.als, i64 1152921504606846975, i64 %i.alt ; 3 uses
  %.not.i.i.i.i398 = icmp ne i64 %i.alu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i398)
  %i.alv = shl nuw nsw i64 %i.alu, 3
  %i.alw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alv) #30
          to label %.noexc409 unwind label %.body352.thread904.loopexit ; 11 uses

.noexc409:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i396
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 %i.ald
  store i64 %i.alo, ptr %i.alx, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i.i399 = icmp eq ptr %i.ala, %i.akz
  br i1 %.not10.i.i.i.i.i.i.i399, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i404, label %.lr.ph.i.i.i.i.i.i.i400.preheader

.lr.ph.i.i.i.i.i.i.i400.preheader:                ; preds = %.noexc409
  %47 = sub i64 %i.alb, %i.alc
  %48 = add i64 %47, -8                           ; 2 uses
  %i.aly = lshr i64 %48, 3
  %i.alz = add nuw nsw i64 %i.aly, 1              ; 2 uses
  %min.iters.check1794 = icmp ult i64 %48, 56
  br i1 %min.iters.check1794, label %.lr.ph.i.i.i.i.i.i.i400.preheader1819, label %vector.memcheck1785

vector.memcheck1785:                              ; preds = %.lr.ph.i.i.i.i.i.i.i400.preheader
  %scevgep1786 = getelementptr i8, ptr %i.alw, i64 8
  %i.ama = add i64 %i.alb, -8
  %i.amb = sub i64 %i.ama, %i.alc
  %i.amc = and i64 %i.amb, -8                     ; 2 uses
  %scevgep1787 = getelementptr i8, ptr %scevgep1786, i64 %i.amc
  %scevgep1788 = getelementptr i8, ptr %i.ala, i64 8
  %scevgep1789 = getelementptr i8, ptr %scevgep1788, i64 %i.amc
  %bound01790 = icmp ult ptr %i.alw, %scevgep1789
  %bound11791 = icmp ult ptr %i.ala, %scevgep1787
  %found.conflict1792 = and i1 %bound01790, %bound11791
  br i1 %found.conflict1792, label %.lr.ph.i.i.i.i.i.i.i400.preheader1819, label %vector.ph1795

vector.ph1795:                                    ; preds = %vector.memcheck1785
  %n.vec1797 = and i64 %i.alz, 4611686018427387900 ; 3 uses
  %i.amd = shl i64 %n.vec1797, 3                  ; 2 uses
  %i.ame = getelementptr i8, ptr %i.alw, i64 %i.amd ; 2 uses
  %i.amf = getelementptr i8, ptr %i.ala, i64 %i.amd
  br label %vector.body1798

vector.body1798:                                  ; preds = %vector.body1798, %vector.ph1795
  %index1799 = phi i64 [ 0, %vector.ph1795 ], [ %index.next1804, %vector.body1798 ] ; 2 uses
  %i.amg = shl i64 %index1799, 3                  ; 2 uses
  %next.gep1800 = getelementptr i8, ptr %i.alw, i64 %i.amg ; 2 uses
  %next.gep1801 = getelementptr i8, ptr %i.ala, i64 %i.amg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %i.amh = getelementptr i8, ptr %next.gep1801, i64 16
  %wide.load1802 = load <2 x i64>, ptr %next.gep1801, align 8, !tbaa !117, !alias.scope !1204, !noalias !1199
  %wide.load1803 = load <2 x i64>, ptr %i.amh, align 8, !tbaa !117, !alias.scope !1204, !noalias !1199
  %i.ami = getelementptr i8, ptr %next.gep1800, i64 16
  store <2 x i64> %wide.load1802, ptr %next.gep1800, align 8, !tbaa !117, !alias.scope !1207, !noalias !1204
  store <2 x i64> %wide.load1803, ptr %i.ami, align 8, !tbaa !117, !alias.scope !1207, !noalias !1204
  %i.amj = getelementptr i8, ptr %next.gep1801, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1801, align 8, !tbaa !117, !alias.scope !1204, !noalias !1199
  store <2 x ptr> splat (ptr null), ptr %i.amj, align 8, !tbaa !117, !alias.scope !1204, !noalias !1199
  %index.next1804 = add nuw i64 %index1799, 4     ; 2 uses
  %i.amk = icmp eq i64 %index.next1804, %n.vec1797
  br i1 %i.amk, label %middle.block1805, label %vector.body1798, !llvm.loop !1209

middle.block1805:                                 ; preds = %vector.body1798
  %cmp.n1806 = icmp eq i64 %i.alz, %n.vec1797
  br i1 %cmp.n1806, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i404, label %.lr.ph.i.i.i.i.i.i.i400.preheader1819

.lr.ph.i.i.i.i.i.i.i400.preheader1819:            ; preds = %vector.memcheck1785, %.lr.ph.i.i.i.i.i.i.i400.preheader, %middle.block1805
  %.012.i.i.i.i.i.i.i401.ph = phi ptr [ %i.alw, %vector.memcheck1785 ], [ %i.alw, %.lr.ph.i.i.i.i.i.i.i400.preheader ], [ %i.ame, %middle.block1805 ]
  %.0911.i.i.i.i.i.i.i402.ph = phi ptr [ %i.ala, %vector.memcheck1785 ], [ %i.ala, %.lr.ph.i.i.i.i.i.i.i400.preheader ], [ %i.amf, %middle.block1805 ]
  br label %.lr.ph.i.i.i.i.i.i.i400

.lr.ph.i.i.i.i.i.i.i400:                          ; preds = %.lr.ph.i.i.i.i.i.i.i400.preheader1819, %.lr.ph.i.i.i.i.i.i.i400
  %.012.i.i.i.i.i.i.i401 = phi ptr [ %i.amn, %.lr.ph.i.i.i.i.i.i.i400 ], [ %.012.i.i.i.i.i.i.i401.ph, %.lr.ph.i.i.i.i.i.i.i400.preheader1819 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i402 = phi ptr [ %i.amm, %.lr.ph.i.i.i.i.i.i.i400 ], [ %.0911.i.i.i.i.i.i.i402.ph, %.lr.ph.i.i.i.i.i.i.i400.preheader1819 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %i.aml = load i64, ptr %.0911.i.i.i.i.i.i.i402, align 8, !tbaa !117, !alias.scope !1202, !noalias !1199
  store i64 %i.aml, ptr %.012.i.i.i.i.i.i.i401, align 8, !tbaa !117, !alias.scope !1199, !noalias !1202
  store ptr null, ptr %.0911.i.i.i.i.i.i.i402, align 8, !tbaa !117, !alias.scope !1202, !noalias !1199
  %i.amm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i402, i64 8 ; 2 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i401, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i403 = icmp eq ptr %i.amm, %i.akz
  br i1 %.not.i.i.i.i.i.i.i403, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i404, label %.lr.ph.i.i.i.i.i.i.i400, !llvm.loop !1210

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i404: ; preds = %.lr.ph.i.i.i.i.i.i.i400, %middle.block1805, %.noexc409
  %.0.lcssa.i.i.i.i.i.i.i405 = phi ptr [ %i.alw, %.noexc409 ], [ %i.ame, %middle.block1805 ], [ %i.amn, %.lr.ph.i.i.i.i.i.i.i400 ]
  %i.amo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i405, i64 8 ; 2 uses
  %.not.i23.i.i.i406 = icmp eq ptr %i.ala, null
  br i1 %.not.i23.i.i.i406, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410, label %bb.hd

bb.hd:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i404
  call void @_ZdlPv(ptr noundef nonnull %i.ala) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i404, %bb.hd
  store ptr %i.alw, ptr %0, align 8, !tbaa !348
  store ptr %i.amo, ptr %i.w, align 8, !tbaa !349
  %i.amp = getelementptr inbounds nuw [8 x i8], ptr %i.alw, i64 %i.alu ; 2 uses
  store ptr %i.amp, ptr %i.x, align 8, !tbaa !446
  br label %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit415

_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit415: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410.thread
  %i.amq = phi ptr [ %i.aln, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410.thread ], [ %i.amp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410 ]
  %i.amr = phi ptr [ %i.ala, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410.thread ], [ %i.alw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410 ]
  %i.ams = phi ptr [ %i.alp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410.thread ], [ %i.amo, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit410 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  %i.amt = load ptr, ptr %i.s, align 8, !tbaa !167 ; 2 uses
  %.not5.i.i.i.i416 = icmp eq ptr %i.amt, null
  br i1 %.not5.i.i.i.i416, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i420, label %.lr.ph.i.i.i.i417

.lr.ph.i.i.i.i417:                                ; preds = %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit415, %.lr.ph.i.i.i.i417
  %.06.i.i.i.i418 = phi ptr [ %i.amu, %.lr.ph.i.i.i.i417 ], [ %i.amt, %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit415 ] ; 2 uses
  %i.amu = load ptr, ptr %.06.i.i.i.i418, align 8, !tbaa !33 ; 2 uses
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i418) #27
  %.not.i.i.i.i419 = icmp eq ptr %i.amu, null
  br i1 %.not.i.i.i.i419, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i420, label %.lr.ph.i.i.i.i417, !llvm.loop !168

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i420: ; preds = %.lr.ph.i.i.i.i417, %_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev.exit415
  %i.amv = load ptr, ptr %38, align 8, !tbaa !162
  %i.amw = load i64, ptr %i.r, align 8, !tbaa !164
  %i.amx = shl i64 %i.amw, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.amv, i8 0, i64 %i.amx, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  %i.amy = load ptr, ptr %38, align 8, !tbaa !162 ; 2 uses
  %i.amz = icmp eq ptr %i.amy, %i.q
  br i1 %i.amz, label %bb.hh, label %bb.he

bb.he:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i420
  call void @_ZdlPv(ptr noundef %i.amy) #27
  br label %bb.hh

bb.hf:                                            ; preds = %.lr.ph
  %i.ana = landingpad { ptr, i32 }
          cleanup
  br label %.body328

.body338.loopexit:                                ; preds = %bb.fx
  %lpad.loopexit950 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.body338.loopexit.split-lp.loopexit:              ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i
  %lpad.loopexit952 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.body338.loopexit.split-lp.loopexit.split-lp:     ; preds = %bb.fy
  %lpad.loopexit.split-lp953 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.loopexit940:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i
  %lpad.loopexit942 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.loopexit.split-lp941.loopexit:                   ; preds = %bb.gc
  %lpad.loopexit945 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.loopexit.split-lp941.loopexit.split-lp:          ; preds = %.critedge.i, %.thread.i
  %lpad.loopexit.split-lp946 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i426

.body363:                                         ; preds = %.loopexit948
  %i.anb = landingpad { ptr, i32 }
          cleanup
  br label %.body352.thread900

bb.hg:                                            ; preds = %bb.gi
  %i.anc = landingpad { ptr, i32 }
          cleanup
  br label %.body352.thread900

.body352.thread904.loopexit:                      ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10FilterInfoESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i396
  %lpad.loopexit969 = landingpad { ptr, i32 }
          cleanup
  br label %.body352.thread904

.body352.thread904.loopexit.split-lp:             ; preds = %bb.hc
  %lpad.loopexit.split-lp970 = landingpad { ptr, i32 }
          cleanup
  br label %.body352.thread904

.body352.thread904:                               ; preds = %.body352.thread904.loopexit.split-lp, %.body352.thread904.loopexit
  %lpad.phi971 = phi { ptr, i32 } [ %lpad.loopexit969, %.body352.thread904.loopexit ], [ %lpad.loopexit.split-lp970, %.body352.thread904.loopexit.split-lp ]
  call void @_ZNSt10unique_ptrIN6duckdb10FilterInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %.body328

bb.hh:                                            ; preds = %bb.he, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  br label %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424

_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i423: ; preds = %.noexc342, %_ZNSt13unordered_setISt17reference_wrapperIN6duckdb10ExpressionEENS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaIS3_EE4findERKS3_.exit
  %i.and = load ptr, ptr %i.aeo, align 8, !tbaa !352
  %i.ane = getelementptr inbounds nuw i8, ptr %i.and, i64 8
  %i.anf = load ptr, ptr %i.ane, align 8
  call void %i.anf(ptr noundef nonnull align 8 dereferenceable(104) %i.aeo) #28, !inline_history !1130
  br label %_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424

_ZNSt10unique_ptrIN6duckdb25BoundComparisonExpressionESt14default_deleteIS1_EED2Ev.exit424: ; preds = %bb.hh, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i423
  %i.ang = phi ptr [ %i.amq, %bb.hh ], [ %i.ael, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i423 ] ; 2 uses
  %i.anh = phi ptr [ %i.amr, %bb.hh ], [ %i.aem, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i423 ] ; 2 uses
  %i.ani = phi ptr [ %i.ams, %bb.hh ], [ %i.aen, %_ZNKSt14default_deleteIN6duckdb25BoundComparisonExpressionEEclEPS1_.exit.i423 ] ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.0838.01073, i64 24 ; 2 uses
  %.not913 = icmp eq ptr %i.anj, %i.aek
  br i1 %.not913, label %.loopexit968, label %.lr.ph

.body352.thread900:                               ; preds = %.body363, %bb.gy, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i378, %bb.hg
  %.pn85.pn.pn.ph = phi { ptr, i32 } [ %.pn35.ph.i380, %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i378 ], [ %i.akw, %bb.gy ], [ %i.anc, %bb.hg ], [ %i.anb, %.body363 ]
  call void @_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
end_hunk_12
begin_hunk_13_@_ZN6duckdb15RelationManager12ExtractEdgesERNS_15LogicalOperatorERNS_6vectorISt17reference_wrapperIS1_ELb1ESaIS5_EEERNS_22JoinRelationSetManagerE:bb.a
  %.not36.i779 = icmp eq i64 %i.arn, 0
  br i1 %.not36.i779, label %.critedge.i788, label %bb.hy

bb.hy:                                            ; preds = %.noexc801
  %i.aro = load ptr, ptr %30, align 8, !tbaa !1102
  %i.arp = getelementptr inbounds nuw [8 x i8], ptr %i.aro, i64 %i.arm
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !78 ; 3 uses
  %.not.i.i.i780 = icmp eq ptr %i.arq, null
  br i1 %.not.i.i.i780, label %.critedge.i788, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !33 ; 2 uses
  %.phi.trans.insert.i.i.i781 = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %.pre.i.i.i782 = load i64, ptr %.phi.trans.insert.i.i.i781, align 8, !tbaa !465
  br label %bb.ia

bb.ia:                                            ; preds = %bb.ib, %bb.hz
  %i.ars = phi i64 [ %.pre.i.i.i782, %bb.hz ], [ %i.asd, %bb.ib ]
  %.015.i.i.i783 = phi ptr [ %i.arq, %bb.hz ], [ %.0.i.i.i784, %bb.ib ]
  %.0.i.i.i784 = phi ptr [ %i.arr, %bb.hz ], [ %i.asa, %bb.ib ] ; 3 uses
  %i.art = icmp eq i64 %i.ark, %i.ars
  br i1 %i.art, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i794, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i785

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i794: ; preds = %bb.ia
  %i.aru = getelementptr inbounds nuw i8, ptr %.0.i.i.i784, i64 8
  %i.arv = load ptr, ptr %i.aru, align 8, !tbaa !1185
  %i.arw = load ptr, ptr %i.aqp, align 8, !tbaa !352
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 80
  %i.ary = load ptr, ptr %i.arx, align 8
  %i.arz = invoke noundef zeroext i1 %i.ary(ptr noundef nonnull align 8 dereferenceable(88) %i.aqp, ptr noundef nonnull align 8 dereferenceable(56) %i.arv)
          to label %.noexc802 unwind label %.loopexit, !inline_history !1190

.noexc802:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i794
  br i1 %i.arz, label %_ZNKSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit.i795, label %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i785

_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i785: ; preds = %.noexc802, %bb.ia
  %i.asa = load ptr, ptr %.0.i.i.i784, align 8, !tbaa !33 ; 3 uses
  %.not18.i.i.i786 = icmp eq ptr %i.asa, null
  br i1 %.not18.i.i.i786, label %.critedge.i788, label %bb.ib

bb.ib:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i785
  %i.asb = load i64, ptr %i.i, align 8, !tbaa !1104
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asa, i64 16
  %i.asd = load i64, ptr %i.asc, align 8, !tbaa !465 ; 2 uses
  %i.ase = urem i64 %i.asd, %i.asb
  %.not19.i.i.i787 = icmp eq i64 %i.ase, %i.arm
  br i1 %.not19.i.i.i787, label %bb.ia, label %.critedge.i788, !llvm.loop !1192

_ZNKSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit.i795: ; preds = %.noexc802
  %i.asf = load ptr, ptr %.015.i.i.i783, align 8, !tbaa !33
  %.not18.i796 = icmp eq ptr %i.asf, null
  br i1 %.not18.i796, label %.critedge.i788, label %.loopexit923

.critedge.i788:                                   ; preds = %bb.ib, %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.thread.i.i.i785, %_ZNKSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit.i795, %bb.hy, %.noexc801
  %i.asg = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30
          to label %.noexc803 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc803:                                        ; preds = %.critedge.i788
  store ptr null, ptr %i.asg, align 8, !tbaa !33
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %i.asi = ptrtoint ptr %i.aqp to i64
  store i64 %i.asi, ptr %i.ash, align 8
  %i.asj = invoke ptr @_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS5_10_Hash_nodeIS3_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %30, i64 noundef %i.arm, i64 noundef %i.ark, ptr noundef nonnull %i.asg, i64 noundef 1)
          to label %.loopexit923 unwind label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i789 ; 0 uses

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i789: ; preds = %.noexc803
  %i.ask = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.asg) #27
  br label %.body440

.loopexit923:                                     ; preds = %.noexc800, %_ZNKSt10_HashtableISt17reference_wrapperIN6duckdb10ExpressionEES3_SaIS3_ENSt8__detail9_IdentityENS1_18ExpressionEqualityIS2_EENS1_22ExpressionHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE15_M_find_node_trIS3_EEPNS5_10_Hash_nodeIS3_Lb1EEEmRKT_m.exit.i795, %.noexc803
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  store ptr %i.ak, ptr %41, align 8, !tbaa !162
  store i64 1, ptr %i.al, align 8, !tbaa !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.an, align 8, !tbaa !83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  %i.asl = load ptr, ptr %.sroa.0819.01083, align 8, !tbaa !350 ; 2 uses
  %.not.i474 = icmp eq ptr %i.asl, null
  br i1 %.not.i474, label %.noexc.i808, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit483, !prof !51

.noexc.i808:                                      ; preds = %.loopexit923
  %i.asm = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.asn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.asn, ptr %10, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 49, ptr %i.a, align 8, !tbaa !19
  %i.aso = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc809 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i475 ; 3 uses

.noexc809:                                        ; preds = %.noexc.i808
  store ptr %i.aso, ptr %10, align 8, !tbaa !25
  %i.asp = load i64, ptr %i.a, align 8, !tbaa !19 ; 3 uses
  store i64 %i.asp, ptr %i.asn, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.aso, ptr noundef nonnull align 1 dereferenceable(49) @.str.33, i64 49, i1 false)
  %i.asq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.asp, ptr %i.asq, align 8, !tbaa !14
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aso, i64 %i.asp
  store i8 0, ptr %i.asr, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.asm, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ic unwind label %bb.id

bb.ic:                                            ; preds = %.noexc809
  invoke void @__cxa_throw(ptr nonnull %i.asm, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.if unwind label %bb.id

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i475: ; preds = %.noexc.i808
  %i.ass = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ie

bb.id:                                            ; preds = %bb.ic, %.noexc809
  %.0.i.i478 = phi i1 [ false, %bb.ic ], [ true, %.noexc809 ] ; 2 uses
  %i.ast = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.asu = load ptr, ptr %10, align 8, !tbaa !25  ; 2 uses
  %i.asv = icmp eq ptr %i.asu, %i.asn
  br i1 %i.asv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i479

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i479: ; preds = %bb.id
  call void @_ZdlPv(ptr noundef %i.asu) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.0.i.i478, label %bb.ie, label %.body481

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i480: ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br i1 %.0.i.i478, label %bb.ie, label %.body481

bb.ie:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i480, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i479, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i475
  %.pn9.i.i476 = phi { ptr, i32 } [ %i.ass, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i475 ], [ %i.ast, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i480 ], [ %i.ast, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i479 ]
  call void @__cxa_free_exception(ptr %i.asm) #28
  br label %.body481

bb.if:                                            ; preds = %bb.ic
  unreachable

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit483: ; preds = %.loopexit923
  %i.asw = invoke noundef zeroext i1 @_ZN6duckdb15RelationManager15ExtractBindingsERNS_10ExpressionERSt13unordered_setImSt4hashImESt8equal_toImESaImEE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.asl, ptr noundef nonnull align 8 dereferenceable(56) %41)
          to label %bb.ig unwind label %.loopexit956 ; 0 uses

bb.ig:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit483
  %i.asx = load i64, ptr %i.ap, align 8, !tbaa !236 ; 3 uses
  %i.asy = icmp eq i64 %i.asx, 0
  br i1 %i.asy, label %bb.ih, label %bb.im

bb.ih:                                            ; preds = %bb.ig
  %i.asz = load ptr, ptr %i.aq, align 8, !tbaa !373 ; 6 uses
  %i.ata = load ptr, ptr %i.ar, align 16, !tbaa !902
  %.not.i.i484 = icmp eq ptr %i.asz, %i.ata
  br i1 %.not.i.i484, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.atb = load i64, ptr %.sroa.0819.01083, align 8, !tbaa !350
  store i64 %i.atb, ptr %i.asz, align 8, !tbaa !350
  store ptr null, ptr %.sroa.0819.01083, align 8, !tbaa !350
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asz, i64 8
  store ptr %i.atc, ptr %i.aq, align 8, !tbaa !373
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit499

bb.ij:                                            ; preds = %bb.ih
  %i.atd = load ptr, ptr %40, align 16, !tbaa !372 ; 10 uses
  %i.ate = ptrtoint ptr %i.asz to i64             ; 3 uses
  %i.atf = ptrtoint ptr %i.atd to i64             ; 3 uses
  %i.atg = sub i64 %i.ate, %i.atf                 ; 3 uses
  %i.ath = icmp eq i64 %i.atg, 9223372036854775800
  br i1 %i.ath, label %bb.ik, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i485

bb.ik:                                            ; preds = %bb.ij
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc497 unwind label %.loopexit.split-lp957

.noexc497:                                        ; preds = %bb.ik
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i485: ; preds = %bb.ij
  %i.ati = ashr exact i64 %i.atg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i486 = call i64 @llvm.umax.i64(i64 %i.ati, i64 1)
  %i.atj = add nsw i64 %.sroa.speculated.i.i.i.i486, %i.ati ; 2 uses
  %i.atk = icmp ult i64 %i.atj, %i.ati
  %i.atl = call i64 @llvm.umin.i64(i64 %i.atj, i64 1152921504606846975)
  %i.atm = select i1 %i.atk, i64 1152921504606846975, i64 %i.atl ; 3 uses
  %.not.i.i.i.i487 = icmp ne i64 %i.atm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i487)
  %i.atn = shl nuw nsw i64 %i.atm, 3
  %i.ato = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atn) #30
          to label %.noexc498 unwind label %.loopexit956 ; 10 uses

.noexc498:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i485
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 %i.atg
  %i.atq = load i64, ptr %.sroa.0819.01083, align 8, !tbaa !350
  store i64 %i.atq, ptr %i.atp, align 8, !tbaa !350
  store ptr null, ptr %.sroa.0819.01083, align 8, !tbaa !350
  %.not10.i.i.i.i.i.i.i488 = icmp eq ptr %i.atd, %i.asz
  br i1 %.not10.i.i.i.i.i.i.i488, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493, label %.lr.ph.i.i.i.i.i.i.i489.preheader

.lr.ph.i.i.i.i.i.i.i489.preheader:                ; preds = %.noexc498
  %49 = sub i64 %i.ate, %i.atf
  %50 = add i64 %49, -8                           ; 2 uses
  %i.atr = lshr i64 %50, 3
  %i.ats = add nuw nsw i64 %i.atr, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %50, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i489.preheader1809, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i489.preheader
  %scevgep = getelementptr i8, ptr %i.ato, i64 8
  %i.att = add i64 %i.ate, -8
  %i.atu = sub i64 %i.att, %i.atf
  %i.atv = and i64 %i.atu, -8                     ; 2 uses
  %scevgep1636 = getelementptr i8, ptr %scevgep, i64 %i.atv
  %scevgep1637 = getelementptr i8, ptr %i.atd, i64 8
  %scevgep1638 = getelementptr i8, ptr %scevgep1637, i64 %i.atv
  %bound0 = icmp ult ptr %i.ato, %scevgep1638
  %bound1 = icmp ult ptr %i.atd, %scevgep1636
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i489.preheader1809, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ats, 4611686018427387900    ; 3 uses
  %i.atw = shl i64 %n.vec, 3                      ; 2 uses
  %i.atx = getelementptr i8, ptr %i.ato, i64 %i.atw ; 2 uses
  %i.aty = getelementptr i8, ptr %i.atd, i64 %i.atw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.atz = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ato, i64 %i.atz ; 2 uses
  %next.gep1639 = getelementptr i8, ptr %i.atd, i64 %i.atz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.aua = getelementptr i8, ptr %next.gep1639, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1639, align 8, !tbaa !350, !alias.scope !1222, !noalias !1217
  %wide.load1640 = load <2 x i64>, ptr %i.aua, align 8, !tbaa !350, !alias.scope !1222, !noalias !1217
  %i.aub = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !350, !alias.scope !1225, !noalias !1222
  store <2 x i64> %wide.load1640, ptr %i.aub, align 8, !tbaa !350, !alias.scope !1225, !noalias !1222
  %i.auc = getelementptr i8, ptr %next.gep1639, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1639, align 8, !tbaa !350, !alias.scope !1222, !noalias !1217
  store <2 x ptr> splat (ptr null), ptr %i.auc, align 8, !tbaa !350, !alias.scope !1222, !noalias !1217
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aud = icmp eq i64 %index.next, %n.vec
  br i1 %i.aud, label %middle.block, label %vector.body, !llvm.loop !1227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ats, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493, label %.lr.ph.i.i.i.i.i.i.i489.preheader1809

.lr.ph.i.i.i.i.i.i.i489.preheader1809:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i489.preheader, %middle.block
  %.012.i.i.i.i.i.i.i490.ph = phi ptr [ %i.ato, %vector.memcheck ], [ %i.ato, %.lr.ph.i.i.i.i.i.i.i489.preheader ], [ %i.atx, %middle.block ]
  %.0911.i.i.i.i.i.i.i491.ph = phi ptr [ %i.atd, %vector.memcheck ], [ %i.atd, %.lr.ph.i.i.i.i.i.i.i489.preheader ], [ %i.aty, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i489

.lr.ph.i.i.i.i.i.i.i489:                          ; preds = %.lr.ph.i.i.i.i.i.i.i489.preheader1809, %.lr.ph.i.i.i.i.i.i.i489
  %.012.i.i.i.i.i.i.i490 = phi ptr [ %i.aug, %.lr.ph.i.i.i.i.i.i.i489 ], [ %.012.i.i.i.i.i.i.i490.ph, %.lr.ph.i.i.i.i.i.i.i489.preheader1809 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i491 = phi ptr [ %i.auf, %.lr.ph.i.i.i.i.i.i.i489 ], [ %.0911.i.i.i.i.i.i.i491.ph, %.lr.ph.i.i.i.i.i.i.i489.preheader1809 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.aue = load i64, ptr %.0911.i.i.i.i.i.i.i491, align 8, !tbaa !350, !alias.scope !1220, !noalias !1217
  store i64 %i.aue, ptr %.012.i.i.i.i.i.i.i490, align 8, !tbaa !350, !alias.scope !1217, !noalias !1220
  store ptr null, ptr %.0911.i.i.i.i.i.i.i491, align 8, !tbaa !350, !alias.scope !1220, !noalias !1217
  %i.auf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i491, i64 8 ; 2 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i490, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i492 = icmp eq ptr %i.auf, %i.asz
  br i1 %.not.i.i.i.i.i.i.i492, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493, label %.lr.ph.i.i.i.i.i.i.i489, !llvm.loop !1228

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493: ; preds = %.lr.ph.i.i.i.i.i.i.i489, %middle.block, %.noexc498
  %.0.lcssa.i.i.i.i.i.i.i494 = phi ptr [ %i.ato, %.noexc498 ], [ %i.atx, %middle.block ], [ %i.aug, %.lr.ph.i.i.i.i.i.i.i489 ]
  %i.auh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i494, i64 8
  %.not.i23.i.i.i495 = icmp eq ptr %i.atd, null
  br i1 %.not.i23.i.i.i495, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496, label %bb.il

bb.il:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493
  call void @_ZdlPv(ptr noundef nonnull %i.atd) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i496: ; preds = %bb.il, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i493
  store ptr %i.ato, ptr %40, align 16, !tbaa !372
  store ptr %i.auh, ptr %i.aq, align 8, !tbaa !373
  %i.aui = getelementptr inbounds nuw [8 x i8], ptr %i.ato, i64 %i.atm
  store ptr %i.aui, ptr %i.ar, align 16, !tbaa !902
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit499

.loopexit925:                                     ; preds = %bb.ho
  %lpad.loopexit927 = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit.split-lp926.loopexit:                   ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS4_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i.i453
  %lpad.loopexit929 = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit.split-lp926.loopexit.split-lp:          ; preds = %bb.hp
  %lpad.loopexit.split-lp930 = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseISt17reference_wrapperIN6duckdb10ExpressionEES4_NS_9_IdentityENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE12_M_equals_trIS4_EEbRKT_mRKNS_16_Hash_node_valueIS4_Lb1EEE.exit.i.i.i794
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit.split-lp.loopexit:                      ; preds = %bb.hx
  %lpad.loopexit920 = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.critedge.i788, %.thread.i778
  %lpad.loopexit.split-lp921 = landingpad { ptr, i32 }
          cleanup
  br label %.body440

.loopexit956:                                     ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit483, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i485
  %lpad.loopexit958 = landingpad { ptr, i32 }
          cleanup
  br label %.body481

.loopexit.split-lp957:                            ; preds = %bb.ik
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body481

bb.im:                                            ; preds = %bb.ig
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.auj = icmp ugt i64 %i.asx, 2305843009213693951
  %i.auk = shl nuw i64 %i.asx, 3
  %i.aul = select i1 %i.auj, i64 -1, i64 %i.auk   ; 2 uses
  %i.aum = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aul) #30
          to label %bb.in unwind label %bb.iy     ; 7 uses

bb.in:                                            ; preds = %bb.im
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aum, i8 0, i64 %i.aul, i1 false), !noalias !1229
  %.sroa.024.036.i501 = load ptr, ptr %i.am, align 8, !tbaa !33 ; 2 uses
  %.not37.i502 = icmp eq ptr %.sroa.024.036.i501, null
  br i1 %.not37.i502, label %_ZSt4sortIPmEvT_S1_.exit.i518, label %.lr.ph.i503

._crit_edge.i508:                                 ; preds = %.lr.ph.i503
  %.idx.i509 = shl nuw nsw i64 %i.aut, 3
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aum, i64 %.idx.i509 ; 2 uses
  %.not.i.i.i510 = icmp eq i64 %i.aut, 0
  br i1 %.not.i.i.i510, label %_ZSt4sortIPmEvT_S1_.exit.i518, label %bb.io

bb.io:                                            ; preds = %._crit_edge.i508
  %i.auo = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aut, i1 true)
  %i.aup = shl nuw nsw i64 %i.auo, 1
  %i.auq = xor i64 %i.aup, 126
  invoke void @_ZSt16__introsort_loopIPmlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.aum, ptr noundef nonnull %i.aun, i64 noundef %i.auq)
          to label %.noexc.i517 unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511

.noexc.i517:                                      ; preds = %bb.io
  invoke void @_ZSt22__final_insertion_sortIPmN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.aum, ptr noundef nonnull %i.aun)
          to label %_ZSt4sortIPmEvT_S1_.exit.i518 unwind label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511

.lr.ph.i503:                                      ; preds = %bb.in, %.lr.ph.i503
  %.sroa.024.039.i504 = phi ptr [ %.sroa.024.0.i506, %.lr.ph.i503 ], [ %.sroa.024.036.i501, %bb.in ] ; 2 uses
  %.01238.i505 = phi i64 [ %i.aut, %.lr.ph.i503 ], [ 0, %bb.in ] ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %.sroa.024.039.i504, i64 8
  %i.aus = load i64, ptr %i.aur, align 8, !tbaa !19
  %i.aut = add i64 %.01238.i505, 1                ; 5 uses
  %i.auu = getelementptr inbounds nuw [8 x i8], ptr %i.aum, i64 %.01238.i505
  store i64 %i.aus, ptr %i.auu, align 8, !tbaa !19
  %.sroa.024.0.i506 = load ptr, ptr %.sroa.024.039.i504, align 8, !tbaa !33 ; 2 uses
  %.not.i507 = icmp eq ptr %.sroa.024.0.i506, null
  br i1 %.not.i507, label %._crit_edge.i508, label %.lr.ph.i503

_ZSt4sortIPmEvT_S1_.exit.i518:                    ; preds = %.noexc.i517, %._crit_edge.i508, %bb.in
  %.012.lcssa45.i519 = phi i64 [ %i.aut, %.noexc.i517 ], [ 0, %._crit_edge.i508 ], [ 0, %bb.in ]
  %i.auv = ptrtoint ptr %i.aum to i64
  store i64 %i.auv, ptr %9, align 8, !tbaa !68
  %i.auw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb22JoinRelationSetManager15GetJoinRelationENS_10unique_ptrIA_mSt14default_deleteIS2_ELb0EEEm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %9, i64 noundef %.012.lcssa45.i519)
          to label %bb.ip unwind label %bb.iq

bb.ip:                                            ; preds = %_ZSt4sortIPmEvT_S1_.exit.i518
  %i.aux = load ptr, ptr %9, align 8, !tbaa !68   ; 2 uses
  %.not.i.i521 = icmp eq ptr %i.aux, null
  br i1 %.not.i.i521, label %bb.ir, label %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i522

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i522: ; preds = %bb.ip
  call void @_ZdaPv(ptr noundef nonnull %i.aux) #27
  br label %bb.ir

bb.iq:                                            ; preds = %_ZSt4sortIPmEvT_S1_.exit.i518
  %i.auy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.auz = load ptr, ptr %9, align 8, !tbaa !68   ; 2 uses
  %.not.i18.i520 = icmp eq ptr %i.auz, null
  br i1 %.not.i18.i520, label %.body481, label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i512

_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511: ; preds = %.noexc.i517, %bb.io
  %i.ava = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i512

_ZNSt10unique_ptrIA_mSt14default_deleteIS0_EED2Ev.exit23.sink.split.i512: ; preds = %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511, %bb.iq
  %.sink.i513 = phi ptr [ %i.aum, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511 ], [ %i.auz, %bb.iq ]
  %.pn35.ph.i514 = phi { ptr, i32 } [ %i.ava, %_ZNKSt14default_deleteIA_mEclImEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i22.i511 ], [ %i.auy, %bb.iq ]
  call void @_ZdaPv(ptr noundef nonnull %.sink.i513) #27
  br label %.body481
end_hunk_13
begin_hunk_14_@_ZN6duckdb17QueryGraphManager13GenerateJoinsERNS_6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_15JoinRelationSetE:bb.a
bb.an:                                            ; preds = %bb.am
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef 0, i64 noundef 0) #29
          to label %.noexc unwind label %bb.ar

.noexc:                                           ; preds = %bb.an
  unreachable

_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE2atEm.exit: ; preds = %bb.am
  %i.df = load i64, ptr %i.de, align 8, !tbaa !117
  store i64 %i.df, ptr %15, align 8, !tbaa !117
  br label %bb.ao

bb.ao:                                            ; preds = %bb.bb, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE2atEm.exit
  %.0100 = phi i64 [ 0, %_ZNSt6vectorIN6duckdb12optional_ptrINS0_10FilterInfoELb1EEESaIS3_EE2atEm.exit ], [ %i.ex, %bb.bb ] ; 7 uses
  %i.dg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DPJoinNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.ap unwind label %.loopexit536

bb.ap:                                            ; preds = %bb.ao
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_12NeighborInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dh)
          to label %bb.aq unwind label %.loopexit536

bb.aq:                                            ; preds = %bb.ap
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !253 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !115
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !107
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = icmp ult i64 %.0100, %i.dq
  br i1 %i.dr, label %bb.as, label %.loopexit541

bb.ar:                                            ; preds = %bb.an, %bb.al, %bb.ak
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

.loopexit536:                                     ; preds = %bb.ao, %bb.as, %bb.ap, %bb.at, %bb.av
  %lpad.loopexit538 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

.loopexit.split-lp537:                            ; preds = %.invoke, %bb.ax, %bb.ay
  %lpad.loopexit.split-lp539 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.as:                                            ; preds = %bb.aq
  %i.dt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DPJoinNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.at unwind label %.loopexit536

bb.at:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_12NeighborInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %bb.au unwind label %.loopexit536

bb.au:                                            ; preds = %bb.at
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !253 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !115
  %i.dz = load ptr, ptr %i.dw, align 8, !tbaa !107 ; 2 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %.not.i.i161 = icmp ult i64 %.0100, %i.ed
  br i1 %.not.i.i161, label %bb.av, label %.invoke

.invoke:                                          ; preds = %bb.au, %bb.az
  %i.ee = phi i64 [ %i.eu, %bb.az ], [ %i.ed, %bb.au ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %.0100, i64 noundef %i.ee) #29
          to label %.cont unwind label %.loopexit.split-lp537

.cont:                                            ; preds = %.invoke
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.0100 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ef)
          to label %bb.aw unwind label %.loopexit536

bb.aw:                                            ; preds = %bb.av
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !563
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !562
  %i.ej = icmp eq i8 %i.ei, 3
  br i1 %i.ej, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.ek = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DPJoinNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.ay unwind label %.loopexit.split-lp537

bb.ay:                                            ; preds = %bb.ax
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_12NeighborInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.el)
          to label %bb.az unwind label %.loopexit.split-lp537

bb.az:                                            ; preds = %bb.ay
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !253 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !115
  %i.eq = load ptr, ptr %i.en, align 8, !tbaa !107 ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 3                 ; 2 uses
  %.not.i.i167 = icmp ult i64 %.0100, %i.eu
  br i1 %.not.i.i167, label %bb.ba, label %.invoke

bb.ba:                                            ; preds = %bb.az
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.0100
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !117
  store i64 %i.ew, ptr %15, align 8, !tbaa !117
  br label %.loopexit541

bb.bb:                                            ; preds = %bb.aw
  %i.ex = add nuw i64 %.0100, 1
  br label %bb.ao, !llvm.loop !1256

.loopexit541:                                     ; preds = %bb.aq, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZNK6duckdb12optional_ptrINS_10FilterInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bc unwind label %bb.bp

bb.bc:                                            ; preds = %.loopexit541
  %i.ey = load ptr, ptr %15, align 8, !tbaa !563
  call void @llvm.experimental.noalias.scope.decl(metadata !1257)
  %i.ez = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #30
          to label %.noexc172 unwind label %bb.bp ; 3 uses

.noexc172:                                        ; preds = %bb.bc
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !1165, !noalias !1257
  invoke void @_ZN6duckdb21LogicalComparisonJoinC1ENS_8JoinTypeENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(280) %i.ez, i8 noundef zeroext %i.fb, i8 noundef zeroext 52)
          to label %bb.be unwind label %bb.bd, !noalias !1257

bb.bd:                                            ; preds = %.noexc172
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ez) #27, !noalias !1257
  br label %.body

bb.be:                                            ; preds = %.noexc172
  store ptr %i.ez, ptr %16, align 8, !tbaa !1260, !alias.scope !1257
  %i.fd = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bf unwind label %bb.bq     ; 3 uses

bb.bf:                                            ; preds = %bb.be
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 24 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !468 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 32 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !471
  %.not.i.i173 = icmp eq ptr %i.fh, %i.fj
  br i1 %.not.i.i173, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.fk = load i64, ptr %i.ff, align 8, !tbaa !377
  store i64 %i.fk, ptr %i.fh, align 8, !tbaa !377
  store ptr null, ptr %i.ff, align 8, !tbaa !377
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fl, ptr %i.fg, align 8, !tbaa !468
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.bh:                                            ; preds = %bb.bf
  %i.fm = load ptr, ptr %i.fe, align 8, !tbaa !469 ; 10 uses
  %i.fn = ptrtoint ptr %i.fh to i64               ; 3 uses
  %i.fo = ptrtoint ptr %i.fm to i64               ; 3 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %.invoke829, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bh
  %i.fr = ashr exact i64 %i.fp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  %i.fs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fr ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %i.fu = call i64 @llvm.umin.i64(i64 %i.fs, i64 1152921504606846975)
  %i.fv = select i1 %i.ft, i64 1152921504606846975, i64 %i.fu ; 3 uses
  %.not.i.i.i.i174 = icmp ne i64 %i.fv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i174)
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %i.fx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #30
          to label %.noexc176 unwind label %bb.bq ; 10 uses

.noexc176:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fp
  %i.fz = load i64, ptr %i.ff, align 8, !tbaa !377
  store i64 %i.fz, ptr %i.fy, align 8, !tbaa !377
  store ptr null, ptr %i.ff, align 8, !tbaa !377
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.fm, %i.fh
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc176
  %31 = sub i64 %i.fn, %i.fo
  %32 = add i64 %31, -8                           ; 2 uses
  %i.ga = lshr i64 %32, 3
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %32, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1021, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.gc = add i64 %i.fn, -8
  %i.gd = sub i64 %i.gc, %i.fo
  %i.ge = and i64 %i.gd, -8
  %i.gf = add i64 %i.ge, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fx, i64 %i.gf
  %scevgep902 = getelementptr i8, ptr %i.fm, i64 %i.gf
  %bound0 = icmp ult ptr %i.fx, %scevgep902
  %bound1 = icmp ult ptr %i.fm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1021, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gb, 4611686018427387900     ; 3 uses
  %i.gg = shl i64 %n.vec, 3                       ; 2 uses
  %i.gh = getelementptr i8, ptr %i.fx, i64 %i.gg  ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fm, i64 %i.gg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fx, i64 %i.gj ; 2 uses
  %next.gep903 = getelementptr i8, ptr %i.fm, i64 %i.gj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %i.gk = getelementptr i8, ptr %next.gep903, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep903, align 8, !tbaa !377, !alias.scope !1267, !noalias !1262
  %wide.load904 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !377, !alias.scope !1267, !noalias !1262
  %i.gl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !377, !alias.scope !1270, !noalias !1267
  store <2 x i64> %wide.load904, ptr %i.gl, align 8, !tbaa !377, !alias.scope !1270, !noalias !1267
  %i.gm = getelementptr i8, ptr %next.gep903, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep903, align 8, !tbaa !377, !alias.scope !1267, !noalias !1262
  store <2 x ptr> splat (ptr null), ptr %i.gm, align 8, !tbaa !377, !alias.scope !1267, !noalias !1262
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gn = icmp eq i64 %index.next, %n.vec
  br i1 %i.gn, label %middle.block, label %vector.body, !llvm.loop !1272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1021

.lr.ph.i.i.i.i.i.i.i.preheader1021:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fx, %vector.memcheck ], [ %i.fx, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gh, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.fm, %vector.memcheck ], [ %i.fm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.gi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1021, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.gq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1021 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.gp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1021 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  %i.go = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1265, !noalias !1262
  store i64 %i.go, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1262, !noalias !1265
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1265, !noalias !1262
  %i.gp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.gp, %i.fh
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1273

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc176
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fx, %.noexc176 ], [ %i.gh, %middle.block ], [ %i.gq, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fm) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.bi, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.fx, ptr %i.fe, align 8, !tbaa !469
  store ptr %i.gr, ptr %i.fg, align 8, !tbaa !468
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fv
  store ptr %i.gs, ptr %i.fi, align 8, !tbaa !471
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.bg
  %i.gt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bj unwind label %bb.bq     ; 3 uses

bb.bj:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 24 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !468 ; 6 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !471
  %.not.i.i177 = icmp eq ptr %i.gx, %i.gz
  br i1 %.not.i.i177, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ha = load i64, ptr %i.gv, align 8, !tbaa !377
  store i64 %i.ha, ptr %i.gx, align 8, !tbaa !377
  store ptr null, ptr %i.gv, align 8, !tbaa !377
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr %i.hb, ptr %i.gw, align 8, !tbaa !468
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit192

bb.bl:                                            ; preds = %bb.bj
  %i.hc = load ptr, ptr %i.gu, align 8, !tbaa !469 ; 10 uses
  %i.hd = ptrtoint ptr %i.gx to i64               ; 3 uses
  %i.he = ptrtoint ptr %i.hc to i64               ; 3 uses
  %i.hf = sub i64 %i.hd, %i.he                    ; 3 uses
  %i.hg = icmp eq i64 %i.hf, 9223372036854775800
  br i1 %i.hg, label %.invoke829, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i178

.invoke829:                                       ; preds = %bb.bl, %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.cont830 unwind label %bb.bq

.cont830:                                         ; preds = %.invoke829
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i178: ; preds = %bb.bl
  %i.hh = ashr exact i64 %i.hf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i179 = call i64 @llvm.umax.i64(i64 %i.hh, i64 1)
  %i.hi = add nsw i64 %.sroa.speculated.i.i.i.i179, %i.hh ; 2 uses
  %i.hj = icmp ult i64 %i.hi, %i.hh
  %i.hk = call i64 @llvm.umin.i64(i64 %i.hi, i64 1152921504606846975)
  %i.hl = select i1 %i.hj, i64 1152921504606846975, i64 %i.hk ; 3 uses
  %.not.i.i.i.i180 = icmp ne i64 %i.hl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i180)
  %i.hm = shl nuw nsw i64 %i.hl, 3
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #30
          to label %.noexc191 unwind label %bb.bq ; 10 uses

.noexc191:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i178
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hf
  %i.hp = load i64, ptr %i.gv, align 8, !tbaa !377
  store i64 %i.hp, ptr %i.ho, align 8, !tbaa !377
  store ptr null, ptr %i.gv, align 8, !tbaa !377
  %.not10.i.i.i.i.i.i.i181 = icmp eq ptr %i.hc, %i.gx
  br i1 %.not10.i.i.i.i.i.i.i181, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186, label %.lr.ph.i.i.i.i.i.i.i182.preheader

.lr.ph.i.i.i.i.i.i.i182.preheader:                ; preds = %.noexc191
  %33 = sub i64 %i.hd, %i.he
  %34 = add i64 %33, -8                           ; 2 uses
  %i.hq = lshr i64 %34, 3
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check913 = icmp ult i64 %34, 152
  br i1 %min.iters.check913, label %.lr.ph.i.i.i.i.i.i.i182.preheader1019, label %vector.memcheck906

vector.memcheck906:                               ; preds = %.lr.ph.i.i.i.i.i.i.i182.preheader
  %i.hs = add i64 %i.hd, -8
  %i.ht = sub i64 %i.hs, %i.he
  %i.hu = and i64 %i.ht, -8
  %i.hv = add i64 %i.hu, 8                        ; 2 uses
  %scevgep907 = getelementptr i8, ptr %i.hn, i64 %i.hv
  %scevgep908 = getelementptr i8, ptr %i.hc, i64 %i.hv
  %bound0909 = icmp ult ptr %i.hn, %scevgep908
  %bound1910 = icmp ult ptr %i.hc, %scevgep907
  %found.conflict911 = and i1 %bound0909, %bound1910
  br i1 %found.conflict911, label %.lr.ph.i.i.i.i.i.i.i182.preheader1019, label %vector.ph914

vector.ph914:                                     ; preds = %vector.memcheck906
  %n.vec916 = and i64 %i.hr, 4611686018427387900  ; 3 uses
  %i.hw = shl i64 %n.vec916, 3                    ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hn, i64 %i.hw  ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hc, i64 %i.hw
  br label %vector.body917

vector.body917:                                   ; preds = %vector.body917, %vector.ph914
  %index918 = phi i64 [ 0, %vector.ph914 ], [ %index.next923, %vector.body917 ] ; 2 uses
  %i.hz = shl i64 %index918, 3                    ; 2 uses
  %next.gep919 = getelementptr i8, ptr %i.hn, i64 %i.hz ; 2 uses
  %next.gep920 = getelementptr i8, ptr %i.hc, i64 %i.hz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.ia = getelementptr i8, ptr %next.gep920, i64 16
  %wide.load921 = load <2 x i64>, ptr %next.gep920, align 8, !tbaa !377, !alias.scope !1279, !noalias !1274
  %wide.load922 = load <2 x i64>, ptr %i.ia, align 8, !tbaa !377, !alias.scope !1279, !noalias !1274
  %i.ib = getelementptr i8, ptr %next.gep919, i64 16
  store <2 x i64> %wide.load921, ptr %next.gep919, align 8, !tbaa !377, !alias.scope !1282, !noalias !1279
  store <2 x i64> %wide.load922, ptr %i.ib, align 8, !tbaa !377, !alias.scope !1282, !noalias !1279
  %i.ic = getelementptr i8, ptr %next.gep920, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep920, align 8, !tbaa !377, !alias.scope !1279, !noalias !1274
  store <2 x ptr> splat (ptr null), ptr %i.ic, align 8, !tbaa !377, !alias.scope !1279, !noalias !1274
  %index.next923 = add nuw i64 %index918, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next923, %n.vec916
  br i1 %i.id, label %middle.block924, label %vector.body917, !llvm.loop !1284

middle.block924:                                  ; preds = %vector.body917
  %cmp.n925 = icmp eq i64 %i.hr, %n.vec916
  br i1 %cmp.n925, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186, label %.lr.ph.i.i.i.i.i.i.i182.preheader1019

.lr.ph.i.i.i.i.i.i.i182.preheader1019:            ; preds = %vector.memcheck906, %.lr.ph.i.i.i.i.i.i.i182.preheader, %middle.block924
  %.012.i.i.i.i.i.i.i183.ph = phi ptr [ %i.hn, %vector.memcheck906 ], [ %i.hn, %.lr.ph.i.i.i.i.i.i.i182.preheader ], [ %i.hx, %middle.block924 ]
  %.0911.i.i.i.i.i.i.i184.ph = phi ptr [ %i.hc, %vector.memcheck906 ], [ %i.hc, %.lr.ph.i.i.i.i.i.i.i182.preheader ], [ %i.hy, %middle.block924 ]
  br label %.lr.ph.i.i.i.i.i.i.i182

.lr.ph.i.i.i.i.i.i.i182:                          ; preds = %.lr.ph.i.i.i.i.i.i.i182.preheader1019, %.lr.ph.i.i.i.i.i.i.i182
  %.012.i.i.i.i.i.i.i183 = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i.i.i182 ], [ %.012.i.i.i.i.i.i.i183.ph, %.lr.ph.i.i.i.i.i.i.i182.preheader1019 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i184 = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i.i182 ], [ %.0911.i.i.i.i.i.i.i184.ph, %.lr.ph.i.i.i.i.i.i.i182.preheader1019 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  call void @llvm.experimental.noalias.scope.decl(metadata !1277)
  %i.ie = load i64, ptr %.0911.i.i.i.i.i.i.i184, align 8, !tbaa !377, !alias.scope !1277, !noalias !1274
  store i64 %i.ie, ptr %.012.i.i.i.i.i.i.i183, align 8, !tbaa !377, !alias.scope !1274, !noalias !1277
  store ptr null, ptr %.0911.i.i.i.i.i.i.i184, align 8, !tbaa !377, !alias.scope !1277, !noalias !1274
  %i.if = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i184, i64 8 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i183, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i185 = icmp eq ptr %i.if, %i.gx
  br i1 %.not.i.i.i.i.i.i.i185, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186, label %.lr.ph.i.i.i.i.i.i.i182, !llvm.loop !1285

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186: ; preds = %.lr.ph.i.i.i.i.i.i.i182, %middle.block924, %.noexc191
  %.0.lcssa.i.i.i.i.i.i.i187 = phi ptr [ %i.hn, %.noexc191 ], [ %i.hx, %middle.block924 ], [ %i.ig, %.lr.ph.i.i.i.i.i.i.i182 ]
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i187, i64 8
  %.not.i23.i.i.i188 = icmp eq ptr %i.hc, null
  br i1 %.not.i23.i.i.i188, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i189, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186
  call void @_ZdlPv(ptr noundef nonnull %i.hc) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i189

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i189: ; preds = %bb.bm, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i186
  store ptr %i.hn, ptr %i.gu, align 8, !tbaa !469
  store ptr %i.ih, ptr %i.gw, align 8, !tbaa !468
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hl
  store ptr %i.ii, ptr %i.gy, align 8, !tbaa !471
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit192

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit192: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i189, %bb.bk
  %i.ij = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10DPJoinNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit192
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_12NeighborInfoELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ik)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %bb.bn
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !253 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !597 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !597 ; 2 uses
  %.not524592 = icmp eq ptr %i.in, %i.ip
  br i1 %.not524592, label %._crit_edge, label %.lr.ph594

.lr.ph594:                                        ; preds = %bb.bo
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.is = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  br label %bb.bs

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit258, %bb.bo
  %i.iw = load ptr, ptr %16, align 8, !tbaa !1260
  store ptr null, ptr %16, align 8, !tbaa !1260
  %i.ix = load ptr, ptr %7, align 8, !tbaa !377   ; 3 uses
  store ptr %i.iw, ptr %7, align 8, !tbaa !377
  %.not.i.i.i.i.i195 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i.i195, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit200

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit200: ; preds = %._crit_edge
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !352
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ix) #28, !inline_history !394
  %.pr510 = load ptr, ptr %16, align 8, !tbaa !1260 ; 3 uses
  %.not.i201 = icmp eq ptr %.pr510, null
  br i1 %.not.i201, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit200
  %i.jb = load ptr, ptr %.pr510, align 8, !tbaa !352
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(280) %.pr510) #28, !inline_history !1286
  br label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit200, %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.dk

bb.bp:                                            ; preds = %bb.bc, %.loopexit541
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bq:                                            ; preds = %.invoke829, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i178, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %bb.be
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.br:                                            ; preds = %bb.bn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit192
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

bb.bs:                                            ; preds = %.lr.ph594, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit258
  %.sroa.0496.0593 = phi ptr [ %i.in, %.lr.ph594 ], [ %i.qf, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit258 ] ; 2 uses
  %i.jh = load ptr, ptr %.sroa.0496.0593, align 8, !tbaa !563 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !1166 ; 3 uses
  %i.jk = load ptr, ptr %i.ir, align 8, !tbaa !349
  %i.jl = load ptr, ptr %i.iq, align 8, !tbaa !348 ; 2 uses
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = ashr exact i64 %i.jo, 3                 ; 2 uses
  %.not.i.i202 = icmp ult i64 %i.jj, %i.jp
  br i1 %.not.i.i202, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.44, i64 noundef %i.jj, i64 noundef %i.jp) #29
          to label %.noexc203 unwind label %bb.cg

.noexc203:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.jr = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10FilterInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.jq)
          to label %bb.bv unwind label %bb.ch     ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !350
  store i64 %i.js, ptr %17, align 8, !tbaa !350
  store ptr null, ptr %i.jr, align 8, !tbaa !350
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.bw unwind label %bb.ci

bb.bw:                                            ; preds = %bb.bv
  %i.jt = load ptr, ptr %10, align 8, !tbaa !36   ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jh, i64 32 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ju)
          to label %bb.bx unwind label %bb.ci

bb.bx:                                            ; preds = %bb.bw
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !36 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !59 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !59 ; 3 uses
end_hunk_14
begin_hunk_15_@_ZN6duckdb17QueryGraphManager13GenerateJoinsERNS_6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_15JoinRelationSetE:bb.a
  %i.yl = load ptr, ptr %28, align 8, !tbaa !350  ; 3 uses
  %.not.i385 = icmp eq ptr %i.yl, null
  br i1 %.not.i385, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit387, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i386

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i386: ; preds = %bb.fn
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !352
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  %i.yo = load ptr, ptr %i.yn, align 8
  call void %i.yo(ptr noundef nonnull align 8 dereferenceable(88) %i.yl) #28, !inline_history !497
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit387

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit387: ; preds = %bb.fn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i386
  %i.yp = load ptr, ptr %27, align 8, !tbaa !377  ; 3 uses
  %.not.i388 = icmp eq ptr %i.yp, null
  br i1 %.not.i388, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit390, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i389

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i389: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit387
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !352
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8
  call void %i.ys(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.yp) #28, !inline_history !395
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit390

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit390: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit387, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i389
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.gz

.loopexit:                                        ; preds = %bb.ez, %bb.fk
  %.0101.ph = phi i1 [ true, %bb.fk ], [ false, %bb.ez ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %29, i8 0, i64 16, i1 false)
  %i.yt = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.fo unwind label %bb.fs

bb.fo:                                            ; preds = %.loopexit
  %i.yu = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb14BaseExpression4CastINS_25BoundComparisonExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.yt)
          to label %bb.fp unwind label %bb.fs     ; 3 uses

bb.fp:                                            ; preds = %bb.fo
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 88 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 96 ; 2 uses
  %i.yx = select i1 %.0101.ph, ptr %i.yw, ptr %i.yv ; 2 uses
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !350
  store ptr null, ptr %i.yx, align 8, !tbaa !350
  %i.yz = load ptr, ptr %29, align 8, !tbaa !350  ; 3 uses
  store ptr %i.yy, ptr %29, align 8, !tbaa !350
  %.not.i.i.i.i.i391 = icmp eq ptr %i.yz, null
  br i1 %.not.i.i.i.i.i391, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.fp
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !352
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 8
  %i.zc = load ptr, ptr %i.zb, align 8
  call void %i.zc(ptr noundef nonnull align 8 dereferenceable(88) %i.yz) #28, !inline_history !1299
  br label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.fp, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i
  %i.zd = select i1 %.0101.ph, ptr %i.yv, ptr %i.yw ; 2 uses
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !350
  store ptr null, ptr %i.zd, align 8, !tbaa !350
  %i.zf = load ptr, ptr %i.so, align 8, !tbaa !350 ; 3 uses
  store ptr %i.ze, ptr %i.so, align 8, !tbaa !350
  %.not.i.i.i.i.i392 = icmp eq ptr %i.zf, null
  br i1 %.not.i.i.i.i.i392, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit394, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i393

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i393: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !352
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8
  call void %i.zi(ptr noundef nonnull align 8 dereferenceable(88) %i.zf) #28, !inline_history !1299
  br label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit394

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit394: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i393
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.zk = load i8, ptr %i.zj, align 8, !tbaa !1098 ; 2 uses
  store i8 %i.zk, ptr %i.sp, align 8, !tbaa !1291
  br i1 %.0101.ph, label %bb.fq, label %bb.ft

bb.fq:                                            ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit394
  %i.zl = invoke noundef zeroext i8 @_ZN6duckdb24FlipComparisonExpressionENS_14ExpressionTypeE(i8 noundef zeroext %i.zk)
          to label %bb.fr unwind label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  store i8 %i.zl, ptr %i.sp, align 8, !tbaa !1291
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fq, %bb.fo, %.loopexit
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.ft:                                            ; preds = %bb.fr, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit394
  %i.zn = load ptr, ptr %7, align 8, !tbaa !377   ; 3 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.zp = load i8, ptr %i.zo, align 8, !tbaa !442 ; 2 uses
  %i.zq = icmp eq i8 %i.zp, 2
  br i1 %i.zq, label %bb.fu, label %bb.fx

bb.fu:                                            ; preds = %bb.ft
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  %i.zs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.zr, i64 noundef 0)
          to label %bb.fv unwind label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !377 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %.pre651 = load i8, ptr %.phi.trans.insert, align 8, !tbaa !442
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.fx:                                            ; preds = %bb.fv, %bb.ft
  %i.zv = phi i8 [ %.pre651, %bb.fv ], [ %i.zp, %bb.ft ]
  %.099 = phi ptr [ %i.zt, %bb.fv ], [ %i.zn, %bb.ft ] ; 5 uses
  %i.zw = icmp eq i8 %i.zv, 54
  br i1 %i.zw, label %bb.fy, label %bb.gt

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  %i.zx = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #30
          to label %.noexc395 unwind label %bb.go ; 3 uses

.noexc395:                                        ; preds = %bb.fy
  invoke void @_ZN6duckdb21LogicalComparisonJoinC1ENS_8JoinTypeENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(280) %i.zx, i8 noundef zeroext 3, i8 noundef zeroext 52)
          to label %bb.ga unwind label %bb.fz, !noalias !1300

bb.fz:                                            ; preds = %.noexc395
  %i.zy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.zx) #27, !noalias !1300
  br label %.body396

bb.ga:                                            ; preds = %.noexc395
  store ptr %i.zx, ptr %30, align 8, !tbaa !1260, !alias.scope !1300
  %i.zz = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.gb unwind label %.loopexit533 ; 3 uses

bb.gb:                                            ; preds = %bb.ga
  %i.aaa = getelementptr inbounds nuw i8, ptr %.099, i64 16 ; 2 uses
  %i.aab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aaa, i64 noundef 0)
          to label %bb.gc unwind label %.loopexit533 ; 4 uses

bb.gc:                                            ; preds = %bb.gb
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zz, i64 16 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zz, i64 24 ; 3 uses
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !468 ; 6 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zz, i64 32 ; 2 uses
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !471
  %.not.i.i398 = icmp eq ptr %i.aae, %i.aag
  br i1 %.not.i.i398, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.aah = load i64, ptr %i.aab, align 8, !tbaa !377
  store i64 %i.aah, ptr %i.aae, align 8, !tbaa !377
  store ptr null, ptr %i.aab, align 8, !tbaa !377
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  store ptr %i.aai, ptr %i.aad, align 8, !tbaa !468
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit413

bb.ge:                                            ; preds = %bb.gc
  %i.aaj = load ptr, ptr %i.aac, align 8, !tbaa !469 ; 10 uses
  %i.aak = ptrtoint ptr %i.aae to i64             ; 3 uses
  %i.aal = ptrtoint ptr %i.aaj to i64             ; 3 uses
  %i.aam = sub i64 %i.aak, %i.aal                 ; 3 uses
  %i.aan = icmp eq i64 %i.aam, 9223372036854775800
  br i1 %i.aan, label %.invoke840, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i399

.invoke840:                                       ; preds = %bb.gj, %bb.ge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.cont841 unwind label %.loopexit.split-lp

.cont841:                                         ; preds = %.invoke840
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i399: ; preds = %bb.ge
  %i.aao = ashr exact i64 %i.aam, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i400 = call i64 @llvm.umax.i64(i64 %i.aao, i64 1)
  %i.aap = add nsw i64 %.sroa.speculated.i.i.i.i400, %i.aao ; 2 uses
  %i.aaq = icmp ult i64 %i.aap, %i.aao
  %i.aar = call i64 @llvm.umin.i64(i64 %i.aap, i64 1152921504606846975)
  %i.aas = select i1 %i.aaq, i64 1152921504606846975, i64 %i.aar ; 3 uses
  %.not.i.i.i.i401 = icmp ne i64 %i.aas, 0
  call void @llvm.assume(i1 %.not.i.i.i.i401)
  %i.aat = shl nuw nsw i64 %i.aas, 3
  %i.aau = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aat) #30
          to label %.noexc412 unwind label %.loopexit533 ; 10 uses

.noexc412:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i399
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aau, i64 %i.aam
  %i.aaw = load i64, ptr %i.aab, align 8, !tbaa !377
  store i64 %i.aaw, ptr %i.aav, align 8, !tbaa !377
  store ptr null, ptr %i.aab, align 8, !tbaa !377
  %.not10.i.i.i.i.i.i.i402 = icmp eq ptr %i.aaj, %i.aae
  br i1 %.not10.i.i.i.i.i.i.i402, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i407, label %.lr.ph.i.i.i.i.i.i.i403.preheader

.lr.ph.i.i.i.i.i.i.i403.preheader:                ; preds = %.noexc412
  %35 = sub i64 %i.aak, %i.aal
  %36 = add i64 %35, -8                           ; 2 uses
  %i.aax = lshr i64 %36, 3
  %i.aay = add nuw nsw i64 %i.aax, 1              ; 2 uses
  %min.iters.check961 = icmp ult i64 %36, 56
  br i1 %min.iters.check961, label %.lr.ph.i.i.i.i.i.i.i403.preheader977, label %vector.memcheck952

vector.memcheck952:                               ; preds = %.lr.ph.i.i.i.i.i.i.i403.preheader
  %scevgep953 = getelementptr i8, ptr %i.aau, i64 8
  %i.aaz = add i64 %i.aak, -8
  %i.aba = sub i64 %i.aaz, %i.aal
  %i.abb = and i64 %i.aba, -8                     ; 2 uses
  %scevgep954 = getelementptr i8, ptr %scevgep953, i64 %i.abb
  %scevgep955 = getelementptr i8, ptr %i.aaj, i64 8
  %scevgep956 = getelementptr i8, ptr %scevgep955, i64 %i.abb
  %bound0957 = icmp ult ptr %i.aau, %scevgep956
  %bound1958 = icmp ult ptr %i.aaj, %scevgep954
  %found.conflict959 = and i1 %bound0957, %bound1958
  br i1 %found.conflict959, label %.lr.ph.i.i.i.i.i.i.i403.preheader977, label %vector.ph962

vector.ph962:                                     ; preds = %vector.memcheck952
  %n.vec964 = and i64 %i.aay, 4611686018427387900 ; 3 uses
  %i.abc = shl i64 %n.vec964, 3                   ; 2 uses
  %i.abd = getelementptr i8, ptr %i.aau, i64 %i.abc ; 2 uses
  %i.abe = getelementptr i8, ptr %i.aaj, i64 %i.abc
  br label %vector.body965

vector.body965:                                   ; preds = %vector.body965, %vector.ph962
  %index966 = phi i64 [ 0, %vector.ph962 ], [ %index.next971, %vector.body965 ] ; 2 uses
  %i.abf = shl i64 %index966, 3                   ; 2 uses
  %next.gep967 = getelementptr i8, ptr %i.aau, i64 %i.abf ; 2 uses
  %next.gep968 = getelementptr i8, ptr %i.aaj, i64 %i.abf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  %i.abg = getelementptr i8, ptr %next.gep968, i64 16
  %wide.load969 = load <2 x i64>, ptr %next.gep968, align 8, !tbaa !377, !alias.scope !1308, !noalias !1303
  %wide.load970 = load <2 x i64>, ptr %i.abg, align 8, !tbaa !377, !alias.scope !1308, !noalias !1303
  %i.abh = getelementptr i8, ptr %next.gep967, i64 16
  store <2 x i64> %wide.load969, ptr %next.gep967, align 8, !tbaa !377, !alias.scope !1311, !noalias !1308
  store <2 x i64> %wide.load970, ptr %i.abh, align 8, !tbaa !377, !alias.scope !1311, !noalias !1308
  %i.abi = getelementptr i8, ptr %next.gep968, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep968, align 8, !tbaa !377, !alias.scope !1308, !noalias !1303
  store <2 x ptr> splat (ptr null), ptr %i.abi, align 8, !tbaa !377, !alias.scope !1308, !noalias !1303
  %index.next971 = add nuw i64 %index966, 4       ; 2 uses
  %i.abj = icmp eq i64 %index.next971, %n.vec964
  br i1 %i.abj, label %middle.block972, label %vector.body965, !llvm.loop !1313

middle.block972:                                  ; preds = %vector.body965
  %cmp.n973 = icmp eq i64 %i.aay, %n.vec964
  br i1 %cmp.n973, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i407, label %.lr.ph.i.i.i.i.i.i.i403.preheader977

.lr.ph.i.i.i.i.i.i.i403.preheader977:             ; preds = %vector.memcheck952, %.lr.ph.i.i.i.i.i.i.i403.preheader, %middle.block972
  %.012.i.i.i.i.i.i.i404.ph = phi ptr [ %i.aau, %vector.memcheck952 ], [ %i.aau, %.lr.ph.i.i.i.i.i.i.i403.preheader ], [ %i.abd, %middle.block972 ]
  %.0911.i.i.i.i.i.i.i405.ph = phi ptr [ %i.aaj, %vector.memcheck952 ], [ %i.aaj, %.lr.ph.i.i.i.i.i.i.i403.preheader ], [ %i.abe, %middle.block972 ]
  br label %.lr.ph.i.i.i.i.i.i.i403

.lr.ph.i.i.i.i.i.i.i403:                          ; preds = %.lr.ph.i.i.i.i.i.i.i403.preheader977, %.lr.ph.i.i.i.i.i.i.i403
  %.012.i.i.i.i.i.i.i404 = phi ptr [ %i.abm, %.lr.ph.i.i.i.i.i.i.i403 ], [ %.012.i.i.i.i.i.i.i404.ph, %.lr.ph.i.i.i.i.i.i.i403.preheader977 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i405 = phi ptr [ %i.abl, %.lr.ph.i.i.i.i.i.i.i403 ], [ %.0911.i.i.i.i.i.i.i405.ph, %.lr.ph.i.i.i.i.i.i.i403.preheader977 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  %i.abk = load i64, ptr %.0911.i.i.i.i.i.i.i405, align 8, !tbaa !377, !alias.scope !1306, !noalias !1303
  store i64 %i.abk, ptr %.012.i.i.i.i.i.i.i404, align 8, !tbaa !377, !alias.scope !1303, !noalias !1306
  store ptr null, ptr %.0911.i.i.i.i.i.i.i405, align 8, !tbaa !377, !alias.scope !1306, !noalias !1303
  %i.abl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i405, i64 8 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i404, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i406 = icmp eq ptr %i.abl, %i.aae
  br i1 %.not.i.i.i.i.i.i.i406, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i407, label %.lr.ph.i.i.i.i.i.i.i403, !llvm.loop !1314

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i407: ; preds = %.lr.ph.i.i.i.i.i.i.i403, %middle.block972, %.noexc412
  %.0.lcssa.i.i.i.i.i.i.i408 = phi ptr [ %i.aau, %.noexc412 ], [ %i.abd, %middle.block972 ], [ %i.abm, %.lr.ph.i.i.i.i.i.i.i403 ]
  %i.abn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i408, i64 8
  %.not.i23.i.i.i409 = icmp eq ptr %i.aaj, null
  br i1 %.not.i23.i.i.i409, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i410, label %bb.gf

bb.gf:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i407
  call void @_ZdlPv(ptr noundef nonnull %i.aaj) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i410

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i410: ; preds = %bb.gf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i407
  store ptr %i.aau, ptr %i.aac, align 8, !tbaa !469
  store ptr %i.abn, ptr %i.aad, align 8, !tbaa !468
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %i.aas
  store ptr %i.abo, ptr %i.aaf, align 8, !tbaa !471
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit413

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit413: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i410, %bb.gd
  %i.abp = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.gg unwind label %.loopexit533 ; 3 uses

bb.gg:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit413
  %i.abq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aaa, i64 noundef 1)
          to label %bb.gh unwind label %.loopexit533 ; 4 uses

bb.gh:                                            ; preds = %bb.gg
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 16 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 24 ; 3 uses
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !468 ; 6 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abp, i64 32 ; 2 uses
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !471
  %.not.i.i414 = icmp eq ptr %i.abt, %i.abv
  br i1 %.not.i.i414, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.abw = load i64, ptr %i.abq, align 8, !tbaa !377
  store i64 %i.abw, ptr %i.abt, align 8, !tbaa !377
  store ptr null, ptr %i.abq, align 8, !tbaa !377
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  store ptr %i.abx, ptr %i.abs, align 8, !tbaa !468
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit429

bb.gj:                                            ; preds = %bb.gh
  %i.aby = load ptr, ptr %i.abr, align 8, !tbaa !469 ; 10 uses
  %i.abz = ptrtoint ptr %i.abt to i64             ; 3 uses
  %i.aca = ptrtoint ptr %i.aby to i64             ; 3 uses
  %i.acb = sub i64 %i.abz, %i.aca                 ; 3 uses
  %i.acc = icmp eq i64 %i.acb, 9223372036854775800
  br i1 %i.acc, label %.invoke840, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i415

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i415: ; preds = %bb.gj
  %i.acd = ashr exact i64 %i.acb, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i416 = call i64 @llvm.umax.i64(i64 %i.acd, i64 1)
  %i.ace = add nsw i64 %.sroa.speculated.i.i.i.i416, %i.acd ; 2 uses
  %i.acf = icmp ult i64 %i.ace, %i.acd
  %i.acg = call i64 @llvm.umin.i64(i64 %i.ace, i64 1152921504606846975)
  %i.ach = select i1 %i.acf, i64 1152921504606846975, i64 %i.acg ; 3 uses
  %.not.i.i.i.i417 = icmp ne i64 %i.ach, 0
  call void @llvm.assume(i1 %.not.i.i.i.i417)
  %i.aci = shl nuw nsw i64 %i.ach, 3
  %i.acj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aci) #30
          to label %.noexc428 unwind label %.loopexit533 ; 10 uses

.noexc428:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i415
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 %i.acb
  %i.acl = load i64, ptr %i.abq, align 8, !tbaa !377
  store i64 %i.acl, ptr %i.ack, align 8, !tbaa !377
  store ptr null, ptr %i.abq, align 8, !tbaa !377
  %.not10.i.i.i.i.i.i.i418 = icmp eq ptr %i.aby, %i.abt
  br i1 %.not10.i.i.i.i.i.i.i418, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423, label %.lr.ph.i.i.i.i.i.i.i419.preheader

.lr.ph.i.i.i.i.i.i.i419.preheader:                ; preds = %.noexc428
  %37 = sub i64 %i.abz, %i.aca
  %38 = add i64 %37, -8                           ; 2 uses
  %i.acm = lshr i64 %38, 3
  %i.acn = add nuw nsw i64 %i.acm, 1              ; 2 uses
  %min.iters.check937 = icmp ult i64 %38, 56
  br i1 %min.iters.check937, label %.lr.ph.i.i.i.i.i.i.i419.preheader976, label %vector.memcheck928

vector.memcheck928:                               ; preds = %.lr.ph.i.i.i.i.i.i.i419.preheader
  %scevgep929 = getelementptr i8, ptr %i.acj, i64 8
  %i.aco = add i64 %i.abz, -8
  %i.acp = sub i64 %i.aco, %i.aca
  %i.acq = and i64 %i.acp, -8                     ; 2 uses
  %scevgep930 = getelementptr i8, ptr %scevgep929, i64 %i.acq
  %scevgep931 = getelementptr i8, ptr %i.aby, i64 8
  %scevgep932 = getelementptr i8, ptr %scevgep931, i64 %i.acq
  %bound0933 = icmp ult ptr %i.acj, %scevgep932
  %bound1934 = icmp ult ptr %i.aby, %scevgep930
  %found.conflict935 = and i1 %bound0933, %bound1934
  br i1 %found.conflict935, label %.lr.ph.i.i.i.i.i.i.i419.preheader976, label %vector.ph938

vector.ph938:                                     ; preds = %vector.memcheck928
  %n.vec940 = and i64 %i.acn, 4611686018427387900 ; 3 uses
  %i.acr = shl i64 %n.vec940, 3                   ; 2 uses
  %i.acs = getelementptr i8, ptr %i.acj, i64 %i.acr ; 2 uses
  %i.act = getelementptr i8, ptr %i.aby, i64 %i.acr
  br label %vector.body941

vector.body941:                                   ; preds = %vector.body941, %vector.ph938
  %index942 = phi i64 [ 0, %vector.ph938 ], [ %index.next947, %vector.body941 ] ; 2 uses
  %i.acu = shl i64 %index942, 3                   ; 2 uses
  %next.gep943 = getelementptr i8, ptr %i.acj, i64 %i.acu ; 2 uses
  %next.gep944 = getelementptr i8, ptr %i.aby, i64 %i.acu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.acv = getelementptr i8, ptr %next.gep944, i64 16
  %wide.load945 = load <2 x i64>, ptr %next.gep944, align 8, !tbaa !377, !alias.scope !1320, !noalias !1315
  %wide.load946 = load <2 x i64>, ptr %i.acv, align 8, !tbaa !377, !alias.scope !1320, !noalias !1315
  %i.acw = getelementptr i8, ptr %next.gep943, i64 16
  store <2 x i64> %wide.load945, ptr %next.gep943, align 8, !tbaa !377, !alias.scope !1323, !noalias !1320
  store <2 x i64> %wide.load946, ptr %i.acw, align 8, !tbaa !377, !alias.scope !1323, !noalias !1320
  %i.acx = getelementptr i8, ptr %next.gep944, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep944, align 8, !tbaa !377, !alias.scope !1320, !noalias !1315
  store <2 x ptr> splat (ptr null), ptr %i.acx, align 8, !tbaa !377, !alias.scope !1320, !noalias !1315
  %index.next947 = add nuw i64 %index942, 4       ; 2 uses
  %i.acy = icmp eq i64 %index.next947, %n.vec940
  br i1 %i.acy, label %middle.block948, label %vector.body941, !llvm.loop !1325

middle.block948:                                  ; preds = %vector.body941
  %cmp.n949 = icmp eq i64 %i.acn, %n.vec940
  br i1 %cmp.n949, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423, label %.lr.ph.i.i.i.i.i.i.i419.preheader976

.lr.ph.i.i.i.i.i.i.i419.preheader976:             ; preds = %vector.memcheck928, %.lr.ph.i.i.i.i.i.i.i419.preheader, %middle.block948
  %.012.i.i.i.i.i.i.i420.ph = phi ptr [ %i.acj, %vector.memcheck928 ], [ %i.acj, %.lr.ph.i.i.i.i.i.i.i419.preheader ], [ %i.acs, %middle.block948 ]
  %.0911.i.i.i.i.i.i.i421.ph = phi ptr [ %i.aby, %vector.memcheck928 ], [ %i.aby, %.lr.ph.i.i.i.i.i.i.i419.preheader ], [ %i.act, %middle.block948 ]
  br label %.lr.ph.i.i.i.i.i.i.i419

.lr.ph.i.i.i.i.i.i.i419:                          ; preds = %.lr.ph.i.i.i.i.i.i.i419.preheader976, %.lr.ph.i.i.i.i.i.i.i419
  %.012.i.i.i.i.i.i.i420 = phi ptr [ %i.adb, %.lr.ph.i.i.i.i.i.i.i419 ], [ %.012.i.i.i.i.i.i.i420.ph, %.lr.ph.i.i.i.i.i.i.i419.preheader976 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i421 = phi ptr [ %i.ada, %.lr.ph.i.i.i.i.i.i.i419 ], [ %.0911.i.i.i.i.i.i.i421.ph, %.lr.ph.i.i.i.i.i.i.i419.preheader976 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.acz = load i64, ptr %.0911.i.i.i.i.i.i.i421, align 8, !tbaa !377, !alias.scope !1318, !noalias !1315
  store i64 %i.acz, ptr %.012.i.i.i.i.i.i.i420, align 8, !tbaa !377, !alias.scope !1315, !noalias !1318
  store ptr null, ptr %.0911.i.i.i.i.i.i.i421, align 8, !tbaa !377, !alias.scope !1318, !noalias !1315
  %i.ada = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i421, i64 8 ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i420, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i422 = icmp eq ptr %i.ada, %i.abt
  br i1 %.not.i.i.i.i.i.i.i422, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423, label %.lr.ph.i.i.i.i.i.i.i419, !llvm.loop !1326

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423: ; preds = %.lr.ph.i.i.i.i.i.i.i419, %middle.block948, %.noexc428
  %.0.lcssa.i.i.i.i.i.i.i424 = phi ptr [ %i.acj, %.noexc428 ], [ %i.acs, %middle.block948 ], [ %i.adb, %.lr.ph.i.i.i.i.i.i.i419 ]
  %i.adc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i424, i64 8
  %.not.i23.i.i.i425 = icmp eq ptr %i.aby, null
  br i1 %.not.i23.i.i.i425, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i426, label %bb.gk

bb.gk:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423
  call void @_ZdlPv(ptr noundef nonnull %i.aby) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i426

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i426: ; preds = %bb.gk, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i423
  store ptr %i.acj, ptr %i.abr, align 8, !tbaa !469
  store ptr %i.adc, ptr %i.abs, align 8, !tbaa !468
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %i.acj, i64 %i.ach
  store ptr %i.add, ptr %i.abu, align 8, !tbaa !471
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit429

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit429: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i426, %bb.gi
  %i.ade = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.gl unwind label %.loopexit533 ; 3 uses

bb.gl:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit429
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 192 ; 2 uses
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !1213 ; 6 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ade, i64 200
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !1294
  %.not.i.i430 = icmp eq ptr %i.adg, %i.adi
  br i1 %.not.i.i430, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.adj = load i64, ptr %29, align 8, !tbaa !350
  store i64 %i.adj, ptr %i.adg, align 8, !tbaa !350
  store ptr null, ptr %29, align 8, !tbaa !350
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adg, i64 8
  %i.adl = load i64, ptr %i.so, align 8, !tbaa !350
  store i64 %i.adl, ptr %i.adk, align 8, !tbaa !350
  store ptr null, ptr %i.so, align 8, !tbaa !350
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adg, i64 16
  %i.adn = load i8, ptr %i.sp, align 8, !tbaa !1291
  store i8 %i.adn, ptr %i.adm, align 8, !tbaa !1291
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adg, i64 24
  store ptr %i.ado, ptr %i.adf, align 8, !tbaa !1213
  br label %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit432

bb.gn:                                            ; preds = %bb.gl
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ade, i64 184
  invoke void @_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.adp, ptr %i.adg, ptr noundef nonnull align 8 dereferenceable(17) %29)
          to label %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit432 unwind label %.loopexit533

_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit432: ; preds = %bb.gm, %bb.gn
  %i.adq = load ptr, ptr %7, align 8, !tbaa !377  ; 2 uses
  %i.adr = icmp eq ptr %.099, %i.adq
  %i.ads = load ptr, ptr %30, align 8, !tbaa !1260 ; 5 uses
  store ptr null, ptr %30, align 8, !tbaa !1260
  br i1 %i.adr, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i434, label %bb.gp

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i434: ; preds = %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit432
  store ptr %i.ads, ptr %7, align 8, !tbaa !377
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit438.sink.split

bb.go:                                            ; preds = %bb.fy
  %i.adt = landingpad { ptr, i32 }
          cleanup
  br label %.body396

.loopexit533:                                     ; preds = %bb.ga, %bb.gb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit413, %bb.gg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit429, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i399, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i415, %bb.gn
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit447

.loopexit.split-lp:                               ; preds = %.invoke840
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit447

bb.gp:                                            ; preds = %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit432
  %i.adu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.gq unwind label %bb.gs

bb.gq:                                            ; preds = %bb.gp
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 16
  %i.adw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.adv, i64 noundef 0)
          to label %bb.gr unwind label %bb.gs     ; 2 uses

bb.gr:                                            ; preds = %bb.gq
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !377 ; 2 uses
  store ptr %i.ads, ptr %i.adw, align 8, !tbaa !377
  %.not.i.i.i.i.i439 = icmp eq ptr %i.adx, null
  br i1 %.not.i.i.i.i.i439, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit438, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit438.sink.split

bb.gs:                                            ; preds = %bb.gq, %bb.gp
  %i.ady = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i445 = icmp eq ptr %i.ads, null
  br i1 %.not.i445, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit447, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i446

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i446: ; preds = %bb.gs
  %i.adz = load ptr, ptr %i.ads, align 8, !tbaa !352
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 8
  %i.aeb = load ptr, ptr %i.aea, align 8
  call void %i.aeb(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ads) #28, !inline_history !395
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit447

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit438.sink.split: ; preds = %bb.gr, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i434
  %.sink846 = phi ptr [ %i.adq, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i434 ], [ %i.adx, %bb.gr ] ; 2 uses
  %i.aec = load ptr, ptr %.sink846, align 8, !tbaa !352
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  %i.aee = load ptr, ptr %i.aed, align 8
  call void %i.aee(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.sink846) #28
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit438

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit438: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit438.sink.split, %bb.gr
  %.pr522 = load ptr, ptr %30, align 8, !tbaa !1260 ; 3 uses
  %.not.i448 = icmp eq ptr %.pr522, null
  br i1 %.not.i448, label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit450, label %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i449

_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i449: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit438
  %i.aef = load ptr, ptr %.pr522, align 8, !tbaa !352
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  %i.aeh = load ptr, ptr %i.aeg, align 8
  call void %i.aeh(ptr noundef nonnull align 8 dereferenceable(280) %.pr522) #28, !inline_history !1286
  br label %_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit450

_ZNSt10unique_ptrIN6duckdb21LogicalComparisonJoinESt14default_deleteIS1_EED2Ev.exit450: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit438, %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i449
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  br label %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit456

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit447: ; preds = %.loopexit533, %.loopexit.split-lp, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i446, %bb.gs
  %.pn125 = phi { ptr, i32 } [ %i.ady, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i446 ], [ %i.ady, %bb.gs ], [ %lpad.loopexit, %.loopexit533 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.aei = load ptr, ptr %30, align 8, !tbaa !1260 ; 3 uses
  %.not.i451 = icmp eq ptr %i.aei, null
  br i1 %.not.i451, label %.body396, label %_ZNKSt14default_deleteIN6duckdb21LogicalComparisonJoinEEclEPS1_.exit.i452

end_hunk_15
begin_hunk_16_@_ZN6duckdb17QueryGraphManager13GenerateJoinsERNS_6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEERNS_15JoinRelationSetE:bb.a
  %i.afb = load ptr, ptr %i.afa, align 8
  call void %i.afb(ptr noundef nonnull align 8 dereferenceable(88) %i.aey) #28, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i459

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i459: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i458, %_ZNSt6vectorIN6duckdb13JoinConditionESaIS1_EE9push_backEOS1_.exit456
  %i.afc = load ptr, ptr %29, align 8, !tbaa !350 ; 3 uses
  %.not.i1.i460 = icmp eq ptr %i.afc, null
  br i1 %.not.i1.i460, label %_ZN6duckdb13JoinConditionD2Ev.exit462, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i461

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i461: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i459
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !352
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 8
  %i.aff = load ptr, ptr %i.afe, align 8
  call void %i.aff(ptr noundef nonnull align 8 dereferenceable(88) %i.afc) #28, !inline_history !1295
  br label %_ZN6duckdb13JoinConditionD2Ev.exit462

_ZN6duckdb13JoinConditionD2Ev.exit462:            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i459, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i461
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.gx

bb.gx:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit384, %_ZN6duckdb13JoinConditionD2Ev.exit462
  %i.afg = load ptr, ptr %22, align 8, !tbaa !350 ; 2 uses
  %.not.i463 = icmp eq ptr %i.afg, null
  br i1 %.not.i463, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split.sink.split

bb.gy:                                            ; preds = %bb.fw, %.body396, %bb.gw, %bb.fs
  %.pn125.pn.pn.pn = phi { ptr, i32 } [ %i.zm, %bb.fs ], [ %.pn125.pn, %.body396 ], [ %i.aex, %bb.gw ], [ %i.zu, %bb.fw ]
  %i.afh = load ptr, ptr %i.so, align 8, !tbaa !350 ; 3 uses
  %.not.i.i466 = icmp eq ptr %i.afh, null
  br i1 %.not.i.i466, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i468, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i467

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i467: ; preds = %bb.gy
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !352
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8
  call void %i.afk(ptr noundef nonnull align 8 dereferenceable(88) %i.afh) #28, !inline_history !1295
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i468

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i468: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i467, %bb.gy
  %i.afl = load ptr, ptr %29, align 8, !tbaa !350 ; 3 uses
  %.not.i1.i469 = icmp eq ptr %i.afl, null
  br i1 %.not.i1.i469, label %_ZN6duckdb13JoinConditionD2Ev.exit471, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i470

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i470: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i468
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !352
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %i.afo = load ptr, ptr %i.afn, align 8
  call void %i.afo(ptr noundef nonnull align 8 dereferenceable(88) %i.afl) #28, !inline_history !1295
  br label %_ZN6duckdb13JoinConditionD2Ev.exit471

_ZN6duckdb13JoinConditionD2Ev.exit471:            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i468, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i2.i470
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %bb.gz

bb.gz:                                            ; preds = %bb.fb, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit390, %_ZN6duckdb13JoinConditionD2Ev.exit471, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit320
  %.pn125.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ut, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit320 ], [ %.pn125.pn.pn.pn, %_ZN6duckdb13JoinConditionD2Ev.exit471 ], [ %i.yk, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit390 ], [ %i.wl, %bb.fb ] ; 2 uses
  %i.afp = load ptr, ptr %22, align 8, !tbaa !350 ; 3 uses
  %.not.i472 = icmp eq ptr %i.afp, null
  br i1 %.not.i472, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473: ; preds = %bb.gz
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !352
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8
  call void %i.afs(ptr noundef nonnull align 8 dereferenceable(88) %i.afp) #28, !inline_history !497
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473, %bb.gz, %bb.eo
  %.pn125.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.us, %bb.eo ], [ %.pn125.pn.pn.pn.pn.pn, %bb.gz ], [ %.pn125.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.ha

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split.sink.split: ; preds = %bb.gx, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit311
  %.sink850 = phi ptr [ %i.up, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit311 ], [ %i.afg, %bb.gx ] ; 2 uses
  %i.aft = load ptr, ptr %.sink850, align 8, !tbaa !352
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 8
  %i.afv = load ptr, ptr %i.afu, align 8
  call void %i.afv(ptr noundef nonnull align 8 dereferenceable(88) %.sink850) #28
  br label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split: ; preds = %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split.sink.split, %bb.gx, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit311
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread: ; preds = %bb.eh, %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit299.thread.sink.split, %bb.ee, %bb.eb, %bb.ec
  %i.afw = getelementptr inbounds nuw i8, ptr %.sroa.0484.0596, i64 8 ; 2 uses
  %.not526 = icmp eq ptr %i.afw, %i.sn
  br i1 %.not526, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit285, label %bb.dy

bb.ha:                                            ; preds = %bb.em, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474, %bb.en, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ae, %_ZN6duckdb20GenerateJoinRelationD2Ev.exit278, %bb.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p, %bb.n, %bb.m
  %.pn136.pn = phi { ptr, i32 } [ %.pn136508, %bb.p ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ai, %bb.m ], [ %i.aj, %bb.n ], [ %i.ur, %bb.en ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ck, %bb.ae ], [ %i.sc, %bb.du ], [ %.pn121.pn.pn, %_ZN6duckdb20GenerateJoinRelationD2Ev.exit278 ], [ %i.uq, %bb.em ], [ %.pn125.pn.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474 ]
  %i.afx = load ptr, ptr %7, align 8, !tbaa !377  ; 3 uses
  %.not.i475 = icmp eq ptr %i.afx, null
  br i1 %.not.i475, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit477, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i476

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i476: ; preds = %bb.ha
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !352
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afy, i64 8
  %i.aga = load ptr, ptr %i.afz, align 8
  call void %i.aga(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.afx) #28, !inline_history !395
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit477

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit477: ; preds = %bb.ha, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i476
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn136.pn

bb.hb:                                            ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL10PushFilterENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEENS0_INS_10ExpressionES2_IS5_ELb1EEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.961", align 8 ; 10 uses
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !442
  %.not = icmp eq i8 %i.c, 2
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %i.d = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #30, !noalias !1327 ; 3 uses
  invoke void @_ZN6duckdb13LogicalFilterC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
          to label %_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !1327

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit6, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.bc, %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #27, !noalias !1327
  br label %common.resume

_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.d, ptr %3, align 8, !tbaa !1330, !alias.scope !1327
  %i.f = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13LogicalFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.h       ; 3 uses

bb.d:                                             ; preds = %_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !468  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !471
  %.not.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i, label %bb.e, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.d
  %i.l = load i64, ptr %1, align 8, !tbaa !377
  store i64 %i.l, ptr %i.i, align 8, !tbaa !377
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.m, ptr %i.h, align 8, !tbaa !468
  %i.n = load ptr, ptr %3, align 8, !tbaa !1330
  store ptr %i.n, ptr %1, align 8, !tbaa !377
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !469  ; 10 uses
  %i.p = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #30
          to label %.noexc2 unwind label %bb.h    ; 10 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = load i64, ptr %1, align 8, !tbaa !377
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !377
  store ptr null, ptr %1, align 8, !tbaa !377
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc2
  %4 = sub i64 %i.p, %i.q
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ac = lshr i64 %5, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %5, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader60, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ae = add i64 %i.p, -8
  %i.af = sub i64 %i.ae, %i.q
  %i.ag = and i64 %i.af, -8
  %i.ah = add i64 %i.ag, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.ah
  %scevgep33 = getelementptr i8, ptr %i.o, i64 %i.ah
  %bound0 = icmp ult ptr %i.z, %scevgep33
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader60, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ad, 4611686018427387900     ; 3 uses
  %i.ai = shl i64 %n.vec, 3                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.z, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.o, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.al ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.o, i64 %i.al ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.am = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep34, align 8, !tbaa !377, !alias.scope !1337, !noalias !1332
  %wide.load35 = load <2 x i64>, ptr %i.am, align 8, !tbaa !377, !alias.scope !1337, !noalias !1332
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !377, !alias.scope !1340, !noalias !1337
  store <2 x i64> %wide.load35, ptr %i.an, align 8, !tbaa !377, !alias.scope !1340, !noalias !1337
  %i.ao = getelementptr i8, ptr %next.gep34, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep34, align 8, !tbaa !377, !alias.scope !1337, !noalias !1332
  store <2 x ptr> splat (ptr null), ptr %i.ao, align 8, !tbaa !377, !alias.scope !1337, !noalias !1332
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader60

.lr.ph.i.i.i.i.i.i.i.preheader60:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader60, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader60 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader60 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1335, !noalias !1332
  store i64 %i.aq, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1332, !noalias !1335
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !377, !alias.scope !1335, !noalias !1332
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1343

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc2
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.z, %.noexc2 ], [ %i.aj, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.o) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.g
  store ptr %i.z, ptr %i.g, align 8, !tbaa !469
  store ptr %i.at, ptr %i.h, align 8, !tbaa !468
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.au, ptr %i.j, align 8, !tbaa !471
  %.pr = load ptr, ptr %1, align 8, !tbaa !377    ; 3 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !1330
  store ptr null, ptr %3, align 8, !tbaa !1330
  store ptr %i.av, ptr %1, align 8, !tbaa !377
  %.not.i.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.aw = load ptr, ptr %.pr, align 8, !tbaa !352
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.pr) #28, !inline_history !394
  %.pr19 = load ptr, ptr %3, align 8, !tbaa !1330 ; 3 uses
  %.not.i3 = icmp eq ptr %.pr19, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.az = load ptr, ptr %.pr19, align 8, !tbaa !352
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(128) %.pr19) #28, !inline_history !1344
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.f, %_ZN6duckdb9make_uniqINS_13LogicalFilterEJEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %i.bd = load ptr, ptr %3, align 8, !tbaa !1330  ; 3 uses
  %.not.i4 = icmp eq ptr %i.bd, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit6, label %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i5

_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i5: ; preds = %bb.h
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !352
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #28, !inline_history !1344
  br label %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit6

_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit6: ; preds = %bb.h, %_ZNKSt14default_deleteIN6duckdb13LogicalFilterEEclEPS1_.exit.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb13LogicalFilterESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %i.bh = call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.bi = call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb15LogicalOperator4CastINS_13LogicalFilterEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %i.bh) ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !373 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 56 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !902
  %.not.i.i7 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i7, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = load i64, ptr %2, align 8, !tbaa !350
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !350
  store ptr null, ptr %2, align 8, !tbaa !350
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !373
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.k:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !372 ; 10 uses
  %i.br = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = sub i64 %i.br, %i.bs                    ; 3 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.l, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i8 = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i8, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i9 = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #30 ; 10 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt
  %i.cd = load i64, ptr %2, align 8, !tbaa !350
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !350
  store ptr null, ptr %2, align 8, !tbaa !350
  %.not10.i.i.i.i.i.i.i10 = icmp eq ptr %i.bq, %i.bl
  br i1 %.not10.i.i.i.i.i.i.i10, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i11.preheader

.lr.ph.i.i.i.i.i.i.i11.preheader:                 ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %6 = sub i64 %i.br, %i.bs
  %7 = add i64 %6, -8                             ; 2 uses
  %i.ce = lshr i64 %7, 3
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check44 = icmp ult i64 %7, 152
  br i1 %min.iters.check44, label %.lr.ph.i.i.i.i.i.i.i11.preheader59, label %vector.memcheck37

vector.memcheck37:                                ; preds = %.lr.ph.i.i.i.i.i.i.i11.preheader
  %i.cg = add i64 %i.br, -8
  %i.ch = sub i64 %i.cg, %i.bs
  %i.ci = and i64 %i.ch, -8
  %i.cj = add i64 %i.ci, 8                        ; 2 uses
  %scevgep38 = getelementptr i8, ptr %i.cb, i64 %i.cj
  %scevgep39 = getelementptr i8, ptr %i.bq, i64 %i.cj
  %bound040 = icmp ult ptr %i.cb, %scevgep39
  %bound141 = icmp ult ptr %i.bq, %scevgep38
  %found.conflict42 = and i1 %bound040, %bound141
  br i1 %found.conflict42, label %.lr.ph.i.i.i.i.i.i.i11.preheader59, label %vector.ph45

vector.ph45:                                      ; preds = %vector.memcheck37
  %n.vec47 = and i64 %i.cf, 4611686018427387900   ; 3 uses
  %i.ck = shl i64 %n.vec47, 3                     ; 2 uses
  %i.cl = getelementptr i8, ptr %i.cb, i64 %i.ck  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bq, i64 %i.ck
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body48 ] ; 2 uses
  %i.cn = shl i64 %index49, 3                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.cb, i64 %i.cn ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.bq, i64 %i.cn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %i.co = getelementptr i8, ptr %next.gep51, i64 16
  %wide.load52 = load <2 x i64>, ptr %next.gep51, align 8, !tbaa !350, !alias.scope !1350, !noalias !1345
  %wide.load53 = load <2 x i64>, ptr %i.co, align 8, !tbaa !350, !alias.scope !1350, !noalias !1345
  %i.cp = getelementptr i8, ptr %next.gep50, i64 16
  store <2 x i64> %wide.load52, ptr %next.gep50, align 8, !tbaa !350, !alias.scope !1353, !noalias !1350
  store <2 x i64> %wide.load53, ptr %i.cp, align 8, !tbaa !350, !alias.scope !1353, !noalias !1350
  %i.cq = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep51, align 8, !tbaa !350, !alias.scope !1350, !noalias !1345
  store <2 x ptr> splat (ptr null), ptr %i.cq, align 8, !tbaa !350, !alias.scope !1350, !noalias !1345
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %i.cr = icmp eq i64 %index.next54, %n.vec47
  br i1 %i.cr, label %middle.block55, label %vector.body48, !llvm.loop !1355

middle.block55:                                   ; preds = %vector.body48
  %cmp.n56 = icmp eq i64 %i.cf, %n.vec47
  br i1 %cmp.n56, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i11.preheader59

.lr.ph.i.i.i.i.i.i.i11.preheader59:               ; preds = %vector.memcheck37, %.lr.ph.i.i.i.i.i.i.i11.preheader, %middle.block55
  %.012.i.i.i.i.i.i.i12.ph = phi ptr [ %i.cb, %vector.memcheck37 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i11.preheader ], [ %i.cl, %middle.block55 ]
  %.0911.i.i.i.i.i.i.i13.ph = phi ptr [ %i.bq, %vector.memcheck37 ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i11.preheader ], [ %i.cm, %middle.block55 ]
  br label %.lr.ph.i.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i.i11:                           ; preds = %.lr.ph.i.i.i.i.i.i.i11.preheader59, %.lr.ph.i.i.i.i.i.i.i11
  %.012.i.i.i.i.i.i.i12 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i11 ], [ %.012.i.i.i.i.i.i.i12.ph, %.lr.ph.i.i.i.i.i.i.i11.preheader59 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i13 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i11 ], [ %.0911.i.i.i.i.i.i.i13.ph, %.lr.ph.i.i.i.i.i.i.i11.preheader59 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  %i.cs = load i64, ptr %.0911.i.i.i.i.i.i.i13, align 8, !tbaa !350, !alias.scope !1348, !noalias !1345
  store i64 %i.cs, ptr %.012.i.i.i.i.i.i.i12, align 8, !tbaa !350, !alias.scope !1345, !noalias !1348
  store ptr null, ptr %.0911.i.i.i.i.i.i.i13, align 8, !tbaa !350, !alias.scope !1348, !noalias !1345
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i13, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i12, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i14 = icmp eq ptr %i.ct, %i.bl
  br i1 %.not.i.i.i.i.i.i.i14, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i11, !llvm.loop !1356

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i11, %middle.block55, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i15 = phi ptr [ %i.cb, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.cl, %middle.block55 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i11 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i15, i64 8
  %.not.i23.i.i.i16 = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i16, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #27
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.cb, ptr %i.bj, align 8, !tbaa !372
  store ptr %i.cv, ptr %i.bk, align 8, !tbaa !373
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cw, ptr %i.bm, align 8, !tbaa !902
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.cx = load i64, ptr %1, align 8, !tbaa !377
  store i64 %i.cx, ptr %0, align 8, !tbaa !377
  store ptr null, ptr %1, align 8, !tbaa !377
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !469    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !468  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !377 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !352
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.d) #28, !inline_history !1357
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !500

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !469
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #27
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN6duckdb19LogicalCrossProduct6CreateENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.327") align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1260   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_21LogicalComparisonJoinESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
end_hunk_16
begin_hunk_17_@_ZNSt6vectorImSaImEE15_M_range_insertINSt8__detail14_Node_iteratorImLb1ELb0EEEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EET_SA_St20forward_iterator_tag:bb.a
  %.08.i.i.i.i.i56 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i55 ], [ %1, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit53 ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i57 = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i55 ], [ %2, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit53 ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i57, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !19
  store i64 %i.bi, ptr %.08.i.i.i.i.i56, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i56, i64 8
  %i.bk = load ptr, ptr %.sroa.03.07.i.i.i.i.i57, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i58 = icmp eq ptr %i.bk, %.sroa.0.0
  br i1 %.not.i.i.i.i.i58, label %_ZSt4copyINSt8__detail14_Node_iteratorImLb1ELb0EEEN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i55, !llvm.loop !1507

bb.n:                                             ; preds = %_ZSt10__distanceINSt8__detail14_Node_iteratorImLb1ELb0EEEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit
  %i.bl = load ptr, ptr %0, align 8, !tbaa !7     ; 5 uses
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bn = sub i64 %i.h, %i.bm
  %i.bo = ashr exact i64 %i.bn, 3                 ; 4 uses
  %i.bp = sub nsw i64 1152921504606846975, %i.bo
  %.not = icmp ugt i64 %i.bp, %.06.i
  br i1 %.not, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #29
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.b)
  %i.bq = add nsw i64 %.sroa.speculated.i, %i.bo  ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bo
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i61 = icmp eq i64 %i.bt, 0
  br i1 %.not.i61, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #30
  br label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit, %bb.p
  %i.bw = phi ptr [ %i.bv, %bb.p ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bx = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.by = sub i64 %i.bx, %i.bm                    ; 4 uses
  %i.bz = icmp sgt i64 %i.by, 8
  br i1 %i.bz, label %bb.q, label %bb.r, !prof !153

bb.q:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bw, ptr align 8 %i.bl, i64 %i.by, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit
  %i.ca = icmp eq i64 %i.by, 8
  br i1 %i.ca, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = load i64, ptr %i.bl, align 8, !tbaa !19
  store i64 %i.cb, ptr %i.bw, align 8, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cc = getelementptr inbounds i8, ptr %i.bw, i64 %i.by
  br label %.lr.ph.i.i.i.i.i.i.i.i63

.lr.ph.i.i.i.i.i.i.i.i63:                         ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i.i.i63
  %.08.i.i.i.i.i.i.i.i64 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i63 ], [ %i.cc, %bb.t ] ; 2 uses
  %.sroa.03.07.i.i.i.i.i.i.i.i65 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i63 ], [ %2, %bb.t ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i.i.i.i.i.i65, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !19
  store i64 %i.ce, ptr %.08.i.i.i.i.i.i.i.i64, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i64, i64 8 ; 4 uses
  %i.cg = load ptr, ptr %.sroa.03.07.i.i.i.i.i.i.i.i65, align 8, !tbaa !33 ; 2 uses
  %.not.i.i.i.i.i.i.i.i66 = icmp eq ptr %i.cg, %3
  br i1 %.not.i.i.i.i.i.i.i.i66, label %_ZSt22__uninitialized_copy_aINSt8__detail14_Node_iteratorImLb1ELb0EEEPmmET0_T_S5_S4_RSaIT1_E.exit68, label %.lr.ph.i.i.i.i.i.i.i.i63, !llvm.loop !1507

_ZSt22__uninitialized_copy_aINSt8__detail14_Node_iteratorImLb1ELb0EEEPmmET0_T_S5_S4_RSaIT1_E.exit68: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63
  %i.ch = sub i64 %i.h, %i.bx                     ; 4 uses
  %i.ci = icmp sgt i64 %i.ch, 8
  br i1 %i.ci, label %bb.u, label %bb.v, !prof !153

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aINSt8__detail14_Node_iteratorImLb1ELb0EEEPmmET0_T_S5_S4_RSaIT1_E.exit68
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %1, i64 %i.ch, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aINSt8__detail14_Node_iteratorImLb1ELb0EEEPmmET0_T_S5_S4_RSaIT1_E.exit68
  %i.cj = icmp eq i64 %i.ch, 8
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ck = load i64, ptr %1, align 8, !tbaa !19
  store i64 %i.ck, ptr %i.cf, align 8, !tbaa !19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cl = getelementptr inbounds i8, ptr %i.cf, i64 %i.ch
  %.not.i70 = icmp eq ptr %i.bl, null
  br i1 %.not.i70, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_ZdlPv(ptr noundef nonnull %i.bl) #27
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.bw, ptr %0, align 8, !tbaa !7
  store ptr %i.cl, ptr %i.e, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bt
  store ptr %i.cm, ptr %i.c, align 8, !tbaa !55
  br label %_ZSt4copyINSt8__detail14_Node_iteratorImLb1ELb0EEEN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SB_SA_.exit

_ZSt4copyINSt8__detail14_Node_iteratorImLb1ELb0EEEN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i55, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit53, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRN6duckdb12NeighborInfoEEZNKS0_15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES6_E3$_0E9_M_invokeERKSt9_Any_dataS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1510, !nonnull !362, !align !363 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_15JoinRelationSetELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !59   ; 3 uses
  %i.g = icmp ule i64 %i.d, %i.f
  %.not18.i.i.i.i = icmp ne i64 %i.f, 0
  %or.cond.i.i.i.i = and i1 %i.g, %.not18.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.lr.ph.i.i.i.i, label %"_ZSt10__invoke_rIbRZNK6duckdb15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES3_E3$_0JRNS0_12NeighborInfoEEENSt9enable_ifIXntsr7is_voidIT_EE5valueES9_E4typeEOT0_DpOT1_.exit"

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !68
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.01320.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.01419.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.01419.i.i.i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01320.i.i.i.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !19
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = add i64 %.01419.i.i.i.i, 1               ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.d
  br i1 %i.p, label %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i.i.i.i = phi i64 [ %i.o, %bb.c ], [ %.01419.i.i.i.i, %bb.b ]
  %i.q = add nuw i64 %.01320.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.q, %i.f
  br i1 %exitcond.not.i.i.i.i, label %"_ZSt10__invoke_rIbRZNK6duckdb15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES3_E3$_0JRNS0_12NeighborInfoEEENSt9enable_ifIXntsr7is_voidIT_EE5valueES9_E4typeEOT0_DpOT1_.exit", label %bb.b, !llvm.loop !198

_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.i.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1512, !nonnull !362, !align !363 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1513 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1514
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.i.i.i
  %i.x = ptrtoint ptr %1 to i64
  store i64 %i.x, ptr %i.u, align 8
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !1513
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %i.t, align 8, !tbaa !1513
  br label %"_ZSt10__invoke_rIbRZNK6duckdb15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES3_E3$_0JRNS0_12NeighborInfoEEENSt9enable_ifIXntsr7is_voidIT_EE5valueES9_E4typeEOT0_DpOT1_.exit"

bb.f:                                             ; preds = %_ZN6duckdb15JoinRelationSet8IsSubsetERS0_S1_.exit.i.i.i
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !171 ; 7 uses
  %i.ab = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.g, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #30 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = ptrtoint ptr %1 to i64
  store i64 %i.an, ptr %i.am, align 8
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.u
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.ao = ptrtoaddr ptr %i.al to i64
  %2 = sub i64 %i.ab, %i.ac
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ap = lshr i64 %3, 3
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 56
  %i.ar = sub i64 %i.ao, %i.ac
  %diff.check = icmp ult i64 %i.ar, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.aa, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.av ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.aa, i64 %i.av ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.aw = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep8, align 8, !alias.scope !1518, !noalias !1515
  %wide.load9 = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !1518, !noalias !1515
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1515, !noalias !1518
  store <2 x i64> %wide.load9, ptr %i.ax, align 8, !alias.scope !1515, !noalias !1518
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1520

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader11:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader11 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.az = load i64, ptr %.0911.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1518, !noalias !1515
  store i64 %i.az, ptr %.012.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1515, !noalias !1518
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1521

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i ], [ %i.at, %middle.block ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.aa) #27
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i.i.i.i
  store ptr %i.al, ptr %i.s, align 8, !tbaa !171
  store ptr %i.bc, ptr %i.t, align 8, !tbaa !1513
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bd, ptr %i.v, align 8, !tbaa !1514
  br label %"_ZSt10__invoke_rIbRZNK6duckdb15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES3_E3$_0JRNS0_12NeighborInfoEEENSt9enable_ifIXntsr7is_voidIT_EE5valueES9_E4typeEOT0_DpOT1_.exit"

"_ZSt10__invoke_rIbRZNK6duckdb15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES3_E3$_0JRNS0_12NeighborInfoEEENSt9enable_ifIXntsr7is_voidIT_EE5valueES9_E4typeEOT0_DpOT1_.exit": ; preds = %bb.d, %bb.a, %bb.e, %_ZNSt6vectorISt17reference_wrapperIN6duckdb12NeighborInfoEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRN6duckdb12NeighborInfoEEZNKS0_15QueryGraphEdges14GetConnectionsERNS0_15JoinRelationSetES6_E3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb15QueryGraphEdges14GetConnectionsERNS1_15JoinRelationSetES4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZNK6duckdb15QueryGraphEdges14GetConnectionsERNS_15JoinRelationSetES2_E3$_0", ptr %0, align 8, !tbaa !1483
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb15QueryGraphEdges14GetConnectionsERNS1_15JoinRelationSetES4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !619
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb15QueryGraphEdges14GetConnectionsERNS1_15JoinRelationSetES4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1522
  br label %"_ZNSt14_Function_base13_Base_managerIZNK6duckdb15QueryGraphEdges14GetConnectionsERNS1_15JoinRelationSetES4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZNK6duckdb15QueryGraphEdges14GetConnectionsERNS1_15JoinRelationSetES4_E3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_ImS8_EEEES0_INSB_14_Node_iteratorIS9_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, duckdb::unique_ptr<duckdb::JoinRelationSetManager::JoinRelationTreeNode>>, std::allocator<std::pair<const unsigned long, duckdb::unique_ptr<duckdb::JoinRelationSetManager::JoinRelationTreeNode>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store ptr %0, ptr %2, align 8, !tbaa !1523
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 6 uses
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load <2 x i64>, ptr %1, align 8, !tbaa !17
  %i.g = load i64, ptr %1, align 8, !tbaa !19     ; 6 uses
  store <2 x i64> %i.f, ptr %i.c, align 8, !tbaa !17
  store ptr null, ptr %i.e, align 8, !tbaa !221
  store ptr %i.b, ptr %i.a, align 8, !tbaa !1527
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !199
  %.not.not = icmp eq i64 %i.i, 0
  br i1 %.not.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !202  ; 2 uses
  %i.l = urem i64 %i.g, %i.k                      ; 5 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !203
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %.critedge27, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.032.0.in = phi ptr [ %i.p, %bb.b ], [ %.sroa.032.0, %bb.d ]
  %.sroa.032.0 = load ptr, ptr %.sroa.032.0.in, align 8, !tbaa !33 ; 4 uses
  %.not = icmp eq ptr %.sroa.032.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !19
  %i.s = icmp eq i64 %i.g, %i.r
  br i1 %i.s, label %_ZNKSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %bb.c, !llvm.loop !1528

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !202
  %i.v = urem i64 %i.g, %i.u
  br label %.critedge27

bb.f:                                             ; preds = %.thread
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !33   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !19
  %i.z = icmp eq i64 %i.g, %i.y
  br i1 %i.z, label %_ZNKSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.g, %i.ad
  br i1 %i.aa, label %_ZNKSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i, !llvm.loop !204

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.ab, %bb.g ], [ %i.w, %bb.f ]
  %i.ab = load ptr, ptr %.020.i.i, align 8, !tbaa !33 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.ab, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19 ; 2 uses
  %i.ae = urem i64 %i.ad, %i.k
  %.not19.i.i = icmp eq i64 %i.ae, %i.l
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !204

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge27, !llvm.loop !204

.critedge27:                                      ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread
  %i.af = phi i64 [ %i.v, %bb.e ], [ %i.l, %.thread ], [ %i.l, %..loopexit_crit_edge21.i.i ], [ %i.l, %.lr.ph.i.i ]
  %i.ag = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSB_10_Hash_nodeIS9_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.af, i64 noundef %i.g, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.critedge27
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.ah

_ZNKSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.036.0.ph = phi ptr [ %.sroa.032.0, %bb.d ], [ %i.w, %bb.f ], [ %i.ab, %bb.g ]
  tail call void @_ZNSt10unique_ptrIN6duckdb22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #28, !inline_history !1529
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #27, !inline_history !1530
  br label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNKSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  %.sroa.4.044 = phi i8 [ 0, %_ZNKSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_22JoinRelationSetManager20JoinRelationTreeNodeESt14default_deleteIS5_ELb1EEEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit ], [ 1, %.critedge27 ]
end_hunk_17
