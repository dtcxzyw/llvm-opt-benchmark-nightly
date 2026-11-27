Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_parser?download=true
inline.NumInlined: 5612
inline.NumDeleted: 2717
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEEixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !274 ; 3 uses
  %.not.i.i.not.i = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.not.i, label %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.e = tail call noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.d)
  br i1 %i.e, label %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread6, label %bb.c, !llvm.loop !11

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = tail call noundef i64 @_ZN6duckdb10StringUtil6CIHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !317
  %i.j = urem i64 %i.g, %i.i                      ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !316
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !340  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !274  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !339
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.o = phi i64 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.v, %bb.h ]
  %.015.i.i.i.i.i = phi ptr [ %i.m, %bb.f ], [ %.0.i.i.i.i.i, %bb.h ]
  %.0.i.i.i.i.i = phi ptr [ %i.n, %bb.f ], [ %i.s, %bb.h ] ; 3 uses
  %i.p = icmp eq i64 %i.g, %i.o
  br i1 %i.p, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  %i.r = tail call noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %i.q)
  br i1 %i.r, label %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i.i, %bb.g
  %i.s = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !274 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not18.i.i.i.i.i, label %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i
  %i.t = load i64, ptr %i.h, align 8, !tbaa !317
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !339  ; 2 uses
  %i.w = urem i64 %i.v, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.w, %i.j
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, !llvm.loop !8

_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i.i.i
  %i.x = load ptr, ptr %.015.i.i.i.i.i, align 8, !tbaa !274
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, label %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread6

_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSB_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i.i.i, %bb.h, %bb.c, %bb.e, %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr null, ptr %2, align 8, !tbaa !1227
  invoke void @_ZN6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOS5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.y = load ptr, ptr %2, align 8, !tbaa !451    ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i: ; preds = %bb.i
  call void @_ZN6duckdb25CommonTableExpressionInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %i.y) #27
  call void @_ZdlPv(ptr noundef nonnull %i.y) #28
  br label %_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.i, %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread6

bb.j:                                             ; preds = %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.z

