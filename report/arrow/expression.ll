inline.NumInlined: 7294
inline.NumDeleted: 3038
begin_hunk_0_@_ZNK5arrow7compute10Expression8ToStringB5cxx11Ev:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.v:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %.sroa.0203.0261 = phi ptr [ %i.dj, %.lr.ph ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ] ; 3 uses
  %.sroa.0200.0260 = phi ptr [ %i.do, %.lr.ph ], [ %i.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.ee = load ptr, ptr %.sroa.0203.0261, align 8, !tbaa !33, !noalias !170
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0203.0261, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !38, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !170
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %i.ee, i64 noundef %i.eg, ptr noundef nonnull @.str.2, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3)
end_hunk_0
begin_hunk_1_@_ZNK5arrow7compute10Expression8ToStringB5cxx11Ev:bb.a
bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0200.0260, i64 16
  invoke void @_ZNK5arrow7compute10Expression8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0200.0260)
          to label %bb.x unwind label %bb.ao

bb.x:                                             ; preds = %bb.w
end_hunk_1
begin_hunk_2_@_ZNK5arrow7compute10Expression8ToStringB5cxx11Ev:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0203.0261, i64 32 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.dl
  br i1 %i.gg, label %._crit_edge, label %bb.v

end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5arrow7compute10Comparison4typeEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5arrow7compute10Comparison4typeEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5arrow7compute10Comparison4typeEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5arrow7compute10Comparison4typeEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !423 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !428
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5arrow7compute10Comparison4typeEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !998
  store ptr %i.o, ptr %.02530, align 8, !tbaa !423
  store ptr %.02530, ptr %i.g, align 8, !tbaa !998
  store ptr %i.g, ptr %i.m, align 8, !tbaa !430
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !423
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !430
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !423
  store ptr %i.r, ptr %.02530, align 8, !tbaa !423
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !430
  store ptr %.02530, ptr %i.s, align 8, !tbaa !423
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1016

end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableIN5arrow8FieldRefESt4pairIKS1_NS0_5DatumEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN5arrow8FieldRefESt4pairIKS1_NS0_5DatumEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN5arrow8FieldRefESt4pairIKS1_NS0_5DatumEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIN5arrow8FieldRefESt4pairIKS1_NS0_5DatumEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !423 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 72
  %i.k = load i64, ptr %i.j, align 8, !tbaa !428
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableIN5arrow8FieldRefESt4pairIKS1_NS0_5DatumEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ENS1_4HashENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !422
  store ptr %i.o, ptr %.02530, align 8, !tbaa !423
  store ptr %.02530, ptr %i.g, align 8, !tbaa !422
  store ptr %i.g, ptr %i.m, align 8, !tbaa !430
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !423
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !430
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !423
  store ptr %i.r, ptr %.02530, align 8, !tbaa !423
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !430
  store ptr %.02530, ptr %i.s, align 8, !tbaa !423
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1164

