inline.NumInlined: 3045
inline.NumDeleted: 1648
begin_hunk_0_@_ZNSt7__cxx119to_stringEm:bb.a
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.02229.i = phi i64 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %.02328.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %i.b = icmp ult i64 %.02229.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add i32 %.02328.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.d = icmp ult i64 %.02229.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %.02328.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i64 %.02229.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = add i32 %.02328.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.h = udiv i64 %.02229.i, 10000
  %i.i = add i32 %.02328.i, 4                     ; 2 uses
  %i.j = icmp ult i64 %.02229.i, 100000
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i, !llvm.loop !62

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit:      ; preds = %bb.g, %bb.a, %bb.b, %bb.d, %bb.f
end_hunk_0
begin_hunk_1_@_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.g, %bb.b ], [ %.sroa.06.0.i.i, %bb.c ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !66, !nonnull !34, !noundef !34 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !73
  %i.j = icmp eq i64 %i.b, %i.i
  br i1 %i.j, label %.loopexit, label %bb.c, !llvm.loop !100

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
end_hunk_1
begin_hunk_2_@_ZN6duckdb18FixedSizeAllocator4FreeENS_12IndexPointerE:bb.a
  %i.m = urem i64 %i.b, %i.l                      ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  %6 = load ptr, ptr %i.o, align 8, !tbaa !76, !nonnull !34, !noundef !34
  %i.p = load ptr, ptr %6, align 8, !tbaa !66     ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %8 = load i64, ptr %7, align 8, !tbaa !73
  %i.q = icmp eq i64 %i.b, %8
  br i1 %i.q, label %.loopexit, label %.lr.ph.i.i.i.i.a

.lr.ph.i.i.i.i.a:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.a
  %.020.i.i.i.i = phi ptr [ %9, %.lr.ph.i.i.i.i.a ], [ %i.p, %bb.d ]
  %9 = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !66, !nonnull !34, !noundef !34 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %i.t = urem i64 %i.s, %i.l
  %.not19.i.i.i.i = icmp eq i64 %i.t, %i.m
  tail call void @llvm.assume(i1 %.not19.i.i.i.i)
  %i.u = icmp eq i64 %i.b, %i.s
  br i1 %i.u, label %.loopexit, label %.lr.ph.i.i.i.i.a, !llvm.loop !77

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.a, %bb.c, %bb.d
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.c ], [ %i.p, %bb.d ], [ %9, %.lr.ph.i.i.i.i.a ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !66  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !73
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !68
  store ptr %i.o, ptr %.031, align 8, !tbaa !66
  store ptr %.031, ptr %i.g, align 8, !tbaa !68
  store ptr %i.g, ptr %i.m, align 8, !tbaa !76
  %i.p = load ptr, ptr %.031, align 8, !tbaa !66
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !76
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !66
  store ptr %i.r, ptr %.031, align 8, !tbaa !66
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !76
  store ptr %.031, ptr %i.s, align 8, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !670

end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !66  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !73
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !65
  store ptr %i.o, ptr %.031, align 8, !tbaa !66
  store ptr %.031, ptr %i.g, align 8, !tbaa !65
  store ptr %i.g, ptr %i.m, align 8, !tbaa !76
  %i.p = load ptr, ptr %.031, align 8, !tbaa !66
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !76
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !66
  store ptr %i.r, ptr %.031, align 8, !tbaa !66
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !76
  store ptr %.031, ptr %i.s, align 8, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !674

end_hunk_6
begin_hunk_7_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm:bb.a
  %i.ai = phi i64 [ %i.o, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.s, %bb.f ] ; 2 uses
  %i.aj = phi ptr [ %.pre45, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.w, %bb.f ] ; 3 uses
  %i.ak = phi ptr [ %.pre, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.u, %bb.f ] ; 3 uses
  %.120 = phi ptr [ %i.m, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.ae, %bb.f ] ; 6 uses
  %.018 = phi i64 [ %i.p, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %i.t, %bb.f ] ; 3 uses
  %.016 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_find_before_nodeERKm.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %i.al = icmp eq ptr %.016, %i.aj
  %i.am = load ptr, ptr %.120, align 8, !tbaa !66 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.am, null           ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.m
end_hunk_7
begin_hunk_8_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm:bb.a
  %i.ao = phi i64 [ %i.s, %.loopexit.thread ], [ %i.ai, %bb.h ]
  %i.ap = phi ptr [ %i.w, %.loopexit.thread ], [ %i.aj, %bb.h ] ; 2 uses
  %i.aq = phi ptr [ %i.u, %.loopexit.thread ], [ %i.ak, %bb.h ]
  %.1206270 = phi ptr [ %i.x, %.loopexit.thread ], [ %.120, %bb.h ] ; 2 uses
  %.0186369 = phi i64 [ %i.t, %.loopexit.thread ], [ %.018, %bb.h ]
  %.0166567 = phi ptr [ %i.w, %.loopexit.thread ], [ %.016, %bb.h ] ; 2 uses
  %i.ar = phi ptr [ %i.ab, %.loopexit.thread ], [ %i.an, %bb.h ]
  %i.as = phi ptr [ %i.ac, %.loopexit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
end_hunk_8
begin_hunk_9_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm:bb.a

._crit_edge.i.i:                                  ; preds = %.loopexit.thread, %bb.j, %bb.h
  %i.ax = phi ptr [ %i.w, %.loopexit.thread ], [ %i.ap, %bb.j ], [ %i.aj, %bb.h ]
  %.1206271 = phi ptr [ %i.x, %.loopexit.thread ], [ %.1206270, %bb.j ], [ %.120, %bb.h ]
  %.0166568 = phi ptr [ %i.w, %.loopexit.thread ], [ %.0166567, %bb.j ], [ %.016, %bb.h ]
  %i.ay = phi ptr [ %i.ab, %.loopexit.thread ], [ %i.ar, %bb.j ], [ %i.an, %bb.h ]
  %i.az = phi ptr [ null, %.loopexit.thread ], [ %i.as, %bb.j ], [ null, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERKm:bb.a

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.be
  store ptr %.016, ptr %i.bf, align 8, !tbaa !76
  br label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE8_M_eraseEmPNS1_15_Hash_node_baseEPNS1_10_Hash_nodeImLb0EEE.exit: ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  %.01664 = phi ptr [ %.0166567, %bb.i ], [ %.0166568, %bb.l ], [ %.016, %bb.m ], [ %.016, %bb.n ], [ %.016, %bb.o ]
  %.12061 = phi ptr [ %.1206270, %bb.i ], [ %.1206271, %bb.l ], [ %.120, %bb.m ], [ %.120, %bb.n ], [ %.120, %bb.o ] ; 2 uses
  %i.bg = load ptr, ptr %.12061, align 8, !tbaa !66
  store ptr %i.bg, ptr %.01664, align 8, !tbaa !66
  tail call void @_ZdlPv(ptr noundef nonnull %.12061) #28
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !135
  %i.bi = add i64 %i.bh, -1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !135
end_hunk_10
begin_hunk_11_@_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:bb.a
  %i.ai = phi i64 [ %i.o, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.s, %bb.f ] ; 2 uses
  %i.aj = phi ptr [ %.pre45, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.w, %bb.f ] ; 3 uses
  %i.ak = phi ptr [ %.pre, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.u, %bb.f ] ; 3 uses
  %.120 = phi ptr [ %i.m, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.ae, %bb.f ] ; 6 uses
  %.018 = phi i64 [ %i.p, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %i.t, %bb.f ] ; 3 uses
  %.016 = phi ptr [ %.01115.i.lcssa, %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_find_before_nodeERS1_.exit ], [ %.020.i, %bb.f ] ; 7 uses
  %i.al = icmp eq ptr %.016, %i.aj
  %i.am = load ptr, ptr %.120, align 8, !tbaa !66 ; 3 uses
  %.not18.i26 = icmp eq ptr %i.am, null           ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.m
end_hunk_11
begin_hunk_12_@_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:bb.a
  %i.ao = phi i64 [ %i.s, %.loopexit.thread ], [ %i.ai, %bb.h ]
  %i.ap = phi ptr [ %i.w, %.loopexit.thread ], [ %i.aj, %bb.h ] ; 2 uses
  %i.aq = phi ptr [ %i.u, %.loopexit.thread ], [ %i.ak, %bb.h ]
  %.1206371 = phi ptr [ %i.x, %.loopexit.thread ], [ %.120, %bb.h ] ; 2 uses
  %.0186470 = phi i64 [ %i.t, %.loopexit.thread ], [ %.018, %bb.h ]
  %.0166668 = phi ptr [ %i.w, %.loopexit.thread ], [ %.016, %bb.h ] ; 2 uses
  %i.ar = phi ptr [ %i.ab, %.loopexit.thread ], [ %i.an, %bb.h ]
  %i.as = phi ptr [ %i.ac, %.loopexit.thread ], [ %i.am, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
end_hunk_12
begin_hunk_13_@_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:bb.a

._crit_edge.i.i:                                  ; preds = %.loopexit.thread, %bb.j, %bb.h
  %i.ax = phi ptr [ %i.w, %.loopexit.thread ], [ %i.ap, %bb.j ], [ %i.aj, %bb.h ]
  %.1206372 = phi ptr [ %i.x, %.loopexit.thread ], [ %.1206371, %bb.j ], [ %.120, %bb.h ]
  %.0166669 = phi ptr [ %i.w, %.loopexit.thread ], [ %.0166668, %bb.j ], [ %.016, %bb.h ]
  %i.ay = phi ptr [ %i.ab, %.loopexit.thread ], [ %i.ar, %bb.j ], [ %i.an, %bb.h ]
  %i.az = phi ptr [ null, %.loopexit.thread ], [ %i.as, %bb.j ], [ null, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:bb.a

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.be
  store ptr %.016, ptr %i.bf, align 8, !tbaa !76
  br label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i

_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i
  %.01665 = phi ptr [ %.016, %bb.o ], [ %.016, %bb.n ], [ %.016, %bb.m ], [ %.0166669, %bb.l ], [ %.0166668, %bb.i ]
  %.12062 = phi ptr [ %.120, %bb.o ], [ %.120, %bb.n ], [ %.120, %bb.m ], [ %.1206372, %bb.l ], [ %.1206371, %bb.i ] ; 3 uses
  %i.bg = load ptr, ptr %.12062, align 8, !tbaa !66
  store ptr %i.bg, ptr %.01665, align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %.12062, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !69 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE.exit, label %_ZNKSt14default_deleteIN6duckdb15FixedSizeBufferEEclEPS1_.exit.i.i.i.i
end_hunk_14
begin_hunk_15_@_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS1_:bb.a
  br label %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE.exit

_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE8_M_eraseEmPNSA_15_Hash_node_baseEPNSA_10_Hash_nodeIS8_Lb0EEE.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_15FixedSizeBufferESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_remove_bucket_beginEmPNSA_10_Hash_nodeIS8_Lb0EEEm.exit.i, %_ZNKSt14default_deleteIN6duckdb15FixedSizeBufferEEclEPS1_.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.12062) #28
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !72
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !72
end_hunk_15