_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread6: ; preds = %bb.d, %_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev.exit, %_ZNK6duckdb27InsertionOrderPreservingMapINS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS2_ELb1EEEE8containsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mESaIS9_ENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !229
  %i.ad = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS9_ELb1EEEELb1ESaISD_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  ret ptr %i.ae
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb25CommonTableExpressionInfoESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !guid !1228 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !451    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN6duckdb25CommonTableExpressionInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %i.a) #27
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #28
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb25CommonTableExpressionInfoEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb24CommonTableExpressionMap8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1235 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !350
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !228
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !227
  store i8 0, ptr %i.m, align 8, !tbaa !230
  br label %.loopexit229

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !445    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !445  ; 2 uses
  %.not213.not275 = icmp eq ptr %i.o, %i.q
  br i1 %.not213.not275, label %._crit_edge.thread, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0205.0276, i64 40 ; 2 uses
  %.not213.not = icmp eq ptr %i.r, %i.q
  br i1 %.not213.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.0205.0276 = phi ptr [ %i.r, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0205.0276, i64 32
  %i.t = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15SelectStatementESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.x = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !444
  %.not.not = icmp eq i8 %i.z, 4
  br i1 %.not.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %bb.d

._crit_edge.thread:                               ; preds = %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !228
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aa, ptr noundef nonnull align 1 dereferenceable(5) @.str.53, i64 5, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 5, ptr %i.ab, align 8, !tbaa !227
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.ac, align 1, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ad, ptr %0, align 8, !tbaa !228
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ad, ptr noundef nonnull align 1 dereferenceable(5) @.str.53, i64 5, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 5, ptr %i.ae, align 8, !tbaa !227
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.af, align 1, !tbaa !230
  %i.ag = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.54, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %._crit_edge.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ah = phi ptr [ %i.ab, %._crit_edge.thread ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ] ; 15 uses
  %i.ai = phi ptr [ %i.aa, %._crit_edge.thread ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ] ; 6 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !445   ; 2 uses
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !445 ; 2 uses
  %.not214284 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not214284, label %.loopexit229, label %.lr.ph287

.lr.ph287:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit161
  %.031286 = phi i1 [ true, %.lr.ph287 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit161 ]
  %.sroa.0200.0285 = phi ptr [ %i.aj, %.lr.ph287 ], [ %i.kf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit161 ] ; 7 uses
  br i1 %.031286, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit68, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.au = and i64 %i.at, -2
  %i.av = icmp eq i64 %i.au, 4611686018427387902
  br i1 %i.av, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i65: ; preds = %bb.f
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.55, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit68 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i65, %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0200.0285, i64 32 ; 3 uses
  %i.ay = invoke noundef nonnull align 8 dereferenceable(57) ptr @_ZNK6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit68
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0200.0285, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !227, !noalias !1236 ; 3 uses
  %.not30.i = icmp eq i64 %i.ba, 0
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bb = load ptr, ptr %.sroa.0200.0285, align 8, !noalias !1236 ; 2 uses
  %.pre41.i = load i8, ptr %i.bb, align 1, !tbaa !230, !noalias !1236 ; 4 uses
  %i.bc = add i8 %.pre41.i, -97
  %or.cond26.us.peel.i = icmp ult i8 %i.bc, 26
  br i1 %or.cond26.us.peel.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.bd = icmp sgt i8 %.pre41.i, 64
  br i1 %i.bd, label %bb.i, label %.noexc69.thread

bb.i:                                             ; preds = %bb.h
  %i.be = icmp samesign ult i8 %.pre41.i, 91
  %i.bf = icmp eq i8 %.pre41.i, 95
  %or.cond27.us.peel.i = or i1 %i.be, %i.bf
  br i1 %or.cond27.us.peel.i, label %bb.j, label %.noexc69.thread

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %exitcond34.peel.not.i = icmp eq i64 %i.ba, 1
  br i1 %exitcond34.peel.not.i, label %._crit_edge.i, label %.lr.ph.split.us.peel.next.i

.lr.ph.split.us.peel.next.i:                      ; preds = %bb.j, %bb.m
  %.02228.us.i = phi i64 [ %i.bn, %bb.m ], [ 1, %bb.j ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.02228.us.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !230, !noalias !1236 ; 5 uses
  %i.bi = add i8 %i.bh, -48
  %or.cond.us.i = icmp ult i8 %i.bi, 10
  %i.bj = add i8 %i.bh, -97
  %or.cond26.us.i = icmp ult i8 %i.bj, 26
  %or.cond51.i = or i1 %or.cond.us.i, %or.cond26.us.i
  br i1 %or.cond51.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us.peel.next.i
  %i.bk = icmp sgt i8 %i.bh, 64
  br i1 %i.bk, label %bb.l, label %.noexc69.thread

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i8 %i.bh, 91
  %i.bm = icmp eq i8 %i.bh, 95
  %or.cond27.us.i = or i1 %i.bl, %i.bm
  br i1 %or.cond27.us.i, label %bb.m, label %.noexc69.thread

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.us.peel.next.i
  %i.bn = add nuw i64 %.02228.us.i, 1             ; 2 uses
  %exitcond34.not.i = icmp eq i64 %i.bn, %i.ba
  br i1 %exitcond34.not.i, label %._crit_edge.i, label %.lr.ph.split.us.peel.next.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %bb.m, %bb.j, %bb.g
  %i.bo = invoke noundef zeroext i8 @_ZN6duckdb14PostgresParser9IsKeywordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0200.0285)
          to label %.noexc168 unwind label %bb.s, !noalias !1236

.noexc168:                                        ; preds = %._crit_edge.i
  %i.bp = invoke noundef zeroext range(i8 0, 5) i8 @_ZN6duckdb17ToKeywordCategoryEN17duckdb_libpgquery17PGKeywordCategoryE(i8 noundef zeroext %i.bo)
          to label %.noexc69 unwind label %bb.s, !noalias !1236

.noexc69:                                         ; preds = %.noexc168
  %.not215 = icmp eq i8 %i.bp, 4
  br i1 %.not215, label %bb.n, label %.noexc69.thread

bb.n:                                             ; preds = %.noexc69
  store ptr %i.al, ptr %5, align 8, !tbaa !228, !alias.scope !1236
  %i.bq = load ptr, ptr %.sroa.0200.0285, align 8, !tbaa !226, !noalias !1236 ; 2 uses
  %i.br = load i64, ptr %i.az, align 8, !tbaa !227, !noalias !1236 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27, !noalias !1236
  store i64 %i.br, ptr %i.i, align 8, !tbaa !229, !noalias !1236
  %i.bs = icmp ugt i64 %i.br, 15
  br i1 %i.bs, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.n
  %i.bt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc70 unwind label %bb.s   ; 2 uses

.noexc70:                                         ; preds = %.noexc.i.i
  store ptr %i.bt, ptr %5, align 8, !tbaa !226, !alias.scope !1236
  %i.bu = load i64, ptr %i.i, align 8, !tbaa !229, !noalias !1236
  store i64 %i.bu, ptr %i.al, align 8, !tbaa !230, !alias.scope !1236
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc70, %bb.n
  %i.bv = phi ptr [ %i.bt, %.noexc70 ], [ %i.al, %bb.n ] ; 2 uses
  switch i64 %i.br, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.bw = load i8, ptr %i.bq, align 1, !tbaa !230
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr align 1 %i.bq, i64 %i.br, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.p, %bb.o, %._crit_edge.i.i.i
  %i.bx = load i64, ptr %i.i, align 8, !tbaa !229, !noalias !1236 ; 2 uses
  store i64 %i.bx, ptr %i.am, align 8, !tbaa !227, !alias.scope !1236
  %i.by = load ptr, ptr %5, align 8, !tbaa !226, !alias.scope !1236
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bx
  store i8 0, ptr %i.bz, align 1, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27, !noalias !1236
  br label %_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE.exit

.noexc69.thread:                                  ; preds = %bb.k, %bb.l, %bb.i, %bb.h, %.noexc69
  invoke void @_ZN6duckdb13KeywordHelper11WriteQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0200.0285, i8 noundef signext 34)
          to label %_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE.exit unwind label %bb.s