end_hunk_6
begin_hunk_7_@_ZN5arrow8internal7ToCharsImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.e, label %._crit_edge.i.i.i.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.h
  %.029.i.i.i = phi i32 [ %i.m, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.02328.i.i.i = phi i64 [ %i.l, %bb.h ], [ %1, %bb.b ] ; 5 uses
  %i.f = icmp ult i64 %.02328.i.i.i, 100
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.g = add i32 %.029.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.h = icmp ult i64 %.02328.i.i.i, 1000
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = add i32 %.029.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.j = icmp ult i64 %.02328.i.i.i, 10000
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = add i32 %.029.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.l = udiv i64 %.02328.i.i.i, 10000
  %i.m = add i32 %.029.i.i.i, 4                   ; 2 uses
  %i.n = icmp ult i64 %.02328.i.i.i, 100000
  br i1 %i.n, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1239

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.h, %bb.g, %bb.e, %bb.c
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal7ToCharsImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br label %.lr.ph

.lr.ph.i.i.i24:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, %bb.x
  %.029.i.i.i25 = phi i32 [ %i.bq, %bb.x ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ] ; 4 uses
  %.02328.i.i.i26 = phi i64 [ %i.bp, %bb.x ], [ %1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit ] ; 5 uses
  %i.bj = icmp ult i64 %.02328.i.i.i26, 100
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i.i.i24
  %i.bk = add i32 %.029.i.i.i25, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27

bb.t:                                             ; preds = %.lr.ph.i.i.i24
  %i.bl = icmp ult i64 %.02328.i.i.i26, 1000
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bm = add i32 %.029.i.i.i25, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27

bb.v:                                             ; preds = %bb.t
  %i.bn = icmp ult i64 %.02328.i.i.i26, 10000
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = add i32 %.029.i.i.i25, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27

bb.x:                                             ; preds = %bb.v
  %i.bp = udiv i64 %.02328.i.i.i26, 10000
  %i.bq = add i32 %.029.i.i.i25, 4                ; 2 uses
  %i.br = icmp ult i64 %.02328.i.i.i26, 100000
  br i1 %i.br, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27, label %.lr.ph.i.i.i24, !llvm.loop !1239

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27: ; preds = %bb.x, %bb.w, %bb.u, %bb.s
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal13ParseUnsignedEPKcmPj:bb.a

bb.s:                                             ; preds = %bb.r
  %.not144 = icmp eq i64 %i.bg, 0
  br i1 %.not144, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = icmp samesign ugt i32 %i.bj, 429496729
  br i1 %i.bk, label %.thread, label %bb.u, !prof !87

bb.u:                                             ; preds = %bb.t
  %3 = load i8, ptr %i.bc, align 1, !tbaa !86
  %4 = add i8 %3, -48                             ; 2 uses
  %i.bl = mul nuw i32 %i.bj, 10                   ; 4 uses
  %i.bm = zext i8 %4 to i32
  %i.bn = add i32 %i.bl, %i.bm                    ; 2 uses
  %.not146 = icmp eq i64 %i.bg, 1
  %.not149 = icmp ult i8 %4, 10
  %or.cond.not = and i1 %.not146, %.not149        ; 2 uses
  %5 = icmp uge i32 %i.bn, %i.bl
  %.146 = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bl)
  %.9104 = select i1 %or.cond.not, i32 %.146, i32 %i.bl, !prof !1273
  %cond9 = select i1 %or.cond.not, i1 %5, i1 false, !prof !1273
  br i1 %cond9, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c, %bb.a
  %.10105 = phi i32 [ %.9104, %bb.u ], [ %i.bj, %bb.s ], [ %i.bb, %bb.q ], [ %i.au, %bb.o ], [ %i.an, %bb.m ], [ %i.ag, %bb.k ], [ %i.z, %bb.i ], [ %i.s, %bb.g ], [ %i.l, %bb.e ], [ %i.e, %bb.c ], [ 0, %bb.a ]
  store i32 %.10105, ptr %2, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %bb.t, %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b, %bb.v
  %.10115 = phi i1 [ false, %bb.b ], [ true, %bb.v ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.n ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.t ]
  ret i1 %.10115
}

; Function Attrs: mustprogress uwtable
end_hunk_9
begin_hunk_10_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !423 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !428
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
end_hunk_10
begin_hunk_11_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1636
  store ptr %i.o, ptr %.02530, align 8, !tbaa !423
  store ptr %.02530, ptr %i.g, align 8, !tbaa !1636
  store ptr %i.g, ptr %i.m, align 8, !tbaa !430
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !423
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !430
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !423
  store ptr %i.r, ptr %.02530, align 8, !tbaa !423
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !430
  store ptr %.02530, ptr %i.s, align 8, !tbaa !423
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1654

end_hunk_11
begin_hunk_12_@_ZNSt10_HashtableIN5arrow7compute10ExpressionES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN5arrow7compute10ExpressionES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIN5arrow7compute10ExpressionES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIN5arrow7compute10ExpressionES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !423 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !428
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
end_hunk_12
begin_hunk_13_@_ZNSt10_HashtableIN5arrow7compute10ExpressionES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE:bb.a

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1166
  store ptr %i.o, ptr %.02530, align 8, !tbaa !423
  store ptr %.02530, ptr %i.g, align 8, !tbaa !1166
  store ptr %i.g, ptr %i.m, align 8, !tbaa !430
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !423
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !430
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !423
  store ptr %i.r, ptr %.02530, align 8, !tbaa !423
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !430
  store ptr %.02530, ptr %i.s, align 8, !tbaa !423
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1665

end_hunk_13
begin_hunk_14_@llvm.umax.i32
!1270 = distinct !{!1270, !"_ZN5arrow8internal12JoinToStringIJRA27_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!1271 = !{!"branch_weights", i32 2146410443, i32 1073205}
!1272 = distinct !{!1272, !125}
!1273 = !{!"branch_weights", i32 4000000, i32 4001}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1276, !"_ZN5arrow8internal12JoinToStringIJRA39_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!1276 = distinct !{!1276, !"_ZN5arrow8internal12JoinToStringIJRA39_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
end_hunk_14
