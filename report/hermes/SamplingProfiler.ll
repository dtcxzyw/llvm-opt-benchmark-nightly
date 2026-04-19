inline.NumInlined: 740
inline.NumDeleted: 441
begin_hunk_0_@_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E18moveFromOldBucketsEPSC_SF_:bb.a
  %.019 = phi ptr [ %i.be, %bb.f ], [ %1, %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E9initEmptyEv.exit ] ; 6 uses
  %i.u = load i64, ptr %.019, align 8, !tbaa !311 ; 5 uses
  %switch = icmp ugt i64 %i.u, -3
  br i1 %switch, label %bb.f, label %3

3:                                                ; preds = %.lr.ph
  %4 = load ptr, ptr %0, align 8, !tbaa !406      ; 2 uses
  %5 = load i32, ptr %i.d, align 8, !tbaa !405    ; 2 uses
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit, label %bb.b

bb.b:                                             ; preds = %3
  %i.v = trunc i64 %i.u to i32
  %i.w = mul i32 %i.v, 37
  %i.x = add i32 %5, -1                           ; 2 uses
  %.02744.i.i = and i32 %i.x, %i.w                ; 2 uses
  %i.y = zext i32 %.02744.i.i to i64
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.y ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !311 ; 2 uses
  %i.ab = icmp eq i64 %i.u, %i.aa
  br i1 %i.ab, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit, label %.lr.ph.i.i, !prof !417
end_hunk_0
begin_hunk_1_@_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E18moveFromOldBucketsEPSC_SF_:bb.a
  %i.aj = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.aj, %i.x                 ; 2 uses
  %i.ak = zext i32 %.027.i.i to i64
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.ak ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !311 ; 2 uses
  %i.an = icmp eq i64 %i.u, %i.am
  br i1 %i.an, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit, label %.lr.ph.i.i, !prof !419, !llvm.loop !420

_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit: ; preds = %bb.d, %3, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.af, %bb.c ], [ null, %3 ], [ %i.z, %bb.b ], [ %i.al, %bb.d ] ; 4 uses
  store i64 %i.u, ptr %.sink.i.i, align 8, !tbaa !311
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !413 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !442
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !412
  store ptr %i.o, ptr %.02530, align 8, !tbaa !413
  store ptr %.02530, ptr %i.g, align 8, !tbaa !412
  store ptr %i.g, ptr %i.m, align 8, !tbaa !441
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !413
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !441
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !413
  store ptr %i.r, ptr %.02530, align 8, !tbaa !413
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !441
  store ptr %.02530, ptr %i.s, align 8, !tbaa !413
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !446

end_hunk_3