_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %.noexc69.thread
  %i.ca = load i64, ptr %i.am, align 8, !tbaa !227 ; 2 uses
  %i.cb = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.cc = sub i64 4611686018427387903, %i.cb
  %i.cd = icmp ult i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.q:                                             ; preds = %_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #29
          to label %.noexc72 unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %bb.q
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE.exit
  %i.ce = load ptr, ptr %5, align 8, !tbaa !226
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ce, i64 noundef %i.ca)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp234.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cg = load ptr, ptr %5, align 8, !tbaa !226   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.al
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  call void @_ZdlPv(ptr noundef %i.cg) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ci = load ptr, ptr %i.ay, align 8, !tbaa !522
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !522
  %i.cl = icmp eq ptr %i.ci, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit81, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cm = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.cn = and i64 %i.cm, -2
  %i.co = icmp eq i64 %i.cn, 4611686018427387902
  br i1 %i.co, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i74: ; preds = %bb.r
  %i.cp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.56, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit77.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit77.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i74
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !291 ; 2 uses
  %i.cr = load ptr, ptr %i.ay, align 8, !tbaa !293 ; 2 uses
  %.not288 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not288, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit77._crit_edge, label %.lr.ph281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit77._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit77.preheader
  %i.cs = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.ct = icmp eq i64 %i.cs, 4611686018427387903
  br i1 %i.ct, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit77._crit_edge
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.40, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses
end_hunk_0
begin_hunk_1_@_ZNK6duckdb24CommonTableExpressionMap8ToStringB5cxx11Ev:bb.a

.lr.ph.split.us.peel.next.i181:                   ; preds = %bb.ac, %bb.af
  %.02228.us.i182 = phi i64 [ %i.ej, %bb.af ], [ 1, %bb.ac ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.02228.us.i182
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !230, !noalias !1237 ; 5 uses
  %i.ee = add i8 %i.ed, -48
  %or.cond.us.i183 = icmp ult i8 %i.ee, 10
  %i.ef = add i8 %i.ed, -97
  %or.cond26.us.i184 = icmp ult i8 %i.ef, 26
  %or.cond51.i185 = or i1 %or.cond.us.i183, %or.cond26.us.i184
  br i1 %or.cond51.i185, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split.us.peel.next.i181
  %i.eg = icmp sgt i8 %i.ed, 64
  br i1 %i.eg, label %bb.ae, label %.noexc92.thread

bb.ae:                                            ; preds = %bb.ad
  %i.eh = icmp samesign ult i8 %i.ed, 91
  %i.ei = icmp eq i8 %i.ed, 95
  %or.cond27.us.i186 = or i1 %i.eh, %i.ei
  br i1 %or.cond27.us.i186, label %bb.af, label %.noexc92.thread

bb.af:                                            ; preds = %bb.ae, %.lr.ph.split.us.peel.next.i181
  %i.ej = add nuw i64 %.02228.us.i182, 1          ; 2 uses
  %exitcond34.not.i187 = icmp eq i64 %i.ej, %i.dw
  br i1 %exitcond34.not.i187, label %._crit_edge.i188, label %.lr.ph.split.us.peel.next.i181, !llvm.loop !19

._crit_edge.i188:                                 ; preds = %bb.af, %bb.ac, %bb.z
  %i.ek = invoke noundef zeroext i8 @_ZN6duckdb14PostgresParser9IsKeywordERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.du)
          to label %.noexc189 unwind label %bb.ak, !noalias !1237

.noexc189:                                        ; preds = %._crit_edge.i188
  %i.el = invoke noundef zeroext range(i8 0, 5) i8 @_ZN6duckdb17ToKeywordCategoryEN17duckdb_libpgquery17PGKeywordCategoryE(i8 noundef zeroext %i.ek)
          to label %.noexc92 unwind label %bb.ak, !noalias !1237

.noexc92:                                         ; preds = %.noexc189
  %.not216 = icmp eq i8 %i.el, 4
  br i1 %.not216, label %bb.ag, label %.noexc92.thread

bb.ag:                                            ; preds = %.noexc92
  store ptr %i.an, ptr %6, align 8, !tbaa !228, !alias.scope !1237
  %i.em = load ptr, ptr %i.du, align 8, !tbaa !226, !noalias !1237 ; 2 uses
  %i.en = load i64, ptr %i.dv, align 8, !tbaa !227, !noalias !1237 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27, !noalias !1237
  store i64 %i.en, ptr %i.f, align 8, !tbaa !229, !noalias !1237
  %i.eo = icmp ugt i64 %i.en, 15
  br i1 %i.eo, label %.noexc.i.i91, label %._crit_edge.i.i.i89

.noexc.i.i91:                                     ; preds = %bb.ag
  %i.ep = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc93 unwind label %bb.ak  ; 2 uses

.noexc93:                                         ; preds = %.noexc.i.i91
  store ptr %i.ep, ptr %6, align 8, !tbaa !226, !alias.scope !1237
  %i.eq = load i64, ptr %i.f, align 8, !tbaa !229, !noalias !1237
  store i64 %i.eq, ptr %i.an, align 8, !tbaa !230, !alias.scope !1237
  br label %._crit_edge.i.i.i89

._crit_edge.i.i.i89:                              ; preds = %.noexc93, %bb.ag
  %i.er = phi ptr [ %i.ep, %.noexc93 ], [ %i.an, %bb.ag ] ; 2 uses
  switch i64 %i.en, label %bb.ai [
    i64 1, label %bb.ah
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i90
  ]

bb.ah:                                            ; preds = %._crit_edge.i.i.i89
  %i.es = load i8, ptr %i.em, align 1, !tbaa !230
  store i8 %i.es, ptr %i.er, align 1, !tbaa !230
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i90

bb.ai:                                            ; preds = %._crit_edge.i.i.i89
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr align 1 %i.em, i64 %i.en, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i90: ; preds = %bb.ai, %bb.ah, %._crit_edge.i.i.i89
  %i.et = load i64, ptr %i.f, align 8, !tbaa !229, !noalias !1237 ; 2 uses
  store i64 %i.et, ptr %i.ao, align 8, !tbaa !227, !alias.scope !1237
  %i.eu = load ptr, ptr %6, align 8, !tbaa !226, !alias.scope !1237
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.et
  store i8 0, ptr %i.ev, align 1, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27, !noalias !1237
  br label %_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE.exit95

.noexc92.thread:                                  ; preds = %bb.ad, %bb.ae, %bb.ab, %bb.aa, %.noexc92
  invoke void @_ZN6duckdb13KeywordHelper11WriteQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %i.du, i8 noundef signext 34)
          to label %_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE.exit95 unwind label %bb.ak

_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i90, %.noexc92.thread
  %i.ew = load i64, ptr %i.ao, align 8, !tbaa !227 ; 2 uses
  %i.ex = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.ey = sub i64 4611686018427387903, %i.ex
  %i.ez = icmp ult i64 %i.ey, %i.ew
  br i1 %i.ez, label %bb.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i96

bb.aj:                                            ; preds = %_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE.exit95
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #29
          to label %.noexc97 unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp

.noexc97:                                         ; preds = %bb.aj
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i96: ; preds = %_ZN6duckdb13KeywordHelper21WriteOptionallyQuotedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcbNS_15KeywordCategoryE.exit95
  %i.fa = load ptr, ptr %6, align 8, !tbaa !226
  %i.fb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.fa, i64 noundef %i.ew)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit99 unwind label %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit99: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i96
  %i.fc = load ptr, ptr %6, align 8, !tbaa !226   ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.an
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit99
  call void @_ZdlPv(ptr noundef %i.fc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %i.fe = add nuw i64 %.030280, 1                 ; 2 uses
  %i.ff = load ptr, ptr %i.cj, align 8, !tbaa !291 ; 2 uses
  %i.fg = load ptr, ptr %i.ay, align 8, !tbaa !293 ; 2 uses
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = ashr exact i64 %i.fj, 5
  %i.fl = icmp ult i64 %i.fe, %i.fk
  br i1 %i.fl, label %.lr.ph281, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit77._crit_edge, !llvm.loop !1233

bb.ak:                                            ; preds = %.noexc189, %._crit_edge.i188, %.noexc92.thread, %.noexc.i.i91
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i96, %bb.aj
  %lpad.loopexit.split-lp393 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = load ptr, ptr %6, align 8, !tbaa !226   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.an
  br i1 %i.fo, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.fn) #28
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.ak, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.pn49 = phi { ptr, i32 } [ %i.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.fm, %bb.ak ], [ %i.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.x ], [ %lpad.loopexit.split-lp393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %lpad.loopexit.split-lp393, %.loopexit.split-lp226.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 5 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !370
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 5 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !370
  %i.ft = icmp eq ptr %i.fq, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit113, label %bb.al

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit81
  %i.fu = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.fv = add i64 %i.fu, -4611686018427387892
  %i.fw = icmp ult i64 %i.fv, 12
  br i1 %i.fw, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i106: ; preds = %bb.al
  %i.fx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.57, i64 noundef 12)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit109.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit109.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i106
  %i.fy = load ptr, ptr %i.fr, align 8, !tbaa !361
  %i.fz = load ptr, ptr %i.fp, align 8, !tbaa !362 ; 2 uses
  %.not289 = icmp eq ptr %i.fy, %i.fz
  br i1 %.not289, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit109._crit_edge, label %bb.am

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit109.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !271 ; 3 uses
  %.not.i.peel = icmp eq ptr %i.ga, null
  br i1 %.not.i.peel, label %.noexc.i197, label %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit.peel, !prof !272

_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit.peel: ; preds = %bb.am
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !220
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 64
  %i.gd = load ptr, ptr %i.gc, align 8
  invoke void %i.gd(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ga)
          to label %bb.an unwind label %.loopexit.split-lp302.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit.peel
  %i.ge = load i64, ptr %i.ap, align 8, !tbaa !227 ; 2 uses
  %i.gf = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.gg = sub i64 4611686018427387903, %i.gf
  %i.gh = icmp ult i64 %i.gg, %i.ge
  br i1 %i.gh, label %.loopexit305, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i129.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i129.peel: ; preds = %bb.an
  %i.gi = load ptr, ptr %7, align 8, !tbaa !226
  %i.gj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.gi, i64 noundef %i.ge)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit132.peel unwind label %.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit132.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i129.peel
  %i.gk = load ptr, ptr %7, align 8, !tbaa !226   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.aq
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit132.peel
  call void @_ZdlPv(ptr noundef %i.gk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit132.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.gm = load ptr, ptr %i.fr, align 8, !tbaa !361
  %i.gn = load ptr, ptr %i.fp, align 8, !tbaa !362
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = icmp ugt i64 %i.gq, 8
  br i1 %i.gr, label %.lr.ph283.peel.next, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit109._crit_edge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit109._crit_edge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit109.preheader
  %i.gs = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.gt = and i64 %i.gs, -2
  %i.gu = icmp eq i64 %i.gt, 4611686018427387902
  br i1 %i.gu, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i110

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit109._crit_edge
  %i.gv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.58, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.lr.ph283.peel.next:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %.0282 = phi i64 [ %i.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.peel ] ; 4 uses
  %i.gw = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.gx = and i64 %i.gw, -2
  %i.gy = icmp eq i64 %i.gx, 4611686018427387902
  br i1 %i.gy, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114: ; preds = %.lr.ph283.peel.next
  %i.gz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.55, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i139.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit113, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i110, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158
  %lpad.loopexit.split-lp390 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ha = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i ], [ %i.ai, %.invoke ]
  %lpad.loopexit.split-lp295 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i114
  %.pre315 = load ptr, ptr %i.fp, align 8, !tbaa !362 ; 2 uses
  %.pre314 = load ptr, ptr %i.fr, align 8, !tbaa !361
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.hb = ptrtoint ptr %.pre314 to i64
  %i.hc = ptrtoint ptr %.pre315 to i64
  %i.hd = sub i64 %i.hb, %i.hc
  %i.he = ashr exact i64 %i.hd, 3                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.0282, ptr %i.d, align 8, !tbaa !229
  store i64 %i.he, ptr %i.e, align 8, !tbaa !229
  %.not.i.i.i118 = icmp ult i64 %.0282, %i.he
  br i1 %.not.i.i.i118, label %bb.at, label %.noexc.i193, !prof !351

.noexc.i193:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit117
  %i.hf = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.hg, ptr %3, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 55, ptr %i.b, align 8, !tbaa !229
  %i.hh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.ao unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119 ; 3 uses

bb.ao:                                            ; preds = %.noexc.i193
  store ptr %i.hh, ptr %3, align 8, !tbaa !226
  %i.hi = load i64, ptr %i.b, align 8, !tbaa !229 ; 3 uses
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.hh, ptr noundef nonnull align 1 dereferenceable(55) @.str.95, i64 55, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !227
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi
  store i8 0, ptr %i.hk, align 1, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr nonnull %i.hf, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.as unwind label %bb.aq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119: ; preds = %.noexc.i193
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.0.i.i.i122 = phi i1 [ false, %bb.ap ], [ true, %bb.ao ] ; 2 uses
  %i.hm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hn = load ptr, ptr %3, align 8, !tbaa !226   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.hg
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123: ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef %i.hn) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0.i.i.i122, label %bb.ar, label %.body125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i124: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0.i.i.i122, label %bb.ar, label %.body125

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i124, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119
  %.pn8.i.i.i120 = phi { ptr, i32 } [ %i.hl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i119 ], [ %i.hm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i124 ], [ %i.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123 ]
  call void @__cxa_free_exception(ptr %i.hf) #27
  br label %.body125

bb.as:                                            ; preds = %bb.ap
  unreachable

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.pre315, i64 %.0282
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !271 ; 3 uses
  %.not.i = icmp eq ptr %i.hq, null
  br i1 %.not.i, label %.noexc.i197, label %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit, !prof !272

.noexc.i197:                                      ; preds = %bb.am, %bb.at
  %i.hr = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.hs, ptr %2, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 49, ptr %i.a, align 8, !tbaa !229
  %i.ht = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.au unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ; 3 uses

bb.au:                                            ; preds = %.noexc.i197
  store ptr %i.ht, ptr %2, align 8, !tbaa !226
  %i.hu = load i64, ptr %i.a, align 8, !tbaa !229 ; 3 uses
  store i64 %i.hu, ptr %i.hs, align 8, !tbaa !230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.ht, ptr noundef nonnull align 1 dereferenceable(49) @.str.92, i64 49, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !227
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hu
  store i8 0, ptr %i.hw, align 1, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr nonnull %i.hr, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ay unwind label %bb.aw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i197
  %i.hx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.ax

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0.i.i = phi i1 [ false, %bb.av ], [ true, %bb.au ] ; 2 uses
  %i.hy = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hz = load ptr, ptr %2, align 8, !tbaa !226   ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.hs
  br i1 %i.ia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.aw
  call void @_ZdlPv(ptr noundef %i.hz) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.ax, label %.body125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br i1 %.0.i.i, label %bb.ax, label %.body125

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.hy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.hy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.hr) #27
  br label %.body125

bb.ay:                                            ; preds = %bb.av
  unreachable

_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.at
  %i.ib = load ptr, ptr %i.hq, align 8, !tbaa !220
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 64
  %i.id = load ptr, ptr %i.ic, align 8
  invoke void %i.id(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.hq)
          to label %bb.az unwind label %.loopexit.split-lp302.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.ie = load i64, ptr %i.ap, align 8, !tbaa !227 ; 2 uses
  %i.if = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.ig = sub i64 4611686018427387903, %i.if
  %i.ih = icmp ult i64 %i.ig, %i.ie
  br i1 %i.ih, label %.loopexit305, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i129

.loopexit305:                                     ; preds = %bb.an, %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #29
          to label %.noexc130 unwind label %.loopexit.split-lp218.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc130:                                        ; preds = %.loopexit305
  unreachable
end_hunk_1
begin_hunk_2_@_ZNK6duckdb24CommonTableExpressionMap8ToStringB5cxx11Ev:bb.a
  %i.jv = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.jw = sub i64 4611686018427387903, %i.jv
  %i.jx = icmp ult i64 %i.jw, %i.ju
  br i1 %i.jx, label %bb.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i151

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #29
          to label %.noexc152 unwind label %.loopexit.split-lp239.loopexit.split-lp.loopexit.split-lp

.noexc152:                                        ; preds = %bb.bi
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i151: ; preds = %bb.bh
  %i.jy = load ptr, ptr %8, align 8, !tbaa !226
  %i.jz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.jy, i64 noundef %i.ju)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit154 unwind label %.loopexit.split-lp239.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i151
  %i.ka = load ptr, ptr %8, align 8, !tbaa !226   ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.as
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit154
  call void @_ZdlPv(ptr noundef %i.ka) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.kc = load i64, ptr %i.ah, align 8, !tbaa !227
  %i.kd = icmp eq i64 %i.kc, 4611686018427387903
  br i1 %i.kd, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158

.invoke:                                          ; preds = %bb.f, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit77._crit_edge, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit109._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157, %bb.bf, %bb.be, %bb.bb, %bb.t, %.lr.ph283.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #29
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157
  %i.ke = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.40, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit161 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i158
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.0200.0285, i64 40 ; 2 uses
  %.not214 = icmp eq ptr %i.kf, %i.ak
  br i1 %.not214, label %.loopexit229, label %bb.e

bb.bj:                                            ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit142
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

.loopexit.split-lp239.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i151, %bb.bi
  %lpad.loopexit.split-lp404 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kh = load ptr, ptr %8, align 8, !tbaa !226   ; 2 uses
  %i.ki = icmp eq ptr %i.kh, %i.as
  br i1 %i.ki, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %.loopexit.split-lp239.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.kh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %.loopexit.split-lp239.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162, %bb.bj
  %.pn56 = phi { ptr, i32 } [ %i.kg, %bb.bj ], [ %lpad.loopexit.split-lp404, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ], [ %lpad.loopexit.split-lp404, %.loopexit.split-lp239.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body125, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.kj = phi ptr [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %i.ai, %.body ], [ %i.ai, %.body125 ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %i.ha, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ai, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn49, %.body ], [ %.pn53, %.body125 ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %lpad.loopexit.split-lp295, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp390, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.kk = load ptr, ptr %0, align 8, !tbaa !226   ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.kj
  br i1 %i.kl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.kk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  resume { ptr, i32 } %.pn58.pn.pn

.loopexit229:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(57) ptr @_ZNK6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1238 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !451    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !226    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_25CommonTableExpressionInfoESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb9QueryNode23ResultModifiersToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1255 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i64 0, ptr %i.f, align 8, !tbaa !227
  store i8 0, ptr %i.e, align 8, !tbaa !230
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !544
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !545
  %.not251 = icmp eq ptr %i.i, %i.j
  br i1 %.not251, label %._crit_edge, label %.lr.ph250

.lr.ph250:                                        ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph250, %.loopexit
  %.042249 = phi i64 [ 0, %.lr.ph250 ], [ %i.ku, %.loopexit ] ; 2 uses
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorINS_10unique_ptrINS_14ResultModifierESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.042249)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.ab = invoke noundef nonnull align 8 dereferenceable(9) ptr @_ZNK6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !403
  switch i8 %i.ad, label %.loopexit [
    i8 2, label %bb.e
    i8 1, label %bb.aa
    i8 4, label %bb.at
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb14ResultModifier4CastINS_13OrderModifierEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.ab)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.f, align 8, !tbaa !227
  %i.ag = add i64 %i.af, -4611686018427387894
  %i.ah = icmp ult i64 %i.ag, 10
  br i1 %i.ah, label %.loopexit261.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.f
  %i.ai = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.62, i64 noundef 10)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !564
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !565 ; 4 uses
  %.not252 = icmp eq ptr %i.al, %i.am
  br i1 %.not252, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !271, !noalias !1256 ; 3 uses
  %.not.i.peel = icmp eq ptr %i.ao, null
  br i1 %.not.i.peel, label %.noexc.i177, label %.noexc68.peel, !prof !272

.noexc68.peel:                                    ; preds = %bb.g
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !220, !noalias !1256
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1256
  invoke void %i.ar(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.ao)
          to label %.noexc69.peel unwind label %.loopexit.split-lp.loopexit.split-lp335.loopexit.split-lp, !inline_history !1257

.noexc69.peel:                                    ; preds = %.noexc68.peel
  %i.as = load i8, ptr %i.am, align 8, !tbaa !569, !noalias !1256
  switch i8 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.peel [
    i8 2, label %bb.i
    i8 3, label %bb.h
  ]

bb.h:                                             ; preds = %.noexc69.peel
  %i.at = load i64, ptr %i.y, align 8, !tbaa !227, !alias.scope !1256
  %i.au = add i64 %i.at, -4611686018427387899
  %i.av = icmp ult i64 %i.au, 5
  br i1 %i.av, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i4.invoke.i.peel

bb.i:                                             ; preds = %.noexc69.peel
  %i.aw = load i64, ptr %i.y, align 8, !tbaa !227, !alias.scope !1256
  %i.ax = and i64 %i.aw, -4
  %i.ay = icmp eq i64 %i.ax, 4611686018427387900
  br i1 %i.ay, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i4.invoke.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i4.invoke.i.peel: ; preds = %bb.i, %bb.h
  %i.az = phi ptr [ @.str.68, %bb.h ], [ @.str.67, %bb.i ]
  %i.ba = phi i64 [ 5, %bb.h ], [ 4, %bb.i ]
  %i.bb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.az, i64 noundef %i.ba)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.peel unwind label %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i4.invoke.i.peel, %.noexc69.peel
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !570, !noalias !1256
  switch i8 %i.bd, label %_ZNK6duckdb11OrderByNode8ToStringB5cxx11Ev.exit.peel [
    i8 2, label %bb.k
    i8 3, label %bb.j
  ]

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.peel
  %i.be = load i64, ptr %i.y, align 8, !tbaa !227, !alias.scope !1256
  %i.bf = add i64 %i.be, -4611686018427387893
  %i.bg = icmp ult i64 %i.bf, 11
  br i1 %i.bg, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12.invoke.i.peel

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.peel
  %i.bh = load i64, ptr %i.y, align 8, !tbaa !227, !alias.scope !1256
  %i.bi = add i64 %i.bh, -4611686018427387892
  %i.bj = icmp ult i64 %i.bi, 12
  br i1 %i.bj, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12.invoke.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12.invoke.i.peel: ; preds = %bb.k, %bb.j
  %i.bk = phi ptr [ @.str.69, %bb.k ], [ @.str.70, %bb.j ]
  %i.bl = phi i64 [ 12, %bb.k ], [ 11, %bb.j ]
  %i.bm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull %i.bk, i64 noundef %i.bl)
          to label %_ZNK6duckdb11OrderByNode8ToStringB5cxx11Ev.exit.peel unwind label %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNK6duckdb11OrderByNode8ToStringB5cxx11Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12.invoke.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i.peel
  %i.bn = load i64, ptr %i.y, align 8, !tbaa !227 ; 2 uses
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !227
  %i.bp = sub i64 4611686018427387903, %i.bo
  %i.bq = icmp ult i64 %i.bp, %i.bn
  br i1 %i.bq, label %.loopexit271, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel: ; preds = %_ZNK6duckdb11OrderByNode8ToStringB5cxx11Ev.exit.peel
  %i.br = load ptr, ptr %4, align 8, !tbaa !226
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.br, i64 noundef %i.bn)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel unwind label %.loopexit.split-lp192.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.peel
  %i.bt = load ptr, ptr %4, align 8, !tbaa !226   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.z
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel
  call void @_ZdlPv(ptr noundef %i.bt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bv = load ptr, ptr %i.ak, align 8, !tbaa !564
  %i.bw = load ptr, ptr %i.aj, align 8, !tbaa !565
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = icmp ugt i64 %i.bz, 16
  br i1 %i.ca, label %.lr.ph.peel.next, label %.loopexit

.lr.ph.peel.next:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0248 = phi i64 [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 4 uses
  %i.cb = load i64, ptr %i.f, align 8, !tbaa !227
  %i.cc = and i64 %i.cb, -2
  %i.cd = icmp eq i64 %i.cc, 4611686018427387902
  br i1 %i.cd, label %.loopexit261.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64

.loopexit261.invoke:                              ; preds = %bb.f, %.lr.ph.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #29
          to label %.loopexit261.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit261.cont:                                ; preds = %.loopexit261.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64: ; preds = %.lr.ph.peel.next
  %i.ce = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.55, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64
  %.pre280 = load ptr, ptr %i.aj, align 8, !tbaa !565 ; 2 uses
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !564
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.cf = ptrtoint ptr %.pre to i64
  %i.cg = ptrtoint ptr %.pre280 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 4                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.0248, ptr %i.c, align 8, !tbaa !229
  store i64 %i.ci, ptr %i.d, align 8, !tbaa !229
  %.not.i.i.i = icmp ult i64 %.0248, %i.ci
  br i1 %.not.i.i.i, label %bb.q, label %.noexc.i, !prof !351

.noexc.i:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67
  %i.cj = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.ck, ptr %3, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i64 55, ptr %i.b, align 8, !tbaa !229
  %i.cl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ; 3 uses

bb.l:                                             ; preds = %.noexc.i
  store ptr %i.cl, ptr %3, align 8, !tbaa !226
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !229 ; 3 uses
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.cl, ptr noundef nonnull align 1 dereferenceable(55) @.str.95, i64 55, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !227
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm
  store i8 0, ptr %i.co, align 1, !tbaa !230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.p unwind label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %.noexc.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi i1 [ false, %bb.m ], [ true, %bb.l ] ; 2 uses
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cr = load ptr, ptr %3, align 8, !tbaa !226   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ck
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.cr) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0.i.i.i, label %bb.o, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %.0.i.i.i, label %bb.o, label %.body

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.cj) #27
  br label %.body

bb.p:                                             ; preds = %bb.m
  unreachable

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %.pre280, i64 %.0248 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !271, !noalias !1258 ; 3 uses
  %.not.i = icmp eq ptr %i.cv, null
  br i1 %.not.i, label %.noexc.i177, label %.noexc68, !prof !272

.noexc.i177:                                      ; preds = %bb.g, %bb.q
  %i.cw = call ptr @__cxa_allocate_exception(i64 16) #27, !noalias !1258 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !1258
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.cx, ptr %2, align 8, !tbaa !228, !noalias !1258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !1258
  store i64 49, ptr %i.a, align 8, !tbaa !229, !noalias !1258
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i, !noalias !1258 ; 3 uses

bb.r:                                             ; preds = %.noexc.i177
  store ptr %i.cy, ptr %2, align 8, !tbaa !226, !noalias !1258
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !229, !noalias !1258 ; 3 uses
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !230, !noalias !1258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.cy, ptr noundef nonnull align 1 dereferenceable(49) @.str.92, i64 49, i1 false), !noalias !1258
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !227, !noalias !1258
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cz
  store i8 0, ptr %i.db, align 1, !tbaa !230, !noalias !1258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !1258
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.s unwind label %bb.t, !noalias !1258

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.cw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.v unwind label %bb.t, !noalias !1258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %.noexc.i177
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1258
  br label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i.i = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.dd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.de = load ptr, ptr %2, align 8, !tbaa !226, !noalias !1258 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.cx
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.de) #28, !noalias !1258
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1258
  br i1 %.0.i.i, label %bb.u, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !1258
  br i1 %.0.i.i, label %bb.u, label %.body

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.cw) #27, !noalias !1258
  br label %.body

bb.v:                                             ; preds = %bb.s
  unreachable

.noexc68:                                         ; preds = %bb.q
  %i.dg = load ptr, ptr %i.cv, align 8, !tbaa !220, !noalias !1258
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !1258
  invoke void %i.di(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.cv)
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp335.loopexit.split-lp, !inline_history !1257

.noexc69:                                         ; preds = %.noexc68
  %i.dj = load i8, ptr %i.ct, align 8, !tbaa !569, !noalias !1258
  switch i8 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit.i [
    i8 2, label %bb.w
    i8 3, label %bb.x
  ]

bb.w:                                             ; preds = %.noexc69
  %i.dk = load i64, ptr %i.y, align 8, !tbaa !227, !alias.scope !1258
  %i.dl = and i64 %i.dk, -4
  %i.dm = icmp eq i64 %i.dl, 4611686018427387900
  br i1 %i.dm, label %.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i4.invoke.i

.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12.invoke.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i4.invoke.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i12.invoke.i.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i4.invoke.i.peel, %.invoke.i
  %lpad.loopexit.split-lp403 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dn = load ptr, ptr %4, align 8, !tbaa !226, !alias.scope !1258 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.z
  br i1 %i.do, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.loopexit.split-lp187.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef %i.dn) #28
  br label %.body

bb.x:                                             ; preds = %.noexc69
end_hunk_2
